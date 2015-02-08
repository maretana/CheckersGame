package com.marioretana.checkersgame {
	import citrus.objects.CitrusSprite;

	import starling.display.DisplayObject;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;

	import flash.display.Bitmap;
	
	public class Chip extends CitrusSprite {
		
		public var displayObject:DisplayObject;
		
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
		    var touch:Touch = event.getTouch(displayObject);
		    if (touch && touch.phase === TouchPhase.MOVED)
		    {
				//var localPos:Point = touch.getLocation(displayObject);
				this.x = touch.globalX;
				this.y = touch.globalY;
		        Utils.logInfo("Touched object at position: " + touch.globalX + ', ' + touch.globalY);
		    }
			else if (touch && touch.phase === TouchPhase.ENDED)
			{
				this.x = 64;
				this.y = 32;
			}
		}
		
	}
}
