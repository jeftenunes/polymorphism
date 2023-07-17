defmodule Polymorphism.Polygons.Impl.Triangle do
  defstruct side_length: nil, height: nil
end

alias Polymorphism.Polygons.Protocols.Area

defimpl Area, for: Polymorphism.Polygons.Impl.Triangle do
  def calculate_area(%{side_length: side_length, height: height} = _polygon) do
    height * side_length / 2
  end
end
