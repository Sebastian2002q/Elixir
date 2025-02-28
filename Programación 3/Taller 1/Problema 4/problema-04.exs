defmodule CalculoSalario do
  def main do
    nombre_empleado = "Ingrese el nombre del empleado= "
    |> Util.ingresar(:texto)

    salario_base = "Ingrese el salario base= "
    |> Util.ingresar(:real)

    horas_extra = "Ingrese las horas extras trabajadas= "
    |> Util.ingresar(:entero)

    precio_hora = "Ingrese el valor por hora= "
    |> Util.ingresar(:real)

    salario_total = calcular_salario_total(precio_hora, horas_extra, salario_base)

    generar_mensaje(nombre_empleado, salario_total)
    |> Util.mostrar_mensaje()
  end

  defp calcular_salario_total(precio_hora, horas_extra, salario_base) do
    ((precio_hora*1.5) * horas_extra) + salario_base
  end

  defp generar_mensaje(nombre_empleado, salario_total) do
    salario_total = :erlang.float_to_binary(salario_total, [:compact, {:decimals, 1}])
    "El salario total de #{nombre_empleado} es de #{salario_total}."
  end

end

CalculoSalario.main()
