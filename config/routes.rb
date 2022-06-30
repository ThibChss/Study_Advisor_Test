Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'profile', to: "pages#profile"
  resources 'quizzs', only: %i[show update] do
    resources 'results', only: :create
  end
end
