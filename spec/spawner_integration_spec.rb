require 'rubygems'

# require all the rails stack, since we want to test spawner in that regard
require 'active_record'
require 'action_controller'
require 'logger'
require 'spawner'

describe Spawner do
  before(:all) do
    ActiveRecord::Base.logger = Logger.new('/dev/null') # skip log messages from Spawner
  end

  before(:each) do
    ActiveRecord::Base.stub_chain("connection.reconnect!").and_return(true)
  end

  it "spawns a default process" do
    process = Spawner.run { sleep 0 }
    process.type.should eql(:fork)
    process.handle.should_not be_nil
    process.to_s.should =~ /Spawner::SpawnerId/
  end

  it "spawns an explicit forked process" do
    process = Spawner.run(:method => :fork) { sleep 0 }
    process.type.should eql(:fork)
  end

  it "spawns an explicit thread" do
    process = Spawner.run(:method => :thread) { sleep 0 }
    process.type.should eql(:thread)
  end

  it "spawns a long process and verifies it's alive" do
    process = Spawner.run { sleep 0.2 }
    Spawner.alive?(process.handle).should be_true
  end

  it "spawns a short process and verifies it's not alive" do
    process = Spawner.run { sleep 0.2 }
    sleep 0.5 # make sure the process finishes
    Spawner.alive?(process.handle).should be_false
  end

  it "waits on a long process" do
    process = Spawner.run { sleep 0.2 }
    Spawner.wait(process)
    Spawner.alive?(process.handle).should be_false # this won't execute until the process finishes
  end

end
