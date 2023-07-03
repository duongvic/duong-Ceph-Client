require 'json'
require 'ceph/client'
require 'ceph/client/base'

module Ceph
  module Client
    class RBD < BaseApi
      include Ceph::Errors

      def list(image_spec, limit = nil, marker = nil, filters = {})
        options = {
          **filters
        }
        unless marker.nil?
          options[:marker] = marker
        end
        unless limit.nil?
          options[:limit] = limit
        end
        response = @api.get("block/image/#{image_spec}", options)
        body = JSON.parse(response.body)
        unless [200, 201].include?(response.status)
          error = body['detail']
          raise BadRequest, error
        end
          resp = body.nil? ? response.status : body
        return resp
      rescue StandardError => err
        raise BadRequest, err.message
      end
    end
  end
end
