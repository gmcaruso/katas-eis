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

    post :crear_barco_chico do
      secciones=[]
      if params[:posicion_uno].to_s != ""
        secciones.push(params[:posicion_uno].to_s)
      end
      barco= Barco.new(secciones)
      @tablero=session[:tablero]
      @barco_creado=@tablero.agregar_barco(barco)
      session[:tablero]= @tablero
            
      render 'batalla/inicio' 
    end

    post :crear_barco_grande do
      secciones=[]
      if params[:posicion_uno].to_s != ""
        secciones.push(params[:posicion_uno].to_s)
      end
      if params[:posicion_dos].to_s != ""
        secciones.push(params[:posicion_dos].to_s)
      end
      barco= Barco.new(secciones)
      @tablero=session[:tablero]
      @barco_creado=@tablero.agregar_barco(barco)
      session[:tablero]= @tablero
            
      render 'batalla/inicio' 
    end

  end
end
