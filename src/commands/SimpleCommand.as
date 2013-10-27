package commands 
{
	import events.SimpleEvent;
	import robotlegs.bender.bundles.mvcs.Command;
	import robotlegs.bender.extensions.contextView.ContextView;
	import mx.core.IVisualElementContainer;
	import views.*;
	/**
	 * ...
	 * @author Novikov
	 */
	public class SimpleCommand extends Command 
	{
		[Inject]
		public var event:SimpleEvent;
		[Inject]
		public var context:ContextView;
		
		override public function execute():void
		{
		/*	IVisualElementContainer(context.view).removeAllElements();
			if (event.type == SimpleEvent.TYPE_A)
			{
				trace("it's A!");
				IVisualElementContainer(context.view).addElement(viewA);
			}
			else
			if (event.type == SimpleEvent.LOAD_MAIN)
			{
				trace("it's B!");
				IVisualElementContainer(context.view).addElement(mainView);
			}*/
		}
		
	}

}