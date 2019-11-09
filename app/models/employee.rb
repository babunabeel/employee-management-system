class Employee < ApplicationRecord
	validates :firstname, :lastname, presence: true
	validates :email, uniqueness: true, presence: true
	validates_format_of :firstname, :lastname, :with => /^[-a-z]+$/, :multiline => true, :message => "should only contains alphabates."
end
