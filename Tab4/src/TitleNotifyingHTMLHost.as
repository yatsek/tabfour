package
{
	import flash.events.Event;
	import flash.html.HTMLHost;

	public class TitleNotifyingHTMLHost extends HTMLHost
	{
		public var parentTab:Tab;
		
		public function TitleNotifyingHTMLHost(parentTab:Tab, defaultBehaviors:Boolean=true)
		{
			super(defaultBehaviors);
			
			this.parentTab = parentTab;
		}
		
		override public function updateTitle(title:String):void
		{
			parentTab.titleChanged(title);
		}
	}
}