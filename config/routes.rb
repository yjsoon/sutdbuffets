Rails.application.routes.draw do
  resources :buffets
  root to: redirect("/buffets")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
