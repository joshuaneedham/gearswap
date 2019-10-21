Rails.application.routes.draw do
  resources :gear_posts
  scope '/api' do 
    # resources :articles
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
