class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates_presence_of :email, :name
end
