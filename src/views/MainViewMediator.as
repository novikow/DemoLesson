package views 
{
	import models.ListModel;
	import mx.collections.ArrayList;
	import robotlegs.bender.bundles.mvcs.Mediator;
	import events.*;
	import robotlegs.bender.extensions.contextView.ContextView;
	/**
	 * ...
	 * @author Novikov
	 */
	public class MainViewMediator extends Mediator 
	{
		[Inject]
		public var view:MainView;
		[Inject]
		public var model:ListModel;
		[Inject]
		public var contextView:ContextView;
		
		public var counter:uint = 0;
		override public function initialize():void
		{
			trace('main view init!');
			eventMap.mapListener(eventDispatcher, ListEvent.LIST_LOADED, dataLoaded);
			addViewListener(ListEvent.GET_NEXT_LIST, dispatch);
			addViewListener(ItemEvent.LOAD_ITEM, loadItemHandler);
			eventDispatcher.dispatchEvent(new AppEvent(AppEvent.READY));
		}
		private function dataLoaded(e:ListEvent):void
		{
			//view.addToNewsList(e.newsList);
			view.itemlist.addAll(new ArrayList(e.list));
			//view.scrollerUpdate();
		}
		private function loadItemHandler(e:ItemEvent):void
		{
			eventDispatcher.dispatchEvent(e);
			//eventDispatcher.dispatchEvent(new AppContextEvent(AppContextEvent.GO_TO_ITEM));
		}
	}

}