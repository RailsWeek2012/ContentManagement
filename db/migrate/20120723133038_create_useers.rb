class CreateUseers < ActiveRecord::Migration
  def change
    create_table :useers do |t|
      t.string :email
      t.integer :rights
      t.string :password_digest

      t.timestamps
    end
  end
end
