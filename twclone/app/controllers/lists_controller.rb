class ListsController < ApplicationController
  def index
    @list = List.all.reverse_order
  end
  def new
    @list = List.new
  end
  def create
    List.create(list_params)
    redirect_to new_list_path
  end
  def edit
  end

  private
  def list_params
    params.require(:list).permit(:content)
  end
end
