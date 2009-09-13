class PressClippingsController < ApplicationController
  helper 'spree/base'
  resource_controller
  
  #caches_page :index
  
  private
    def collection
      @collection ||= end_of_association_chain.find(:all, :order => 'id desc')
    end
  
end
