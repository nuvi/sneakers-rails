module Sneakers::Rails
  class Railtie < Rails::Railtie
    initializer "sneakers_rails.set_workers_env_variable" do
      ENV["WORKERS"] = ::Sneakers::Rails.worker_names
    end
  end
end
