class RicksController < ApplicationController
  def index
    @ricks = Rick.all
    render "index.json.jbuilder"
  end

  def show
    @rick = Rick.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @rick = Rick.create(character: params[:character], quote: params[:quote])
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
    @rick.save
    render "show.json.jbuilder"
  end

end
