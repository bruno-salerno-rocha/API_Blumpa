Rails.application.routes.draw do
	resources :aired_dates, only: :show
end
