class TasksController < ApplicationController

  def index
    # @event = Event.find(params)
    if params[:event_id] # events#showからのparams
      @event = Event.find(params[:event_id])
    elsif params[:format] # tasks#createからのparams
      @event = Event.find(params[:format])
    elsif params[:e_id]
      @event = Event.find(params[:e_id])
    elsif params[:id]
      @event = Event.find(params[:id])
    end
     @tasks = @event.tasks
  end

  def show
    # @event = Event.find(params[:event_id])
    # @task = @event.tasks.find(params[:id])
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @event = Event.find(params[:task][:event_id])
    @task = @event.tasks.create(task_params)
    # @task = Task.new(task_params)
    if @task.save
    redirect_to tasks_path(@event.id)
    else
    render 'new'
    end
  end

  def edit
    # @event = Event.find(params[:event_id])
    # @task = @event.task.find(params[:task])
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task.id, event_id: params[:task][:event_id])
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(e_id: params[:event_id])
  end


private
def task_params
  params[:task].permit(:title,:detail,:solution,:comment,:name,:year,:date)
end

end
