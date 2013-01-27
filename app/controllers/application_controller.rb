class ApplicationController < ActionController::Base
  include UrlHelper
  protect_from_forgery

  before_filter do
    Mongoid::Multitenancy.current_tenant = Tenant.where(:name => "#{request.subdomain}").first
  end
end
