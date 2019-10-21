class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
  has_many :gear_posts
  
  def first_name
    name.split.first
  end
  def last_name
    name.split.last
  end
end
