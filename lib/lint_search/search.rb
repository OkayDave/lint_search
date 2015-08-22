module LintSearch
  class Search
    attr_reader :query_url, :css_selector, :keyword
                                                                         
    def initialize(options={})
      @query_url =    options[:query_url]     
      @css_selector = options[:css_selector] 
      @keyword =      options[:keyword]
      
      raise Exception.new("Keyword required") if @keyword.nil?
      raise Exception.new("CSS Selector required") if @css_selector.nil?
      raise Exception.new("Query url required") if @query_url.nil?
    end
  end
end
