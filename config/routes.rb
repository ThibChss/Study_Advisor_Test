Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources 'quizzs', only: %i[show update] do
    resources 'results', only: :create
  end
end
