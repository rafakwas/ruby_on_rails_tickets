class Ticket < ApplicationRecord
    belongs_to :event
    belongs_to :user
    validates :name, :presence => true, :length => { :minimum => 6 }
    validates :email_address, :presence => true, format: { with: /\A^.+@.+$\z/, message: "Nieprawidłowy adres email" }
    validates :price, :presence => true
    validates :phone, :presence => true, length: { minimum: 9, maximum: 9 }, format: { with: /\A^[0-9]+$\z/, message: "Nieprawidłowy numer telefonu" }
end
