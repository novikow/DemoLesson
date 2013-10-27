package models 
{
	import flash.display.DisplayObject;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Novikov
	 */
	public class ItemCache 
	{
		
		public function ItemCache() 
		{
			
		}
		public static function add(key:String,item:DisplayObject):void
		{
			items[key] = item;
		}
		public static function load(key:String):DisplayObject
		{
			return items[key];
		}
		private static var items:Dictionary = new Dictionary();
	}

}