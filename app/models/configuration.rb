class Configuration < ApplicationRecord
  belongs_to :project
  has_many :dependencies
  has_many :tags
end
