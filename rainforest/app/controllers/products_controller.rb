class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to products_url
    else
      redirect_to new_product_url
    end
  end


  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to products_url
    else
      redirect_to new_product_url
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end


end
