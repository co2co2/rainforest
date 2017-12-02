class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash[:notice] = "product is successfully created!"
      redirect_to products_url
    else
    render :new
    end
  end



  def edit
    @product = Product.find(params[:product][:id])
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash[:notice] = "product is successfully updated!"
      redirect_to products_url
    else
      render :new
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "products deleted!"
    redirect_to root_url

  end


end
