require "#{File.dirname(__FILE__)}/../spec_helper"

describe "bin/cavalcade" do
  def execute_with_args(args_str = "")
    return `#{File.dirname(__FILE__)}/../../bin/cavalcade #{args_str} 2>&1`
  end
  
  describe "without subcommand" do
    it "reports error" do
      execute_with_args().should =~ /no subcommand/i
    end
  end
  describe "with bad subcommand" do
    it "reports error" do
      execute_with_args("asdf").should =~ /unknown/i
    end
  end
  
  describe "bad environment" do
    %w(enqueue list-jobs).each do |subcommand|
      describe "passed to #{subcommand}" do
        it "reports error" do
          execute_with_args("#{subcommand} -e /bad/path/to/env.rb").should =~ /unable to load/i
        end
      end
    end
  end
  
  describe "bad job" do
    describe "passed to enqueue" do
      it "reports error" do
        execute_with_args("enqueue -e #{File.dirname(__FILE__)}/../../lib/cavalcade.rb -j FakeJob").should =~ /not found/i
      end
    end
  end
end
