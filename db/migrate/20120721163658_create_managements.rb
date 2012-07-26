class CreateManagements < ActiveRecord::Migration
  def change
    create_table :managements do |t|
      t.string :name
      t.string :prename
      t.string :email
      t.date :bday
      t.string :school
      t.string :study
      t.string :job
      t.text :hobby
      t.text :about
      t.string :position
      t.string :pic

      t.timestamps
    end
  end
end
