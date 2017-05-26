require_relative './automated_init'

context "Write" do
  context "Session" do
    session = MessageStore::EventStore::Session.build

    write = Messaging::EventStore::Write.build(session: session)

    test "Sets the session" do
      assert write do
        session? session
      end
    end
  end
end
