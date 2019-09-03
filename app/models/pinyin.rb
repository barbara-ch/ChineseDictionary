class Pinyin < ActiveRecord::Base
	has_and_belongs_to_many :words, join_table: "pinyins_words"


	validates :tone, numericality: { message: "Musisz podać ton" }, presence: true, length: { is: 1 }
    validates :syllable, presence: { message: "Zapis nie może być pusty" }, uniqueness: true, length: { maximum: 20 }
    validates :alternative, :tonespelling, presence: { message: "Zapis nie może być pusty" }, length: { maximum: 20 }


end
