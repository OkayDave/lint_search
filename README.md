# LintSearch

LintSearch is a ruby console application for searching for a keyword and linting the HTML of the first result.


## Installation

`gem install lint_search`

## Usage

For full information:

`lint_search help`

If no alternatives are provided, LintSearch will perform the search using Google and the linting using the W3C validator.

To search for a keyword using only default settings run:

`lint_search search [KEYWORD]`

For example, `lint_search search banana` will output:

```
Searching for banana...
Complete!
Lint results of https://en.wikipedia.org/wiki/Banana via https://validator.w3.org
(0)
Info: The Content-Type was text/html. Using the HTML parser.
---

(1)
Info: Using the schema for HTML with SVG 1.1, MathML 3.0, RDFa 1.1, and ITS 2.0 support.
---

(2)
Warning: A table row was 2 columns wide, which is less than the column count established by the first row (3).From line 1128, column 22; to line 1129, column 5="2"></td>↩</tr>↩<tr>↩
---

(3)
Warning: A table row was 2 columns wide, which is less than the column count established by the first row (3).From line 1187, column 22; to line 1188, column 5="2"></td>↩</tr>↩<tr>↩
---

(4)
Warning: Potentially bad value zh-min-nan for attribute lang on element a: The grandfathered language tag zh-min-nan is deprecated. Use nan instead.From line 1680, column 1670; to line 1680, column 1797-min-nan"><a href="//zh-min-nan.wikipedia.org/wiki/Kin-chio" title="Kin-chio – Chinese (Min Nan)" lang="zh-min-nan" hreflang="zh-min-nan">Bân-lâSyntax of language tag:An RFC 5646 language tag consists of hyphen-separated ASCII-alphanumeric subtags. There is a primary tag identifying a natural language by its shortest ISO 639 language code (e.g. en for English) and zero or more additional subtags adding precision. The most common additional subtag type is a region subtag which most commonly is a two-letter ISO 3166 country code (e.g. GB for the United Kingdom). IANA maintains a registry of permissible subtags.
---

(5)
Warning: Potentially bad value zh-min-nan for attribute hreflang on element a: The grandfathered language tag zh-min-nan is deprecated. Use nan instead.From line 1680, column 1670; to line 1680, column 1797-min-nan"><a href="//zh-min-nan.wikipedia.org/wiki/Kin-chio" title="Kin-chio – Chinese (Min Nan)" lang="zh-min-nan" hreflang="zh-min-nan">Bân-lâSyntax of language tag:An RFC 5646 language tag consists of hyphen-separated ASCII-alphanumeric subtags. There is a primary tag identifying a natural language by its shortest ISO 639 language code (e.g. en for English) and zero or more additional subtags adding precision. The most common additional subtag type is a region subtag which most commonly is a two-letter ISO 3166 country code (e.g. GB for the United Kingdom). IANA maintains a registry of permissible subtags.
---

(6)
Warning: Potentially bad value zh-yue for attribute lang on element a: The language tag zh-yue is deprecated. Use yue instead.From line 1680, column 21690; to line 1680, column 21801i-zh-yue"><a href="//zh-yue.wikipedia.org/wiki/%E9%A6%99%E8%95%89" title="香蕉 – Cantonese" lang="zh-yue" hreflang="zh-yue">粵語</a>Syntax of language tag:An RFC 5646 language tag consists of hyphen-separated ASCII-alphanumeric subtags. There is a primary tag identifying a natural language by its shortest ISO 639 language code (e.g. en for English) and zero or more additional subtags adding precision. The most common additional subtag type is a region subtag which most commonly is a two-letter ISO 3166 country code (e.g. GB for the United Kingdom). IANA maintains a registry of permissible subtags.
---

(7)
Warning: Potentially bad value zh-yue for attribute hreflang on element a: The language tag zh-yue is deprecated. Use yue instead.From line 1680, column 21690; to line 1680, column 21801i-zh-yue"><a href="//zh-yue.wikipedia.org/wiki/%E9%A6%99%E8%95%89" title="香蕉 – Cantonese" lang="zh-yue" hreflang="zh-yue">粵語</a>Syntax of language tag:An RFC 5646 language tag consists of hyphen-separated ASCII-alphanumeric subtags. There is a primary tag identifying a natural language by its shortest ISO 639 language code (e.g. en for English) and zero or more additional subtags adding precision. The most common additional subtag type is a region subtag which most commonly is a two-letter ISO 3166 country code (e.g. GB for the United Kingdom). IANA maintains a registry of permissible subtags.
---
```




## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/OkayDave/lint_search.

