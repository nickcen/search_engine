# encoding:utf-8
require 'spec_helper'

module SearchEngine
  describe Sogou do
    it "should return 10 records" do
      SearchEngine::Sogou.search('啪啪', 0, 'huxiu.com')
    end
  end
end