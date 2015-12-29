WebsocketRails::EventMap.describe do
  subscribe :client_connected, to: ChatController, with_method: :connect_user
  subscribe :new_message, to: ChatController, with_method: :new_message
end
