class Event < ApplicationRecord
	belongs_to :user
	validates_presence_of :name, :start_date, :end_date

	validates :start_date,
    Date: { after: Proc.new { Date.today }, message: 'must be after today' },
    on: :create
    validates :start_date,
    Date: { after: Proc.new { Date.today }, message: 'must be after today' },
    on: :update
    validates :end_date,
    Date: { after_or_equal_to: :start_date, message: 'of the holiday cannot be before the start date' },
    on: :create
    validates :end_date,
    Date: { after_or_equal_to: :start_date, message: 'of the holiday cannot be before the start date' },
    on: :update
end
