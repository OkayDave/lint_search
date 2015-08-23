require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LintSearch::Lint" do
  let(:search_result) { LintSearch::SearchResult.new(url: "http://www.bbc.co.uk/", title: "BBC") }

  context ".new" do
    context "with valid data" do
      let(:lint) { LintSearch::Lint.new(search_result) }
      
      it "creates a new Lint object" do
        expect(lint).to be_a(LintSearch::Lint)
      end

      it "sets the search_result variable" do
        expect(lint.search_result).to be_a(LintSearch::SearchResult)
        expect(lint.search_result).to eq(search_result)
      end
    end

    context "with invalid data" do
      
      it "raises an exception when no search result is passed" do
        expect{LintSearch::Lint.new(nil)}.to raise_exception(/required/i)
      end

      it "raises an exception when search result is not a SearchResult" do
        expect{LintSearch::Lint.new(10)}.to raise_exception(/SearchResult/i)
      end
  
    end

  end


end
