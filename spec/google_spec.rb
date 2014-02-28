# encoding:utf-8
require 'spec_helper'

module SearchEngine
  describe Google do
    it "should return 10 records" do
      SearchEngine::Google.search('啪啪', 0, 'huxiu.com')
    end
  end
end