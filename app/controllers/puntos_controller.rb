class PuntosController < ApplicationController
  #Prueba
  def get_all
    @puntos = Punto.all
    render json: @puntos, status: :ok
  end
  
  def show
    @punto = Punto.find(params[:id])
    render json: @punto, status: :ok
  end
  
  def create
    to_insert = { :nombre =>params[:nombre] , 
                  :direccion =>params[:direccion] , 
                  :comentarios =>params[:comentarios] ,
                  :latitud =>params[:latitud] , 
                  :longitud =>params[:longitud] , 
                  :fechaActualizacion =>params[:fechaActualizacion] }
    @punto = Punto.create(to_insert)
    render json: @punto, status: :ok
  end
  
  def create_tipos
    @tipo = Tipo.create(params.permit(:nombre, :descripcion))
    @punto= Punto.find(params[:id])
    @punto.tipos << @tipo
    render json: @punto, status: :ok
  end
  
end