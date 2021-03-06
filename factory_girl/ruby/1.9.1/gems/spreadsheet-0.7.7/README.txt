Last Update: 26.06.2012 - Zeno R.R. Davatz

= Spreadsheet

https://github.com/zdavatz/spreadsheet

The Mailing List can be found here:

http://groups.google.com/group/rubyspreadsheet

The code can be found here:

https://github.com/zdavatz/spreadsheet

For a viewable directory of all recent changes, please see:

http://scm.ywesee.com/?p=spreadsheet/.git;a=summary

To get a graphical overview of the Library please see

http://spreadsheet.rubyforge.org/spreadsheet.jpeg

For Non-GPLv3 commercial licencing, please see:

http://www.spreadsheet.ch

== Description

The Spreadsheet Library is designed to read and write Spreadsheet Documents.
As of version 0.6.0, only Microsoft Excel compatible spreadsheets are
supported. Spreadsheet is a combination/complete rewrite of the
Spreadsheet::Excel Library by Daniel J. Berger and the ParseExcel Library by
Hannes Wyss. Spreadsheet can read, write and modify Spreadsheet Documents.

== Notes from Users

Alfred: a@boxbot.org: I think it should be noted in the README file that the library doesn't
recognize cell formats in Excel created documents, which results in
Floats returned for any number.

== What's new?

* Supported outline (grouping) functions
* Significantly improved memory-efficiency when reading large Excel Files
* Limited Spreadsheet modification support
* Improved handling of String Encodings


== On the Roadmap

* Improved Format support/Styles
* Document Modification: Formats/Styles
* Formula Support
* Document Modification: Formulas
* Write-Support: BIFF5
* Ruby 1.9 Support;
* Remove backward compatibility code

Note: Spreadsheet supports Ruby 1.8.6, 1.8.7, 1.9.2, 1.9.3

You will get a deprecated warning about iconv when using spreadsheet with Ruby
1.9.3. So replacing iconv is on the Roadmap as well ;).

== Dependencies

* ruby 1.8
* ruby-ole[http://code.google.com/p/ruby-ole/]


== Examples

Have a look at the GUIDE[link://files/GUIDE_txt.html].


== Installation

Using RubyGems[http://www.rubygems.org]:

* sudo gem install spreadsheet

If you don't like RubyGems[http://www.rubygems.org], let me know which
installation solution you prefer and I'll include it in the future.

If you can use 'rake' and 'hoe' library is also installed, you can 
build a gem package as follows:

* rake gem 

The gem package is built in pkg directory.

== Testing

Bundler support added.
Running tests:
* bundle install
* ./test/suite.rb



== Authors

Original Code:

Spreadsheet::Excel:
Copyright (c) 2005 by Daniel J. Berger (djberg96@gmail.com)

ParseExcel:
Copyright (c) 2003 by Hannes Wyss (hannes.wyss@gmail.com)

New Code:
Copyright (c) 2010 ywesee GmbH (mhatakeyama@ywesee.com, zdavatz@ywesee.com)


== License

This library is distributed under the GPLv3.
Please see the LICENSE[link://files/LICENSE_txt.html] file.

