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
			
			var mapAtlas:TextureAtlas = new TextureAtlas(Texture.fromBitmap(Bitmap(EmbeddedSources.BOARD_BITMAP_DATA)), EmbeddedSources.BOARD_XML);
			ObjectMakerStarling.FromTiledMap(EmbeddedSources.BOARD_MAP, mapAtlas);
		}
		
	}
}