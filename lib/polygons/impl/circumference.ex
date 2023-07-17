defmodule Polymorphism.Polygons.Impl.Circumference do
  defstruct radius: nil
end

alias Polymorphism.Polygons.Protocols.Area

defimpl Area, for: Polymorphism.Polygons.Impl.Circumference do
  def calculate_area(%{radius: radius} = _circumference) do
    :math.pi() * :math.pow(radius, 2)
  end
end
