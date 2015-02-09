package com.marioretana.checkersgame {
	import citrus.core.starling.StarlingCitrusEngine;
	import citrus.core.starling.ViewportMode;

	import flash.events.Event;

	[SWF(width="320",height="320",backgroundColor="#000000",frameRate="60")]
	/**
	 * Main class of the game. Sets display mode and starts the game state.
	 * @author Mario Retana <maretanar@gmail.com>
	 */
	public class CheckersGame extends StarlingCitrusEngine {
		
		public function CheckersGame() {
			super();
			_baseWidth = GlobalConfiguration.STAGE_WIDTH;
			_baseHeight = GlobalConfiguration.STAGE_HEIGHT;
			_viewportMode = ViewportMode.FULLSCREEN;
		}
		
		override protected function handleAddedToStage(e:Event) : void
		{
			super.handleAddedToStage(e);
			setUpStarling(true);
		}
		
		override public function handleStarlingReady():void {
			super.handleStarlingReady();
    		state = new GameState();
		}
		
	}
}
