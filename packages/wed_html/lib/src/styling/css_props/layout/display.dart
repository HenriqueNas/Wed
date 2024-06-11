import 'package:wed_html/wed_html.dart';

/// {@template display}
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
///
/// {@endtemplate}
enum Display with CssPropMixin {
  /// The element generates one or more inline boxes that do not generate line
  /// breaks before or after themselves. In normal flow, the next element will
  /// be on the same line if there is space.
  inline,

  /// The element generates a block box, generating line breaks both before and
  /// after the element when in the normal flow.
  block,

  ///These elements don't produce a specific box by themselves. They are
  ///replaced by their pseudo-box and their child boxes. Please note that the
  ///CSS Display Level 3 spec defines how the contents value should affect
  ///"unusual elements" — elements that aren't rendered purely by CSS box
  ///concepts such as replaced elements
  contents,

  /// The element behaves like a block-level element and lays out its content
  /// according to the [flexbox model](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_flexible_box_layout).
  flex,

  /// The element behaves like a block-level element and lays out its content
  /// according to the [grid model](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_grid_layout/Basic_concepts_of_grid_layout).
  grid,

  /// The element generates a block box that will be flowed with surrounding
  inlineBlock,

  /// The element behaves like an inline-level flex container
  inlineFlex,

  /// The element behaves like an inline-level grid container
  inlineGrid,

  /// The element behaves like an inline-level table
  inlineTable,

  /// The element generates a principal block box and a list-item inline box
  listItem,

  /// The element generates a principal block box and a run-in box
  runIn,

  /// The element generates a block box for the content and a separate
  table,

  /// The element generates a table caption box as a child of the table box
  tableCaption,

  /// The element generates a table column group box as a child of the table
  tableColumnGroup,

  /// The element generates a table header group box as a child of the table
  tableHeaderGroup,

  /// The element generates a table footer group box as a child of the table
  tableFooterGroup,

  /// The element generates a table row group box as a child of the table
  tableRowGroup,

  /// The element generates a table cell box as a child of a row
  tableCell,

  /// The element generates a table column box as a child of a column
  tableColumn,

  /// The element generates a table row box as a child of a row group
  tableRow,

  /// The element is not displayed
  none,

  /// Sets this property to its default value
  initial,

  /// Inherits this property from its parent element
  inherit;

  @override
  String get propValue => switch (this) {
        Display.inlineBlock => 'inline-block',
        Display.inlineFlex => 'inline-flex',
        Display.inlineGrid => 'inline-grid',
        Display.inlineTable => 'inline-table',
        Display.listItem => 'list-item',
        Display.runIn => 'run-in',
        Display.tableCaption => 'table-caption',
        Display.tableColumnGroup => 'table-column-group',
        Display.tableHeaderGroup => 'table-header-group',
        Display.tableFooterGroup => 'table-footer-group',
        Display.tableRowGroup => 'table-row-group',
        Display.tableCell => 'table-cell',
        Display.tableColumn => 'table-column',
        Display.tableRow => 'table-row',
        _ => name,
      };

  @override
  String get propName => 'display';
}
