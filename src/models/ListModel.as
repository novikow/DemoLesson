package models 
{
	/**
	 * ...
	 * @author Novikov
	 */
	import flash.events.IEventDispatcher;
	import events.ListEvent;
	import params.Connection;
	public class ListModel 
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		public var list:Array;
		private var nextList:String = 'list0.xml';
		public function ListModel() 
		{
			list = new Array();
		}
		public function addToList(list:Array):void
		{
			this.list.concat(list);
			trace('LIST MODEL: add To List');
			eventDispatcher.dispatchEvent(new ListEvent(ListEvent.LIST_LOADED, list)); 
			
		}
		public function getNextListURL():String
		{
			return nextList;
		}
		public function setNextListURL(list:String):void
		{
			nextList = list;
		}
	}

}