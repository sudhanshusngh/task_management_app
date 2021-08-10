class WorksController < ApplicationController
  before_action :set_task
  before_action :set_work, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET tasks/1/works
  def index
    @works = @task.works
  end

  # GET tasks/1/works/1
  def show
  end

  # GET tasks/1/works/new
  def new
    @work = @task.works.build
  end

  # GET tasks/1/works/1/edit
  def edit
  end

  # POST tasks/1/works
  def create
    @work = @task.works.build(work_params)

    if @work.save
      redirect_to(@work.task)
    else
      render action: 'new'
    end
  end

  # PUT tasks/1/works/1
  def update
    if @work.update(work_params)
      redirect_to(@work.task)
    else
      render action: 'edit'
    end
  end

  # DELETE tasks/1/works/1
  def destroy
    @work.destroy

    redirect_to @task
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = current_user.tasks.find(params[:task_id])
    end

    def set_work
      @work = @task.works.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_params
      params.require(:work).permit(:name, :description, :status, :task_id)
    end
end
