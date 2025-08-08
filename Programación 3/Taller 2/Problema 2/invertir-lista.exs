defmodule InvertirLista do
  @doc """
  Función recursiva para invertir los elemententos de una lista
  """

  def main() do
    lista = [1,2,3,4,5]
    |> IO.inspect()

    "Lista invertida= "
    |> Util.mostrar_mensaje()

    lista_invertida = invertir_lista(lista)
    |> IO.inspect()

  end

  # Si la lista es una lista vacia, retorna una lista vacia, caso base
  def invertir_lista([]), do: []

  # Va agregando al final de la lista el primer elemendo de la lista recibida
  def invertir_lista([h | t]), do: invertir_lista(t) ++ [h]
end

InvertirLista.main()
