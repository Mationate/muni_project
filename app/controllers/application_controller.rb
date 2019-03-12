class ApplicationController < ActionController::Base
  def current_ability
    if municipality_signed_in?
      @current_ability ||= Ability.new(current_municipality)
    else
      @current_ability ||= Ability.new(current_user)
    end
  end
end
