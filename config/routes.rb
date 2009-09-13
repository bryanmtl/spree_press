# Put your extension routes here.

map.resources :press_clippings, :as => 'press'

map.namespace :admin do |admin|
  admin.resources :press_clippings
end