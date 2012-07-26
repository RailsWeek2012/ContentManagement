class Management < ActiveRecord::Base
  attr_accessible :about, :bday, :email, :hobby, :job, :name, :prename, :school, :study, :photo

  validates :name, :prename, :email, presence: true

  has_attached_file :photo, :styles => { :small => "400x400>", :thumb => "150x150>" },
      :url  => "/assets/managements/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/managements/:id/:style/:basename.:extension"
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
