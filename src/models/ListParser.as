package models 
{
	import mx.collections.ArrayList;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ListParser 
	{
		
		public function ListParser() 
		{
			
		}
		public static function parse(data:XML):void
		{
			var length:uint = data.child('item').length();
			list = new Array();
			for (var i:uint = 0; i < length; i++)
			{
				var description:String = data.child('item')[i];
				var url:String = data.child('item')[i].attribute('url');
				var imgUrl:String = data.child('item')[i].attribute('img');
				list.push(new ItemList(description, url, imgUrl));
			}
			if(data.child('nextlist').length() != 0)
				nextListURL = data.child('nextlist')[0].attribute('url');
			else
				nextListURL = null;
		}
		public static var list:Array;
		public static var nextListURL:String;
	}

}