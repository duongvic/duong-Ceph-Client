require 'json'
require 'ceph/client'
require 'ceph/client/base'

module Ceph
  module Client
    class RBDSnapshot < BaseApi
      include Ceph::Errors

      def create(image_spec, snapshot_name)
        options = {
          :snapshot_name => snapshot_name
        }
        response = @api.post("/block/image/#{image_spec}/snap", options.to_json)
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

      def update(image_spec, snapshot_name, new_snapshot_name = nil, is_protected = false)
        options = {}
        if new_snapshot_name
          options['new_snapshot_name'] = new_snapshot_name
        end
        unless is_protected.nil?
          data['is_protected'] = is_protected
        end
        response = @api.post("block/image/#{image_spec}/snap/#{snapshot_name}", options.to_json)
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

      def delete(image_spec, snapshot_name)
        options = {}
        response = @api.delete("block/image/#{image_spec}/snap/#{snapshot_name}", options)
        body = JSON.parse(response.body)
        unless [200, 201, 204].include?(response.status)
          error = body['detail']
          raise BadRequest, error
        end
        resp = body.nil? ? response.status : body
        return resp
      rescue StandardError => err
        raise BadRequest, err.message
      end

      def rollback(image_spec, snapshot_name)
        options = {}
        response = @api.post("block/image/#{image_spec}/snap/#{snapshot_name}/rollback", options.to_json)
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
