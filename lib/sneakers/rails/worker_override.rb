module Sneakers::Worker
  def self.included(base)
    base.extend ClassMethods

    base.class_eval do
      binding.pry
      puts "Included #{self.to_s}"
      ::Sneakers::Rails.add_worker(self.to_s)
    end

    super
  end
end
