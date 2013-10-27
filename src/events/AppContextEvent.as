package events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class AppContextEvent extends Event 
	{
		
		public function AppContextEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			
		} 
		
		public override function clone():Event 
		{ 
			return new AppContextEvent(type, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("AppContextEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		public static const GO_TO_ITEM:String = 'AppContext_goToEvent';
		public static const GO_TO_HOME:String = 'AppContext_goToHome';
		
	}
	
}