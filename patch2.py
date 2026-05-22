import re

with open('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-cn.typ', 'r', encoding='utf-8') as f:
    content = f.read()

pattern = re.compile(r'\]\[\s*#h\(1\.5em\)\s*计算机方向在读本科生.*?== #fa-graduation-cap 教育背景', re.DOTALL)

new_text = r"""][
  #h(1.5em)

  *“To the next sky — 用代码与创作尝试触碰生活的光点。”*
  
  具备快速落地与跨界热情的计算机专业在读本科生。热爱 Game Jam 的心流式创新，也热衷钻研开源底层，能死磕诸如 LLM 智能体并发等技术疑难。无论是快速打磨一套游戏视觉原型，还是为排除状态泄露 (Race Condition) 而追踪源码，我享受在庞杂系统中寻找秩序。我崇尚共建，习惯以个人博客同步记录技术折腾与感性思考，与世界甚至“绝望”共存并寻找出路。如今，我渴望在 UTBM 这样注重工程与跨文化视角的广阔环境中，探寻技术与自我的下一个边界。


== #fa-graduation-cap 教育背景"""

new_content = pattern.sub(new_text, content)

with open('/Users/thelia/Chinese-Resume-in-Typst/utbm-resume-cn.typ', 'w', encoding='utf-8') as f:
    f.write(new_content)
