WysiwygDocs::Engine.routes.draw do
  get "docs/index"

  resources :topics
  resources :docs

  root to: "docs#index"

end
