require 'faraday'
require 'nokogiri'

module SearchEngine
  class Sogou
    def self.conn
      @conn ||= Faraday.new(:url => 'http://www.sogou.com') do |faraday|
        faraday.request  :url_encoded
        faraday.response :logger
        faraday.adapter  :net_http
      end
    end

    def self.search(keyword, page = 0, site = '')
      if site
        keyword = "#{keyword} site:#{site}"
      end
      response = conn.get do |req|
        req.url '/web', {:query => keyword, :page => page}
        req.headers['User-Agent'] = "Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36"
      end

      doc = Nokogiri::HTML(response.body)
      doc.css('h3.pt a').each do |link|
        puts link['href']
        puts link.text
      end
    end
  end
end