class AccueileController < ApplicationController
  def home
    @name = 1#params[:id]
    @user = User.find(@name)
    @gossip = Gossip.all





  end
end
