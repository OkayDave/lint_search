

module LintSearch
  class Lint

    attr_reader :search_result

    def initialize(search_result)
      @search_result = search_result

      raise Exception.new("Lint: search_result is required") if @search_result.nil?
      raise Exception.new("Lint: search_result must be a LintSearch::SearchResult") unless @search_result.is_a?(LintSearch::SearchResult)
    end
  end


end
