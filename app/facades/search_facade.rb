class SearchFacade
  def self.search(term, quantity = 100)
    term = term.split("_").join(" ").titleize
    FireNationService.search(term, quantity)
  end
end