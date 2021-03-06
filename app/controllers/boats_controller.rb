class BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to '/'
    else
      flash[:alert] = @boat.errors.full_messages
      redirect_to '/boats/new'
    end
  end

  def destroy
  end

  def update
  end

  def show
    @boat = Boat.find(params[:id])
    @job = Job.new
    @jobs = Job.where(:boat_id => @boat.id)
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :con_capacity, :location, :user_id)
  end

end
