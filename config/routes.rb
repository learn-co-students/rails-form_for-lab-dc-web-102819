Rails.application.routes.draw do

	resources :students, :school_classes

	# resources :students, except: [:destroy, :index]
	# resources :school_classes, except: [:destroy, :index]
	
end
