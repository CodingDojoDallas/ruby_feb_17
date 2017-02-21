class CommentController < ApplicationController
  def create
  	@comment = Comment.new
  	event = Event.find(params[:event_id])
    user = current_user
  	comment = Comment.new(params.permit(:text, :event_id))
  	comment.user = current_user
  	comment.event = event
    
    if !comment.valid?
      @comment = comment
      return render 'show'
    end

    comment.save
    redirect_to '/event/'+params[:event_id]
  end
end
