class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	# 投稿画像の表示制限
	@post_images = @user.post_images.page(params[:page]).reverse_order  # ここを記述
  end
end
