class Event < ApplicationRecord
	belongs_to :user
	validates_presence_of :name, :start_date, :end_date
end
