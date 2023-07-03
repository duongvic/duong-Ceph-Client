require 'ceph/client/rbd'
require 'ceph/client/rbd_snapshot'

module Ceph
  module Client

    # Client API
    class APIClient
      @api = nil
      def initialize(api)
        @api = api
      end

      def rbd
        RBD.new(@api)
      end

      def snapshot
        RBDSnapshot.new(@api)
      end

    end
  end
end
