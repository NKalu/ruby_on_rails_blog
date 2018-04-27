class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to @post, notice: "Your post has been saved"
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attribute(post_params)
      redirect_to @post, notice: "Your post has been updated"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "Your post has been deleted"
  end

  private
  def post_params
    params.require(:post).permit(:title,:body,:category_id,:author_id, categories_attribute: [:name])
  end


end
