class Admin::PressClippingsController < Admin::BaseController 
  
  resource_controller
  #before_filter :load_data
  layout 'admin'
  
  create.after do
    expire_page("/press")
  end
  
  update.after do
    expire_page("/press")
  end
  
end
