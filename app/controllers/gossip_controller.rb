class GossipController < ApplicationController
  def potin
    @id = params[:id]
    @gossip = Gossip.find(@id)

  end
  def auteur
    @id = params[:id]
    @auteur = User.find(@id)
  end
end
