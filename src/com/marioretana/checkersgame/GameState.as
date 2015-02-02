package com.marioretana.checkersgame {
	import citrus.core.starling.StarlingState;
	import citrus.objects.platformer.box2d.Coin;
	import citrus.objects.platformer.box2d.Crate;
	import citrus.objects.platformer.box2d.Enemy;
	import citrus.objects.platformer.box2d.Hero;
	import citrus.objects.platformer.box2d.MovingPlatform;
	import citrus.objects.platformer.box2d.Platform;
	import citrus.physics.box2d.Box2D;
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
			var objects:Array = [Hero, Crate, Platform, MovingPlatform, Enemy, Coin];
		}
		
		override public function initialize() : void
		{
			super.initialize();
			
			var box2D:Box2D = new Box2D("box2D");
			add(box2D);
			
			var mapAtlas:TextureAtlas = new TextureAtlas(Texture.fromBitmap(new tileMapImage()), XML(new tileMapXML()));
			ObjectMakerStarling.FromTiledMap(XML(new tileMap()), mapAtlas);
		}
		
	}
}