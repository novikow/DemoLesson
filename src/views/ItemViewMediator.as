package views 
{
	import flash.events.Event;
	import models.ItemModel;
	import robotlegs.bender.bundles.mvcs.Mediator;
	import events.ItemEvent;
	import views.ItemView;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemViewMediator extends Mediator 
	{
		[Inject]
		public var view:ItemView;
		[Inject]
		public var model:ItemModel;
		public function ItemViewMediator() 
		{
			
		}
		override public function initialize():void
		{
			trace('Item View init');
			eventMap.mapListener(eventDispatcher, ItemEvent.ITEM_LOADED, itemLoadedHandler);
			eventMap.mapListener(eventDispatcher, ItemEvent.ITEM_IMAGE_LOADED, itemImageLoaded);
			updateView();
		}
		private function itemLoadedHandler(e:ItemEvent):void
		{
			trace('model header: ' + model.header);
			updateView();
		}
		private function itemImageLoaded(e:ItemEvent):void
		{
			trace('image loaded: '+model.image);
			//view.image = model.image;
			view.loadModel(model.image);
		}
		private function updateView():void
		{
			view.header = model.header;
			view.text = model.text;
			if (model.image)
				view.loadModel(model.image);
		}
	}

}