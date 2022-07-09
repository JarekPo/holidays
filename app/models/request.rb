class Request < ApplicationRecord
	validates_presence_of :title, :start_date, :end_date

	validates :end_date,
    Date: { after_or_equal_to: :start_date, message: 'of the holiday cannot be before the start date' },
    on: :create
    validates :end_date,
    Date: { after_or_equal_to: :start_date, message: 'of the holiday cannot be before the start date' },
    on: :update
end
