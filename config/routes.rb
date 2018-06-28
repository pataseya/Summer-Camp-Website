Rails.application.routes.draw do
  resources :users
  root 'welcome#index'

  get 'about' =>'welcome#about'

  get 'activities' => 'welcome#activities'

  get 'mission' => 'welcome#mission'

  get 'contact' => 'welcome#contact'

  resources :participants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
