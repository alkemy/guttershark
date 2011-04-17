package gs.util
{
	
	import flash.events.Event;	
	import flash.display.Sprite;	
	import flash.events.EventDispatcher;	
	
	/**
	 * The FramePulse class should be used as the one
	 * source for enter frame events. This is equivalent
	 * to an on enter frame beacon from flash 7/8.
	 * 
	 * @example Using the FramePulse class:
	 * <listing>	
	 * FramePulse.AddEnterFrameListener(onEnterFrame);
	 * private function onEnterFrame(e:Event):void
	 * {
	 *     trace("on enter frame");
	 * }
	 * </listing>
	 */
	final public class FramePulse extends EventDispatcher
	{
		
		private static var sSprite:Sprite=null;
		
		/**
		 * Add an event listener to the frame pulse.
		 * 
		 * @param eventHandler The handler function to call.
		 */
		public static function AddEnterFrameListener(eventHandler:Function):void
		{
			if(!sSprite)sSprite=new Sprite();
			sSprite.addEventListener(Event.ENTER_FRAME,eventHandler);
		}
		
		/**
		 * Remove an event listener from the frame pulse.
		 * 
		 * @param eventHandler The event handler function.
		 */
		public static function RemoveEnterFrameListener(eventHandler:Function):void
		{
			if(sSprite)sSprite.removeEventListener(Event.ENTER_FRAME,eventHandler);
		}
	}
}