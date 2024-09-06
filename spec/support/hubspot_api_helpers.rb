module DeprecatedHubspotApiHelpers
  def hubspot_api_url(path)
    URI.join(DeprecatedHubspot::Config.base_url, path)
  end
end

RSpec.configure do |c|
  c.include DeprecatedHubspotApiHelpers
end
