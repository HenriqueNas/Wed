import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:wed_router/src/path_to_page.dart';

/// Build a [PageConfiguration] based on the provided root project [directory].
PageConfiguration buildPageConfiguration(Directory directory) {
  final pagesDirectory = Directory(path.join(directory.path, 'pages'));

  if (!pagesDirectory.existsSync()) {
    throw Exception('Could not find directory ${pagesDirectory.path}');
  }

  final endpoints = <String, List<PageFile>>{};
  final pages = <PageFile>[];
  final roguePages = <PageFile>[];
  final directories = _getPageDirectories(
    directory: pagesDirectory,
    pagesDirectory: pagesDirectory,
    onPage: pages.add,
    onEndpoint: (endpoint, file) {
      if (!endpoints.containsKey(endpoint)) {
        endpoints[endpoint] = [file];
      } else {
        endpoints[endpoint]!.add(file);
      }
    },
    onRoguePage: roguePages.add,
  );
  final publicDirectory = Directory(path.join(directory.path, 'public'));
  final mainDartFile = File(path.join(directory.path, 'main.dart'));

  final customInitRegex = RegExp(
    r'^Future(?:Or)?<void>\s*init\(InternetAddress .*?,\s*int .*?\)\s*(?:async)?\s*{',
    multiLine: true,
  );

  final mainDartFileExists = mainDartFile.existsSync();
  final hasCustomInit = mainDartFileExists &&
      customInitRegex.hasMatch(mainDartFile.readAsStringSync());

  return PageConfiguration(
    directories: directories,
    pages: pages,
    roguePages: roguePages,
    endpoints: endpoints,
    serveStaticFiles: publicDirectory.existsSync(),
    invokeCustomEntrypoint: mainDartFileExists,
    invokeCustomInit: hasCustomInit,
  );
}

