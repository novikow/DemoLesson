package configs 
{
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	import spark.components.ViewNavigatorApplication;
	import views.*;
	import commands.*;
	import events.*;
	import models.*;
	import params.*;
	/**
	 * ...
	 * @author Novikov
	 */
	public class AppConfig implements IConfig
	{
		[Inject]
		public var injector:IInjector;
		[Inject]
		public var mediatorMap:IMediatorMap;
		[Inject]
		public var commandMap:IEventCommandMap;
		[Inject]
		public var contextView:ContextView;
		
		public function configure():void
		{
			trace(contextView);
			injector.map(ListModel).asSingleton();
			injector.map(ListLoader).asSingleton();
			injector.map(ItemLoader).asSingleton();
			injector.map(ItemModel).asSingleton();
			injector.map(ItemList).asSingleton();
			mediatorMap.map(NavigationView).toMediator(NavigationViewMediator);
			mediatorMap.map(MainView).toMediator(MainViewMediator);
			mediatorMap.map(Main).toMediator(ApplicationMediator);
			mediatorMap.map(ItemView).toMediator(ItemViewMediator);
			commandMap.map(AppEvent.READY).toCommand(LoadCommand);
			commandMap.map(ListEvent.GET_NEXT_LIST).toCommand(LoadCommand);
			commandMap.map(ListLoaderEvent.LIST_LOADED).toCommand(ParseListCommand);
			commandMap.map(ItemLoaderEvent.ITEM_LOADED).toCommand(ParseItemCommand);
			commandMap.map(ItemEvent.LOAD_ITEM).toCommand(LoadItemCommand);
			commandMap.map(AppEvent.EXIT).toCommand(ExitAppCommand);
			//commandMap.map(NewsItemEvent.LOAD_NEWS_ITEM).toCommand(GoToNewsCommand);
			/*commandMap.map(SimpleEvent.TYPE_B).toCommand(SimpleCommand);
			commandMap.map(SimpleEvent.LOAD_MAIN).toCommand(SimpleCommand);*/
		}
	}

}