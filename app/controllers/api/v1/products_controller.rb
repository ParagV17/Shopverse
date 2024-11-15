
class Api::V1::ProductsController < ApplicationController

  def index
    begin
      products = ProductsService.new(params).get_products
      render json: { 
                      success: true, 
                      products: ActiveModelSerializers::SerializableResource.new(products, each_serializer: Api::V1::ProductSerializer) 
                    }, status: :ok
      
    rescue StandardError => error
      render json: { success: false }, status: :unprocessable_entity
    end
  end

end