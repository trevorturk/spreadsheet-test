require 'spreadsheet'

book = Spreadsheet.open 'sheet.xls'

sheet1 = book.worksheet 0

sheet1.each do |row|
  row.each do |cell|
    puts cell
  end
end

# ~/code/spreadsheet-test > ruby sheet.rb
# [14:24:10 /Users/trevor/.rvm/gems/ree-1.8.7-2011.03/gems/ruby-ole-1.2.11.1/lib/ole/storage/base.rb:394:validate!]
# WARN   may not be a valid OLE2 structured storage file
# Test
# 123.0

# expected "123" but got "123.0"
