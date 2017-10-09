require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './site.rb'

class Scraper

  def get_page
    doc = Nokogiri::XML(open("http://whc.unesco.org/en/list/rss/"))
  end

  def make_sites
    self.get_page.xpath('//item').each do |item|
      site = Site.new
      site.title = item.xpath('title').text
      site.description = item.css('description').text
    end
  end

end
