class WelcomeController < ApplicationController
	#before_action :authenticate_user!
  def index
  	@orders=Order.where(complete: false).count
  end
end
