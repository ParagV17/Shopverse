
module Api
  module V1

    class ProductCategorySerializer < ActiveModel::Serializer
      
      attributes :id, :name, :description, :tags

      def tags
        JSON.parse(object[:tags])
      end
    end

  end
end
