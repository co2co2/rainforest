class ReviewsController < ApplicationController
  before_action :ensure_logged_in
  before_action :load_review
  before_action :ensure_user_owns_review,only: [:edit, :update, :destroy]

  def load_review
      @review = Review.find(params[:id])
    end

  def ensure_user_owns_review
    unless current_user == @review.user
      flash[:notice] = "you are not the right user!"
      redirect_to new_session_url
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = @review.product
  end

  def create
    @review = Review.new
    @product = @review.product
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = "review is successfully created!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit

    end
  end



  def update
    @review = Review.find(params[:id])
    @product = @review.product
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = "review is successfully created!"
      redirect_to "/products/#{params[:product_id]}"
    else
      render :edit

    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "review deleted!"
    redirect_to "/products/#{params[:product_id]}"

  end



end
