defmodule Polymorphism.Scales.Impl.Celsius do
  defstruct name: "Celsius", symbol: "°C", abs_value: 0
end

defimpl Polymorphism.Scales.Protocols.Temperature, for: Polymorphism.Scales.Impl.Celsius do
  def to_celsius(temp) do
    temp
  end
end
