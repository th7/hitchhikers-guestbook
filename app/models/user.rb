class User < ActiveRecord::Base

  has_many :entries

  validates_presence_of :username
end
