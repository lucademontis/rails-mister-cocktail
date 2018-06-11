Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#home"
  resources :cocktails do
    #new and create are nested because it is linked to cocktail
    resources :doses, only: [:new, :create]
  end
  #destroy sits outside because you can't delete nested attributes
  resources :doses, only: [:destroy]
end
