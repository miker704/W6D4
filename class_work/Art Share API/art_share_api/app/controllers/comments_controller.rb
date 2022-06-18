

class CommentsController < ApplicationController

    def index
        if !params[:user_id].nil?


            render json: Comment.where(comments: {user_id: params[:user_id] })
        
        else

            render json: Comment.where(comments: {artwork_id: params[:artwork_id] })

        end


    end
    def create
            @comment = Comment.new(comment_params)
            # replace the `Artwork_attributes_here` with the actual attribute keys
         if @comment.save
            render json: @comment

        else
            render json: @comment.errors.full_messages, status: :unprocessable_entity
        end

          
    end

    
    
    def destroy
        @comment=Comment.find(params[:id])
        @comment.destroy # calls rails own destroy function ?
        render json: @comment
    end
    
    
    private 
    def comment_params
        params.require(:comment).permit(:user_id,:artwork_id,:body) # acts as a contraint  only allows changes of these values
    end


end