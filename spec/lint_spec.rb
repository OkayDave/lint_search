require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LintSearch::Lint" do
  let(:search_result) { { search_result: LintSearch::SearchResult.new(url: "http://www.bbc.co.uk/", title: "BBC") } }
  let(:params_good)   { { linter_url: "http://validator.w3.org", css_selector: "li.info" } }
  let(:params_no_url) { { css_selector: "li.info" } }
  let(:params_no_css_selector) { { linter_url: "http://validator.w3.org" } }

  context ".new" do
    context "with valid data" do
      let(:lint) { LintSearch::Lint.new(search_result.merge(params_good)) }
      
      it "creates a new Lint object" do
        expect(lint).to be_a(LintSearch::Lint)
      end

      it "sets the search_result variable" do
        expect(lint.search_result).to be_a(LintSearch::SearchResult)
        expect(lint.search_result).to eq(search_result[:search_result])
      end

      it "sets the linter_url variable" do
        expect(lint.linter_url).to eq(params_good[:linter_url])
      end

      it "sets the css_selector variable" do
        expect(lint.css_selector).to eq(params_good[:css_selector])
      end
    end

    context "with invalid data" do
      
      it "raises an exception when no search result is passed" do
        expect{LintSearch::Lint.new(params_good)}.to raise_exception(/search_result/i)
      end

      it "raises an exception when search result is not a SearchResult" do
        expect{LintSearch::Lint.new(params_good.merge({search_result: 10}))}.to raise_exception(/LintSearch::SearchResult/i)
      end

      it "raises an exception when no linter url is passed" do
        expect{LintSearch::Lint.new(params_no_url.merge(search_result))}.to raise_exception(/linter_url/i)
      end

      it "raises an exception when no css_selector is passed" do
        expect{LintSearch::Lint.new(params_no_css_selector.merge(search_result))}.to raise_exception(/css_selector/i)
      end
  
    end

  end


end
