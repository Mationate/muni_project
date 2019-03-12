ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Proyectos recientes" do
          ul do
            Proyect.last(5).map do |proyect|
              li link_to(proyect.title, admin_proyect_path(proyect)) 
            end
          end
        end
      end
      column do
        panel "Usuarios registrados recientemente" do
          ul do
            User.last(5).map do |user|
              li link_to(user.email, admin_user_path(user))
            end
          end
        end
      end
      column do
        panel "Municipalidades registradas" do
          ul do
            Municipality.all.map do |muni|
              li link_to(muni.name, admin_municipality_path(muni))
            end
          end
        end
      end
      column do
        panel "Números" do
          ul do
            ul "Total usuarios: #{User.count}"
            ul "Total proyectos: #{Proyect.count}"
            ul "Total feedbacks: #{Feedback.count}"
          end
        end
      end
    end
    panel "Fechas de término de los proyectos" do
      render 'shared/proyect_chart'
    end
  end # content
end
