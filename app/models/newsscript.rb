class Newsscript < ActiveRecord::Base
  attr_accessible :author, :headline, :news

  validates :author, :headline, :news, presence: true

  paginates_per 5
end
