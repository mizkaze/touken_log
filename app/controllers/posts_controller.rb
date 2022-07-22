class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    post.save
    redirect_to post_path(post.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])

    if params[:post][:image_ids]
      params[:post][:image_ids].each do |image_id|
        image = post.images.find(image_id)
        image.purge
      end
    end

    post.update(post_params)
    redirect_to post_path(post.id)
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :body, :is_open, images: [])
  end

end
