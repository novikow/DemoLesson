package models 
{
	import events.ItemLoaderEvent;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	import loaders.TestURLLoader;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemLoader 
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		public function ItemLoader() 
		{
			loader = new TestURLLoader();
		}
		
		public var data:String;
		public var loader:TestURLLoader;
		
		public function load(url:String):void
		{
			var request:URLRequest = new URLRequest(url);
			
			loader.load(request);
			loader.addEventListener(Event.COMPLETE, loaderHandle);
		}
		private function loaderHandle(e:Event):void
		{
			loader.removeEventListener(Event.COMPLETE, loaderHandle);
			data = loader.data;
			eventDispatcher.dispatchEvent(new ItemLoaderEvent(ItemLoaderEvent.ITEM_LOADED));
		}
	}

}