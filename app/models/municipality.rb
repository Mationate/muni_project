class Municipality < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :proyects, dependent: :destroy
  #has_many :answers

  def current_ability
    if admin_signed_in?
      @current_ability ||= Ability.new(current_admin)
    else
      @current_ability ||= Ability.new(current_user)
    end
  end
end
