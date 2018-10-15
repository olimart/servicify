$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "servicify"

require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)

def json_body(response)
  JSON.parse(response.body)
end
