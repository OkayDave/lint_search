module LintSearch
  class SearchResult
    attr_reader :url, :title
    attr_writer :url, :title

    def initialize(url: nil, title: nil)
      @url = url
      @title = title

      raise Exception.new("SearchResult: URL is required") if @url.nil?
      raise Exception.new("SearchResult: title is required") if @title.nil?
    end
  end

end
