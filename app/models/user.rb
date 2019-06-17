class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :addTodos
  has_many :user_todos
  has_many :todos, through: :user_todos

  def addTodos
    Todo.all.each do |todo|
      self.todos << todo
    end
  end
end
