class Lunch < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  belongs_to :club
  belongs_to :friend, :class_name => "User"


end
