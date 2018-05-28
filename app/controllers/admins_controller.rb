class AdminsController < ApplicationController
  def top
  	@cd = Cd.new
  	@cd.songs.build
  end

  def edit
  end
end
