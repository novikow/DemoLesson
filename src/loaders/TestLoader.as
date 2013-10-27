package loaders 
{
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import params.Connection;
	/**
	 * ...
	 * @author Novikov
	 */
	public class TestLoader extends Loader 
	{
		
		public function TestLoader() 
		{
			super();
		}
		override public function load(request:URLRequest, context:LoaderContext = null):void
		{
			super.load(getURL(request), context);
		}
		private function getURL(request:URLRequest):URLRequest
		{
			if (request != null)
				return new URLRequest(Connection.SERVER_URL + request.url);
			else
				return null;
		}
	}

}