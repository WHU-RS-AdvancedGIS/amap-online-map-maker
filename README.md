# amap-online-map-maker

-   GitHub：<https://github.com/WHU-RS-AdvancedGIS/amap-online-map-maker>
-   在线查看：<https://whu-rs-advancedgis.github.io/amap-online-map-maker/>
-   说明文档：<https://whu-rs-advancedgis.github.io/amap-online-map-maker/README.html>

---

## 1

先打开 [高德开放平台](http://lbs.amap.com/console/show/tools)，并选择 `开发` -- `地图工具` -- `地图快速生成器`，如下图所示：

![](http://whudoc.qiniudn.com/2016/2016-11-28_15-57-04.png)

---

## 2

你可以设置地图样式：

![](http://whudoc.qiniudn.com/2016/2016-11-28_15-02-25.png)

---

## 3

添加我们一些点标记：

![](http://whudoc.qiniudn.com/2016/2016-11-28_15-09-50.png)

（可以使用 html 标记添加图片）

---

## 4

但这个无需登录的在线工具只允许添加 10 个标记：

![](http://whudoc.qiniudn.com/2016/2016-11-28_15-25-24.png)

---

## 5

那就这样吧：

![](http://whudoc.qiniudn.com/2016/2016-11-28_15-31-53.png)

点击 `获取代码`，复制代码：

![](http://whudoc.qiniudn.com/2016/2016-11-28_15-33-23.png)

粘贴到 `index.html`，发现报错，原来是自己的注记里用了 html，有些引号没有转义，
[修改它](https://github.com/WHU-RS-AdvancedGIS/amap-online-map-maker/commit/d170e3c9d1d4d39b82912b4965b7108fb9b5b677)。

---

## 6

把生成的 html 文件传到 GitHub，现在可以访问了（地址：<https://whu-rs-advancedgis.github.io/amap-online-map-maker/>）：

![](http://whudoc.qiniudn.com/2016/chrome_2016-11-28_15-50-06.png)

![](http://whudoc.qiniudn.com/2016/chrome_2016-11-28_16-18-21.png)

（因为 GitHub 使用了 https，而高德地图提供的脚本链接为 http，浏览器处于安全考虑会报错，可以把 `<script src="http://webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>`{.html} 改成 `<script src="https://webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>`{.html}。）
