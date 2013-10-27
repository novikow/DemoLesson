package models 
{
	import events.ItemEvent;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.net.URLRequest;
	import loaders.TestLoader;
	import loaders.TestURLLoader;
	import mx.events.Request;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemModel 
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		public function getData(header:String, imageUrl:String, text:String):void
		{
			//this = item; //переделать под шаблон Singleton!!
			this.header = header;
			this.imageUrl = imageUrl;
			this.text = text;
			if (image = ItemCache.load(imageUrl))
			{
				loaded = true;
				trace('from cache! '+image);
			}
			else
				loaded = false;
			trace('add to ItemModel');
			eventDispatcher.dispatchEvent(new ItemEvent(ItemEvent.ITEM_LOADED));
		}
		public function load():void
		{
		
			if(!loaded)
			{
				var url:URLRequest = new URLRequest(imageUrl);
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE, imageLoaded);
				trace('req: '+imageUrl);
				loader.load(url);
			}
			
		}
		private function imageLoaded(e:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, imageLoaded);
			image = DisplayObject(loader.content);
			loaded = true;
			ItemCache.add(imageUrl, image);
			eventDispatcher.dispatchEvent(new ItemEvent(ItemEvent.ITEM_IMAGE_LOADED));
		}
		public var header:String;
		public var imageUrl:String;
		public var image:DisplayObject;
		public var text:String;
		private var loaded:Boolean = false;
		private var loader:Loader = new TestLoader();
	}

}