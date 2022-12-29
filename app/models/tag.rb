class Tag < ApplicationRecord
  belongs_to :configuration
  has_many :dependencies
end
