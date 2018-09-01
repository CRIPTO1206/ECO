Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get  'tipos',              to: 'tipos#get_all'
  get  'tipo/:id',           to: 'tipos#show'
  post 'tipos',              to: 'tipos#create'
  post 'tipo/:id/puntos',    to: 'tipos#create_puntos'
  
  get  'puntos',              to: 'puntos#get_all'
  get  'punto/:id',           to: 'puntos#show'
  post 'puntos',              to: 'puntos#create'
  post 'punto/:id/tipos',     to: 'puntos#create_tipos'
end
