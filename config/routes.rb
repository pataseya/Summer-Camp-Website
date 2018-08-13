Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :participants

  get 'about' =>'welcome#about'

  get 'activities' => 'welcome#activities'

  get 'mission' => 'welcome#mission'

  get 'contact' => 'welcome#contact'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
