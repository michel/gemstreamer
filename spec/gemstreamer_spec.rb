require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Gemstreamer do
  it "should have a version" do
    Gemstreamer::VERSION.should_not be_nil
  end
end
