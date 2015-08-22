require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LintSearch::Search" do
  let(:params_good) { {keyword: "test", query_url: "http://www.google.co.uk/?q=", css_selector: "h3.r a"} }
  let(:params_no_keyword) { {query_url: "http://www.google.co.uk/?q=", css_selector: "h3.r a"} }
  let(:params_no_query_url) { {keyword: "test",css_selector: "h3.r a"} }
  let(:params_no_css_selector) { {keyword: "test", query_url: "http://www.google.co.uk/?q="} }

  context ".new" do
    
    context "with valid parameters" do
      let(:ls) { LintSearch::Search.new(params_good) }

      it "creates a new LintSearch with valid parameters" do
        expect(ls).to be_a LintSearch::Search
      end

      it "sets the keyword" do
        expect(ls.keyword).to eq("test")
      end

      it "sets the query_url" do
        expect(ls.query_url).to eq("http://www.google.co.uk/?q=")
      end

      it "sets the css_selector" do
        expect(ls.css_selector).to eq( "h3.r a")
      end
    end


    context "with invalid parameters" do
      it "raises an Exception when missing the keyword" do
        expect{LintSearch::Search.new(params_no_keyword)}.to raise_exception(/keyword/i)
      end

      it "raises an Exception when missing the query_url" do
        expect{LintSearch::Search.new(params_no_query_url)}.to raise_exception(/query/i)
      end

      it "raises an Exception when missing the css_selector" do
        expect{LintSearch::Search.new(params_no_css_selector)}.to raise_exception(/css/i)
      end


    end

  end

  context ".search" do

  end

  context ".query" do
    let(:search) { LintSearch::Search.new(params_good) }

    it "returns concat of query_url and keyword" do
      expect(search.query).to eq("http://www.google.co.uk/?q=test")
    end
  end
end
