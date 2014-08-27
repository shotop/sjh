class Blog::PostsController < ApplicationController

  def index
    @posts = Post.all(:order => 'created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to blog_post_path(@post), notice: 'Post was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def post_params
   params.require(:post).permit(:title, :body)
  end
end
