class ProductsController < ApplicationController

  def index
    params[:per_page] ||= 28

    @products = Product.
      joins(:brand).
      order('brands.name').
      paginate({
        :page => params[:page],
        :per_page => params[:per_page],
      })
  end
end
