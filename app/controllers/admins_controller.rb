class AdminsController < ApplicationController
  def top
  	@cds = Cd.all.order(created_at: 'desc')
  	
  end

  def edit
  end
  def show
  	@cd = Cd.find(params[:id])
    @songs = @cd.songs.all
  end
end
