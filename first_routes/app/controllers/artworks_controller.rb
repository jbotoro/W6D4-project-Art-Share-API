class ArtworksController < ApplicationController

 def index
    user = User.find(params[:user_id])
    artworks = user.artworks
    shared_art = user.shared_artworks
    render json: [artworks, shared_art]
  end

  def create
    artwork = Artwork.new(artwork_params)
    # replace the `artwork_attributes_here` with the actual attribute keys
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])

    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])

    if artwork
      artwork.destroy
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end

end
