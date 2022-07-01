Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'profile', to: "pages#profile"
  resources 'quizzs', only: %i[show new create update delete] do
    resources 'questions', only: %i[new create edit update delete] do
      resources 'answers', only: %i[new create edit update delete]
    end
    resources 'results', only: :create
  end
end
