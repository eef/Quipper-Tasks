class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  
  respond_to :html, :json

  before_filter :get_task

  def index
    @tasks = Task.sorted(params[:sort], "title ASC").page(params[:page])
    respond_with(@tasks)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    respond_with(@task)
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new
    respond_with(@task)
  end

  # GET /tasks/1/edit
  def edit
    respond_with(@task)
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = 'Task was successfully created.' 
    end
    respond_with(@task)
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    if @task.update_attributes(params[:task])
      flash[:notice] = 'Task was successfully updated.'
    end
    respond_with(@task)
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    flash[:notice] = 'Task was successfully deleted.'
    respond_with(@task)
  end

  private
    def get_task
      @task = Task.find(params[:id]) if params[:id]
    end
end
