package flexlib.events
{
	import flash.events.ContextMenuEvent;
	import flash.events.Event;
	
	import flexlib.controls.tabBarClasses.SuperTab;

	public class SideBarMenuEvent extends ContextMenuEvent
	{
		public static const SIDEBAR_DELETE:String = "sideBarDelete";
		public var xmlObject:XML;
		
		public function SideBarMenuEvent(type:String, xml:XML, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			xmlObject = xml;
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			return new SideBarMenuEvent(type, xmlObject, bubbles, cancelable);
		}
		
	}
}