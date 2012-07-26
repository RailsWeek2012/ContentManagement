class CreateImpressums < ActiveRecord::Migration
  def change
    create_table :impressums do |t|
      t.text :impressum

      t.timestamps
    end
  end
end
