class Idea < ActiveRecord::Base
  belongs_to :catagory
  validates :name, :description, presence: true
end
