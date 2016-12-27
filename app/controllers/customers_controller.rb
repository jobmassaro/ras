class CustomersController < ApplicationController
	PAGE_SIZE = 10
  def index
  	

  	#@customers = Customer.paginate(:page => params[:page], per_page: 10)
  		@customers = Customer.all
  		
  		respond_to do |format |
  		format.html {}
  		format.json {render json: @customers}	
  	
  	end
  	
  end
end
