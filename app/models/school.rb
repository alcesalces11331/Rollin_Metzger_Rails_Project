class School < ActiveRecord::Base
  has_many :cats
  has_many :courses
end