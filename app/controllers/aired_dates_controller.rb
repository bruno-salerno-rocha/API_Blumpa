class AiredDatesController < ApplicationController
	def show
		if date.nil?
			render json: {}, status: 503
		else
			render json: { aired_date: date }
		end
	end

	private

	def date
		srvc = RequestService.new(params[:id])
		date = srvc.getAiredDate
	end
end
