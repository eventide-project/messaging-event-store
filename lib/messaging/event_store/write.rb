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
    end
  end
end
