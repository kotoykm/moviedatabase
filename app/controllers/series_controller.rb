class SeriesController < ApplicationController
  def index
    @serie = Serie.all()
    render layout: 'laySerie'
  end

  def create
    @serie = Serie.new(serie_params)

    if @serie.save
      redirect_to serie_inicio_path
    else
      render :new #Esto vuelve a renderear la vista asociada al controlador, no olvidar
    end
  end

  def new
    render layout: 'laySerie'
  end

  def success
    render layout: 'laySerie'
  end

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
