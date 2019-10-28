Rails.application.routes.draw do

  get '/home', to: 'accueile#home'

  get '/team', to: 'show#team'

  get '/contact', to: 'show#contact'

  get '/home/potin/:id', to: 'gossip#potin'

  get '/home/auteur/:id', to: 'gossip#auteur'
  #get '/home/:potin_id', to



end
