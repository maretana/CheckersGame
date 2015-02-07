package com.marioretana.checkersgame {
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	public class EmbeddedSources {
		
		[Embed(source="../../../../resources/Tiled/board.tmx", mimeType="application/octet-stream")]
		private static const BOARD_MAP_CLASS : Class;
		
		[Embed(source="../../../../resources/sprites/board.xml", mimeType="application/octet-stream")]
		private static const BOARD_XML_CLASS : Class;
		
		[Embed(source="../../../../resources/sprites/board.png")]
		private static const BOARD_BITMAP_CLASS : Class;
		
		public static const BOARD_MAP:XML = XML(new BOARD_MAP_CLASS());
		public static const BOARD_XML:XML = XML(new BOARD_XML_CLASS());
		public static const BOARD_BITMAP_DATA:BitmapData = Bitmap(new BOARD_BITMAP_CLASS()).bitmapData;
		
	}
	
}
