# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @product = Product.find_by!(slug: product_params[:slug])
  end

  private

  def product_params
    params.permit(:slug)
  end
end
