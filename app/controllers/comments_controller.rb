class CommentsController < ApplicationController
  before_filter :set_article

  def create
    @comment = Comment.create comment_params
    @comment.article = @article
    if @comment.save
      respond_to do |format|
        format.js
        format.html { redirect_to @article }
      end
    else
      redirect_to @article
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
  end
  private


    def set_article
      @article = Article.find params[:article_id]
    end

    def comment_params
      params.require(:comment).permit(:content)
    end
end
