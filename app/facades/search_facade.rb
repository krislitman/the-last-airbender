class SearchFacade
  def self.search(term, quantity = 100)
    term = term.split("_").join(" ").titleize
    SearchService.search(term, quantity)
  end
  def self.format_nation(nation)
    nation.split("_").join(" ").titleize
  end
end