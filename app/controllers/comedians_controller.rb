class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
  end
end
