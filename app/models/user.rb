class User < ActiveRecord::Base

  has_many :entries

  validates_presence_of :username, :password_digest
end
