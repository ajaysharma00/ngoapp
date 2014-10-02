class HomesController < ApplicationController
  def index
  end
  def aboutus
  	@aboutus = " About Us"
  	
  end
  def contactus
  	@contactus ="Contact Us"
  	
  end
end
