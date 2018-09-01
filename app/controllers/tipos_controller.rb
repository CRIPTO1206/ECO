class TiposController < ApplicationController
  def index
    @tipos = Tipo.all
    render json: @tipos, status: :ok
  end
  
  def create
    to_insert = { :nombre =>params[:nombre] , 
                  :descripcion =>params[:descripcion]}
    @tipo = Tipo.create(to_insert)
    render json: @tipo, status: :ok
  end 
  
  def create_puntos
    @punto = Punto.create(params.permit(:nombre, :direccion, :comentarios, :latitud, :longitud, :fechaActualizacion))
    @tipo= Tipo.find(params[:id])
    @tipo.puntos << @punto
    render json: @tipo, status: :ok
  end
  
  def show
    @tipo = Tipo.find(params[:id])
    render json: @tipo, status: :ok
  end
  
  def get_all
    @tipos = Tipo.all
    render json: @tipos, status: :ok
  end
  
end