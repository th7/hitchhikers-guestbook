class Entry < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :message, :location, :user, :created_at
end
