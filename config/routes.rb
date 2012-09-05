UberToken::Application.routes.draw do
  root :to => "projects#index"

  resources :projects, :users
end
