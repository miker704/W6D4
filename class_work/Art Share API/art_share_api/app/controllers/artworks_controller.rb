
class ArtworksController < ApplicationController

    def index
        render json: {art_owned: User.find(params[:user_id]).artworks.all, art_shared: User.find(params[:user_id]).shared_artworks.all}
    end
    def create
            @artwork = Artwork.new(artwork_params)
            # replace the `Artwork_attributes_here` with the actual attribute keys
         if @artwork.save
            render json: @artwork

        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end

          
    end

    
    def show
        
        render json: Artwork.find(params[:id])
        
    end
    
    
    def destroy
        @artwork=Artwork.find(params[:id])
        @artwork.destroy # calls rails own destroy function ?
        render json: @artwork
    end
    
    def update
        @artwork=Artwork.find(params[:id])
        
        success = @artwork.update(artwork_params)
        if success
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end

    end
    
    private 
    def artwork_params
        params.require(:artwork).permit(:artist_id,:image_url,:title) # acts as a contraint  only allows changes of these values
    end

end