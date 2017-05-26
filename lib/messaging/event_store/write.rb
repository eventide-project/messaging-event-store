module Messaging
  module EventStore
    class Write
      include Messaging::Write

      def configure(session: nil)
        MessageStore::EventStore::Write.configure(
          self,
          session: session,
          attr_name: :message_writer
        )
      end

      module Assertions
        def self.extended(write)
          write.message_writer.extend(MessageStore::EventStore::Write::Assertions)
        end

        def session?(session)
          message_writer.session?(session)
        end
      end
    end
  end
end
