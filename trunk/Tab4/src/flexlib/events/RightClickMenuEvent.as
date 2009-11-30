package flexlib.events
{
	import flash.events.ContextMenuEvent;
	import flash.events.Event;
	
	import flexlib.controls.tabBarClasses.SuperTab;

	public class RightClickMenuEvent extends ContextMenuEvent
	{
		public static const RIGHT_CLICK:String = "rightClick";
		public var clickedTab:SuperTab;
		public var clickedItem:String;
		
		public function RightClickMenuEvent(type:String, tab:SuperTab, item:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			clickedTab = tab;
			clickedItem = item;
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			return new RightClickMenuEvent(type, clickedTab, clickedItem, bubbles, cancelable);
		}
		
	}
}