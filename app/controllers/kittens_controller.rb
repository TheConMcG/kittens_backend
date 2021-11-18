class KittensController < ApplicationController

  def index
    kittens = Kitten.all
    render json: kittens.as_json
  end

  def create
    kitten = Kitten.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      weight: params[:weight]
    )
    if kitten.save
      render json: kitten
    else
      render json: { errors: kitten.erros.full_messages }, status: :bad_request
    end
  end

  def show
    kitten = Kitten.find_by(id: params[:id])
    render json: kitten
  end
  
end
