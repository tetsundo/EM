class CdsController < ApplicationController
  def create
  	cd = Cd.new(cd_params)

  	if cd.save
  		flash[:success] = "新しくCDを追加しました"
  		redirect_to admins_top_path(current_admin.id)
  	else
  		flash[:success] = "失敗しました"
  		@cd = Cd.new
  		@cd.songs.build
  		render 'admins/top'
  	end
  end

  def show
  end

  def index
  end
  
  private

   def cd_params
      params.require(:cd).permit(:jacket_name,:disk,:remaining_quantity,:release_date,:rabel_name,:artist_name,:price,
        songs_attributes: [:id,:song_name,:order,:_destroy])
    end
end
