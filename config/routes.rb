Rails.application.routes.draw do
  get 'user/index'
  get 'lesson/index'


  get '/:week' => 'lessons#index', as: :week_of_lessons

  resources :users
  resources :lessons

  root 'lessons#index'

end
