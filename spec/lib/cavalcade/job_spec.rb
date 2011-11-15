require "#{File.dirname(__FILE__)}/../../spec_helper"

describe Cavalcade::Job do
  it "is defined as a class" do
    Cavalcade::Job.is_a?(Class).should be_true
  end
end
