class Gain < ApplicationRecord
  validates_presence_of :description, :user_id
end
