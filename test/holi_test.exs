defmodule HoliTest do
  use ExUnit.Case, async: true
  doctest Holi
  doctest Holi.Woli
  import Holi.Woli, only: [tribonacci: 2, lista_tribonacci: 2]

  test "greets the world" do
    assert Holi.hello() == :world
  end

  test "lista de tribonacci" do
    assert lista_tribonacci({1, 1, 1}, 10) == [1,1,1,3,5,9,17,31,57,105]
    assert lista_tribonacci({0, 0, 1}, 10) == [0,0,1,1,2,4,7,13,24,44]
    assert lista_tribonacci({0, 1, 1}, 10) == [0,1,1,2,4,7,13,24,44,81]
    assert lista_tribonacci({1, 0, 0}, 10) == [1,0,0,1,1,2,4,7,13,24]
    assert lista_tribonacci({0, 0, 0}, 10) == [0,0,0,0,0,0,0,0,0,0]
    assert lista_tribonacci({1, 2, 3}, 10) == [1,2,3,6,11,20,37,68,125,230]
    assert lista_tribonacci({3, 2, 1}, 10) == [3,2,1,6,9,16,31,56,103,190]
    assert lista_tribonacci({1, 1, 1}, 1) == [1]
    assert lista_tribonacci({300, 200, 100}, 0) == []
    refute lista_tribonacci({"Holi",1,1},1) == ["Holi"]
  end

  test "Tomar el n-enesimo elemento de la lista tribonacci" do
    assert tribonacci({1, 1, 1}, 4) == 3
    assert tribonacci({1, 2, 3}, 10) == 230
  end
end
