class Haiku < ActiveRecord::Base
  attr_accessible :text

  validates :text, presence: true
end
