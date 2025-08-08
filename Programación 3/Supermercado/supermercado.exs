defmodule Supermercado do
  def main do
    lista_productos = []
    lista_fruta_constante = ["Guayaba", "Mango", "Maracuya"]

    n =
      "Ingrese la cantidad lacteos= "
      |> Util.ingresar(:entero)

    lista_lacteos = ingresar_lista(n)

    m =
      "Ingrese la cantidad de frutas= "
      |> Util.ingresar(:entero)

    lista_frutas = ingresar_lista(m)

    j =
      "Ingrese la cantidad de bebidas alcohólicas= "
      |> Util.ingresar(:entero)

    lista_bebidas_alcohólicas = ingresar_lista(j)

    lista_productos =
      [lista_lacteos, lista_frutas, lista_bebidas_alcohólicas]
      |> IO.inspect()

    lista_productosx =
      [
        lista_lacteos,
        lista_frutas ++ lista_fruta_constante,
        lista_bebidas_alcohólicas
      ]
      |> IO.inspect()
  end

  defp ingresar_lista(n) do
    lista = []

    for i <- 1..n do
      producto =
        "Ingrese el nombre del producto= "
        |> Util.ingresar(:texto)

      lista = lista ++ "#{producto}"
    end
  end
end

Supermercado.main()
