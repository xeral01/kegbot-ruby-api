require 'kegbot_api'
require 'fakeweb'

TEST_API_BASEURL = "https://example.kegbot.org/api"

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end

FakeWeb.allow_net_connect = false
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/taps", :response => File.join(File.dirname(__FILE__), "taps.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/kegs", :response => File.join(File.dirname(__FILE__), "kegs.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/kegs/4", :response => File.join(File.dirname(__FILE__), "kegs_4.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/kegs/999999", :response => File.join(File.dirname(__FILE__), "kegs_999999.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/drinks", :response => File.join(File.dirname(__FILE__), "drinks.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/drinks/614", :response => File.join(File.dirname(__FILE__), "drinks_614.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/drinks/999999", :response => File.join(File.dirname(__FILE__), "drinks_999999.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/sessions", :response => File.join(File.dirname(__FILE__), "sessions.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/sessions/65", :response => File.join(File.dirname(__FILE__), "sessions_65.http"))
FakeWeb.register_uri(:get, "#{TEST_API_BASEURL}/sessions/999999", :response => File.join(File.dirname(__FILE__), "sessions_999999.http"))
