class Sneakers::Rails::Railtie < ::Rails::Railtie
  config.before_initialize do
    unless ENV["WORKERS"].present? || Sneakers::Rails.worker_names.empty?
      ENV["WORKERS"] = Sneakers::Rails.worker_names
    end
  end
end
