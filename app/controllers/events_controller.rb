class EventsController < ApplicationController
	def create
		@event = Event.create!(event_params)
		render json: @event , status: :created
	end

	def show
		@event = Event.all
		render json: @event.as_json(:except => [:id, :updated_at , :created_at]) 
	end


	private
	def event_params
		params.require(:event).permit(:name , :fb_url , :edate , :description , :email , :first_name , :last_name , :country , :state , :city , :postal_code)
	end
end
