module ApplicationHelper
  def get_month_to_es_by_num num_month
    months_es ||= [ "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
    months_es[num_month-1]
  end
end
