class TasksController < ApplicationController

  before_action :authorize

  def index
    @tasks = Task.all
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to('/tasks')
    else
      redirect_to('tasks/new')
    end
  end

  def update
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
  end


  def task_params
    params.require(:task).permit(
      :priority,
      :author,
      :content,
      :completed
    )
  end
end
