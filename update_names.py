import os

files_to_update = {
    'utbm-resume-cn.typ': '= Thelia 李梓睿',
    'utbm-resume-en.typ': '= Thelia ZiRui Li',
    'utbm-resume-fr.typ': '= Thelia ZiRui Li'
}

for filename, new_name in files_to_update.items():
    filepath = os.path.join('/Users/thelia/Chinese-Resume-in-Typst', filename)
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    content = content.replace('= Thelia', new_name)
    
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

