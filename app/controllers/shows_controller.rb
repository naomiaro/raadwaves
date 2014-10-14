class ShowsController < ApplicationController
  def index
  end

  def new
  end

  def create
    render plain: params[:show].inspect
  end
end
