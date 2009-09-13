# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SpreePress < Spree::Extension
  version "1.0"
  description "Extension to manage a press room for your spree store"
  url "http://github.com/bryanmtl/spree_press"

  
  def activate
    
    Admin::BaseController.class_eval do
     before_filter :add_press_tab
    
     def add_press_tab
       # add_extension_admin_tab takes an array containing the same arguments expected
       # by the tab helper method:
       #   [ :extension_name, { :label => "Your Extension", :route => "/some/non/standard/route" } ]
       add_extension_admin_tab [ :press_clippings ]
     end
    end
  end
end

