defmodule WeatherWeb.PageController do
  use WeatherWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home)
  end
  def about(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :about)
  end
  def contact_us(conn, _params)do
    render(conn, :contact_us)
  end

  def cards(conn, params) do
    cards=[
      %{ name: "condition1", temp: 10},
      %{ name: "condition2", temp: 20},
      %{ name: "condition3", temp: 30},
      %{ name: "condition4", temp: 40},
      %{ name: "condition5", temp: 50},
      %{ name: "condition6", temp: 60},
      %{ name: "condition7", temp: 70},
      %{ name: "condition8", temp: 80},
      %{ name: "condition9", temp: 90},
      %{ name: "condition10", temp: 100}
    ]
    # This is to check if params has a value sent? if yes, send it as temp_lt else ""
    if(Map.has_key?(params, "temp_lt")) do
       %{"temp_lt" => temp_lt }  = params
       render(conn, :cards, cards: cards, temp: temp_lt)
    else
    render(conn, :cards, cards: cards, temp: "")
    end
  end
end
