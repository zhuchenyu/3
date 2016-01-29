SET NAMES 'utf8';
DROP DATABASE IF EXISTS resume;
CREATE DATABASE resume CHARSET=UTF8;
USE resume;

CREATE TABLE me_myself(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    repo VARCHAR(30),
    job_description VARCHAR(30)
);
INSERT INTO me_myself(did,name,repo,job_description) VALUES
(   null,
    '朱晨雨',
    '。。。。',
   '前端工程师'
)
##SELECT * FROM me_myself;

CREATE TABLE me_contact(
    did INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(64),
    email VARCHAR(30),
    wechat VARCHAR(30),
    sinaweibo VARCHAR(30),
    github VARCHAR(30),
    blog VARCHAR(30),
    link VARCHAR(30)
);
INSERT INTO me_contact(did,phone,email,wechat,sinaweibo,github,blog,link) VALUES
(   null,
    '18367280925',
    'zcyu0925@126.com',
   '554863353',
   '做一个富一代好吗',
   'github',
   'blog',
   'link'
)
##SELECT * FROM me_contact;


CREATE TABLE me_education(
    did INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(64),
    schoolname VARCHAR(30),
    major VARCHAR(30),
    start VARCHAR(30),
    ended VARCHAR(30)
    );
INSERT INTO me_education(did,type,schoolname,major,start,ended) VALUES
(   null,
    'graduate',
    '湖州师范学院',
   '生物工程',
   '2011',
   '2015'
)
##SELECT * FROM me_education;

CREATE TABLE me_language(
    did INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(64),
    certificate VARCHAR(30),
    pass VARCHAR(30),
    description VARCHAR(1000)
);
INSERT INTO me_language(did,type,certificate,pass,description) VALUES
(   null,
    'English',
    'CET-4',
   'true',
   '能快速阅读英文专业书籍、论文、文档、博客、技术新闻及其他资料'
)
##SELECT * FROM me_language;

CREATE TABLE me_experience(
    did INT PRIMARY KEY AUTO_INCREMENT,
   type VARCHAR(30),
   techtype VARCHAR(64),
    place VARCHAR(30),
    start VARCHAR(30),
    ended VARCHAR(30),
    description VARCHAR(1000)
);
INSERT INTO me_experience(did,type,techtype,place,start,ended,description) VALUES
(   null,
    '自己创业',
    '快递行业',
   '湖州师范学院',
   '2014.07',
   '2015.03',
   '在创业中体会到了服务行业的辛苦和幸福，学会如何和人打交道。'
)
##SELECT * FROM me_experience;

CREATE TABLE me_skills(
    did INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(64),
    summary1 VARCHAR(30),
    description1 VARCHAR(1000),
    summary2 VARCHAR(30),
    description2 VARCHAR(1000),
    summary3 VARCHAR(30),
    description3 VARCHAR(1000),
    summary4 VARCHAR(30),
    description4 VARCHAR(1000),
    summary5 VARCHAR(30),
    description5 VARCHAR(1000)
);
INSERT INTO me_skills(did,type,summary1,description1,summary2,description2,summary3,description3,summary4,description4,summary5,description5) VALUES
(   null,
    'frontend',
    "熟悉 `HTML` / `CSS`",
    "能够编写语义化的 `HTML`，模块化的 `CSS`，完成较复杂的布局,熟悉已标准化的 `HTML5` / `CSS3` 新特性,了解常见的浏览器`兼容性`问题及解决方案",
    "熟悉 `JavaScript`",
    "熟悉 `ECMAScript`(`JavaScript`) 及其部分实现,熟悉`模块化`（`CommonJS`）、`面向对象`的 JavaScript,了解主要的 `ECMAScript 6` 新特性",
    "熟悉 `DOM` / `BOM`",
    "了解原生 `DOM` 与 `BOM`，熟悉相关标准，能完成桌面 / 移动端前端组件与 `Ajax` 数据交互的开发,阅读过 `WebKit` 源码中的部分实现，了解常见的浏览器`兼容性`问题及其解决方案",
    "熟悉 `jQuery` / `jQuery UI` / `Bootstrap`",
    "熟悉基本使用与扩展插件，能为项目进行定制,阅读过部分源代码，了解其设计思路与部分实现细节",
    "其他",
    "使用过 `AngularJS` / `ReactJS` 与前端 `MV*` 经验,了解且使用过 `Less` / `Sass` / `CoffeeScript` ,了解 `Bower` / `Grunt` / `Gulp` ,熟悉常见的前端开发规范，了解基本的前端性能优化知识"
)
##SELECT * FROM me_skills;

CREATE TABLE me_backend(
    did INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(64),
    summary1 VARCHAR(30),
    description1 VARCHAR(1000),
    summary2 VARCHAR(30),
    description2 VARCHAR(1000)
);
INSERT INTO me_backend(did,type,summary1,description1,summary2,description2) VALUES
(   null,
    'backend',
    "了解 `Node.js`",
    "能够使用 `Node.js API` 或 `Express` / `Connect` 搭建简单的 Web Server，编写 `Express / Connect 中间件`,熟悉 Node.js 社区常见工具（`Jade` 等）",
    "其他",
    "了解 `HTTP`、 `TCP/IP`、 `WebSocket` 协议、 无线网络基础,了解 `MongoDB` / `Redis` / `MySQL`"
##SELECT * FROM me_backend;



