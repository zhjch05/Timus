require "aruba/api"
RSpec.configure do |config|
  config.include(Aruba::Api)
  Aruba.config.working_directory = "./aruba_test"
end
