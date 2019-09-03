class Partofspeach < ActiveRecord::Base
	has_many :words

	validates :name, :short, presence: true


end
