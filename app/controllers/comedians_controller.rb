class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
  end

  def new
    @comedian = Comedian.new
  end

  def create
    Comedian.create(comedian_params)
    redirect_to "/comedians"
  end

  private

  def comedian_params
    params.permit(:name, :age, :city, :image_url)
  end
end
