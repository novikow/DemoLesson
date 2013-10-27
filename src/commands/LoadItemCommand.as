package commands 
{
	import events.ItemEvent;
	import models.ItemLoader;
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class LoadItemCommand extends Command 
	{
		[Inject]
		public var event:ItemEvent;
		[Inject]
		public var itemLoader:ItemLoader;
		
		public function LoadItemCommand() 
		{
			
		}
		override public function execute():void
		{
			var url:String = event.item.url; //здесь ItemList, а не ItemModel!!
			itemLoader.load(url);
			trace('loaditem: '+url);
		}
	}

}