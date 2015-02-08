package com.marioretana.checkersgame {
	import citrus.objects.CitrusSprite;
	import citrus.view.spriteview.SpriteArt;

	import starling.display.DisplayObject;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;

	import flash.display.Bitmap;
	
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
