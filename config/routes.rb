WysiwygDocs::Engine.routes.draw do
  get "docs/index"


  resources :docs, only: [:index, :create, :update]
  resources :topics do
    resources :articles
  end

  root to: "docs#index"

end
