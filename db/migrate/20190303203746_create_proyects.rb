class CreateProyects < ActiveRecord::Migration[5.2]
  def change
    create_table :proyects do |t|
      t.string :title
      t.string :description
      t.string :budget
      t.string :address
      t.float :lattitude
      t.float :longitude
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end
end
