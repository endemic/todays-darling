#!/usr/local/bin/ruby

require 'open-uri'
require 'nokogiri'

Nokogiri::HTML(open('http://www.1101.com/home.html')).css('.darling__txt').each do |content|
  path = "html/#{Time.now.strftime('%Y-%m-%d')}.html"

  File.open(path, 'w:UTF-8') do |file|
    file << content.to_s
  end

  puts "Wrote content to #{path}"
end
