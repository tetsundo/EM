class CdsController < ApplicationController
  before_action :create_cart
  def new
    @cd = Cd.new
    respond_to do |format|
            format.js  #{}
            # format.html{ redirect_to admin_root_path(current_admin.id), notice: 'Cd was successfully created.' }
        end
    @cd.songs.build
  end
  def create
  	@cd = Cd.new(cd_params)

      if @cd.save
        redirect_to admin_root_path(current_admin.id)
      else
      @cds = Cd.all.order(created_at: 'desc')
      render admin_root_path(current_admin.id)
      end
  end

  def show
    @cd = Cd.find(params[:id])
    @songs = @cd.songs.all
    if user_signed_in?
      @cart = current_user.cart
      @cart_item = CartItem.new
    end
    @cd_comment = CdComment.new
    @cd_comments = CdComment.all
  end

  def index
    if @results
   @cds = @results
   else
    @cds = Cd.all
   end
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def update
    cd = Cd.find(params[:id])
    cd.update(cd_params)
    redirect_to cd_path

  end

  def destroy
    cd = Cd.find(params[:id])
    cd.destroy
    redirect_to admin_root_path(current_admin.id)
  end

private

  def cd_params
    params.require(:cd).permit(:genre_id,:jacket_name,:image,:disk,:remaining_quantity,:release_date,:rabel_name,:artist_name,:price,
        songs_attributes: [:id,:song_name,:order,:_destroy])
  end

end

