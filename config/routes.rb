Rails.application.routes.draw do
  get 'user_todos/index'
  root 'todos#index'
  get 'todos/:id/show', to: 'todos#show', as:'todo_show'
  devise_for :users
end
