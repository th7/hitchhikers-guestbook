class User < ActiveRecord::Base

  has_many :entries

  validates_presence_of :username, :password
  validates_uniqueness_of :username

  has_secure_password
end
