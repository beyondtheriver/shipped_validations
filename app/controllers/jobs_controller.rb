class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
    else
      flash[:error] = @job.errors.full_messages
    end
    redirect_to(:back)
  end

  def destroy
  end

  def update
  end

  def show
  end

  private

  def job_params
  params.require(:job).permit(:name, :con_require, :cargo, :destination, :boat_id, :origin, :cost)
  end

end
