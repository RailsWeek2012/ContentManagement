class AddAttachmentPhotoToManagements < ActiveRecord::Migration
  def self.up
    change_table :managements do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :managements, :photo
  end
end
