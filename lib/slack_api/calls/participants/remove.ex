defmodule SlackAPI.Calls.Participants.Remove do
  @enforce_keys [:id, :token, :users]
  defstruct [:id, :token, :users]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "calls.participants.remove"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :post
      end

      def base_url(_) do
        "https://slack.com/api"
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end