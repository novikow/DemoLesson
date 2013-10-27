package commands 
{
	import models.ListLoader;
	import models.ListModel;
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * ...
	 * @author Novikov
	 */
	public class LoadCommand extends Command 
	{
		[Inject]
		public var loader:ListLoader;
		[Inject]
		public var listModel:ListModel;
		
		override public function execute():void
		{
			var url:String = listModel.getNextListURL();
			if(url)
				loader.load(url);
		}
		
	}

}