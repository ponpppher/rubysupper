class ListsController < ApplicationController
before_action :set_list, only:[:edit,:update,:destroy]
  def index
    @list = List.all.reverse_order
  end
  def new
    if params[:back]
      @list = List.new(list_params)
    else
      @list = List.new
    end
  end

  def confirm
    @list = List.new(list_params)
    @list.user_id = current_user.id
    render :new if @list.invalid?
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    @list.save
    #List.create(list_params)
    redirect_to lists_path
  end
  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path
    else
      render 'edit'
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:content)
  end
  def  set_list
    @list = List.find(params[:id])
  end
end