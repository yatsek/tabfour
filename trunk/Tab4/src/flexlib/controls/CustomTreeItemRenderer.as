package flexlib.controls {

    import flash.events.ContextMenuEvent;
    import flash.events.Event;
    import flash.ui.ContextMenu;
    import flash.ui.ContextMenuItem;
    
    import flexlib.events.SideBarMenuEvent;
    
    import mx.collections.*;
    import mx.controls.treeClasses.*;
    import mx.controls.Tree;

    public class CustomTreeItemRenderer extends TreeItemRenderer
    {

        // Define the constructor.      
        public function CustomTreeItemRenderer() {
            super();
			var contextMenu:ContextMenu = new ContextMenu();  
			var menuItems:Array = [];  
			var edit:ContextMenuItem = new ContextMenuItem("Delete");  
			edit.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, rightClickHandler);  
			menuItems.push(edit);  
			contextMenu.customItems = menuItems;  
			this.contextMenu = contextMenu;  
		}  
		
		/*
		protected var menuHandler:Function = null;
		public function setMenuHandler(handler:Function):void
		{
			menuHandler = handler;
			this.addEventListener(SideBarMenuEvent.SIDEBAR_CLICK, menuHandler);
		}
		*/
		
		private function rightClickHandler(event:ContextMenuEvent):void {  
			var xml:XML = XML(data);
			//trace( xml.@label );
			
			Tree(parent.parent).dispatchEvent(new SideBarMenuEvent(SideBarMenuEvent.SIDEBAR_DELETE, xml));
		}     
        /*
        // Override the set method for the data property
        // to set the font color and style of each node.        
        override public function set data(value:Object):void {
            super.data = value;
            if(TreeListData(super.listData).hasChildren)
            {
                setStyle("color", 0xff0000);
                setStyle("fontWeight", 'bold');
            }
            else
            {
                setStyle("color", 0x000000);
                setStyle("fontWeight", 'normal');
            }  
        }
     
        // Override the updateDisplayList() method 
        // to set the text for each tree node.      
        override protected function updateDisplayList(unscaledWidth:Number, 
            unscaledHeight:Number):void {
       
            super.updateDisplayList(unscaledWidth, unscaledHeight);
            if(super.data)
            {
                if(TreeListData(super.listData).hasChildren)
                {
                    var tmp:XMLList = 
                        new XMLList(TreeListData(super.listData).item);
                    var myStr:int = tmp[0].children().length();
                    super.label.text =  TreeListData(super.listData).label + 
                        "(" + myStr + ")";
                }
            }
        }
        */
    }
    
}