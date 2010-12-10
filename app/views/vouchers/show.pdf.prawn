prawn_document(:force_download=>true, :filename => 'voucher.pdf') do |pdf|
  draw_voucher(pdf)
end