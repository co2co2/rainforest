class ReviewsController < ApplicationController

  def edit
  end

  def create
    @review = Review.new
    @product = @review.product
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    if @review.save
      flash[:notice] = "review is successfully created!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit

    end
  end

  def update
  end

end
