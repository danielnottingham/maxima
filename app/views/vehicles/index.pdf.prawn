prawn_document do |pdf|
  pdf.text 'Controle de Veículos', align: :center, size: 24
  pdf.move_down 20

  pdf.table(
    [['ID','Motorista','Placa','Entrada','Saída','Obs']] + @vehicles.map { |p| [p.id, p.driver, p.board, p.entry.strftime('%d/%m/%Y - %H:%M'), p.exit.strftime('%d/%m/%Y - %H:%M'), p.obs] }, row_colors: ["DDDDDD", "FFFFFF"]
    )
end
