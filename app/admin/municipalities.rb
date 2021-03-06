ActiveAdmin.register Municipality do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

permit_params :name, :email, :password
filter :email, as: :select
filter :name
index do
  column :id
  column :name
  column :email
  column :miembro_desde do |user|
    time_ago_in_words(user.created_at)
  end
  actions
end

form do |f|
  inputs 'Agregar una municipalidad' do
    input :name
    input :email
    input :password
  end
  actions
end

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
