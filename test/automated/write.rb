require_relative './automated_init'

context "Write" do
  stream_name = Controls::StreamName.example

  message = Controls::Message.example

  position = Messaging::EventStore::Write.(message, stream_name)

  read_message = MessageStore::EventStore::Get::Last.(stream_name)

  test "Writes the message" do
    assert read_message.data == message.to_h
  end
end
