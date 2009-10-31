require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Gemstreamer::Publisher do
  it "should build a hash of a given array of dependencies" do
    deps = Gemstreamer::Dependencies.new("#{File.join(File.dirname(__FILE__))}/assets/testapp/")
    gems =  deps.dependencies
    publisher =  Gemstreamer::Publisher.new("localhost:3000","michel","testapp")
    puts publisher.build_hash(gems).inspect  
  end
end
