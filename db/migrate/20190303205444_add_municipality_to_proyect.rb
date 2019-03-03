class AddMunicipalityToProyect < ActiveRecord::Migration[5.2]
  def change
    add_reference :proyects, :municipality, foreign_key: true
  end
end
