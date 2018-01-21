prawn_document do |pdf|
  pdf.text 'Current Exchanges are:'
  pdf.move_down 20
  #pdf.table @exchanges.collect{|p| [p.name,p.memo]}
end