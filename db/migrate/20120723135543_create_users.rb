class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.integer :rights
      t.string :password_digest

      t.timestamps
    end
  end
end
