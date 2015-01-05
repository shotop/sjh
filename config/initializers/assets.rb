%w( about blog contacts music projects translations welcome application ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js"]
end