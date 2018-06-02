class AdminsController < ApplicationController
  def top
  	@cd = Cd.new
  	@cd.songs.build
  	@cds = Cd.all
  	@genres = Genre.all
  end

  def edit
  end
end
