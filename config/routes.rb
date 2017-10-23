Rails.application.routes.draw do
	# get 'stories' => 'stories#index'
  # get 'stories/index' => 'stories#index'
  # get 'stories/new' => 'stories#new'
  
  resources :stories
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
