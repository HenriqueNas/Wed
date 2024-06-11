import 'package:wed_html/src/styling/exports.dart';

/// A class representing a CSS cursor property.
///
/// The `cursor` property specifies the mouse cursor to be displayed when pointing over an element. <br />
enum Cursor with CssPropMixin {
  /// The browser sets a cursor.
  alias,

  /// The cursor indicates that something can be scrolled in any direction.
  allScroll,

  /// The cursor indicates that a cell (or set of cells) may be selected.
  auto,

  /// The cursor indicates that something can be clicked.
  cell,

  /// The cursor indicates that a context-menu is available.
  colResize,

  /// The cursor indicates that the column can be resized horizontally.
  contextMenu,

  /// The cursor indicates that an edge of a box is to be moved right (east).
  copy,

  /// The cursor render as a crosshair.
  crosshair,

  /// The default cursor.
  defaultCursor,

  /// The cursor indicates that the dragged item cannot be dropped here.
  eResize,

  /// The cursor indicates that an edge of a box is to be moved left (west).
  ewResize,

  /// The cursor indicates that something can be grabbed.
  grab,

  /// The cursor indicates that something is being grabbed.
  grabbing,

  /// The cursor indicates that help is available.
  help,

  /// The cursor indicates something is to be moved.
  move,

  /// The cursor indicates that an edge of a box is to be moved up (north).
  nResize,

  /// The cursor indicates that an edge of a box is to be moved up and right (north/east).
  neResize,

  /// The cursor indicates that an edge of a box is to be moved up and right (north/east) or down and left (south/west).
  neswResize,

  /// The cursor indicates that an edge of a box is to be moved up and down (north/south).
  nsResize,

  /// The cursor indicates that an edge of a box is to be moved up and left (north/west).
  nwResize,

  /// The cursor indicates that an edge of a box is to be moved up and left (north/west) or down and right (south/east).
  nwseResize,

  /// The cursor indicates that the dragged item cannot be dropped here.
  noDrop,

  /// No cursor is rendered.
  none,

  /// The cursor indicates that the requested action will not be carried out.
  notAllowed,

  /// The cursor is a pointer that indicates a link.
  /// Typically an image of a pointing hand.
  pointer,

  /// The cursor indicates that the program is busy in the background,
  /// but the user can still interact with the interface (in contrast to wait).
  progress,

  /// The item/row can be resized vertically. Often rendered as
  /// arrows pointing up and down with a horizontal bar separating them.
  rowResize,

  /// The cursor is a arrow pointed down (south).
  sResize,

  /// The cursor is a arrow pointed down and right (south/east).
  seResize,

  /// The cursor is a arrow pointed down and left (south/west).
  swResize,

  /// The cursor indicates text that can be selected.
  ///Typically the shape of an I-beam.
  text,

  /// The cursor indicates vertical-text that can be selected.
  verticalText,

  /// The cursor is a arrow pointed left (west).
  wResize,

  /// The cursor indicates that the program is busy (in progress),
  /// and the user can't interact with the interface (in contrast to progress).
  wait,

  /// The cursor indicates that something can be zoomed in.
  zoomIn,

  /// The cursor indicates that something can be zoomed out.
  zoomOut,

  /// Sets this property to its default value.
  initial,

  /// Inherits this property from its parent element.
  inherit;

  @override
  String get propValue => switch (this) {
        Cursor.allScroll => 'all-scroll',
        Cursor.colResize => 'col-resize',
        Cursor.contextMenu => 'context-menu',
        Cursor.defaultCursor => 'default',
        Cursor.noDrop => 'no-drop',
        Cursor.notAllowed => 'not-allowed',
        Cursor.rowResize => 'row-resize',
        Cursor.zoomIn => 'zoom-in',
        Cursor.zoomOut => 'zoom-out',
        Cursor.eResize => 'e-resize',
        Cursor.ewResize => 'ew-resize',
        Cursor.nResize => 'n-resize',
        Cursor.neResize => 'ne-resize',
        Cursor.neswResize => 'nesw-resize',
        Cursor.nsResize => 'ns-resize',
        Cursor.nwResize => 'nw-resize',
        Cursor.nwseResize => 'nwse-resize',
        Cursor.sResize => 's-resize',
        Cursor.seResize => 'se-resize',
        Cursor.swResize => 'sw-resize',
        Cursor.wResize => 'w-resize',
        Cursor.verticalText => 'vertical-text',
        _ => name,
      };

  @override
  String get propName => 'cursor';
}
