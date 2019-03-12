ActiveAdmin.register Feedback do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :content, :user, :proyect
#
# o
filter :content
filter :user
filter :proyect
#
index do
  column :id
  column :content
  column :user do |feedback|
    link_to(feedback.user.email, admin_user_path(feedback.user.id))
  end
  column :proyect do |feedback|
    link_to(feedback.proyect.title, admin_proyect_path(feedback.proyect.id))
  end
  actions
end
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
