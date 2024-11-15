
class Api::V1::ProductsController < ApplicationController

  def index
    begin
      products = ProductsService.new(params).get_products
      render json: { success: true, product: products }, status: :ok
    rescue StandardError => error
      render json: { success: false }, status: :unprocessable_entity
    end
  end

end