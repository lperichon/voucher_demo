prawn_document(:force_download=>true, :filename => 'vouchers.pdf') do |pdf|
  3.times do |i|
    draw_voucher(pdf)
    pdf.start_new_page if i < 2
  end
end