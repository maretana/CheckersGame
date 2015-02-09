package com.marioretana.checkersgame {
	import starling.events.TouchEvent;
	import starling.display.DisplayObject;
	import citrus.core.starling.StarlingState;
	import citrus.utils.objectmakers.ObjectMakerStarling;

	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	import flash.display.Bitmap;
	
	/**
	 * The state of the game when players can actually start playing.
	 * Adds the game board, players and chips to the scene.
	 * @author Mario Retana <maretanar@gmail.com>
	 */
	public class GameState  extends StarlingState
	{	
		public function GameState()
		{
			super();
		}
		
		/**
		 * This is where all game elements are instantiated.
		 */
		override public function initialize() : void
		{
			super.initialize();
			
			var boardBitmap:Bitmap = new Bitmap(EmbeddedSources.BOARD_BITMAP_DATA);
			var mapAtlas:TextureAtlas = new TextureAtlas(Texture.fromBitmap(boardBitmap), EmbeddedSources.BOARD_XML);
			ObjectMakerStarling.FromTiledMap(EmbeddedSources.BOARD_MAP, mapAtlas);
			var chip:Chip = new Chip('chip1', Chip.CHIP_COLOR.BLACK);
			add(chip);
			var art:DisplayObject = view.getArt(chip) as DisplayObject;
			chip.chipSprite = art;
			art.addEventListener(TouchEvent.TOUCH, chip.onTouch);
		}
		
	}
}