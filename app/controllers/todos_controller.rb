class TodosController < ApplicationController
  before_filter :authenticate_user!

  def new
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      flash[:notice] = todo_params.to_s
      redirect_to todos_url, creation_params: todo_params
    else
      redirect_to new_todos_url
    end
  end

  def index
    @todos = Todo.all
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :detail, :quantity)
  end
end
