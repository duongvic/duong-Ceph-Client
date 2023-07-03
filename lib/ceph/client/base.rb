module Ceph
  module Client
    class BaseApi
      def initialize(api_client)
        @api = api_client
      end

      def list(filters = {}, page = 1, page_size = 20)
        raise NotImplementedError, "list must de defined in a subclass"
      end

      def get(id, filters = {})
        raise NotImplementedError, "get must de defined in a subclass"
      end

      def delete(id, params = {})
        raise NotImplementedError, "delete must de defined in a subclass"
      end

    end
  end
end
