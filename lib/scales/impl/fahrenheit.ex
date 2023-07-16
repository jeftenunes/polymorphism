defmodule Polymorphism.Scales.Impl.Fahrenheit do
  defstruct name: "Fahrenheit", symbol: "°F", abs_value: 0
end

defimpl Polymorphism.Scales.Protocols.Temperature, for: Polymorphism.Scales.Impl.Fahrenheit do
  alias Polymorphism.Scales.Impl.Celsius

  def to_celsius(fahrenheit_temp) do
    celsius_temp = (fahrenheit_temp.abs_value - 32) * 5 / 9
    %Celsius{abs_value: celsius_temp}
  end
end
