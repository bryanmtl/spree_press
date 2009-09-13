class PressClipping < ActiveRecord::Base
  
  has_attached_file :pdf,   :url => "/assets/press/:id/:basename.:extension",
                            :path => ":rails_root/public/assets/press/:id/:basename.:extension"
  
  has_attached_file :cover, :styles => { :medium => "180x230>", :thumb => "150x150>" },
                            :url => "/assets/press/:id/:style/:basename.:extension",
                            :path => ":rails_root/public/assets/press/:id/:style/:basename.:extension"
                            
                            
  named_scope :last_five, :order => 'id desc', :limit => 5
  
end
