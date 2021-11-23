class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.find(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_image_path
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def post_image_params
    parmas.require(:post_image).permit(:shop_name,:image,:caption)
  end
end
