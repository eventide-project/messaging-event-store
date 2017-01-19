require_relative './automated_init'

context "Write" do
  stream_name = Controls::StreamName.example

  message = Controls::Message.example

  position = Messaging::EventStore::Write.(message, stream_name)

  read_event, * = EventSource::EventStore::HTTP::Get.(stream_name, position: position, batch_size: 1)

  test "Writes the message" do
    assert read_event.data == message.to_h
  end
end
