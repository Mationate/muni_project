class ProyectsController < ApplicationController
  before_action :set_proyect, only: %i[show edit update]
  def index
    @proyect = Proyect.new
    @proyects = Proyect.all
  end

  def create
    @proyect = Proyect.new(proyect_params)
    @proyect.municipality = current_municipality

    if @proyect.save
      respond_to :js
    else
      redirect_to root_path, alert: 'Error al crear proyecto'
    end
  end

  def show
    respond_to :js
  end
  

  def edit
    
  end

  def update
    
  end
  
  

  private

  def proyect_params
    params.require(:proyect).permit(:title, :description, :budget, :address, :start_date, :finish_date)
  end

  def set_proyect
    @proyect = Proyect.find(params[:id])
  end
  
end
