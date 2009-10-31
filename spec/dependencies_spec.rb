require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Gemstreamer::Dependencies do
  it "should get a list of dependencies" do
    deps = Gemstreamer::Dependencies.new("#{File.join(File.dirname(__FILE__))}/assets/testapp/")
    deps.dependencies.should_not be_nil
  end
end
