class UserTodosController < ApplicationController
before_action :authenticate_user!
  def index
    @user_todos = current_user.user_todos
  end

  def update
    @user_todo = UserTodo.find(params[:id])
    @user_todo.completed = !@user_todo.completed
    @user_todo.save
    redirect_back(fallback_location: root_path)
  end

end
