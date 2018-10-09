class ListsController < ApplicationController
  def index
    @list = List.all.reverse_order
  end
  def new
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice:"new talking"
    else
      render 'new'
    end
  end
  def edit
    @list = List.find(params[:id])
  end

  private
  def list_params
    params.require(:list).permit(:content)
  end
end
