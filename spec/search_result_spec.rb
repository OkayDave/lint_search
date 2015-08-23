require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LintSearch::SearchResult" do
  let(:params_good)     { {url: "http://www.bbc.co.uk/", title: "BBC"} }
  let(:params_no_url)   { {title: "BBC"} }
  let(:params_no_title) { {url: "http://www.bbc.co.uk/"} }

  context '.new' do
    
    it "creates a SearchResult with valid paremeters " do
      expect(LintSearch::SearchResult.new(params_good)).to be_a(LintSearch::SearchResult)
    end

    it "raises an exception when missing the url" do
      expect{LintSearch::SearchResult.new(params_no_url)}.to raise_exception(/url/i)
    end

    it "raises an exception when missing the title" do
      expect{LintSearch::SearchResult.new(params_no_title)}.to raise_exception(/title/i)
    end

  end

end
