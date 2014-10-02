class ImagesController < ApplicationController

	# GET /gallery/new
  def new
    @image = Image.new
  end
  

  def show
  	@image = Image.find(params[:id])
  end
  # POST /gallery
  # POST /gallery.json
  def create
  	@image = Image.new(image_params)
  	debugger
    # @image.user_id = current_user.id
    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  	def image_params
      params.require(:image).permit(:avatar)
    end
end
