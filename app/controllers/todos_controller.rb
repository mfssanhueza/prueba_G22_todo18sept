class TodosController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
    @ready_users = []
    UserTodo.all.each do |user_todo|
      if user_todo.completed? && user_todo.todo == @todo
        @ready_users.push(user_todo.user)
      end
    end

  end
end
