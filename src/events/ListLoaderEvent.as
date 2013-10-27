package events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class ListLoaderEvent extends Event 
	{
		public var data:String;
		public function ListLoaderEvent(type:String, data:String, bubbles:Boolean = false, cancelable:Boolean = false) 
		{ 
			super(type, bubbles, cancelable);
			this.data = data;
		} 
		
		public override function clone():Event 
		{ 
			return new ListLoaderEvent(type, data, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("ListLoaderEvent", "type", "data" , "bubbles", "cancelable", "eventPhase"); 
		}
		public static const LIST_LOADED:String = 'listLoadedLoader';
	}
	
}