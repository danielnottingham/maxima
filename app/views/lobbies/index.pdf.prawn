prawn_document do |pdf|
  pdf.text 'Controle da Portaria', align: :center, size: 24
  pdf.move_down 20

  pdf.table(
    [['ID','Nome','Documento','Empresa','Placa','Entrada','Saída','Obs']] + @lobbies.map { |p| [p.id,p.name, p.document, p.company, p.board, p.entry.strftime("%d/%m/%Y - %H:%M"), p.exit.strftime("%d/%m/%Y - %H:%M"), p.obs] }, row_colors: ["DDDDDD", "FFFFFF"]
    )
end
