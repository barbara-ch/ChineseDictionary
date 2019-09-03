class Example < ActiveRecord::Base
	has_and_belongs_to_many :words, join_table: "examples_words"


	validates :chinese, :spelling, :polish, presence:  { message: "Pola przykładu nie mogą być puste" }, length: { maximum: 500,
    too_long: "Opis zbyt długi. Dozwolone jest %{count} znaków" }
end
