class ListsController < ApplicationController
  before_action :set_list, only:[:edit,:update,:destroy]
  def index
    @list = List.all.reverse_order
  end
  def new
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice:"add new talk"
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    if @list.update(list_params)
      redirect_to lists_path, notice:"edit talk"
    else
      render 'edit'
    end
  end
  def destroy
    @list.destroy
    redirect_to lists_path, notice:"delete talk"
  end

  private
  def list_params
    params.require(:list).permit(:content)
  end
  def set_list
    @list = List.find(params[:id])
  end
end
