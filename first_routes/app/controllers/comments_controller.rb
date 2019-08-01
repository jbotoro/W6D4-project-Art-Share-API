class CommentsController < ApplicationController


  def index
    # debugger
    # p params[:comment][:user_id]
    if comment_params[:user_id]
      user = User.find(comment_params[:user_id])
      usercomments = user.comments
      render json: usercomments
    elsif comment_params[:artwork_id]
      artwork = Artwork.find(comment_params[:artwork_id])
      artworkcomments = artwork.comments
      render json: artworkcomments
    else
      render json: Comment.all
    end
    #render json: Artwork.errors.full_messages, status: :unprocessable_entity#, User.errors.full_messages#, status: :unprocessable_entity]
  end

  def create
    comment = Comment.new(comment_params)
    # replace the `comment_attributes_here` with the actual attribute keys
    if comment.save
      render json: comment
    else
      render json: comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find(params[:id])

    if comment
      comment.destroy
      render json: comment
    else
      render json: comment.errors.full_messages, status: :unprocessable_entity
    end
  end


  private
  
  def comment_params
    params.require(:comment).permit(:body, :user_id, :artwork_id)
  end
    
end
