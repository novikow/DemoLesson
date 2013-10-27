package loaders 
{
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import params.Connection;
	/**
	 * ...
	 * @author Novikov
	 */
	public class TestURLLoader extends URLLoader 
	{
		
		public function TestURLLoader(request:URLRequest = null) 
		{
			super(getURL(request));
		}
		override public function load(request:URLRequest):void
		{
			super.load(getURL(request));
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