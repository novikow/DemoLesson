package views 
{
	import events.AppContextEvent;
	import events.AppEvent;
	import robotlegs.bender.bundles.mvcs.Mediator;
	import events.ListEvent;
	import events.ItemEvent;
	import robotlegs.bender.extensions.contextView.ContextView;
	import spark.components.ViewNavigatorApplication;
	/**
	 * ...
	 * @author Novikov
	 */
	public class NavigationViewMediator extends Mediator 
	{
		[Inject]
		public var contextView:ContextView;
		
		public function NavigationViewMediator() 
		{
			
		}
		override public function initialize():void
		{
			
			addViewListener(AppContextEvent.GO_TO_HOME, goToHome);
			addViewListener(AppEvent.EXIT, dispatch);
		}
		
		private function goToHome(e:AppContextEvent):void
		{
			ViewNavigatorApplication(contextView.view).navigator.popToFirstView();
		}
		
	}

}