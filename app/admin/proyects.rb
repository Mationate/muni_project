ActiveAdmin.register Proyect do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
filter :title
filter :address
#
permit_params :title, :description, :budget, :address, :lattitude, :longitude, :start_date, :finish_date
index do  
  column :id  
  column :title
  column :description
  column :budget
  column :address
  column :start_date
  column :finish_date
  column :municipality do |proyect|
      link_to(proyect.municipality.email, admin_municipality_path(proyect.municipality.id))
  end
  column :feedbacks do |proyect|
    proyect.feedbacks.count
  end
  actions
end


form do |f|
  inputs 'Crear un proyecto' do
    input :title
    input :description
    input :budget
    input :address
    input :lattitude
    input :longitude
    input :start_date
    input :finish_date

  end
  actions
end
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
