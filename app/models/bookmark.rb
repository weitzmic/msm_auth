class Bookmark < ApplicationRecord

  belongs_to :user

  validates :movie_id, :uniqueness => {:scope => :user_id :message => "already bookmarked"} 
end
