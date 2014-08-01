require "omniauth/bouncer/version"
require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class  Bouncer < OmniAuth::Strategies::OAuth2

      args [:client_id, :client_secret, :site_url]

      option :name, "bouncer"

      option :client_id, nil
      option :client_secret, nil
      option :site_url, nil
      option :client_options, {
        :access_token_method => :post,
      }

      option :authorize_params, {:scope => "read", :response_type => "code"}

      def client
        options.client_options[:site] = options.site_url
        options.client_options[:authorize_url] = File.join(options.site_url, '/authorize')
        options.client_options[:token_url] = File.join(options.site_url, '/token')
        super
      end

      uid do
        request.params['uid']
      end

      info do
        {}
      end

      extra do
        {}
      end      
    end
  end
end
