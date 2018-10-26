class FavoritesController < ApplicationController

    def create
        favorite = current_user.favorites.create(list_id: params[:list_id])
        redirect_to lists_url, notice: "add #{favorite.list.user.name} talk to favorites"
    end

    def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to lists_url, notice: "delete #{favorite.list.user.name}s talk from favorites"
    end
end
