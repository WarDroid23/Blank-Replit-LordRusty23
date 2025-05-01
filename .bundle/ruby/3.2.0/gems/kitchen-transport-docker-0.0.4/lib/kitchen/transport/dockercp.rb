require 'benchmark'
require 'json'

require 'kitchen/transport/ssh'

# Inspired by kitchen-sync
module Kitchen
  module Transport
    class Dockercp < Ssh

      # Copy-pasta from Ssh#create_new_connection because I need the SFTP
      # connection class.
      # Tracked in https://github.com/test-kitchen/test-kitchen/pull/726
      def create_new_connection(options, &block)
        if @connection
          logger.debug("[SSH] shutting previous connection #{@connection}")
          @connection.close
        end

        @connection_options = options
        @connection = self.class::Connection.new(options.merge(instance: instance), &block)
      end

      class Connection < Ssh::Connection

        def initialize(opts)
          @instance = opts.delete(:instance)
          @container_name = @instance.driver.send(:config)[:instance_name]
          super
        end

        def upload(locals, remote)
          Array(locals).each do |local|
            full_remote = File.join(remote, File.basename(local))
            time = Benchmark.realtime do
              system("docker cp #{local} #{@container_name}:#{full_remote}")
            end
            logger.info("[Docker CP] Time taken to upload #{local} to #{@container_name}:#{full_remote}: %.2f sec" % time)
          end
        end
      end
    end
  end
end
