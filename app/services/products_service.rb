
class ProductsService

  attr_accessor :params

  def initialize(params ={})
    @params = params
  end

  def get_products
    where_obj = {}
    where_obj[:is_active] = true
    where_obj[:is_listed] = true
    where_obj[:deleted_at] = nil
    where_obj[:category_id] = params[:category] if params[:category].present?

    products = Product.where(where_obj).includes(:product_category).order(created_at: :desc)

  end

end