class Vaccine < ActiveRecord::Base
  belongs_to :patient
  belongs_to :customer
end
