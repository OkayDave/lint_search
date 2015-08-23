require 'rubygems'
require 'mechanize'

module LintSearch
  class Lint

    attr_reader :search_result, :linter_url, :css_selector

    def initialize(options)
      @search_result = options[:search_result]
      @linter_url    = options[:linter_url]
      @css_selector  = options[:css_selector]

      raise Exception.new("Lint: search_result is required") if @search_result.nil?
      raise Exception.new("Lint: search_result must be a LintSearch::SearchResult") unless @search_result.is_a?(LintSearch::SearchResult)
      raise Exception.new("Lint: linter_url is required") if @linter_url.nil?
      raise Exception.new("Lint: css_selector is required") if @css_selector.nil?
    end

    def lint
      robot = Mechanize.new
      robot.user_agent_alias = 'Linux Firefox'

      robot.get(@linter_url) do |page|
        form = page.forms.first
        form.texts.first.value = @search_result.url
        results_page = form.submit
      
        lint_results = []
        results_page.search(@css_selector).each do |item|
          lint_results << item.text
        end
        
        return lint_results
      end
    end
  end


end
