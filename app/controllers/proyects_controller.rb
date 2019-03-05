class ProyectsController < ApplicationController
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

  private

  def proyect_params
    params.require(:proyect).permit(:title, :description, :budget, :address, :start_date, :finish_date)
  end
end
