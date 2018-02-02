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
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title,:body,:category_id,:author_id)
  end


end
