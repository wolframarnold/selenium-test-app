class Suggestion < ActiveRecord::Base
  validates_presence_of :user_id, :title, :rating

  belongs_to :user
end
