package commands 
{
	import robotlegs.bender.bundles.mvcs.Command;
	import events.ListLoaderEvent;
	import models.ListLoader;
	import models.ListParser;
	import models.ListModel;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ParseListCommand extends Command 
	{
		[Inject]
		public var event:ListLoader;
		[Inject]
		public var listModel:ListModel;
		
		public function ParseListCommand() 
		{
			
		}
		override public function execute():void
		{
			var data:String = event.data;
			ListParser.parse(XML(data));
			var list:Array = ListParser.list;
			var nextListURL:String = ListParser.nextListURL;
			listModel.addToList(list);
			listModel.setNextListURL(nextListURL);
		}
	}

}