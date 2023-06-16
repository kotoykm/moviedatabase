class DocumentaryfilmsController < ApplicationController
  def index
    @docu = Documentaryfilm.all()

    render layout: 'layDocu'
  end

  def create
    @docu = Documentaryfilm.new(docu_params)

    if @docu.save
      redirect_to docu_inicio_path
    else
      render :new
    end
  end

  def new
    render layout: 'layDocu'
  end

  def success
    render layout: 'layDocu'
  end

  def docu_params
    params.require(:documentaryfilm).permit(:name, :synopsis, :director)
  end
end
