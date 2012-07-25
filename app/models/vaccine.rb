class Vaccine < ActiveRecord::Base
  belongs_to :patients
  belongs_to :customers
end
