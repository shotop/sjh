class Blog::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to blog_post_path(@post), notice: 'Comment was successfully created.' }
        format.js
      else
        format.html { redirect_to blog_post_path(@post), notice: 'Comment could not be saved!' }
      end
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url }
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:post_id, :body, :guest_name, :guest_email)
    end
end