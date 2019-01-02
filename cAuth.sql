/*
 Navicat Premium Data Transfer

 Source Server         : zhangyanling
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : cAuth

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 02/01/2019 11:22:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publisher` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
BEGIN;
INSERT INTO `books` VALUES (21, '9787111565635', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '深入浅出React和Redux', 'https://img3.doubanio.com/view/subject/m/public/s29456776.jpg', 'https://book.douban.com/subject/27033213/', '机械工业出版社', '本书作者是资深开发人员，有过多年的开发经验，总结了自己使用React和Redux的实战经验，系统分析React和Redux结合的优势，与开发技巧，为开发大型系统提供参考。主要内容包括：React的基础知识、如何设计易于维护的React组件、如何使用Redux控制数据流、React和Redux的相结合的方式、同构的React和Redux架构、React和Redux的性能优化、组件的测试等。', '69.00', 7.9, 'React 69,前端开发 43,JavaScript 31,Web前端开发 17,计算机 15,前端 13,编程 10,react 10', '程墨', 2);
INSERT INTO `books` VALUES (22, '9787121305245', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Node.js微服务', 'https://img1.doubanio.com/view/subject/m/public/s29227277.jpg', 'https://book.douban.com/subject/26937361/', '电子工业出版社', '《Node.js微服务》对如何采用Node.js 及其生态工具进行微服务开发的最佳实践做了全面的介绍，内容包括对微服务架构基本概念及设计原则的讲解，以及如何采用Node.js 搭配Seneca、PM2 和Docker 等现代化工具来构建、测试、监控以及部署轻量级微服务，同时也阐述了Node.js 在微服务实践中所涉及的相关概念，并就微服务的优缺点、文档化、安全性以及可追溯性等主题进行了探讨。\n《Node.js微服务》适合掌握服务端开发基本知识的Node.js 开发者以及使用Java、C#等其他服务端技术栈并对微服务实践感兴趣的所有开发者。', '69.00', 4, 'Node.js 17,微服务 10,JavaScript 5,架构 2,@上图 1', '【美】David Gonzalez', 2);
INSERT INTO `books` VALUES (23, '9787302465133', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Hadoop权威指南', 'https://img3.doubanio.com/view/subject/m/public/s29544746.jpg', 'https://book.douban.com/subject/27115351/', '清华大学出版社', '本书结合理论和实践，由浅入深，全方位介绍了Hadoop 这一高性能的海量数据处理和分析平台。全书5部分24 章，第Ⅰ部分介绍Hadoop 基础知识，第Ⅱ部分介绍MapReduce,第Ⅲ部分介绍Hadoop 的运维，第Ⅳ部分介绍Hadoop 相关开源项目，第Ⅴ部分提供了三个案例，分别来自医疗卫生信息技术服务商塞纳(Cerner)、微软的人工智能项目ADAM(一种大规模分布式深度学习框架)和开源项目Cascading(一个新的针对MapReduce 的数据处理API)。本书是一本专业、全面的Hadoop 参考书和工具���，阐述了Hadoop 生态圈的新发展和应用，程序员可以从中探索海量数据集的存储和分析，管理员可以从中了解Hadoop 集群的安装和运维。', '148.00', 8.3, '大数据 22,计算机 10,hadoop 8,Hadoop 7,编程 3,翻译的不错 2,买 2,2017书单 2', 'Tom White', 0);
INSERT INTO `books` VALUES (24, '9787115353528', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Python基础教程（第2版•修订版）', 'https://img3.doubanio.com/view/subject/m/public/s27275344.jpg', 'https://book.douban.com/subject/25880388/', '人民邮电出版社', '本书包括Python 程序设计的方方面面，首先从Python 的安装开始，随后介绍了Python 的基础知识和基本概念，包括列表、元组、字符串、字典以及各种语句。然后循序渐进地介绍了一些相对高级的主题，包括抽象、异常、魔法方法、属性、迭代器。此后探讨了如何将Python 与数据库、网络、C 语言等工具结合使用，从而发挥出Python 的强大功能，同时介绍了Python 程序测试、打包、发布等知识。最后，作者结合前面讲述的内容，按照实际项目开发的步骤向读者介绍了几个具有实际意义的Python 项目的开发过程。\n本书内容涉及的范围较广，既能为初学者夯实基础，又能帮助程序员提升技能，适合各个层次的Python开发人员阅读参考。', '79.00', 7, 'python 95,Python 85,编程 69,计算机 52,programming 18,编程语言 16,数据分析 11,程序设计 9', '赫特兰', 2);
INSERT INTO `books` VALUES (25, '9787115439789', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '第一行代码：Android（第2版）', 'https://img3.doubanio.com/view/subject/m/public/s29572743.jpg', 'https://book.douban.com/subject/26915433/', '人民邮电出版社', '本书被广大Android 开发者誉为“Android 学习第一书”。全书系统全面、循序渐进地介绍了Android软件开发的必备知识、经验和技巧。\n第2版基于Android 7.0 对第1 版进行了全面更新，将所有知识点都在最新的Android 系统上进行重新适配，使用 全新的Android Studio 开发工具代替之前的Eclipse，并添加了对Material Design、运行时权限、Gradle、RecyclerView、百分比布局、OkHttp、Lambda 表达式等全新知识点的详细讲解。\n本书内容通俗易懂，由浅入深，既是Android 初学者的入门必备，也是Android 开发者的进阶首选。', '79.00', 8.5, 'Android 139,特别适合Android初学者的书 74,移动开发 60,编程 57,安卓开发 56,android 42,安卓 38,Java 34', '郭霖', 1);
INSERT INTO `books` VALUES (26, '9787508665849', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '区块链技术驱动金融', 'https://img1.doubanio.com/view/subject/m/public/s29487148.jpg', 'https://book.douban.com/subject/26860970/', '中信出版社,中信出版集团', '从数字货币及智能合约技术层面，解读了区块链技术在金融领域的运用。“如果你正在寻找一本在技术层面解释比特币是如何运作的，并且你有一定计算机科学和编程的基本知识，这本书应该很适合你。”\n《区块链：技术驱动金融》回答了一系列关于比特币如何运用区块链技术运作的问题，并且着重讲述了各种技术功能，以及未来会形成的网络。比特币是如何运作的？它因何而与众不同？你的比特币安全吗？比特币用户如何匿名？区块链如何帮助比特币实现没有身份的共识？我们可以在比特币这一平台上创建什么应用程序？加密数字货币可以被监管吗？创建一种新的数字货币将会带来什么样的变化？未来将会如何发展？\n读完这本书，你会了解到所有比特币和其他数字货币相关的知识，对区块链技术具备基础性认识，能够区别那些完全虚构的故事。你将会对于需要什么样的安全软件，如何与比特币网络进行交互有了基础概念，也可以将区块链的概念整合应用于自己的项目中。你，将会成为时代的引领者！', '79.00', 8.4, '区块链 898,金融科技 362,比特币 323,金融 288,互联网 241,计算机 193,技术 170,新经济 150', '阿尔文德·纳拉亚南,约什·贝努,爱德华·费尔顿,安德鲁·米勒,史蒂文·戈德费德', 2);
INSERT INTO `books` VALUES (27, '9787115401113', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '精通iOS开发', 'https://img3.doubanio.com/view/subject/m/public/s29314041.jpg', 'https://book.douban.com/subject/26638042/', '人民邮电出版社', '本书是iOS应用开发基础教程，内容翔实，语言生动。作者结合大量实例，使用Swift和Objective-C两种语言循序渐进地讲解了适用于iPhone/iPad开发的基本流程。新版介绍强大的iOS 8操作系统，涵盖Xcode 6的新功能，书中所有案例全部重新编写。\n本书具有较强通用性，Swift语言的iOS发新手可通过本书快速入门进阶，经验丰富的iOS开发人员也能从中找到令人耳目一新的内容。', '118.00', 7.4, 'iOS 22,编程 5,计算机 3,阅读来源:实体书 1,阅读年份:2016 1,越读者:主食类 1,技术 1,中文书名就是欺骗 1', '马克 (David Mark),Jack Nutting,Kim Topley,Fredrik Olsson,等', 0);
INSERT INTO `books` VALUES (29, '9787121276576', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'ES6 标准入门（第2版）', 'https://img3.doubanio.com/view/subject/m/public/s28383612.jpg', 'https://book.douban.com/subject/26708954/', '电子工业出版社', 'ES6（又名 ES2105）是 JavaScript 语言的新标准，2015 年 6 月正式发布后，得到了迅速推广，是目前业界超级活跃的计算机语言。《ES6标准入门（第2版）》是国内仅有的一本 ES6 教程，在前版基础上增补了大量内容——对标准进行了彻底的解读，所有新增的语法知识（包括即将发布的 ES7）都给予了详细介绍，并且紧扣业界开发实践，给出了大量简洁易懂、可以即学即用的示例代码。\n《ES6标准入门（第2版）》为中级难度，适合对 JavaScript 语言或 ES5 已经有所了解的读者，用来提高水平，了解这门语言的最新发展；也可当作参考手册，查寻 ES6/ES7 新增的语法点。', '69.00', 8.2, 'JavaScript 127,前端开发 66,Web前端 45,es6 42,ES6 33,前端 31,计算机 29,编程 25', '阮一峰', 1);
INSERT INTO `books` VALUES (30, '9787111514435', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'HTML5与CSS3权威指南（上册） （第3版）', 'https://img3.doubanio.com/view/subject/m/public/s28319866.jpg', 'https://book.douban.com/subject/26644632/', '机械工业出版社', '本书是HTML 5与CSS 3领域公认的标杆之作，被读者誉为“系统学习HTML 5与CSS 3的最佳著作”和“Web前端工程师案头必备图书之_”。\n前两版累计印刷超过15次，网络书店评论超过8000条，98％以上的评论都是五星级的好评。不仅是HTML 5与CSS 3图书领域当之无愧的领头羊，而且在整个原创计算机图书领域是佼佼者。\n第3版首先从技术的角度根据最新的HTML 5和CSS 3标准进行了更新和补充，其次根据读者的反馈对内容的组织结构和写作方式做了进一步的优化，内容更经典，阅读体验也更好。\n全书共29章，分为上下两册：\n上册(1—17章)全面系统地讲解了HTML 5相关的技术，以HTML 5对现有Web应用产生的变革开篇，顺序讲解了HTML 5与HTML 4的区别、HTML 5的结构、表单及新增页面元素、图形绘制、多媒体、本地存储、文件、WebRTC通信、扩展的XMLHttpRequest、离线应用、WebWorkers、地理位置信息、拖放与通知等内容；下册(18—29章)全面系统地讲解了CSS 3相关的技术，以CSS 3的功能和模块结构开篇，顺序讲解了各种选择器及其使用、文字与字体的相关样式、盒相关样式、背景与边框相关样式、布局相关样式、变形处理、动画、颜色相关样式等内容。\n全书一共389个示例页面和2个综合性的案例，所有代码均通过作者上机调试，读者可下载书中代码，直接在浏览器查看运行结果。', '89.00', 6.8, 'html 12,Web前端 11,css 7,计算机 6,程序设计 5,Web 5,Web前端开发 4,CSS 4', '陆凌牛', 2);
INSERT INTO `books` VALUES (31, '9787111514428', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'HTML 5与CSS 3权威指南（下册） （第3版）', 'https://img3.doubanio.com/view/subject/m/public/s28637412.jpg', 'https://book.douban.com/subject/26774474/', '机械工业出版社', '本书是HTML 5与CSS 3领域公认的标杆之作，被读者誉为“系统学习HTML 5与CSS 3的最佳著作”和“Web前端工程师案头必备图书之_”。\n前两版累计印刷超过15次，网络书店评论超过8000条，98％以上的评论都是五星级的好评。不仅是HTML 5与CSS 3图书领域当之无愧的领头羊，而且在整个原创计算机图书领域是佼佼者。\n第3版首先从技术的角度根据最新的HTML 5和CSS 3标准进行了更新和补充，其次根据读者的反馈对内容的组织结构和写作方式做了进一步的优化，内容更经典，阅读体验也更好。\n全书共29章，分为上下两册：\n上册(1—17章)全面系统地讲解了HTML 5相关的技术，以HTML 5对现有Web应用产生的变革开篇，顺序讲解了HTML 5与HTML 4的区别、HTML 5的结构、表单及新增页面元素、图形绘制、多媒体、本地存储、文件、WebRTC通信、扩展的XMLHttpRequest、离线应用、WebWorkers、地理位置信息、拖放与通知等内容；下册(18—29章)全面系统地讲解了CSS 3相关的技术，以CSS 3的功能和模块结构开篇，顺序讲解了各种选择器及其使用、文字与字体的相关样式、盒相关样式、背景与边框相关样式、布局相关样式、变形处理、动画、颜色相关样式等内容。\n全书一共389个示例页面和2个综合性的案例，所有代码均通过作者上机调试，读者可下载书中代码，直接在浏览器查看运行结果。', '69.00', 0, 'Web前端 5,CSS 5,css3 2,web 1,Web 1,HTML5 1,#IBOM# 1,#FK# 1', '陆凌牛', 3);
INSERT INTO `books` VALUES (32, '9787040324853', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '数据结构-用C语言描述', 'https://img3.doubanio.com/view/subject/m/public/s10267775.jpg', 'https://book.douban.com/subject/10506484/', '', '《普通高等教育“十一五”国家级规划教材•国家精品课程主讲教材•数据结构:用C语言描述》根据教育部计算机科学与技术教学指导委员会制定的《数据结构与算法》课程大纲和《全国硕士计算机专业基础综合考试大纲》的要求而编写，跟踪技术发展需要，教材体系科学，内容简洁实用。', '40.00', 0, '', '耿国华 编', 3);
INSERT INTO `books` VALUES (33, '9787509505830', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '会计制度设计', 'https://img3.doubanio.com/view/subject/m/public/s9103754.jpg', 'https://book.douban.com/subject/3520501/', '', '《会计制度设计》讲述了：21世纪是一个变幻难测的世纪，是一个催人奋进的时代。科学技术飞速发展，知识更替日新月异。希望、困惑、机遇、挑战，随时随地都有可能出现在每一个社会成员的生活之中。抓住机遇，寻求发展，迎接挑战，适应变化的制胜法宝就是学习——依靠自己学习，终生学习。', '21.00', 0, '自考 1,用途：学习 1,教材 1', '王本哲 王尔康', 1);
INSERT INTO `books` VALUES (34, '9787801266712', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '语言学概论', 'https://img3.doubanio.com/view/subject/m/public/s7719763.jpg', 'https://book.douban.com/subject/1749317/', '语文出版社', '', '18.00', 6.7, '语言学 25,语言学概论 20,自考 12,教材 11,汉语言文学教材 9,汉语言文学 8,胡明杨 6,自考科目 5', '胡明扬,沈阳,贺阳', 0);
INSERT INTO `books` VALUES (35, '9787540458027', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '从你的全世界路过', 'https://img3.doubanio.com/view/subject/m/public/s27102925.jpg', 'https://book.douban.com/subject/25747921/', '湖南文艺出版社', '《从你的全世界路过》是微博上最会写故事的人张嘉佳献给你的心动故事。\n最初以“睡前故事”系列的名义在网上疯狂流传，几天内达到1,500,000 次转发，超4亿次阅读，引来电影投资方的巨资抢购，转瞬便签下其中5个故事的电影版权。每1分钟，都有人在张嘉佳的故事里看到自己。\n读过睡前故事的人会知道，这是一本纷杂凌乱的书。像朋友在深夜跟你在叙述，叙述他走过的千山万水。那么多篇章，有温暖的，有明亮的，有落单的，有疯狂的，有无聊的，有胡说八道的。当你辗转失眠时，当你需要安慰时，当你等待列车时，当你赖床慵懒时，当你饭后困顿时，应该都能找到一章合适的。\n我希望写一本书，你可以留在枕边、放进书架，或者送给最重要的那个人。\n从你的全世界路过，随便打开一篇就可以了。\n——张嘉佳', '39.80', 7.1, '张嘉佳 19197,睡前故事 15507,治愈 11389,随笔 8673,有意思的书 7470,故事 7004,青春 6472,小说 5258', '张嘉佳', 3);
INSERT INTO `books` VALUES (36, '9787500593621', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '资产评估', 'https://img3.doubanio.com/view/subject/m/public/s9055521.jpg', 'https://book.douban.com/subject/2092006/', '中国财经', '《资产评估》作为我国高等教育组成部分的自学考试，其职责就是在高等教育这个水平上倡导自学、鼓励自学、帮助自学、推动自学，为每一个自学者铺就成才之路。组织编写供读者学习的教材就是履行这个职责的重要环节。毫无疑问，这种教材应当适合自学，应当有利于学习者掌握、了解新知识、新信息，有利于学习者增强创新意识、培养实践能力、形成自学能力，也有利于学习者学以致用，解决实际工作中所遇到的问题。', '21.00', 0, '经济 2,教材 1', '刘玉平 编', 0);
INSERT INTO `books` VALUES (37, '9787509506806', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '财务报表分析', 'https://img3.doubanio.com/view/subject/m/public/s26302721.jpg', 'https://book.douban.com/subject/3520502/', '', '《财务报表分析》讲述了：21世纪是一个变幻难测的世纪，是一个催人奋进的时代。科学技术飞速发展，知识更替日新月异。希望、困惑、机遇、挑战，随时随地都有可能出现在每一个社会成员的生活之中。抓住机遇，寻求发展，迎接挑战，适应变化的制胜法宝就是学习——依靠自己学习，终生学习。', '17.00', 0, '教材 1', '袁淳', 0);
INSERT INTO `books` VALUES (38, '9787509505069', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '高级财务会计', 'https://img1.doubanio.com/view/subject/m/public/s24506329.jpg', 'https://book.douban.com/subject/3841653/', '', '《高级财务会计》作为我国高等教育组成部分的自学考试，其职责就是在高等教育这个水平上倡导自学、鼓励自学、帮助自学、推动自学，为每一个自学者铺就成才之路。组织编写供读者学习的教材就是履行这个职责的重要环节。毫无疑问，这种教材应当适合自学，应当有利于学习者掌握、了解新知识、新信息，有利于学习者增强创新意识、培养实践能力、形成自学能力，也有利于学习者学以致用，解决实际工作中所遇到的问题。', '28.00', 0, '教材 2,A 1,1-200 1', '李大诚', 0);
INSERT INTO `books` VALUES (39, '9787513517133', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '国际贸易理论与实务-2012年版-课程代码', 'https://img3.doubanio.com/view/subject/m/public/s9124380.jpg', 'https://book.douban.com/subject/10748907/', '', '国际贸易理论与实务，ISBN：9787513517133，作者：', '39.00', 0, '工商 2,自考教材 1', '冷柏军//张玮', 2);
INSERT INTO `books` VALUES (40, '9787561051931', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '概率论与数理统计', 'https://img3.doubanio.com/view/subject/m/public/s4425806.jpg', 'https://book.douban.com/subject/2092008/', '辽宁大学', '概率论与数理统计（公共课程），ISBN：9787561051931，作者：孙洪祥', '22.00', 0, '自考本科 1,自考 1,本科 1', '孙洪祥 柳金甫', 0);
INSERT INTO `books` VALUES (41, '9787513517164', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '自考教材0051 管理系统中的计算机应用 2012年版', 'https://img3.doubanio.com/view/subject/m/public/s10275372.jpg', 'https://book.douban.com/subject/10776215/', '', '管理系统中计算机应用，ISBN：9787513517164，作者：', '41.00', 0, '编程 1,教材 1', '周山芙 赵苹', 7);
INSERT INTO `books` VALUES (42, '9787509517154', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '审计学', 'https://img1.doubanio.com/view/subject/m/public/s10346728.jpg', 'https://book.douban.com/subject/5916805/', '中国财政经济出版社', '审计学，ISBN：9787509517154，作者：丁瑞玲', '28.00', 0, '教材 1', '丁瑞玲', 7);
INSERT INTO `books` VALUES (43, '9787509524053', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '全国高等教育自学考试指定教材·金融理论与实务00150', 'https://img3.doubanio.com/view/subject/m/public/s26588510.jpg', 'https://book.douban.com/subject/6749460/', '', '金融理论与实务[2010版]00150，ISBN：9787509524053，作者：', '33.00', 0, '自考 1,2010 1,(2016) 1', '', 2);
INSERT INTO `books` VALUES (44, '9787516411865', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '会计从业资格考试辅导教材', 'https://img1.doubanio.com/view/subject/m/public/s28993277.jpg', 'https://book.douban.com/subject/26859980/', '企业管理出版社', '', '78.00', 0, '', '《会计从业资格考试辅导教材》编委会', 4);
INSERT INTO `books` VALUES (45, '9787559411013', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '一禅小和尚', 'https://img3.doubanio.com/view/subject/m/public/s29530195.jpg', 'https://book.douban.com/subject/27126634/', '江苏文艺出版社', '人物设定为一个对世界有强烈好奇心、每天都能从生活中发现趣味和智慧哲学的暖萌小和尚。他的师父阿斗是一个不拘小节，偶尔鸡汤偶尔老童趣的出家人，一禅和他的师父生活在一座景色优美的寺庙里，周围的村庄里住着一群善良淳朴的人们。漫画以每篇以20格左右的水墨长条漫画展开故事剧情，在妙趣横生的日常故事中，展现纷繁世间的纯净真情，带给一禅、每一集的出场人物、也给读者讲述一个又一个意味深长的道理。', '59.80', 8.4, '治愈 96,温暖 80,漫画 72,好书，值得一读 59,萌 55,心灵 46,很值得推荐的一本书 44,绘本 39', '一禅小和尚', 13);
INSERT INTO `books` VALUES (46, '9787121287220', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Vue.js权威指南', 'https://img1.doubanio.com/view/subject/m/public/s29029037.jpg', 'https://book.douban.com/subject/26869340/', '电子工业出版社', 'Vue.js 是一个用来开发Web 界面的前端库。《Vue.js权威指南》致力于普及国内Vue.js 技术体系，让更多喜欢前端的人员了解和学习Vue.js。如果你对Vue.js 基础知识感兴趣，如果你对源码解析感兴趣，如果你对Vue.js 2.0感兴趣，如果你对主流打包工具感兴趣，如果你对如何实践感兴趣，《Vue.js权威指南》都是一本不容错过的以示例代码为引导、知识涵盖全面的最佳选择。《Vue.js权威指南》一共30 章，由浅入深地讲解了Vue.js 基本语法及源码解析。主要内容包括数据绑定、指令、表单控件绑定、过滤器、组件、表单验证、服务通信、路由和视图、vue-cli、测试开发和调试、源码解析及主流打包构建工具等。该书内容全面，讲解细致，示例丰富，适用于各层次的开发者。', '99.00', 4.8, 'Vue.js 47,前端 28,前端开发 23,JavaScript 17,框架 14,vue 13,计算机 10,编程 5', '张耀春,等', 8);
INSERT INTO `books` VALUES (47, '9787115290366', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Go语言编程', 'https://img3.doubanio.com/view/subject/m/public/s11162016.jpg', 'https://book.douban.com/subject/11577300/', '人民邮电出版社', '这本书从整体的写作风格来说，会以介绍 Go 语言特性为主，示例则尽量采用作者平常的实践，而不是一个没有太大实际意义的语法示范样例。\n本书作者背景极强，许式伟为原金山WPS首席架构师、曾是盛大创新院研究员，目前是国内Go语言实践圈子公认的Go语言专家。参与本书写作的几位作者都是实际用Go语言开发的项目的开发人员，有较强的实战经验。\n本书以介绍Go语言特性为主，示例则尽量采用作者开发团队平常的实践，内容涉及内存管理（堆和栈）、错误处理、OOP、并发编程等关键话题。 这本书面向的读者是所有打算用Go语言的开发者，主要包括目前使用C、C++、Java、C#的开发人员，甚至一些Python、PHP开发人员也可能转为 Go 程序员。', '49.00', 7.1, 'go语言 306,Go 271,编程 174,编程语言 107,程序设计 107,golang 97,计算机 92,programming 76', '许式伟', 18);
INSERT INTO `books` VALUES (48, '9787115283993', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Node.js开发指南', 'https://img1.doubanio.com/view/subject/m/public/s10307479.jpg', 'https://book.douban.com/subject/10789820/', '人民邮电出版社', 'Node.js是一种方兴未艾的新技术，诞生于2009年。经过两年的快速变化，Node.js生态圈已经逐渐走向稳定。Node.js采用了以往类似语言和框架中非常罕见的技术，总结为关键词就是：非阻塞式控制流、异步I/O、单线程消息循环。不少开发者在入门时总要经历一个痛苦的思维转变过程，给学习带来巨大的障碍。 而本书的目的就是帮助读者扫清这些障碍，学会使用Node.js进行Web后端开发，同时掌握事件驱动的异步式编程风格，以便进一步利用Node.js的高级特性。', '45.00', 7.5, 'Node.js 717,JavaScript 358,Web开发 238,后端开发 133,计算机 118,编程 115,Web 92,后端 79', '郭家寶（BYVoid）', 26);
INSERT INTO `books` VALUES (49, '9787121259364', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'React', 'https://img1.doubanio.com/view/subject/m/public/s28061237.jpg', 'https://book.douban.com/subject/26378583/', '电子工业出版社', '2014 年横空出世的由Facebook 推出的开源框架React.js，基于Virtual DOM 重新定义了用户界面的开发方式，彻底革新了大家对前端框架的认识，将PHP 风格的开发方式迁移到客户端应用开发。其优势在于可以与各种类库、框架搭配使用。《React：引领未来的用户界面开发框架》是这一领域的首作，由多位一线专家精心撰写，采用一个全程实例全面介绍和剖析了ReactReact.js 的方方面面，适合广大前端开发者、设计人员，及所有对未来技术趋势感兴趣者阅读。', '65.00', 6.2, 'React 79,JavaScript 64,前端开发 50,前端 23,Web前端 22,计算机 13,编程 12,react 12', '卓越开发者联盟', 34);
INSERT INTO `books` VALUES (50, '9787121298998', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'React全栈：Redux+Flux+webpack+Babel整合开发', 'https://img3.doubanio.com/view/subject/m/public/s29120035.jpg', 'https://book.douban.com/subject/26901067/', '电子工业出版社', '《React全栈：Redux+Flux+webpack+Babel整合开发》从现代前端开发的标准、趋势和常用工具入手，由此引出了优秀的构建工具 webpack 和 JavaScript库 React，之后用一系列的实例来阐述两者的特色、概念和基本使用方法。随着应用复杂度的增加，进而介绍了 Flux 和 Redux 两种架构思想，并且使用 Redux 对现有程序进行改造，最后介绍了在开发过程中出现的反模式和性能优化方法。\n《React全栈：Redux+Flux+webpack+Babel整合开发》适合有一定前端开发尤其是 JavaScript 基础的读者阅读，如果您还没有接触过前端开发这个领域，请先阅读前端开发的入门书籍。', '69.00', 6.8, 'React 26,前端开发 22,前端 17,技术 3,编程 2,杨寒星 2,张轩 2,2016 2', '张轩,杨寒星', 49);
INSERT INTO `books` VALUES (51, '9787536692930', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '三体', 'https://img1.doubanio.com/view/subject/m/public/s2768378.jpg', 'https://book.douban.com/subject/2567698/', '重庆出版社', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\n人类的末日悄然来临。', '23.00', 8.8, '科幻 48943,刘慈欣 39145,三体 27365,科幻小说 21573,中国 16761,小说 15238,中国科幻 14842,硬科幻 14308', '刘慈欣', 2);
INSERT INTO `books` VALUES (52, '9787115351531', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '图解HTTP', 'https://img3.doubanio.com/view/subject/m/public/s27283822.jpg', 'https://book.douban.com/subject/25863515/', '人民邮电出版社', '本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案例，最后延伸到Web安全、最新技术动向等方面。本书的特色为在讲解的同时，辅以大量生动形象的通信图例，更好地帮助读者深刻理解HTTP通信过程中客户端与服务器之间的交互情况。读者可通过本书快速了解并掌握HTTP协议的基础，前端工程师分析抓包数据，后端工程师实现REST API、实现自己的HTTP服务器等过程中所需的HTTP相关知识点本书均有介绍。\n本书适合Web开发工程师，以及对HTTP协议感兴趣的各层次读者。', '49.00元', 8.1, 'HTTP 1129,网络 532,计算机 482,协议 327,互联网 290,web 197,Web 189,网络编程 163', '【日】上野宣', 2);
INSERT INTO `books` VALUES (53, '9787115352460', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Node.js实战', 'https://img3.doubanio.com/view/subject/m/public/s27264241.jpg', 'https://book.douban.com/subject/25870705/', '人民邮电出版社', '服务器端JavaScript？没错。Node.js是一个JavaScript服务器，支持可伸缩的高性能Web应用。借助异步I/O，这个服务器可以同时做很多事情，能满足聊天、游戏和实时统计等应用的需求。并且既然是JavaScript，那你就可以全栈使用一种语言。\n本书向读者展示了如何构建产品级应用，对关键概念的介绍清晰明了，贴近实际的例子，涵盖从安装到部署的各个环节，是一部讲解与实践并重的优秀著作。通过学习本书，读者将深入异步编程、数据存储、输出模板、读写文件系统，掌握创建TCP/IP服务器和命令行工具等非HTTP程序的技术。本书同样非常适合熟悉Rails、Django或PHP开发的读者阅读学习。\n本书主要内容：\nNode.js及其扩展的安装配置；\n全面理解异步编程和事件循环；\n学会开发微博、聊天和游戏等热门应用。', '69.00元', 8.3, 'Node.js 121,JavaScript 61,nodejs 48,node.js 39,web开发 38,前端开发 30,编程 29,node 20', '', 2);
INSERT INTO `books` VALUES (54, '9787121331565', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'Vue移动开发实战技巧', 'https://img3.doubanio.com/view/subject/m/public/s29662615.jpg', 'https://book.douban.com/subject/27662351/', '电子工业出版社', '内容简介\nVue.js是一个渐进式的JavaScript 框架，与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整合。作为2016年社区最火的前端框架，越来越多的公司都在尝试用Vue来开发自己的项目。本书主要以项目维度，站在实战的角度，从项目的搭建，项目开发，到项目的优化，结合实际，多维度介绍了Vue.js。本书从实战场景出发，结合各种实用demo，结合开发环境构建，从无到有，剖析原理，全面介绍Vue2.0的实用技巧。后面几章重点讲解Vue内部实现机制，针对各种业务形态的支持以及网站调优方等等，是Vue技术体系追随者不可多得的实战宝典。', '58', 0, 'Vue 5,前端 4,移动 3,开发 3,软件开发 1,互联网 1', '李利德', 4);
INSERT INTO `books` VALUES (55, '9787508051000', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '非暴力沟通', 'https://img1.doubanio.com/view/subject/m/public/s9346487.jpg', 'https://book.douban.com/subject/3533221/', '华夏出版社', '作为一个遵纪守法的好人，也许我们从来没有想过和“暴力”扯上关系。不过如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话的确伤人！言语上的职责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤，甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔阂、敌视', '29.00元', 8.5, '心理学 5341,沟通 4816,人际沟通 3532,非暴力沟通 2931,心理 2115,沟通术 1599,情感 1374,人际关系 1353', '[美] 马歇尔·卢森堡', 3);
INSERT INTO `books` VALUES (56, '9787115275790', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', 'JavaScript高级程序设计（第3版）', 'https://img3.doubanio.com/view/subject/m/public/s8958650.jpg', 'https://book.douban.com/subject/10546125/', '人民邮电出版社', '本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单、媒体、Canvas（包括WebGL）及Web Workers、地理定位、跨文档传递消息、客户端存储（包括IndexedDB）等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。本书附录展望了未来的API 和ECMAScript Harmony 规范。\n本书适合有一定编程经验的Web 应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。', '99.00元', 9.3, 'JavaScript 2196,Web前端开发 999,前端开发 615,前端 468,javascript 464,编程 415,Web开发 373,计算机 369', '[美] Nicholas C. Zakas', 4);
INSERT INTO `books` VALUES (57, '9787121139512', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '浪潮之巅', 'https://img3.doubanio.com/view/subject/m/public/s6807265.jpg', 'https://book.douban.com/subject/6709783/', '电子工业出版社', '近一百多年来，总有一些公司很幸运地、有意识或无意识地站在技术革命的浪尖之上。在这十几年间，它们代表着科技的浪潮，直到下一波浪潮的来临。\n从一百年前算起，AT&T 公司、IBM 公司、苹果公司、英特尔公司、微软公司、思科公司、雅虎公司和Google公司都先后被幸运地推到了浪尖。虽然，它们来自不同的领域，中间有些已经衰落或正在衰落，但是它们都极度辉煌过。本书系统地介绍了这些公司成功的本质原因及科技工业一百多年的发展。\n在极度商业化的今天，科技的进步和商机是分不开的。因此，本书也系统地介绍了影响到科技浪潮的风险投资公司，诸如 KPCB 和红杉资本，以及百年来为科技捧场的投资银行，例如高盛公司，等等。\n在这些公司兴衰的背后，有着它必然的规律。本书不仅讲述科技工业的历史，更重在揭示它的规律性。', '55.00元', 9.1, '互联网 12211,IT 8999,商业 6348,计算机 4547,浪潮之巅 4521,历史 3649,管理 1787,投资 1475', '吴军', 4);
INSERT INTO `books` VALUES (58, '9787115282828', 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '数学之美', 'https://img3.doubanio.com/view/subject/m/public/s9114855.jpg', 'https://book.douban.com/subject/10750155/', '人民邮电出版社', '几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，得到读者高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔可夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣。\n今年，作者吴军博士几乎把所有文章都重写了一遍，为的是把高深的数学原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。读者通过具体的例子学到的是思考问题的方式 —— 如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。', '45.00元', 8.7, '数学 11477,计算机 4827,科普 3967,吴军 2996,计算机科学 2136,互联网 1911,科学 1278,Programming 741', '吴军', 9);
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `bookid` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES (6, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '50', '这本书真的不错', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (7, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '49', '我的天呐', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (8, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '48', '哈哈哈', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (9, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '46', '这本书我买过', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (10, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '45', '真的吗', 'iPhone 5', '成都市');
INSERT INTO `comments` VALUES (11, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '47', '12333', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (12, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '42', '1234', '', '成都市');
INSERT INTO `comments` VALUES (13, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '31', '六个核桃', '', '');
INSERT INTO `comments` VALUES (14, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '31', '123455', '', '');
INSERT INTO `comments` VALUES (15, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '39', '吗儿子', '', '');
INSERT INTO `comments` VALUES (16, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '35', 's d ns d n k n f k上电脑课你疯狂d j大家那个房间', '', '成都市');
INSERT INTO `comments` VALUES (17, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '25', '66666', '', '');
INSERT INTO `comments` VALUES (18, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '32', '感觉hao xian号线shi是你打交道ff d h f放点话费发', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (19, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '24', '这本shu书真的棒极了', 'iPhone 6', '');
INSERT INTO `comments` VALUES (20, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '33', 'sdkd b s j杜比视界d j f b j对减肥保健d f j h对方就好的', '', '成都市');
INSERT INTO `comments` VALUES (21, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '30', '111111111111', '', '');
INSERT INTO `comments` VALUES (22, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '55', '8888888888', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (23, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '57', '这本书zh只能够电饭煲奋斗当你', '', '');
INSERT INTO `comments` VALUES (24, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '58', '这本书chao超级hao kan好看', 'iPhone 6', '成都市');
INSERT INTO `comments` VALUES (25, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '56', '2016年就买了这本书，超级厚', 'VTR-TL00', '成都市');
INSERT INTO `comments` VALUES (26, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '54', '电话回访缓解方法减肥减肥减肥', 'iPhone 6s<iPhone8,1>', '成都市');
INSERT INTO `comments` VALUES (27, 'oR0_80BnJkEOyL3TFxhOyv1gwD0g', '52', '河北省打包发货不到', 'iPhone X', '成都市');
COMMIT;

-- ----------------------------
-- Table structure for cSessionInfo
-- ----------------------------
DROP TABLE IF EXISTS `cSessionInfo`;
CREATE TABLE `cSessionInfo` (
  `open_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uuid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `skey` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_info` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会话管理用户信息';

-- ----------------------------
-- Records of cSessionInfo
-- ----------------------------
BEGIN;
INSERT INTO `cSessionInfo` VALUES ('oR0_80BnJkEOyL3TFxhOyv1gwD0g', '436c48af-0584-418a-8fee-fc43c583424b', '99d0773ec08279e664efa83ca616e836b475a572', '2018-08-28 16:35:01', '2018-09-20 12:45:28', 'SZ9xia+D7LzXfplfiJbenQ==', '{\"openId\":\"oR0_80BnJkEOyL3TFxhOyv1gwD0g\",\"nickName\":\"一江西流\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Chengdu\",\"province\":\"Sichuan\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/vM6ECO7NukP08Yh5q1xpZ83hoBpC8SCzWyowoaRziaLCRWJp9fcb6ACjmzTpfneqBTwUoJTOg0SCXOgTwTYffmQ/132\",\"watermark\":{\"timestamp\":1535511642,\"appid\":\"wx498797a84907f2ab\"}}');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
