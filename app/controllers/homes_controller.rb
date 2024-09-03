class HomesController < ApplicationController

    def index
        @homes = Home.all
        render :index
    end
    def show
        @home = Home.find_by(id: params[:id])
        render :show
    end
    def create
        @photo = Photo.create(
            description: params[:description],
            year_built: params[:year_built],
            bedrooms: params[:bedrooms],
            bathrooms: params[:bathrooms],
            floors: params[:floors],
            availability: params[:availability],
            address: params[:address],
            price: params[:price],
        )
        render :show
end