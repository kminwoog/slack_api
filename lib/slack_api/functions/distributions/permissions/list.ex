defmodule SlackAPI.Functions.Distributions.Permissions.List do
  @enforce_keys [:token]
  defstruct [:token, :function_app_id, :function_callback_id, :function_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "functions.distributions.permissions.list"
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