class UserTodosController < ApplicationController
  def index
  @user_todos = current_user.user_todos
  end
end
