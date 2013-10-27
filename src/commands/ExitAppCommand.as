package commands 
{
	import robotlegs.bender.bundles.mvcs.Command;
	import flash.desktop.NativeApplication;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ExitAppCommand extends Command 
	{
		
		public function ExitAppCommand() 
		{
			
		}
		override public function execute():void
		{
			NativeApplication.nativeApplication.exit();
		}
	}

}