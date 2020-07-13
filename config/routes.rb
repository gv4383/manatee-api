Rails.application.routes.draw do
  namespace :api do
    resources :mentee_skills, only: %i[index]
    resources :mentor_skills, only: %i[index]
    resources :users, only: %i[index show create update destroy]
    resources :skills, only: %i[create update destroy]
  end
end
