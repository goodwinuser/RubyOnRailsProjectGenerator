class Dependency < ApplicationRecord
  belongs_to :configuration
  has_many :tags
end
