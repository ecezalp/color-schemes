class Api::V1::SchemesController < ApplicationController

  def index
    render json: Scheme.all
  end

  def show
    render json: Scheme.find(params[:id])
  end

end

