class AiredDatesController < ApplicationController
	def show
		srvc = RequestService.new(params[:id])
		date = srvc.getAiredDate		   
		if date.nil?
			render json: {}, status: 503
		else
			render json: { aired_date: date }
		end
	end
end
