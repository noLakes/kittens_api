class KittensController < ApplicationController
  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save!
      redirect_to @kitten
    else
      render :new
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def index
    @kittens = Kitten.all,order("created_at DESC")
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    if @kitten.update
      redirect_to @kitten
    else
      render :edit
    end
  end

  def destroy
    @kitten.destroy
    redirect_to root_path
  end

end