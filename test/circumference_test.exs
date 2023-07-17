defmodule CircumferenceTest do
  alias Polymorphism.Polygons.Impl.Triangle
  alias Polymorphism.Polygons.Impl.Square
  alias Polymorphism.Polygons.Impl.Circumference
  alias Polymorphism.Polygons.Protocols.Area
  use ExUnit.Case

  test "calculate circumference area" do
    circle = %Circumference{radius: 10}
    expected = Float.ceil(Area.calculate_area(circle), 2)
    assert expected === 314.16
  end

  test "calculate square area" do
    square = %Square{side_length: 10}
    assert Area.calculate_area(square) === 100.0
  end

  test "calculare triangle area" do
    triangle = %Triangle{side_length: 3, height: 2}
    assert Area.calculate_area(triangle) === 3.0
  end
end
