Rails.application.routes.draw do
  patch 'user_todos/:id/update', to: 'user_todos#update', as: 'todo_update'
  get 'user_todos/index'
  root 'todos#index'
  get 'todos/:id/show', to: 'todos#show', as:'todo_show'
  devise_for :users
end
