package commands 
{
	import models.ItemLoader;
	import models.ItemModel;
	import robotlegs.bender.bundles.mvcs.Command;
	import models.ItemListParser;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ParseItemCommand extends Command 
	{
		[Inject]
		public var itemLoader:ItemLoader;
		[Inject]
		public var item:ItemModel;

		public function ParseItemCommand() 
		{
			
		}
		override public function execute():void
		{
			var data:String = itemLoader.data;
			ItemListParser.parse(XML(data));
			var header:String = ItemListParser.header;
			var imgUrl:String = ItemListParser.imageUrl;
			var text:String = ItemListParser.text;
			item.getData(header, imgUrl, text);
			item.load();
		}
	}

}