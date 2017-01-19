module Messaging
  module EventStore
    class Log < ::Log
      def tag!(tags)
        tags << :messaging_event_store
        tags << :library
        tags << :verbose
      end
    end
  end
end
