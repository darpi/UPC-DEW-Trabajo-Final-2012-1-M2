class Patient < ActiveRecord::Base
  belongs_to :customer
  has_many:vaccines
end
