class RequestsController < ApplicationController
	
	def index
		@requests = Request.all
	end
	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
	end

	def edit
		@request = Request.find(params[:id])
  	end
	
	def create
    	@request = Request.new(request_params)
 
    	if @request.save
          UserMailer.welcome_email(@request).deliver_later
      		redirect_to @request
    	else
      		render 'new'
    	end
  	end
 
  	def update
   		@request = Request.find(params[:id])
 
    	if @request.update(request_params)
      		redirect_to @request
    	else
      		render 'edit'
    	end
  	end
 
	def destroy
    	@request = Request.find(params[:id])
    	@request.destroy
 
    	redirect_to requests_path
  	end
	
	private
		def request_params
			params.require(:request).permit(:user_action, :level, :member, :memberlist, :access_group, :access_repo)
		end
end
