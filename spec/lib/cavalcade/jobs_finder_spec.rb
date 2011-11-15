require "#{File.dirname(__FILE__)}/../../spec_helper"

describe Cavalcade::JobsFinder do
  describe "#self.defined_jobs" do
    it "returns array of all classes that inherit ProcessingJob" do
      class MyClass1 < Cavalcade::Job; end
      class MyClass2 < Cavalcade::Job; end
      Cavalcade::JobsFinder.defined_jobs.should include(MyClass1)
      Cavalcade::JobsFinder.defined_jobs.should include(MyClass2)
    end
    it "does not include Job" do
      Cavalcade::JobsFinder.defined_jobs.should_not include(Cavalcade::Job)
    end
  end
end
