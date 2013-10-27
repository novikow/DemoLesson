package events 
{
	import flash.events.Event;
	import models.ItemList;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemEvent extends Event 
	{
		public var item:ItemList;
		public function ItemEvent(type:String, item:ItemList=null, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			this.item = item;
		} 
		
		public override function clone():Event 
		{ 
			return new ItemEvent(type, item, bubbles, cancelable);
		} 
		
		public override function toString():String
		{ 
			return formatToString("ItemEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		public static const LOAD_ITEM:String = 'loadItem';
		public static const ITEM_LOADED:String = 'itemLoaded';
		public static const ERROR_LOAD:String = 'errorLoad';
		public static const ITEM_IMAGE_LOADED:String = 'ItemImageLoaded';
	}
	
}