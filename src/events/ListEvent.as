package events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class ListEvent extends Event 
	{
		public var list:Array;
		public function ListEvent(type:String, list:Array=null, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			this.list = list;
		} 
		
		public override function clone():Event 
		{ 
			return new ListEvent(type, list, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("ListEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		public static const GET_NEXT_LIST:String = 'getNextList';
		public static const LIST_LOADED:String = 'listLoaded';
		public static const ERROR_LOAD:String = 'errorLoad';
	}
	
}