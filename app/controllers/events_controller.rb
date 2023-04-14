class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
  end

  def create
    @user = User.find_by_email(current_user.email)

    Event.create(event_params)
    flash[:notice] = "Event successfully created"
    redirect_to root_path
  end

  private

  def event_params
    params.permit(:title, :address, :image).merge(user_id: @user.id, date: date)
  end

  def date
    DateTime.new(params["start_datetime(1i)"].to_i, 
                        params["start_datetime(2i)"].to_i, 
                        params["start_datetime(3i)"].to_i, 
                        params["start_datetime(4i)"].to_i, 
                        params["start_datetime(5i)"].to_i)
  end
end