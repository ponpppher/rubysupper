class ListsController < ApplicationController
  def index
  end
  def new
    @list = List.new
  end
  def create
    List.create(content:params[:list][:content])
    redirect_to new_list_path
  end
end
