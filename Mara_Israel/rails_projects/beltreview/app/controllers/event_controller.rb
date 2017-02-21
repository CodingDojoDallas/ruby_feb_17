class EventController < ApplicationController
  	before_action :require_login
    helper_method :sort_column, :sort_direction

  def index
    return if require_login
    @events = Event.all.order(sort_column + " "+ sort_direction)
    @event = Event.new
    @user = current_user
  end

  def create
    event = Event.new(params.require(:event).permit(:name,:date,:location_city, :location_state))
    user = current_user
  	event.user = current_user
    
    if !event.valid?
      @event = event
      return render 'index'
    end

    user.events.push(event)
    user.save
    redirect_to '/event'
  end

  def update
    event = Event.find(params[:id])
    user = current_user
    user.events.push(event)
    user.save
    redirect_to '/event'
  end

  def remove
    event = Event.find(params[:id])
    user = current_user
    user.events.delete(event)
    user.save
    redirect_to '/event'
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
    redirect_to '/event'
  end

  def show
    @event = Event.find(params[:id])
    @comments = Comment.all.where(:event => @event )
    puts @comments
  end

  private
  def sort_column
    Event.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
