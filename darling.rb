#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

Nokogiri::HTML(open('http://www.1101.com/home.html')).css('#todays_darling').each do |content|
  File.open("html/#{Time.now.strftime('%Y-%m-%d')}.html", 'w:UTF-8') do |file|
    file << content.to_s
  end
end
