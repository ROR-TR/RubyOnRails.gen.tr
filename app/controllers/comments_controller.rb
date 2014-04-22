class CommentsController < ApplicationController
  before_filter :set_article

  def create
    @comment = Comment.create comment_params
    if @comment.save
      redirect_to @article
    else
      redirect_to @article
    end
  end

  private


    def set_article
      @article = Article.find params[:article_id]
    end

    def comment_params
      params.require(:comment).permit(:content)
    end
end
