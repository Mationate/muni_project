class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(
      content: params[:feedback][:content],
      proyect_id: params[:proyect_id]
    )
    @feedback.user = User.last

    if @feedback.save
      respond_to :js
    else
      redirect_to root_path, alert:'Error al agregar tu mensaje, intenta nuevamente !'
    end
  end
end
