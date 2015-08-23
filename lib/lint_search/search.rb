require 'rubygems'
require 'mechanize'

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
  
    def search
      robot = Mechanize.new 
      robot.user_agent_alias = 'Linux Firefox'

      robot.get(@query_url) do |page|

        # Fill out the search form
        form = page.forms.first
        form.texts.first.value = @keyword

        # Nice opportunity to use the "I'm feeling lucky!" button for google,
        # though as this app aims to be search agnostic it's not a good fit 
        # for other providers
        search_result = form.click_button(form.buttons.first)
        first_result = robot.click(search_result.search(@css_selector).first)


        # create a SearchResult object
        return LintSearch::SearchResult.new(url: first_result.uri.to_s, title: first_result.title)    
      end
    end

    def query
      "#{@query_url}#{@keyword}"
    end

  end
end
