package com.marioretana.checkersgame {
	import flash.external.ExternalInterface;
	public class Utils {
		
		public static function logInfo(info:String):void
		{
			ExternalInterface.call('console.log', info);
		}
		
	}
}
