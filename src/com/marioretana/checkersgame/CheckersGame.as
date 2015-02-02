package com.marioretana.checkersgame {
	import citrus.core.starling.StarlingCitrusEngine;
	import flash.events.Event;

	[SWF(width="800",height="600",backgroundColor="#bebebe",frameRate="60")]
	public class CheckersGame extends StarlingCitrusEngine {
		
		public function CheckersGame() {
			super();
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
