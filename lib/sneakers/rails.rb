require "sneakers/rails/version"
require "sneakers/rails/worker_override"
require "sneakers/rails/railtie"

module Sneakers
  module Rails
    def self.workers
      @workers ||= []
    end

    def self.add_worker(worker_constant_name)
      @workers << worker_constant_name
    end

    def self.worker_names
      workers.join(",")
    end
  end
end
