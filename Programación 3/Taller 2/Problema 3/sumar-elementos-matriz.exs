defmodule SumarElementosMatriz do
  @doc """
  Función recursiva para sumar todos los elementos de una matriz
  """

  def main() do
    matriz =
      [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
       # Elixir interpreta algunos elementos como codigo ascii, en este caso(7,8,9), para evitarlo se usa charlists: :as_lists
      |> IO.inspect(charlists: :as_lists)
      |> sumar_elementos()
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end

  # Si la lista es vacia, retorna 0, caso base
  def sumar_elementos([]), do: 0

  # Se toma la primera fila de la matriz (cabeza) y se suman sus elementos con Enum.sum y se hace un llamado
  # recursivo enviando el resto de la matriz
  def sumar_elementos([h | t]), do: Enum.sum(h) + sumar_elementos(t)

  def generar_mensaje(n), do: "La suma es= #{n}"
end

SumarElementosMatriz.main()
