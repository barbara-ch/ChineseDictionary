class Hanzi < ActiveRecord::Base
	has_and_belongs_to_many :words, join_table: "hanzis_words"
	mount_uploader :avatar, AvatarUploader
	validates :character, uniqueness: true, presence:  { message: "Musisz podać znak uproszczony" }, length: { is: 1 }
	validates :stroke, numericality: { only_integer: true }, presence:  { message: "Musisz podać ilość kresek" }, length: { in: 1..2,
    too_long: "Liczba kresek jednego znaku nie przekracza 64, wpisana liczba ma więcej niż %{count} cyfry" }
    validates :traditional, presence: { message: "Musisz podać znak tradycyjny" }, length: { is: 1 }
    validates :description, presence: { message: "Opis nie może być pusty" }, length: { maximum: 500,
    too_long: "Opis zbyt długi. Dozwolone jest %{count} znaków" }
end
