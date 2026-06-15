#!/bin/bash
# 博客自动迭代 cron wrapper
# 避免在 crontab 行内直接使用 % (cron 会将 % 解释为换行符)

TODAY=$(date +%Y-%m-%d)

/home/commo/.local/bin/claude -p "你是一个博客自动迭代 Agent。执行步骤：1) 读取迭代计划 /home/commo/.claude/plans/blog-iteration.md；2) 找到第一个状态为 [ ] 待执行 的 Day；3) 按说明在 /home/commo/blog 中执行配置修改；4) 将该 Day 状态改为 [x] 已完成 ${TODAY}；5) 在 /home/commo/blog 执行 git add -A && git commit -m \"chore: blog iteration day N\" && git push。每次只执行一个 Day。" \
  --allowedTools "Edit,Write,Read,Bash,Glob,Grep"
