class ArtworkSharesController < ApplicationController

    def create
        @artwork_share = ArtworkShares.new(artwork_share_params)
        # replace the `Artwork_attributes_here` with the actual attribute keys
     if @artwork_share.save
        render json: @artwork_share

    else
        render json: @artwork_share.errors.full_messages, status: :unprocessable_entity
    end
    def destroy
        @artwork_share=ArtworkShares.find(params[:id])
        @artwork_share.destroy # calls rails own destroy function ?
        render json: @artwork_share
    end

      
end
    private 
    def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id,:viewer_id) # acts as a contraint  only allows changes of these values
    end
end