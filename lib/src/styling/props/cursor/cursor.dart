import '../../../../wed.dart';

/// A class representing a CSS cursor property.
///
/// The `cursor` property specifies the mouse cursor to be displayed when pointing over an element.
///
/// The `cursor` property can have one of the following values:
///
enum Cursor implements CssBaseEnum {
  alias,
  allScroll,
  auto,
  cell,
  colResize,
  contextMenu,
  copy,
  crosshair,
  defaultCursor,
  eResize,
  ewResize,
  grab,
  grabbing,
  help,
  move,
  nResize,
  neResize,
  neswResize,
  nsResize,
  nwResize,
  nwseResize,
  noDrop,
  none,
  notAllowed,
  pointer,
  progress,
  rowResize,
  sResize,
  seResize,
  swResize,
  text,
  verticalText,
  wResize,
  wait,
  zoomIn,
  zoomOut,
  initial,
  inherit;

  @override
  String get value {
    switch (this) {
      case Cursor.allScroll:
        return 'all-scroll';
      case Cursor.colResize:
        return 'col-resize';
      case Cursor.contextMenu:
        return 'context-menu';
      case Cursor.defaultCursor:
        return 'default';
      case Cursor.noDrop:
        return 'no-drop';
      case Cursor.notAllowed:
        return 'not-allowed';
      case Cursor.rowResize:
        return 'row-resize';
      case Cursor.zoomIn:
        return 'zoom-in';
      case Cursor.zoomOut:
        return 'zoom-out';
      case Cursor.eResize:
        return 'e-resize';
      case Cursor.ewResize:
        return 'ew-resize';
      case Cursor.nResize:
        return 'n-resize';
      case Cursor.neResize:
        return 'ne-resize';
      case Cursor.neswResize:
        return 'nesw-resize';
      case Cursor.nsResize:
        return 'ns-resize';
      case Cursor.nwResize:
        return 'nw-resize';
      case Cursor.nwseResize:
        return 'nwse-resize';
      case Cursor.sResize:
        return 's-resize';
      case Cursor.seResize:
        return 'se-resize';
      case Cursor.swResize:
        return 'sw-resize';
      case Cursor.wResize:
        return 'w-resize';
      case Cursor.verticalText:
        return 'vertical-text';

      default:
        return name;
    }
  }
}
