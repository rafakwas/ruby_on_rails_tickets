class Event < ApplicationRecord
    has_many :tickets
    validates :artist, :presence => true, :length => { :minimum => 2 }
    validates :price_low, :presence => true, :numericality => true
    validates :price_high, :presence => true, :numericality => true
    validates :event_date, :presence => true
		validate :event_date_not_from_past
		validate :price_high_not_lower_than_price_low
    def event_date_not_from_past
		  if event_date < Date.today
				errors.add('Data wydarzenia', 'nie może być z przeszłości')
			end
		end
		def price_high_not_lower_than_price_low
			if price_high < price_low
				errors.add('Cena biletu', 'max nie może być mniejsza od low')
			end
		end
end