List<PageDirectory> _getPageDirectories({
  required Directory directory,
  required Directory pagesDirectory,
  required void Function(PageFile page) onPage,
  required void Function(String endpoint, PageFile file) onEndpoint,
  required void Function(PageFile page) onRoguePage,
}) {
  final directories = <PageDirectory>[];
  final entities = directory.listSync().sorted();
  final directorySegment =
      directory.path.split('pages').last.replaceAll(r'\', '/');
  final directoryPath = directorySegment.startsWith('/')
      ? directorySegment
      : '/$directorySegment';
  if (directory.path != path.join(Directory.current.path, 'pages')) {}

  final files = _getPageFiles(
    directory: directory,
    pagesDirectory: pagesDirectory,
    onPage: onPage,
    onRoguePage: onRoguePage,
  );

  if (files.isNotEmpty) {
    final basePage = directoryPath.toPage();
    for (final file in files) {
      var endpoint = (basePage + file.page.toPage()).replaceAll('//', '/');
      if (endpoint.endsWith('/')) {
        endpoint = endpoint.substring(0, endpoint.length - 1);
      }
      if (endpoint.isEmpty) endpoint = '/';
      onEndpoint(endpoint, file);
    }

    directories.add(
      PageDirectory(
        name: directoryPath.toAlias(),
        page: basePage,
        files: files,
        params: directoryPath.toParams(),
      ),
    );
  }

  entities.whereType<Directory>().forEach((directory) {
    directories.addAll(
      _getPageDirectories(
        directory: directory,
        pagesDirectory: pagesDirectory,
        onPage: onPage,
        onEndpoint: onEndpoint,
        onRoguePage: onRoguePage,
      ),
    );
  });

  return directories;
}

List<PageFile> _getPageFiles({
  required Directory directory,
  required Directory pagesDirectory,
  required void Function(PageFile page) onPage,
  required void Function(PageFile page) onRoguePage,
  String prefix = '',
}) {
  final files = <PageFile>[];
  final directorySegment =
      directory.path.split('pages').last.replaceAll(r'\', '/');
  final directoryPath = directorySegment.startsWith('/')
      ? directorySegment
      : '/$directorySegment';
  final entities = directory.listSync().sorted();
  final subDirectories = entities
      .whereType<Directory>()
      .map((directory) => path.basename(directory.path))
      .toSet();
  entities.where((e) => e.isPage).cast<File>().forEach((entity) {
    final filePath = path
        .relative(entity.path, from: pagesDirectory.path)
        .replaceAll(r'\', '/');

    String getFilePage() {
      final pagePath = pathToPage(path.join('..', 'pages', filePath));
      final index = pagePath.indexOf(directoryPath);
      final filePagePath = index == -1
          ? pagePath
          : pagePath.substring(index + directoryPath.length);

      var filePage = filePagePath.isEmpty ? '/' : filePagePath;
      filePage = prefix + filePage;

      if (!filePage.startsWith('/')) filePage = '/$filePage';

      return filePage;
    }

    final filePage = getFilePage();
    final relativeFilePath = path.join('..', 'pages', filePath);
    final page = PageFile(
      name: filePath.toAlias(),
      path: relativeFilePath.replaceAll(r'\', '/'),
      page: filePage.toPage(),
      params: filePage.toParams(),
    );
    onPage(page);
    files.add(page);

    final fileBasename = path.basenameWithoutExtension(filePath);
    final conflictingIndexFile = File(
      path.join(directory.path, fileBasename, 'index.dart'),
    );
    final isRoguePage = subDirectories.contains(fileBasename) &&
        !conflictingIndexFile.existsSync();

    if (isRoguePage) onRoguePage(page);
  });
  return files;
}

extension on String {
  String toAlias() {
    final alias = path
        .withoutExtension(this)
        .replaceAll('[', r'$')
        .replaceAll(']', '')
        .replaceAll('/', '_');
    if (alias == '') return 'index';
    return alias;
  }

  String toPage() {
    return replaceAll('[', '<').replaceAll(']', '>').replaceAll(r'\', '/');
  }

  List<String> toParams() {
    final regexp = RegExp(r'\[(.*?)\]');
    final matches = regexp.allMatches(this);
    return matches.map((m) => m[0]!.replaceAll(RegExp(r'\[|\]'), '')).toList();
  }
}

extension on List<FileSystemEntity> {
  List<FileSystemEntity> sorted() {
    return this..sort((a, b) => b.path.compareTo(a.path));
  }
}

extension on FileSystemEntity {
  bool get isPage {
    return this is File && path.basename(this.path).endsWith('.dart');
  }
}

/// {@template page_configuration}
/// An object containing all page configuration metadata
/// required to generate a dart frog server.
/// {@endtemplate}
class PageConfiguration {
  /// {@macro page_configuration}
  const PageConfiguration({
    required this.directories,
    required this.pages,
    required this.endpoints,
    required this.roguePages,
    this.serveStaticFiles = false,
    this.invokeCustomEntrypoint = false,
    this.invokeCustomInit = false,
  });

  /// Whether to invoke a custom entrypoint script (`main.dart`).
  final bool invokeCustomEntrypoint;

  /// Whether to invoke a custom init method (`init` in `main.dart`).
  final bool invokeCustomInit;

  /// Whether to serve static files. Defaults to false.
  final bool serveStaticFiles;

  /// List of all page directories.
  /// Sorted from leaf nodes to root.
  final List<PageDirectory> directories;

  /// List of all page files.
  final List<PageFile> pages;

  /// A map of all endpoint paths to resolved page files.
  final Map<String, List<PageFile>> endpoints;

  /// List of all rogue pages.
  ///
  /// A page is considered rogue when it is defined outside
  /// of an existing subdirectory with the same name.
  ///
  /// For example:
  ///
  /// ```
  /// ├── pages
  /// │   ├── foo
  /// │   │   └── example.dart
  /// │   ├── foo.dart
  /// ```
  ///
  /// In the above scenario, `foo.dart` is rogue because it is defined
  /// outside of the existing `foo` directory.
  ///
  /// Instead, `foo.dart` should be renamed to `index.dart` and placed within
  /// the `foo` directory like:
  ///
  /// ```
  /// ├── pages
  /// │   ├── foo
  /// │   │   ├── example.dart
  /// │   │   └── index.dart
  /// ```
  final List<PageFile> roguePages;
}

/// {@template page_directory}
/// A class containing metadata regarding a page directory.
/// {@endtemplate}
class PageDirectory {
  /// {@macro page_directory}
  const PageDirectory({
    required this.name,
    required this.page,
    required this.files,
    required this.params,
  });

  /// The alias for the current directory.
  final String name;

  /// The page which will be used to mount pagers.
  final String page;

  /// The dynamic page params associated with the directory.
  final List<String> params;

  /// A list of nested page files within the directory.
  final List<PageFile> files;

  /// Create a copy of the current instance and override zero or more values.
  PageDirectory copyWith({
    String? name,
    String? page,
    List<PageFile>? files,
    List<String>? params,
  }) {
    return PageDirectory(
      name: name ?? this.name,
      page: page ?? this.page,
      files: files ?? this.files,
      params: params ?? this.params,
    );
  }

  /// Convert the current instance to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'page': page,
      'files': files.map((f) => f.toJson()).toList(),
      'directory_params': params,
    };
  }
}

/// {@template page_file}
/// A class containing metadata regarding a page file.
/// {@endtemplate}
class PageFile {
  /// {@macro page_file}
  const PageFile({
    required this.name,
    required this.path,
    required this.page,
    required this.params,
  });

  /// The alias for the current file.
  final String name;

  /// The import path for the current instance.
  final String path;

  /// The page used by pager instances.
  final String page;

  /// The dynamic page params associated with the file.
  final List<String> params;

  /// Create a copy of the current instance and override zero or more values.
  PageFile copyWith({
    String? name,
    String? path,
    String? page,
    List<String>? params,
  }) {
    return PageFile(
      name: name ?? this.name,
      path: path ?? this.path,
      page: page ?? this.page,
      params: params ?? this.params,
    );
  }

  /// Convert the current instance to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'page': page,
      'file_params': params,
    };
  }
}
