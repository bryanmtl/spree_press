# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class InThePressExtension < Spree::Extension
  version "1.0"
  description "Extension to manage a press room for your spree store"
  url "http://github.com/bryanmtl/in_the_press"

  
  def activate
    
    # Admin::BaseController.class_eval do
    #       before_filter :add_in_the_press_tab
    #       
    #       def add_in_the_press_tab
    #         add_extension_admin_tab [ :press_clippings ]
    #       end
    #     end
    #     
  end
end

