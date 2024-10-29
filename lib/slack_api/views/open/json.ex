defmodule SlackAPI.Views.Open do
  @enforce_keys [:token, :view]
  defstruct [:token, :view, :interactivity_pointer, :trigger_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "views.open"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :post
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end