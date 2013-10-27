package models 
{
	/**
	 * ...
	 * @author Novikov
	 */
	import events.ListLoaderEvent;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.net.URLRequest;
	import flash.net.URLLoader;
	import loaders.TestURLLoader;
	public class ListLoader 
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		[Inject]
		public var listModel:ListModel;
		public var data:String;
		public var loader:TestURLLoader;
		public function ListLoader() 
		{
			loader = new TestURLLoader();
		}
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
			trace('LIST_LOADED');
			eventDispatcher.dispatchEvent(new ListLoaderEvent(ListLoaderEvent.LIST_LOADED, data));
		}
	}

}