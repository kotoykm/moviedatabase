Rails.application.routes.draw do
#PELIS-------------------------------------
  get 'movie/inicio', to: 'movies#index'
  get 'movie/formulario', to: 'movies#new'
  get 'movie/movie_created', to: 'movies#success'
#SERIES-------------------------------------
  get 'serie/inicio', to: 'series#index'
  get 'serie/formulario', to: 'series#new'
  get 'serie/serie_creaded', to: 'series#success'
#DOCUS-------------------------------------
  get 'docu/inicio', to: 'documentaryfilms#index'
  get 'docu/formulario', to: 'documentaryfilms#new'
  get 'docu/docu_created', to: 'documentaryfilms#success'
#-------------------------------------
#POST
  post 'documentaryfilms/create', to: 'documentaryfilms#create'
  post 'series/create', to: 'series#create'
  post 'movies/create', to: 'movies#create'

  root 'overviews#index'
end