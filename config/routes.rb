Rails.application.routes.draw do
  get 'votes/create'

  resources :stories do
    resources :votes
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
