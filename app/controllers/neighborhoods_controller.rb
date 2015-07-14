class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
    @sorted = @neighborhoods.reject {|hood| hood.name == nil }.sort_by &:name
    render json: @sorted

  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    render json: @neighborhood.artworks
  end

end
