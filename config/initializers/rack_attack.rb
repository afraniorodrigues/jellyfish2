# frozen_string_literal: true

# Rack::Attack aims to let developers quickly mitigate abusive
# requests and rely less on short-term, one-off hacks to block a particular attack.
class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

  # Allow all local traffic
  safelist('allow-localhost') do |req|
    req.ip == '127.0.0.1' || req.ip == '::1'
  end

  # Allow an IP address to make 5 requests every 5 seconds
  throttle('req/ip', limit: 5, period: 5) do |req|
    req.ip
  end
end
