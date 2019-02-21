import 'package:contentful_rich_text/types/blocks.dart';
import 'package:contentful_rich_text/types/inlines.dart';
import 'package:contentful_rich_text/types/types.dart';

abstract class EmptyNodeData {}

abstract class Heading1 extends Block {
  BLOCKS nodeType = BLOCKS.HEADING_1;
  Map<String, dynamic> data;
  List<dynamic> content;
}

abstract class Heading2 extends Block {
  BLOCKS nodeType = BLOCKS.HEADING_2;
  Map<String, dynamic> data;
  List<dynamic> content;
}

abstract class Heading3 extends Block {
  BLOCKS nodeType = BLOCKS.HEADING_3;
  Map<String, dynamic> data;
  List<dynamic> content;
}

abstract class Heading4 extends Block {
  BLOCKS nodeType = BLOCKS.HEADING_4;
  Map<String, dynamic> data;
  List<dynamic> content;
}

abstract class Heading5 extends Block {
  BLOCKS nodeType = BLOCKS.HEADING_5;
  Map<String, dynamic> data;
  List<dynamic> content;
}

abstract class Heading6 extends Block {
  BLOCKS nodeType = BLOCKS.HEADING_6;
  Map<String, dynamic> data;
  List<dynamic> content;
}

// Paragraph
abstract class Paragraph extends Block {
  BLOCKS nodeType = BLOCKS.PARAGRAPH;
  Map<String, dynamic> data;
  List<dynamic> content;
}

// Quote
abstract class Quote extends Block {
  BLOCKS nodeType = BLOCKS.QUOTE;
  Map<String, dynamic> data;
  List<dynamic> content;
}

// Horizontal rule
abstract class Hr extends Block {
  BLOCKS nodeType = BLOCKS.HR;
  Map<String, dynamic> data;
  List<dynamic> content;
}

// OL
abstract class OrderedList extends Block {
  BLOCKS nodeType = BLOCKS.OL_LIST;
  Map<String, dynamic> data;
  List<dynamic> content;
}

// UL
abstract class UnorderedList extends Block<ListItem> {
  BLOCKS nodeType = BLOCKS.UL_LIST;
  Map<String, dynamic> data;
  List<ListItem> content;
}

abstract class ListItem extends Block<TopLevelBlock> {
  BLOCKS nodeType = BLOCKS.LIST_ITEM;
  Map<String, dynamic> data;
  List<TopLevelBlock> content;
}

// taken from graphql schema-generator/contentful-types/link.ts
//abstract class Link<T extends String> {
//
//  sys: {
//    type: 'Link';
//    linkType: T;
//    id: string;
//  };
//}

abstract class EntryLinkBlock extends Block {
  BLOCKS nodeType = BLOCKS.EMBEDDED_ENTRY;
  Map<String, dynamic> data;
  List<dynamic> content;
}

abstract class AssetLinkBlock extends Block {
  BLOCKS nodeType = BLOCKS.EMBEDDED_ASSET;
  Map<String, dynamic> data;
  List<dynamic> content;
}

// INLINE
abstract class EntryLinkInline extends Inline<String> {
  INLINES nodeType = INLINES.EMBEDDED_ENTRY;
  Map<String, dynamic> data;
  List<String> content;
}

abstract class Hyperlink extends Inline<String> {
  INLINES nodeType = INLINES.HYPERLINK;
  Map<String, dynamic> data;
  List<String> content;
}

abstract class AssetHyperlink extends Inline<String> {
  INLINES nodeType = INLINES.ASSET_HYPERLINK;
  Map<String, dynamic> data;
  List<String> content;
}

abstract class EntryHyperlink extends Inline<String> {
  INLINES nodeType = INLINES.ENTRY_HYPERLINK;
  Map<String, dynamic> data;
  List<String> content;
}