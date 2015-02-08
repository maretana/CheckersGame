package com.marioretana.checkersgame {
	import citrus.objects.CitrusSprite;

	import starling.display.DisplayObject;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;

	import flash.display.Bitmap;
	
	/**
	 * Represents one of the game chips.
	 * This class handles touch events for the chip, bitmap loading
	 * and reports to the game controller when a chip has been moved.
	 * @author Mario Retana <maretanar@gmail.com>
	 */
	public class Chip extends CitrusSprite {
		
		public var chipSprite:DisplayObject;
		
		public function Chip(name : String, color:String) {
			var params:Object =
			{
				x : 64,
				y : 32,
				width : 32,
				height : 32,
				touchable : true,
				view : new Bitmap(EmbeddedSources.BLACK_CHIP_BITMAPDATA)
			};
			super(name, params);
		}

		public function onTouch(event:TouchEvent):void
		{
		    var touch:Touch = event.getTouch(chipSprite);
		    if (touch && touch.phase === TouchPhase.MOVED)
		    {
				//var localPos:Point = touch.getLocation(displayObject);
				chipSprite.alpha = 0.7;
				x = touch.globalX - 16;
				y = touch.globalY - 16;
		        Utils.logInfo("Touched object at position: " + touch.globalX + ', ' + touch.globalY);
		    }
			else if (touch && touch.phase === TouchPhase.ENDED)
			{
				chipSprite.alpha = 1;
				x = 64;
				y = 32;
			}
		}
		
	}
}
