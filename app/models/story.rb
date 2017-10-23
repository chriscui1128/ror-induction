class Story < ApplicationRecord
  validates_presence_of :name, :link
end
