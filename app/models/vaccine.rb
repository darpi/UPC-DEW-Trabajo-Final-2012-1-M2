class Vaccine < ActiveRecord::Base
  belongs_to :patient
  belongs_to :customerz
end
