class SearchController < ApplicationController
  def index
  	q = params[:q]
  	@q = params[:q]
    @words = Word.search(content_cont: q).result
    @hanzis = Hanzi.search(character_cont: q).result
    @pinyins = Pinyin.search(syllable_or_alternative_or_tonespelling_cont: q).result
  end

  def search
  end
end
