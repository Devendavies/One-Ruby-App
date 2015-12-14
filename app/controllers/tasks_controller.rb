class TasksController < ApplicationController

  before_action :authorize

  def index
    @tasks = Task.all
  end

  def new
      @task = Task.new
      @user = User.find(session[:user_id])
  end

  def create
    task = Task.new(task_params)
    task.user_id = current_user.id
    task.completed = false
    if task.save
      redirect_to('/tasks')
    else
      redirect_to('tasks/new')
    end

  end

  def show
    id = current_user.id
    @tasks = Task.find(id)
    @user = current_user

    redirect_to('/tasks')
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @user = User.find(current_user.id)

    if @task.update(task_params)
      redirect_to '/tasks'
    else
      redirect_to '/tasks', :notice => { :success => "Edit failed, please try again!" }
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.delete
    redirect_to('/tasks')
  end


  def task_params
    params.require(:task).permit(
      :user,
      :priority,
      :content,
      :completed
    )
  end
end
