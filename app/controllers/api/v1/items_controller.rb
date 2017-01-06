class Api::V1::ItemsController < ApplicationController

  def index
    render  status: 200,
            json: Item.select("id, name, description, image_url").all

  end

  def show
    render  status: 200,
            json: Item.select("id, name, description, image_url").find(params[:id])
  end

  def destroy
    render json: Item.find(params[:id]).destroy,
      status: 204

  end

end