class ProyectsController < ApplicationController
  before_action :set_proyect, only: %i[show edit update]
  def index
    @proyect = Proyect.new
    @proyects = Proyect.all
    @feedback = Feedback.new
    @feedbacks = @proyect.feedbacks.order('id DESC')
    @hash = Gmaps4rails.build_markers(@proyects) do|proyect, marker|
      marker.lat proyect.latitude
      marker.lng proyect.longitude
      marker.json({ title: proyect.title, id: proyect.id })
    end

  end

  def create
    @proyect = Proyect.new(proyect_params)
    @proyect.municipality = current_municipality
    if @proyect.save
      redirect_to root_path
    else
      redirect_to root_path, alert: 'Error al crear proyecto'
    end
  end

  def show
    @feedback = Feedback.new
    @feedbacks = @proyect.feedbacks.order('id DESC')
    respond_to :js
  end

  def edit
    respond_to :js
  end

  def update
    respond_to do |format|
      if @proyect.update(proyect_params)
        format.js
      else
        format.html {redirect_to root_path, alert: 'Hubo un erro al actualizar el proyecto, intente nuevamente'}
      end
    end
  end
  
  

  private

  def proyect_params
    params.require(:proyect).permit(:title, :description, :budget, :address, :latitude, :longitude, :start_date, :finish_date)
  end

  def set_proyect
    @proyect = Proyect.find(params[:id])
  end
  
end
