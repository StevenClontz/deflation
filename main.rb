latex_document = File.read('input.tex')

File.new('output.tex','w').write(
 latex_document.gsub(%r{(?<!\\)\$[^\$\\]*(\\.[^\$\\]*)*\$}) do |match|
    "\\(#{match[1...-1]}\\)"
end)