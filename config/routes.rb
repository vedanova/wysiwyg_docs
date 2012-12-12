WysiwygDocs::Engine.routes.draw do
  get "docs/index"

  resources :topics

  root to: "docs#index"

end
