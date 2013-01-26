class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter do
    Mongoid::Multitenancy.current_tenant = Tenant.where(:name => "#{request.subdomains.first}").first
  end
end
