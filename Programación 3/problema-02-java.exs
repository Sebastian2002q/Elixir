defmodule EntradaDatos do
  def main do
    "Ingrese el nombre del empleado: "
    |> UtilJava.ingresar(:texto)
    |> generar_mensaje()
    |> UtilJava.mostrar_mensaje()
  end

  defp generar_mensaje (nombre) do
    "Bienvenido #{nombre} a la empresa Once Ltda"
  end
end

EntradaDatos.main()
