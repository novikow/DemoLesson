package views 
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	import events.AppEvent;
	import robotlegs.bender.extensions.contextView.ContextView;
	import views.*;
	import spark.components.ViewNavigatorApplication;
	import events.ListEvent;
	import events.ItemEvent;
	/**
	 * ...
	 * @author Novikov
	 */
		
	public class ApplicationMediator extends Mediator 
	{
		[Inject]
		public var contextView:ContextView;

		public function ApplicationMediator() 
		{
			
		}
		override public function initialize():void
		{
			eventMap.mapListener(eventDispatcher, ItemEvent.LOAD_ITEM, goToItem);
		}
		private function goToItem(e:ItemEvent):void
		{
			ViewNavigatorApplication(contextView.view).navigator.pushView(ItemView);
		}
	}

}