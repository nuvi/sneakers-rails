require 'test_helper'

class Sneakers::Rails::Test < ActiveSupport::TestCase
  test "dynamically builds the list of names of workers for sneakers workers environment variable" do
    worker_names = ::Sneakers::Rails.worker_names
    assert worker_names.is_a?(String), "should return a string"
    discovered_workers = worker_names.split(",")
    assert discovered_workers.include?("CoolModelHansel"), "Should have included constant name because it included the Sneakers::Worker"
    assert discovered_workers.include?("ThanksOlaf"), "Should have included constant name because it included the Sneakers::Worker"
    refute discovered_workers.include?("PianoNecktie"), "Should NOT have included constant name because it DID NOT included the Sneakers::Worker"
  end
end
