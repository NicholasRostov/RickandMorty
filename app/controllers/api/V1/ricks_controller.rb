class Api::V1::RicksController < ApplicationController
  def index
    @ricks = Rick.all
  end

  def show
    @rick = Rick.find_by(id: params[:id])
  end

  def create
    @rick = Rick.create(character: params[:character], location: params[:location], quote: params[:quote])
    render "show.json.jbuilder"
  end

  def destroy
    @rick = Rick.find_by(id: params[:id])
    @rick.destroy
  end

  def update
    @rick = Rick.find_by(id: params[:id])
    @rick.character = params[:character] || @rick.character
    @rick.quote = params[:quote] || @rick.quote
    @rick.location = params[:location] || @rick.location
    @rick.save
    render "show.json.jbuilder"
  end

end
