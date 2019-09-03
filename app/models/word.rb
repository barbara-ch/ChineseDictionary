class Word < ActiveRecord::Base
	has_and_belongs_to_many :pinyins, join_table: "pinyins_words"
	has_and_belongs_to_many :hanzis, join_table: "hanzis_words"
	has_and_belongs_to_many :examples, join_table: "examples_words"
	belongs_to :partofspeaches
	accepts_nested_attributes_for :pinyins
	accepts_nested_attributes_for :hanzis
	accepts_nested_attributes_for :examples, allow_destroy: true
	scope :classifier, -> { where(pos_id: '10') }


	validates :content, length: { maximum: 100,
    too_long: "Opis zbyt długi. Dozwolone jest %{count} znaków" }
 	validates :pos_id, presence: true
 	validates_associated :hanzis
 	validates_associated :pinyins
 	validates_associated :examples
 	validates_associated :partofspeaches



end
