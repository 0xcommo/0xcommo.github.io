# 0xcommo's Blog

个人博客源码仓库，基于 [Hexo](https://hexo.io/) + [Butterfly](https://github.com/jerryc127/hexo-theme-butterfly) 主题构建，部署在 [GitHub Pages](https://0xcommo.github.io)。

## 结构

```
source/_posts/   文章（Markdown）
source/about/    About 页面
source/js/       自定义脚本（语言切换等）
source/css/      自定义样式
.github/         GitHub Actions 自动构建配置
_config.yml      Hexo 主配置
_config.butterfly.yml  主题配置
```

## 工作流

推送到 `main` 分支后，GitHub Actions 自动构建并发布到 `gh-pages` 分支，[0xcommo.github.io](https://0xcommo.github.io) 随即更新。

## 本地预览

```bash
npm install
git clone -b master https://github.com/jerryc127/hexo-theme-butterfly themes/butterfly
npx hexo server
```

访问 `http://localhost:4000`
