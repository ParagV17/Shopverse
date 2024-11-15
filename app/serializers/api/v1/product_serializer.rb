
module Api
  module V1

    class ProductSerializer < ActiveModel::Serializer
      
      attributes :id, :name, :description, :brand, :category, :price_details, :ratings

      def category
        Api::V1::ProductCategorySerializer.new(object.product_category)
      end

      def price_details
        discount_amount = (object[:discount_percent].to_f*object[:price].to_f)/100
        {
          gross_price_per_unit: object[:price],
          discount_percent: object[:discount_percent],
          discount_amount: discount_amount.round(2) 
        }
      end

    end

  end
end
