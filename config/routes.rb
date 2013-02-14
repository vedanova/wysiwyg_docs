WysiwygDocs::Engine.routes.draw do
  get "docs/index"


  resources :docs, only: [:index, :create, :update]
  resources :topics do
    resources :articles do
      collection do
        post :sort
      end
    end
  end

  root to: "docs#index"

end
