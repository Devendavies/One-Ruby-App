class TasksController < ApplicationController

  before_action :authorize

  def index
    @task = Task.all
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
