package events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class AppEvent extends Event 
	{
		
		public function AppEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			
		} 
		
		public override function clone():Event 
		{ 
			return new AppEvent(type, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("AppEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		public static const READY:String = 'ready';
		public static const EXIT:String = 'exitApp';
	}
	
}