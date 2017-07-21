Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  resources :locations
  resources :events

  get 'example/form' => 'example#form'
  post 'example/form' => 'example#create'

  resources :job_applications
  # get 'job_application' => "job_applications#index"
  # get 'job_application/:id' => "job_applications#show"
  # get 'job_application/new' => "job_applications#new"
  # post 'job_application' => 'job_applications#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
