import re

files = [
    ('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-cn.typ', 'A类操作能力验证（通过）', 'A类操作能力验证（通过） - 呼号: BI4BLC', r'\n#align\(center, text\(fill: gray, size: 0.9em\)\[业余无线电呼号 \(Amateur Radio Callsign\): \*BI4BLC\*\]\)\n'),
    ('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-en.typ', 'Class A Operator\'s Certificate (Passed)', 'Class A Operator\'s Certificate (Passed) - Callsign: BI4BLC', r'\n#align\(center, text\(fill: gray, size: 0.9em\)\[Amateur Radio Callsign: \*BI4BLC\*\]\)\n'),
    ('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-fr.typ', 'Certificat d\'Opérateur de Classe A (Obtenu)', 'Certificat d\'Opérateur de Classe A (Obtenu) - Indicatif : BI4BLC', r'\n#align\(center, text\(fill: gray, size: 0.9em\)\[Indicatif d\'appel Radioamateur : \*BI4BLC\*\]\)\n')
]

for filepath, old_cert, new_cert, footer_regex in files:
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Replace the certificate line
    content = content.replace(old_cert, new_cert)
    
    # Remove the footer
    content = re.sub(footer_regex, '', content)
    
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

