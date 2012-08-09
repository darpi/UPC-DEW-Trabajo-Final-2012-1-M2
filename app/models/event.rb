class Event < ActiveRecord::Base
  belongs_to :customer
  has_event_calendar
  attr_accessible :end_at, :name, :start_at , :customer_id
end
