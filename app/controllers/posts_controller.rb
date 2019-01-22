class PostsController < ApplicationController
  before_action :find_post, only: [:show,:edit,:update,:destroy]

  def index
    @posts = Post.all
  end

  def show
    # @post = Post.find(params[:id])
  end

  def new
    @post = Post.new   # creates blank instance of Post
    @post.user_id = current_user
    @post.save

    @users = User.all
    @categories = Category.all

    @post.ingredients.build
    @post.directions.build
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :user_id, :category_id)
  end

end
