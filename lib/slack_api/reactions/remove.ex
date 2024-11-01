defmodule SlackAPI.Reactions.Remove do
  @enforce_keys [:name, :token]
  defstruct [:name, :token, :channel, :file, :file_comment, :timestamp]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "reactions.remove"
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