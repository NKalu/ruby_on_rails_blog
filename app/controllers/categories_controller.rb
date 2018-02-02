class CategoriesController < ApplicationController
  def index
  end

  def create
    Category.create(category_params)

    redirect_to_categories_path
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).premit(:name)
  end
end
