# frozen_string_literal: true

class ProductsController < ApplicationController
  def index; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path, notice: 'El producto ha sido creado'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :amount, :category_id)
  end
end
