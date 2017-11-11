defmodule Holi.Woli do
  @moduledoc """
  Modulo destinado para Holi Woli
  """

  @doc """
  Funcion que saluda

  ## Examples


      iex> Holi.Woli.saludo
      "Holi :3"

  """
  def saludo, do: "Holi :3"


  @doc """
  Devuelve la lista de numeros tribonacci en base a los 3 primeros numeros suministrados en una tupla y la longitud final de la lista.


  ## Examples
      iex> Holi.Woli.lista_tribonacci({1,1,1}, 7)
      [1,1,1,3,5,9,17]

  """

  @spec lista_tribonacci({number(),number(),number()}, number()) :: List.t
  def lista_tribonacci({a,b,c}, n) when a |> is_number() and b |> is_number() and c |> is_number() and n |> is_number() and n>=0 do
    _lista_tribonacci({a,b,c},n, [])
  end
  def lista_tribonacci(_, _), do: "Que paso amiguito?"

  defp _lista_tribonacci(_, 0, acc) do
    acc |> Enum.reverse
  end
  defp _lista_tribonacci({a,b,c}, n, acc), do: _lista_tribonacci({b, c, a+b+c}, n-1, [a | acc])

  @spec tribonacci({number(),number(),number()}, number()) :: number()
  def tribonacci({a,b,c}, n) when a |> is_number() and b |> is_number() and c |> is_number() and n |> is_number() and n>=1 do
    lista_tribonacci({a,b,c},n) |> Enum.at(n-1)
  end
end
