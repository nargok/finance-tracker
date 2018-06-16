class FriendShipsController < ApplicationController
  def destroy
    @frinendship = current_user.friendships.where(friend_id: params[:id]).first
    @frinendship.destroy
    flash[:notice] = "Friend was successfully removed"
    redirect_to my_friends_path
  end
end