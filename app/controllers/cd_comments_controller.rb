class CdCommentsController < ApplicationController


	def show

	end

	def create
		cd = Cd.find(params[:cd_id])
		cd_comment = current_user.cd_comments.new(cd_comment_params)
		cd_comment.cd_id = cd.id
		cd_comment.save
		redirect_to cd_path(cd.id)
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private
	def cd_comment_params
		params.require(:cd_comment).permit(:user_id, :cd_id, :comment, :comment_title, :star)
	end
end
