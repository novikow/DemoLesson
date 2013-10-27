package commands 
{
	import events.NewsItemEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import robotlegs.bender.bundles.mvcs.Command;
	import robotlegs.bender.extensions.contextView.ContextView;
	/**
	 * ...
	 * @author Novikov
	 */
	public class GoToNewsCommand extends Command 
	{
		[Inject]
		public var contextView:ContextView;
		[Inject]
		public var event:NewsItemEvent;
		
		public function GoToNewsCommand() 
		{
			trace(contextView);
		}
		override public function execute():void
		{
						
		}
		
	}

}