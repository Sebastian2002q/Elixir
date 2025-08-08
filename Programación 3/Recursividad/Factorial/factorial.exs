defmodule Factorial do
  def main() do
    n =
      "Ingrese el número= "
      |> Util.ingresar(:entero)
      |> calcular_factorial()
      |> Util.mostrar_mensaje()
  end

  def calcular_factorial(1), do: 1
  def calcular_factorial(n), do: n * calcular_factorial(n - 1)
end

Factorial.main()
