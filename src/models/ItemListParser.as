package models 
{
	import models.ItemList;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemListParser 
	{
		
		public function ItemListParser() 
		{
			
		}
		public static function parse(data:XML):void
		{
			header = data.child('header')[0];
			imageUrl = data.child('img')[0].attribute('url');
			text = data.child('text')[0];
		}
		public static var header:String;
		public static var imageUrl:String;
		public static var text:String;
	}

}