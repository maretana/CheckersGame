package com.marioretana.checkersgame {
	import citrus.core.starling.StarlingCitrusEngine;
	import citrus.core.starling.ViewportMode;

	import flash.events.Event;

	[SWF(width="320",height="320",backgroundColor="#bebebe",frameRate="60")]
	public class CheckersGame extends StarlingCitrusEngine {
		
		public function CheckersGame() {
			super();
			_baseWidth = 320;
			_baseHeight = 320;
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
