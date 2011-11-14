require "#{File.dirname(__FILE__)}/../../spec_helper"

require "rake"

describe "jobs.rake" do
  it "creates an enqueue task in own namespace for each Job" do
    class File1 < Cavalcade::Job; end
    class SomeClass < Cavalcade::Job; end
    class SomeLongClassName < Cavalcade::Job; end
    Cavalcade::JobsFinder.stub!(:defined_jobs).and_return([File1, SomeClass, SomeLongClassName])
    Rake.application = Rake::Application.new
    load "lib/tasks/jobs.rake"
    tasks = Rake.application.tasks.map{|t| t.name}
    tasks.should include("cavalcade:jobs:file1:enqueue")
    tasks.should include("cavalcade:jobs:some_class:enqueue")
    tasks.should include("cavalcade:jobs:some_long_class_name:enqueue")
  end
end