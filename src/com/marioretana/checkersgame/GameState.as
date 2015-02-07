package com.marioretana.checkersgame {
	import citrus.core.starling.StarlingState;
	import citrus.utils.objectmakers.ObjectMakerStarling;

	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	import flash.display.Bitmap;
	
	
	public class GameState  extends StarlingState
	{	
		public function GameState()
		{
			super();
		}
		
		override public function initialize() : void
		{
			super.initialize();
			
			var boardBitmap:Bitmap = new Bitmap(EmbeddedSources.BOARD_BITMAP_DATA);
			var mapAtlas:TextureAtlas = new TextureAtlas(Texture.fromBitmap(boardBitmap), EmbeddedSources.BOARD_XML);
			ObjectMakerStarling.FromTiledMap(EmbeddedSources.BOARD_MAP, mapAtlas);
		}
		
	}
}