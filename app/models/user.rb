class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :bookmarks, :class_name => "Bookmark", :foreign_key => "user_id"
  has_many :bookmarks
  has_many :movies, :through => :bookmarks
end
