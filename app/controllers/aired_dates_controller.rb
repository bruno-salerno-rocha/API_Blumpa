class AiredDatesController < ApplicationController
	def show
		srvc = RequestService.new(params[:id])
		date = srvc.getAiredDate		   
		if date.nil?
			render json: { status: 503 }
		else
			render json: { status: 200, aired_date: date }
		end
	end
end
