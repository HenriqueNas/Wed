import '../../../../wed.dart';

/// Enum class for the different values of the CSS `display` property.
///
/// The `display` property is used to specify the display behavior (the type of
/// rendering box) of an element.
///
/// The values of this enum are: `inline`, `block`, `contents`, `flex`, `grid`,
/// `inlineBlock`, `inlineFlex`, `inlineGrid`, `inlineTable`, `listItem`,
/// `runIn`, `table`, `tableCaption`, `tableColumnGroup`, `tableHeaderGroup`,
/// `tableFooterGroup`, `tableRowGroup`, `tableCell`, `tableColumn`,
/// `tableRow`, `none`, `initial`, and `inherit`.
enum Display implements CssBaseEnum {
  inline,
  block,
  contents,
  flex,
  grid,
  inlineBlock,
  inlineFlex,
  inlineGrid,
  inlineTable,
  listItem,
  runIn,
  table,
  tableCaption,
  tableColumnGroup,
  tableHeaderGroup,
  tableFooterGroup,
  tableRowGroup,
  tableCell,
  tableColumn,
  tableRow,
  none,
  initial,
  inherit;

  @override
  String get value {
    switch (this) {
      case Display.inlineBlock:
        return 'inline-block';
      case Display.inlineFlex:
        return 'inline-flex';
      case Display.inlineGrid:
        return 'inline-grid';
      case Display.inlineTable:
        return 'inline-table';
      case Display.listItem:
        return 'list-item';
      case Display.runIn:
        return 'run-in';
      case Display.tableCaption:
        return 'table-caption';
      case Display.tableColumnGroup:
        return 'table-column-group';
      case Display.tableHeaderGroup:
        return 'table-header-group';
      case Display.tableFooterGroup:
        return 'table-footer-group';
      case Display.tableRowGroup:
        return 'table-row-group';
      case Display.tableCell:
        return 'table-cell';
      case Display.tableColumn:
        return 'table-column';
      case Display.tableRow:
        return 'table-row';
      default:
        return name;
    }
  }
}
