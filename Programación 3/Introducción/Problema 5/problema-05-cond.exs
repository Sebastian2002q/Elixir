defmodule Descuento do
  @año 1991
  def main do
    cedula =
      "Ingrese la cédula= "
      |> Util.ingresar(:entero)

    cedula
    |> aplica_descuento?()
    |> Util.mostrar_mensaje()
  end

  defp aplica_descuento?(cedula) do
   cond do
     rem(cedula, @año) == 0 -> true
     rem(cedula, @año) != 0 -> false
   end
  end
end

Descuento.main()
