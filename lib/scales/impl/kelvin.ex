defmodule Polymorphism.Scales.Impl.Kelvin do
  defstruct name: "Kelvin", symbol: "K", abs_value: 0
end

defimpl Polymorphism.Scales.Protocols.Temperature, for: Polymorphism.Scales.Impl.Kelvin do
  alias Polymorphism.Scales.Impl.Celsius

  def to_celsius(kelvin_temp) do
    celsius_temp = kelvin_temp.abs_value - 273.15
    %Celsius{abs_value: celsius_temp}
  end
end
