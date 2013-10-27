package events 
{
	import flash.events.Event;
	import models.ItemList;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemLoaderEvent extends Event 
	{
		public var item:ItemList;
		public function ItemLoaderEvent(type:String, item:ItemList=null, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			this.item = item;
		} 
		
		public override function clone():Event 
		{ 
			return new ItemLoaderEvent(type, item, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("ItemLoaderEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		public static const ITEM_LOADED:String = 'itemLoader_itemLoaded';
	}
	
}