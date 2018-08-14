class TasksController < ApplicationController
  before_action :search_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new()
  end

  def create
    @task = Task.create(title: task_params[:title], details: task_params[:details], completed: task_params[:completed])
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(title: task_params[:title], details: task_params[:details], completed: task_params[:completed])
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def search_task
    @task = Task.find(params[:id])
  end
end
