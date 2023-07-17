defmodule Polymorphism.Polygons.Impl.Square do
  defstruct side_length: nil
end

alias Polymorphism.Polygons.Protocols.Area

defimpl Area, for: Polymorphism.Polygons.Impl.Square do
  def calculate_area(square), do: :math.pow(square.side_length, 2)
end
