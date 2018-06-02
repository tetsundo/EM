class CdsController < ApplicationController
  def new
    @cd = Cd.new
    # respond_to do |format| 
    #         format.html{ redirect_to admins_top_path, notice: 'Cd was successfully created.' }
    #         format.js {} 
    #     end
    @cd.songs.build
  end
  def create
  	@cd = Cd.new(cd_params)

    respond_to do |format|
      if @cd.save
        format.html { redirect_to admins_top_path, notice: 'Cd was successfully created.' }
        format.json { render :show, status: :created, location: @cd }
        format.js { @status = "success"}
      else
        format.html { render :new }
        format.json { render json: @cd.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end
  end

  def show
    @cd = Cd.find(params[:id])
    @songs = @cd.songs.all
    @cart_item = CartItem.new
  end

  def index
    @cds = Cd.all
  end

private

  def cd_params
    params.require(:cd).permit(:genre_id,:jacket_name,:image,:disk,:remaining_quantity,:release_date,:rabel_name,:artist_name,:price,
        songs_attributes: [:id,:song_name,:order,:_destroy])
  end

end

