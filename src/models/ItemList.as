package models 
{
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLRequest;
	import loaders.TestLoader;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemList
	{
		
		public function ItemList(description:String, url:String, imgUrl:String) 
		{
			this.description = description;
			this.url = url;
			this.imgUrl = imgUrl;
			var req:URLRequest = new URLRequest(imgUrl);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoadImage);
			loader.load(req);
		}
		
		private function onLoadImage(e:Event):void
		{
			loader.removeEventListener(Event.COMPLETE, onLoadImage);
			imgData = Bitmap(loader.content);
			trace(imgData);
		}
		[Bindable]
		public var description:String;
		public var url:String;
		public var imgUrl:String;
		[Bindable]
		public var imgData:Bitmap;
		private var loader:Loader = new TestLoader();

	}

}