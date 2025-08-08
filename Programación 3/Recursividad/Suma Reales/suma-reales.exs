defmodule SumaEnteros do
  @doc """
  
  """
  def main do
    numero =
      "Ingrese el número= "
      |> Util.ingresar(:entero)
      |> sumar()
      |> Util.mostrar_mensaje()
  end

  def sumar(1), do: 1
  def sumar(n), do: n + sumar(n - 1)
end

SumaEnteros.main()
