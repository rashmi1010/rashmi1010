Rails.application.routes.draw do

  root 'dogie#index'
  
  resources :dogie do 
  end

  resources :color do 
  end
  resources :users 
 
  resources :phone_number 
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
