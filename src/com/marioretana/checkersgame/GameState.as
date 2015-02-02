package com.marioretana.checkersgame {
	import citrus.core.starling.StarlingState;
	import citrus.utils.objectmakers.ObjectMakerStarling;

	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	
	public class GameState  extends StarlingState
	{
		[Embed(source="../../../../resources/Tiled/board.tmx", mimeType="application/octet-stream")]
		private const tileMap : Class;
		
		[Embed(source="../../../../resources/sprites/board.xml", mimeType="application/octet-stream")]
		private const tileMapXML : Class;
		
		[Embed(source="../../../../resources/sprites/board.png")]
		private const tileMapImage : Class;
		
		public function GameState()
		{
			super();
		}
		
		override public function initialize() : void
		{
			super.initialize();
			
			var mapAtlas:TextureAtlas = new TextureAtlas(Texture.fromBitmap(new tileMapImage()), XML(new tileMapXML()));
			ObjectMakerStarling.FromTiledMap(XML(new tileMap()), mapAtlas);
		}
		
	}
}