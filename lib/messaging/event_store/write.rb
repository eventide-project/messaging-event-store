module Messaging
  module EventStore
    class Write
      include Messaging::Write

      def configure(session: nil)
        EventSource::EventStore::HTTP::Write.configure(
          self,
          session: session,
          attr_name: :event_writer
        )
      end

      module Assertions
        def self.extended(write)
          write.event_writer.extend EventSource::EventStore::HTTP::Write::Assertions
        end

        def session?(session)
          event_writer.session? session
        end
      end
    end
  end
end
