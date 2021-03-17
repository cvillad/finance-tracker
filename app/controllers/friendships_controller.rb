class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    current_user.friends << friend
    flash[:notice] = "Followed"
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Stopped following"
    redirect_to my_friends_path
  end
end
