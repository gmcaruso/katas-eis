require_relative 'models/tablero.rb'
require_relative 'models/barco.rb'

module Battleship
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    
    get '/' do
      File.read(File.join('public', 'index.html'))
    end

    get :batalla_naval do
       render 'batalla/inicio'
    end

    post :crear_tablero do
      session[:tablero]= Tablero.new(params[:x], params[:y])
      @tablero_creado= "Tablero creado de #{params[:x]} por #{params[:y]}"
      
      render 'batalla/inicio' 
    end

    post :crear_barco do
      pepepe= params[:posiciones].to_s
      barco= Barco.new([pepepe])
      puts "#{pepepe} SDSSSSSSSSSSSSSS"
      @tablero=session[:tablero]
      @barco_creado=@tablero.agregar_barco(barco)
      session[:tablero]= @tablero
            
      render 'batalla/inicio' 
    end

    post :ver_posicion do
      tablero= session[:tablero]
      @hay_barco= tablero.ver_posicion(params[:posicion])
      render 'batalla/inicio' 
    end

    post :disparar do
      tablero= session[:tablero]
      @disparo= tablero.disparar_en(params[:posicion_en_mira])
      session[:tablero]= tablero      

      render 'batalla/inicio' 
    end

  end
end
