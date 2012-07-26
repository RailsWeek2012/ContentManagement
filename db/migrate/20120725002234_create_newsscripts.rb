class CreateNewsscripts < ActiveRecord::Migration
  def change
    create_table :newsscripts do |t|
      t.string :headline
      t.text :news
      t.string :author

      t.timestamps
    end
  end
end
