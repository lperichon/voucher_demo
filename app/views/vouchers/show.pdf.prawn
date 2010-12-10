prawn_document(:force_download=>true) do |pdf|
  pdf.bounding_box([0,pdf.bounds.top], :width => 200, :height => 100) do
      pdf.image "#{Rails.public_path}/images/logo.png"
      pdf.text "Voucher ID: 123456"
  end
  pdf.bounding_box([pdf.bounds.right-150,pdf.bounds.top], :width => 200, :height => 100) do
    pdf.text "SunnyBeach inc."
    pdf.text "Address for sunny beach"
    pdf.text "tel: 555-1234-1234"
  end
  pdf.text "Luis Perichon", :style => :bold
  pdf.text "Weekend for two at Sunny Beach", :style => :bold
  pdf.text "This voucher is for a weekend for two at Sunny Beach", :style => :italic
  pdf.text "By SunnyBeach inc."
  pdf.text "valid until December 31st. 2010", :align => :right
  pdf.bounding_box([0, pdf.bounds.bottom],:width => pdf.bounds.width, :height => 100) do
      pdf.text %(
        TOS mumbo jumbo....
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        ), :size => 5
  end
end