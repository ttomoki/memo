Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts, only: [:new,:create,:show] do
  	collection do
  	  get 'all'
  	end
  end
end
