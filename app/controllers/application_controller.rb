class ApplicationController < ActionController::Base
before_action :set_completed_todos
  def set_completed_todos
    if current_user != nil
      @completed_todos = []
      current_user.user_todos.each do |todo|
        if todo.completed?
          @completed_todos.push(todo)
        end
      end
    end
  end
end
