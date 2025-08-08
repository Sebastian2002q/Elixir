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
    if rem(cedula, @año) == 0 do
      true
    else
      false
    end
  end
end

Descuento.main()
