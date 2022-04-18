/*
 Navicat Premium Data Transfer

 Source Server         : caipu
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : caipudaquandemo

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 18/04/2022 17:51:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for big_type
-- ----------------------------
DROP TABLE IF EXISTS `big_type`;
CREATE TABLE `big_type`  (
  `bid` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱大类名称',
  `bremark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_type
-- ----------------------------
INSERT INTO `big_type` VALUES (1, '分类', '分类');
INSERT INTO `big_type` VALUES (2, '场合', ' 特色食品');

-- ----------------------------
-- Table structure for caipu_info
-- ----------------------------
DROP TABLE IF EXISTS `caipu_info`;
CREATE TABLE `caipu_info`  (
  `cid` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `caiPu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱名称',
  `caiPu_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱图片',
  `caiPu_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱类别',
  `caiPu_typeid` int NULL DEFAULT NULL COMMENT '菜谱类别id',
  `caiPu_main` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱主料',
  `caiPu_fu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱辅料',
  `caiPu_text` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱内容',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱描述',
  `shouCang_num` int NULL DEFAULT NULL COMMENT '收藏次数',
  `caiPu_upload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传者',
  `isCollect` tinyint NULL DEFAULT NULL COMMENT '是否收藏',
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `caiPu_typeid`(`caiPu_typeid`) USING BTREE,
  CONSTRAINT `caipu_type_smallid` FOREIGN KEY (`caiPu_typeid`) REFERENCES `small_type` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caipu_info
-- ----------------------------
INSERT INTO `caipu_info` VALUES (1, '油炸沙丁鱼', 'http://localhost:9000/image/caipupic/youzhashadingyu.png', '家常菜', 1, '沙丁鱼1盘', '中筋面粉30克 黑胡椒粉3克 盐3克', 'step1、沙丁鱼去头去内脏，里里外外清洗干净，表面留一点儿水；\r\n\r\nstep2、准备一个深盘或者大碗，中筋面粉、盐和黑胡椒粉同入盆中；用量可随鱼量来调整，不要太多；\r\n\r\nstep3、用筷子将材料混合均匀，在碗底薄薄地分布均匀；\r\n\r\nstep4、将表面带着少许余水的沙丁鱼入面粉中，每次量不宜多，以使面粉能均匀地在鱼身上裹薄薄的一层；\r\n\r\nstep5、奶锅中倒半锅植物油；用奶锅的好处就是一次的用量油不多，不会造成浪费和多次加热；中火加热，将一根木或者竹筷子立在油里，筷子周围有密集的小泡泡就说明油温合适了；将鱼一条条放入油锅里，不要扔，那样会让油溅出锅，还有可能溅到身上发生危险，可用手指捏着鱼尾，贴近油锅慢慢地送入油中，这样会更安全；\r\n\r\nstep6、小鱼入油锅后先不要搅动，待表面的面粉与鱼身充分结合后并失去一部分水分后，就能自己飘浮在油面上了；此时可用筷子轻轻搅动并翻面，使鱼身上下均匀受热；炸到表面微黄时可夹出来；\r\n\r\nstep7、全部鱼炸好后捞出来，油继续加油1分钟，将所有鱼入油锅复炸15秒，捞出，可使表面颜色金黄，外皮酥香，内部鱼肉洁白柔软。', '很好吃！', 544, 'ahaaaa', NULL);
INSERT INTO `caipu_info` VALUES (2, '剁椒芹菜叶炒鸡蛋', 'http://localhost:9000/image/caipupic/duojiaoqingcaiyechaojidan.png', '家常菜', 1, '鸡蛋3个 芹菜叶1小把 小尖椒2个', '调料:剁椒半匙 食盐:适量 料酒:半匙', 'step1、芹菜叶先不要摘下来，连叶子直接放入盆里清洗干净；\r\n\r\nstep2、茎叶全部都洗干净后，将叶片摘下来，一定要连茎一起清洗哦，如果先将叶片摘下来了再清洗，会加大清洗的难度；\r\n\r\nstep3、烧开一锅水，放入少许盐和几滴油；\r\n\r\nstep4、将叶片放入锅中汆烫，叶片汆烫好后，放冷水中浸泡至凉透。汆烫蔬菜的时候稍微放点油和盐，叶片的颜色更鲜艳，口感也更柔和；\r\n\r\nstep5、凉透的芹菜叶拧干水，切成碎末；\r\n\r\nstep6、鸡蛋打入碗里，加入少许水，搅拌均匀，这样煎出来的鸡蛋饼更软和；\r\n\r\nstep7、不粘锅里放油，烧热后将蛋液导进来，大火煎至微微凝固，蛋液底部凝固，表面还呈流动状的时候，就可以用锅铲翻动了，一边煎，一边将鸡蛋液炒散；\r\n\r\nstep8、将芹菜叶碎加入蛋液中，翻炒均匀后加盐调味，加入小尖角碎，翻拌均匀即可出锅。', '很好吃！', 233, 'ahaaaa', NULL);
INSERT INTO `caipu_info` VALUES (3, '红烧肉', 'http://localhost:9000/image/indexlist/hongshaorou.png', '推荐列表', 11, '红烧肉500克', '香葱1棵   冰糖适量 干红辣椒6个\r\n姜片4片 八角3个 香叶4片 盐1勺\r\n味精半勺 料酒、生抽、老抽适量', 'step1、将五花肉洗干净，按照喜欢的大小，切成块状；\r\n\r\nstep2、将切好的五花肉冷水下锅，加入姜片，并且倒入适量的料酒，大火煮开后、焯一下，撇去浮沫。捞出，沥干水分，装盘备用；\r\n\r\nstep3、将沥干水分的五花肉块放入无水无油的锅中，小火煸炒；\r\n\r\nstep4、一定要用小火，煸炒至五花肉表面金黄，锅底出现好多油即可，然后盛出五花肉，锅中的油不要倒掉，炒出的油，可以直接代替做红烧肉的食用油；\r\n\r\nstep5、继续小火，使用步骤5中的炒出来的猪油，油热后，加入适量的冰糖，不断地用铲子搅拌，直至炒出明显的焦糖色；\r\n\r\nstep6、然后倒入煸炒好的五花肉，翻炒至五花肉均匀地附着焦糖色；\r\n\r\nstep7、加入香葱段、八角、香叶和干红辣椒，爆香；\r\n\r\nstep8、倒入适量的生抽和老抽上色，翻炒至每一块五花肉上色均匀；\r\n\r\nstep9、加入适量清水，完全没过五花肉即可，盖上锅盖，小火炖起来；\r\n\r\nstep10、炖煮40分钟左右，可以看到汤汁明显变少，此时加入1勺盐，开始大火收汁；\r\n\r\nstep11、汤汁不要全部收掉，留一点点即可，出锅前加入半勺味精提鲜；', '很好吃！', 2323, 'ahaaaa', NULL);
INSERT INTO `caipu_info` VALUES (4, '土豆花生烧肉', 'http://localhost:9000/image/caipupic/tudouhuashengshaorou.png', '家常菜', 1, '猪肉380克 花生100克 土豆160克', '油10克 盐1.5克 生抽5克 老抽3克 \r\n胡椒粉1克 胡萝卜80克 洋葱40g', 'step1、准备好土豆、花生、胡萝卜、猪肉、洋葱；\r\n\r\nstep2、提前将猪肉洗净、切块；\r\n\r\nstep3、切好的猪肉放入碗中，倒入生抽，充分拌匀，腌制1小时；\r\n\r\nstep4、土豆、胡萝卜洗净切块；洋葱、蒜瓣切好；\r\n\r\nstep5、锅中油热，倒入肥肉，煸炒出油，倒入瘦肉块；炒至肉变色；\r\n\r\nstep6、加入土豆炒匀，倒入花生炒匀；\r\n\r\nstep7、加入适量盐、老抽炒匀，加入适量冷水煮开；\r\n\r\nstep9、加盖焖煮20分钟；\r\n\r\nstep9、加入胡萝卜、洋葱、蒜瓣炒匀；\r\n\r\nstep10、淋入生抽、加入白胡椒粉调味即可出锅；', '太棒了', 1212, '哈哈哈哈', NULL);
INSERT INTO `caipu_info` VALUES (5, '醪糟苹果年糕汤', 'http://localhost:9000/image/indexlist/lzpgngt.png', '推荐列表', 11, '苹果1个 条状年糕适量 醪糟适量', '冰糖适量 枸杞1小把', 'step1、苹果切成小丁，放在盐水中泡着以防变色；\r\n\r\nstep2、年糕洗一下切成小块；\r\n\r\nstep3、锅中烧开水，加入年糕，煮到年糕浮起；\r\n\r\nstep4、加入苹果，放几块冰糖和枸杞，煮开一两分钟；\r\n\r\nstep5、加入醪糟煮开即可；', '可口！', 322, 'yoyo', NULL);
INSERT INTO `caipu_info` VALUES (6, '简单早餐鸡蛋灌饼', 'http://localhost:9000/image/caipupic/jdgb.png', '早餐', 4, '面粉250g  鸡蛋2个', '色拉油20克 食盐3克 水120克 \r\n细香葱1棵', 'step1、面粉与盐混合，将水慢慢倒入，揉成很软和的面团，盖上保鲜膜或湿布醒半小时(加点盐，不但揉好的面团有筋，也让面团有个基本的咸味。不需要加热水或温水，冷水就可以，和好的面团要如耳垂般柔软，但是不会粘手。面要软，这是第一个注意点)；\r\n\r\nstep2、面团醒的时候，将油酥原料混合(油酥不要太稀，这样不容易包，擀的时候也容易挤出;油酥太稠口感也不好，一般面粉的量比油稍多一点，以和好的油酥既细滑好搅动又有点稠度比较合适。油酥稠度要适当，这样容易使饼分层，利于将鸡蛋灌进，这是第二个注意点)；\r\n\r\nstep3、鸡蛋打进容器，根据口味加点盐，加点葱花搅匀(鸡蛋最好打在一端有尖口的容器比较方便灌进饼里)醒好的面团分成四份(分成几份随意)；\r\n\r\nstep4、案板和手上抹油，将分好的面团揉圆，取一个面团按扁，放入约1/4的油酥；\r\n\r\nstep5、将油酥包好，收口捏紧。收口向下，盖上湿布松弛10分钟，取一个面团，擀开成薄圆面片；\r\n\r\nstep6、平底锅烧热，这时中火，抹少量植物油，将圆饼放入，底部皮收紧，定型后立刻翻面，同样底部定型立刻再次翻面(锅要热，一面定型后立刻翻面将另一面也定型。中火，火头不要太小，使两面都能快速受热定型，这样饼很容易起鼓，这是第三个注意点。翻面速度要快，注意不要被烫到)；\r\n\r\nstep7、两面都快速受热定型后，转小火，再次将饼翻回正面，在起鼓分层的饼表面用筷子戳一个洞，倒进约1/4的蛋液，将饼夹起晃晃，使蛋液流满夹层；\r\n\r\nstep8、锅里适量补充点油，将饼翻面，待蛋液凝固，两面都变成金黄色后即可出锅，鸡蛋灌饼趁热食用口感最佳；\r\n', '简简单单！非常方便', 765, 'yoyo', NULL);
INSERT INTO `caipu_info` VALUES (7, '蔓越莓曲奇饼干', 'http://localhost:9000/image/caipupic/mymqqbg.png', '甜品', 5, '低筋面粉115克 蔓越莓干35克 鸡蛋15毫升', '黄油75克 细砂糖60克', '\r\nstep1、准备所有原料，黄油提前切片，室温中软化10-20分钟，不要软化过度；\r\n\r\nstep2、蔓越莓切碎；\r\n\r\nstep3、黄油捣碎，加入细砂糖和鸡蛋液搅拌均匀；\r\n\r\nstep4、倒入面粉搅拌均匀，倒入蔓越莓搅拌均匀，成为面团；\r\n\r\nstep5、把保鲜膜平铺，面团倒上面，掀起保鲜膜两边，用手隔着保鲜膜把面团整形成宽和高各5厘米的长方体；\r\n\r\nstep6、放冰箱冷冻1小时后取出，揭开保鲜膜，切成约0.7厘米厚的片，同时打开烤箱预热170度；\r\n\r\nstep7、均匀的摆在铺了细致的烤盘内，170度烤20分钟左右，表面微黄即可，刚出烤箱时饼干有点软是正常的，凉一会就脆了；', '很香  很好吃', 4756, 'panpan', NULL);
INSERT INTO `caipu_info` VALUES (8, '虾仁菌汤', 'http://localhost:9000/image/caipupic/xrjt.png', '汤类', 2, '虾仁适量 平菇1小朵 香菇2朵\r\n白玉菇1小盒', '胡萝卜1段 鸡蛋1个 姜1片\r\n盐适量 热水适量', 'step1、香菇切片，平菇撕成条，白玉菇切掉尾部，胡萝卜切丝儿，姜切丝儿；\r\n\r\nstep2、锅中放适量油，将鸡蛋煎成荷包蛋盛出备用；\r\n\r\nstep3、锅中再放少许油，下姜丝，胡萝卜丝翻炒；\r\n\r\nstep4、接着在下虾仁继续翻炒；\r\n\r\nstep5、所有的菌菇倒入一起翻炒至菌菇变软；\r\n\r\nstep6、加入适量的热水，盖过食材即可；\r\n\r\nstep7、煮开后8分钟左右，将煎好的鸡蛋放进去煮个30秒左右放盐调味，就可以出锅了；', '很棒', 3222, NULL, NULL);
INSERT INTO `caipu_info` VALUES (9, '鲫鱼萝卜汤', 'http://localhost:9000/image/caipupic/jylbt.png', '汤类', 2, '萝卜1条(3斤) 鲫鱼2条(800)g', '盐适量 姜1小块 葱2根 料酒1大匙\r\n食用油适量', 'step1、去鳞，去腮，去掉肚子里的东西，尤其是那层黑膜一定要去掉。然后晾干水；\r\n\r\nstep2、萝卜去皮，洗干净，切丝或切片随自己意；\r\n\r\nstep3、姜切丝；\r\n\r\nstep4、锅烧热，倒入适量油，注意鱼不要一下就丢进去煎哦。先抓住鱼头，用锅铲将烧热的油浇在鱼身上，两边都浇，注意不要烫到自己；\r\n\r\nstep5、鱼身两面都淋了热油后，再入锅煎。不要用锅铲乱翻，要端着锅转动，让油充分将鱼煎到。鱼煎好后，会自己滑动，这时候就可以小心将鱼翻面了；\r\n\r\nstep6、鱼身翻面后，继续煎另一面，和前面一样的煎法；\r\n\r\nstep7、下姜丝；\r\n\r\nstep8、下萝卜丝，可以利用锅气呛一下。也可以加水后再下萝卜丝，区别不大；\r\n\r\nstep9、倒入适量热水，水量一定要一次加足，因为煮那么长时间会蒸发掉不少水。盖上，大火煮开后，转小火炖煮半小时左右；\r\n\r\nstep10、在煮的过程中准备好葱花，最后撒葱花，关火，就可以开吃了；', '人间美味！一个字，鲜！', 7655, NULL, NULL);
INSERT INTO `caipu_info` VALUES (10, '芝麻糖', 'http://localhost:9000/image/caipupic/zmt.png', '小吃', 3, '白芝麻500克', '白砂糖150克 麦芽糖80克 \r\n植物油20毫升 水100克', 'step1、脱皮白芝麻清洗干净后沥干水；\r\n\r\nstep2、洗好的芝麻放入烤盘，100度烤十来分钟；\r\n\r\nstep3、烤去芝麻表面的水分，稍变黄而且散成一颗一颗即可；\r\n\r\nstep4、锅热油，倒入芝麻小火慢慢翻炒；\r\n\r\nstep5、炒至颜色变黄，另起平底锅，放入白砂糖和清水；\r\n\r\nstep6、小火炒糖水，开始会慢慢冒大泡，再炒变变成冒小泡，这时放入麦芽糖继续炒；\r\n\r\nstep7、汤水开始冒密集小泡时，倒入炒好的芝麻，一同翻炒，一直炒到可以拔丝的样子就差不多了；\r\n\r\nstep8、迅速倒入不沾烤盘内，用擀面杖擀成薄片，厚度可随意；\r\n\r\nstep9、擀好后趁热切成片；', '芝麻糖是一种很多小朋友都喜欢吃的美食~', 433, NULL, NULL);
INSERT INTO `caipu_info` VALUES (11, '柚子皮糖', 'http://localhost:9000/image/caipupic/yzpt.png', '小吃', 3, '柚子皮4个(730g) \r\n白糖(冰糖)700g', '水350g 盐适量', 'step1、准备好新鲜的柚子皮和白砂糖。将柚子皮放在温盐水中搓洗一下，把表皮的杂质洗净；\r\n\r\nstep2、用厨房刮皮刀将柚子表皮刮下来，尽量刮得薄，不要带出白色的部分。然后用刀切成窄条或细丝都行；\r\n\r\nstep3、将柚子皮、适量白砂糖和水倒入小锅中，大火煮沸后，小火煮半小时左右；\r\n\r\nstep4、煮到柚子皮差不多透明的程度，大火收汁（小提示：为了缩短煮的时间和去除苦味，也可以提前将柚子皮泡水冷藏隔夜，直接煮也没问题）；\r\n\r\nstep5、汤汁收得差不多时，将煮到透明的柚子皮捞出，铺在晾网上晾凉风干。煮好的柚子皮表面是微微有点粘的，嚼起来有果丹皮的口感；\r\n\r\nstep6、在餐盒或带盖的小锅里倒适量白砂糖，把柚子皮倒入其中，盖上盖子晃动一下，让它均匀地粘在柚子皮上；\r\n\r\nstep7、最后，将做好的柚子皮糖装入密封罐，冷藏保存；', '每年10月中秋以后，酸甜可口的柚子就开始上市了。大家都知道柚子果肉的营养丰富，其维生素C的含量是柠檬、橙子的3倍，钙的含量更比苹果、香蕉、梨等水果多10倍。可是吃剩的柚子皮一般都被直接丢掉了，其实这样太浪费啦，柚子皮不但可以作为冰箱和房间内的除味剂，还能做成吃的。', 6544, NULL, NULL);
INSERT INTO `caipu_info` VALUES (12, '鱼香肉丝', 'http://localhost:9000/image/indexlist/yxrs.png', '推荐列表', 11, '猪里脊肉60克 胡萝卜50克 竹笋50克\r\n茭白40克 木耳(水发)50克 青椒25克', '鱼香肉丝调味汁：\r\n白糖：醋：生抽：料酒=3：2:1:1', 'step1、黑木耳、胡萝卜、青椒、茭白、竹笋清洗干净后切丝备用，注意：竹笋需要先焯水，去掉草酸；\r\n\r\nstep2、里脊肉切丝后用淀粉、料酒等腌制5分钟，锅中加植物油烧热，放肉丝滑炒至变色即可；\r\n\r\nstep3、葱姜蒜、泡红椒均切细备用；\r\n\r\nstep4、鱼香肉丝调味汁，白糖：醋：生抽：料酒=3：2:1:1，加水淀粉调成汁（水淀粉的用量取决于自己这道菜的汤汁浓厚，可根据个人喜好）；\r\n\r\nstep5、锅中倒油，葱姜蒜泡椒在锅中煸炒出香；\r\n\r\nstep6、倒入切成丝的胡萝卜、黑木耳、竹笋、茭白，煸炒，晚一点加青椒丝翻炒；\r\n\r\nstep7、倒入肉丝，翻炒2分钟，使之成熟；8、最后再沿着锅边慢慢倒入调味汁（第4步），可根据自己口味再用盐调味，翻炒后即可出锅', '鱼香肉丝，是川菜中鱼香味的一个重要味型，用泡椒、蒜末、姜末和糖醋等佐料打造出一种鱼香的口感，而食材本身并不含有鱼肉。', 7547, NULL, NULL);
INSERT INTO `caipu_info` VALUES (13, '酥脆五香花生米', 'http://localhost:9000/image/caipupic/hsm.png', '家常菜', 1, '花生适量', '盐适量 油适量', 'step1、花生米过水洗去浮灰，花生用清水洗洗，不是泡；\r\n\r\nstep2、洗后晾干水分，过了水的花生就不容易外表炸黑；\r\n\r\nstep3、不热锅，炸花生时只需要用少量的油，在冷锅、冷油时就把花生下锅铺开即 冷锅+冷油+冷花生；\r\n\r\nstep4、炸花生米时要开中小火慢炸，不停翻动，听到噼噼啪啪的声音时就差不多了。适时地尝尝，没有生味就能够关火。不要等到酥脆了再关火，那样油的余温就会使花生变糊；关火之后要趁热用筷子蘸上几滴白酒撒上，这样的花生很香，而且不容易受潮，酥脆的时间坚持更长；\r\n\r\nstep5、出盘晾凉；\r\n\r\nstep6、炸好的花生米略微凉后再撒上适量盐，凉一点撒盐不易化，能够使花生米看起来更晶莹漂亮；', '红衣用手一搓就掉，香味浓郁，不管是当下酒菜，还是当小零食，都是又健康又好吃。', 3232, NULL, NULL);
INSERT INTO `caipu_info` VALUES (14, '萨其马', 'http://localhost:9000/image/caipupic/sqm.png', '甜品', 5, '面粉200g 鸡蛋2个 蜂蜜180g', '调和油适量 芝麻适理', 'step1、面粉打入鸡蛋，搅拌；\r\n\r\nstep2、揉成光滑的面团，面团盖湿布饧20分钟；\r\n\r\nstep3、将面团擀成均匀厚薄的面皮，比平常擀面条稍微厚点即可；\r\n\r\nstep4、切成粗细均匀的面条；\r\n\r\nstep5、锅内油烧热，下入面条用中火炸至蓬松淡黄色；\r\n\r\nstep6、捞出控油备用；\r\n\r\nstep7、锅中放适量蜂蜜，小火熬制，不用搅拌；\r\n\r\nstep8、熬至糖粘稠可以拉丝；\r\n\r\nstep9、迅速将炸好的面条、萄萄干、黑芝麻倒入锅炉中，并迅速搅拌，使面条均匀挂浆；\r\n\r\nstep10、趁热将搅拌好的面条倒入模具，用铲子把拌好的面条压平；\r\n\r\nstep11、稍凉后即可切割分块食用。(否则切割时易碎)', '蓬松又酥软的沙琪玛，牙口不好的人也能吃，吃起来也特别甜。', 987, NULL, NULL);
INSERT INTO `caipu_info` VALUES (15, '素炒白菜梗', 'http://localhost:9000/image/caipupic/scbcg.png', '家常菜', 1, '长白菜1颗 红菜椒5克', '花生油1茶匙 耗油1勺 盐1茶匙', 'step1、将长白菜梗和叶分开，梗切小条；\r\n\r\nstep2、锅热下油放入白菜梗；\r\n\r\nstep3、放入红菜椒大火翻炒；\r\n\r\nstep4、炒软加入耗油和盐继续翻炒，入味即可；\r\n', '大白菜梗要斜切成片更利于入味； 2. 白菜梗不要炒太熟， 五、六成熟即可加盐调味', 232, NULL, NULL);
INSERT INTO `caipu_info` VALUES (16, '时蔬炒刀削面', 'http://localhost:9000/image/caipupic/sscdxm.png', '早餐', 4, '刀削面30克 韭菜50克 豆芽30克\r\n香菇30克 胡萝卜20克 香肠1根', '油1勺 盐2匙 味精0.2匙', 'step1、准备原材料刀削面、韭菜、豆芽、香菇、胡萝卜、香肠；\r\n\r\nstep2、锅中烧开水下入刀削面大火煮至刀削面熟透但不失劲道后立即放入冷水中过凉再沥干水份；\r\n\r\nstep3、香肠、胡萝卜、香菇切成丝备用；\r\n\r\nstep4、豆芽洗净放入开水中焯水断生后立即放入冷水中过凉沥干水份切记焯水时间不宜过长；\r\n\r\nstep5、锅中倒入底油加热放入蒜粒爆香；\r\n\r\nstep6、放入胡萝卜炒至断生再放入香肠和香菇炒匀；\r\n\r\nstep7、放入刀削面中小火翻炒；\r\n\r\nstep8、放入切好的韭菜段同时放入盐和味精快速翻炒；\r\n\r\nstep9、所有的食材完全入味即可出锅享用；', '很香', 532, NULL, NULL);
INSERT INTO `caipu_info` VALUES (17, '韭菜虾仁鸡蛋水饺', 'http://localhost:9000/image/caipupic/jcxrjdsj.png', '推荐列表', 11, '韭菜300克 虾仁80克 鸡蛋100克 \r\n味达美5-8毫升 鸡精5克 香油5克', '盐适量 油5克 饺子皮适量 料酒3克', 'step1、将虾仁切好，不要太碎，然后用料酒和适量盐腌15分钟左右。这时将韭菜切成丁；\r\n\r\nstep2、将鸡蛋煎的嫩些；\r\n\r\nstep3、放盐、十三香、鸡精、味达美、香油调好馅。同时和面；\r\n\r\nstep4、包的小些更好看哦；', '很好吃', 624, NULL, NULL);
INSERT INTO `caipu_info` VALUES (18, '家常凉菜', 'http://localhost:9000/image/caipupic/jclc.png', '家常菜', 1, '黄瓜1根 白菜适量 胡萝卜适量\r\n粉丝适量 大蒜3粒', '海鲜酱油 耗油 糖 醋 盐 味精', 'step1、备好食材，黄瓜白菜胡萝卜切丝大蒜切末备用；\r\n\r\nstep2、粉丝沸水下锅煮2分钟，捞出过凉水备用；\r\n\r\nstep3、万能拌菜汁调好备用：海鲜酱油1勺 耗油两勺 糖三勺 醋三勺 味精半勺 盐小半勺；\r\n\r\nstep4、将所有食材放进大的碗里或者盆里搅拌均匀，装盘；', '东北家常凉菜，最火的凉菜，真的很好吃。', 764, NULL, NULL);
INSERT INTO `caipu_info` VALUES (19, '酸辣凉粉', 'http://localhost:9000/image/indexlist/sllf.png', '推荐列表', 11, '凉粉', '蒜1个 葱1根 热油15克 辣椒油1茶匙 \r\n食盐1/2茶匙 酱油2茶匙 花椒粉1/2茶匙 \r\n白糖1/2茶匙 醋1茶匙', 'step1、准备食材、凉粉、蒜、葱；\r\n\r\nstep2、蒜剁末、葱切段；\r\n\r\nstep3、碗中放入辣椒油、花椒粉、食盐、白糖、醋、酱油、然后淋入热油，将香味逼出来；\r\n\r\nstep4、将调料搅拌均匀，淋入凉粉中，拌匀即可', '非常开胃的酸辣凉粉，拯救你夏天不好的食欲', 3235, NULL, NULL);
INSERT INTO `caipu_info` VALUES (20, '可可淡奶油曲奇', 'http://localhost:9000/image/caipupic/dnyqq.png', '甜品', 5, '低筋面粉100克黄油60克 淡奶油50克', '朗姆酒一小勺 糖粉25克 \r\n可可粉10克 盐1克', 'step1、准备好所需材料，黄油提前室温软化；\r\n\r\nstep2、淡奶油小火煮至75度—80度左右，放一旁降温备用；\r\n\r\nstep3、室温软化的黄油加盐，稍打发；\r\n\r\nstep4、加入糖粉，先用电动打蛋器手动混合下（以免飞溅），继续用电动打蛋器打发至黄油颜色变浅，体积膨大；\r\n\r\nstep5、分多次加入加热后降温的淡奶油，并且打发至水油融合，打发好的黄油成顺滑状；\r\n\r\nstep6、加入朗姆酒，低速转两圈混合即可；\r\n\r\nstep7、筛入已经混合过筛过的低筋面粉和可可粉，用刮刀以翻拌的手法混合成可可曲奇面糊；\r\n\r\nstep8、取一个自己喜欢的花嘴型号（这里我用的是三能20齿裱花嘴）将裱花嘴套入屋诺一次性裱花袋中；\r\n\r\nstep9、将做好的可可淡奶油曲奇面糊装入裱花袋中，用刮板辅助将面糊刮入排除空气；\r\n\r\nstep10、取一个屋诺UN10008浅烤盘，垂直挤入可可淡奶油面糊（每一个大小厚度要均匀）；\r\n\r\nstep11、烤箱预热170度，上下火，中层20分钟（可可比较难观察上色情况，建议最后时间蹲点在烤箱边观察，我是后面开热风模式烤制）', '非常好吃', 1242, NULL, NULL);
INSERT INTO `caipu_info` VALUES (21, '水果蛋糕', 'http://localhost:9000/image/caipupic/sgdg.png', '甜品', 5, '淡奶油200克 蛋糕胚黄1个', '糖粉50克 芒果15克 椰蓉适量', 'step1、准备淡奶油、糖粉，打发；\r\n\r\nstep2、蛋糕胚黄切两半；\r\n\r\nstep3、抹一层淡奶油；\r\n\r\nstep4、加芒果，抹匀；\r\n\r\nstep5、在顶部一层刷奶油，盖上；\r\n\r\nstep6、盖上后，抹上一层淡奶油；\r\n\r\nstep7、用刮刀涂匀；\r\n\r\nstep8、放上自己喜欢的水果；', '非常好吃', 1978, NULL, NULL);
INSERT INTO `caipu_info` VALUES (22, '西兰花鸡肉泥', 'http://localhost:9000/image/caipupic/xlhjrn.png', '幼儿', 6, '鸡胸肉1块 西兰花120克', '盐2克 橄榄油10毫升 葱花少许\r\n姜1片 玉米淀粉少许 清水少许', '1、鸡胸肉去掉油脂，撕掉筋膜，洗净切小块，放入葱姜、2克盐，少许的玉米淀粉，用手抓匀；西兰花撕成小朵，放入淡盐水中浸泡十分钟，洗净捞出；\r\n\r\n2、取小锅，加入清水烧开，水里加入少许的盐、油（在配方之外），水开后放入西兰花焯水捞出；\r\n\r\n3、平底锅小火加热，放入橄榄油；\r\n\r\n4、放入腌渍后的鸡胸肉，葱姜拣出不用，炒至鸡肉变色；\r\n\r\n5、加入西兰花炒匀，放入少许的清水，稍微炖煮一会即可关火；\r\n\r\n6、炒熟的菜带汤一起放入搅拌杯中，用手持搅拌棒搅打成泥即可，宝宝可以直接食用，也可以添加在粥、面条里，一次吃不完，可装入保鲜盒分次食用，下次食用前取出化冻煮开', '做一款鸡肉泥，适合10个月以上宝宝添加辅食。', 453, NULL, NULL);
INSERT INTO `caipu_info` VALUES (23, '玉米糊', 'http://localhost:9000/image/caipupic/ymh.png', '幼儿', 6, '玉米2根', NULL, '1、整个玉米在刷版上刷，把玉米的浆刷出来；\r\n\r\n2、砂锅倒入一碗水烧开，倒入玉米浆；\r\n\r\n3、不停的搅拌至熟，大约需要煮10分，关火后盖盖焖5分钟', '玉米中含有谷氨酸、维生素和不饱和脂肪酸等物质，宝宝常吃玉米，可以促进生长，有利于智力的发育，同时还可以缓解便秘的症状。', 876, NULL, NULL);
INSERT INTO `caipu_info` VALUES (24, '木瓜燕窝', 'http://localhost:9000/image/caipupic/mgyw.png', '孕妇', 8, '燕窝3-5克 木瓜1个', NULL, '1、把木瓜切开，木瓜肉切开备用；\r\n\r\n2、把准备好的燕窝泡水。一般用矿泉水在碗里泡发，水盖住燕窝就行。一般夏天泡发2-4小时；注意细节：冬天可能时间长点4-6小时。（有些说要泡一夜是不对的，，泡久了口感会不好。）如果泡发2小时后有燕角没有泡发好，需要手动撕开再泡；\r\n\r\n3、等燕窝泡发好之后，把燕窝撕成丝条状，如果有细毛需要挑干净，可以用滤网滤掉细毛；\r\n\r\n4、隔水炖：把洗干净的燕窝放入炖盅里，可以适当加一点水盖住燕窝；\r\n\r\n5、然后放入锅内，锅的水不超过炖盅三分之一；首先大火烧开，然后小火炖30分钟就可以了；\r\n\r\n6、最后把炖好的燕窝倒入之前准备好的木瓜里；', '燕窝性平，属于温补、清补类补品，是女性的美容滋补圣品。怀孕的时候吃对自己和宝宝的皮肤都有好处。燕窝和木瓜很适合女性，木瓜能补充营养，提高抗病能力，木瓜中的木瓜蛋白酶，可将脂肪分解为脂肪酸，能消化蛋白质，有利于人体对食物进行消化和吸收，能健脾消食的功效。', 1923, NULL, NULL);
INSERT INTO `caipu_info` VALUES (25, ' \r\n墨鱼猪肚花生汤', 'http://localhost:9000/image/caipupic/myzdhst.png', '孕妇', 8, '猪肚1个 墨鱼(干)1个 红皮花生30克 党参2根', '植物油1茶匙 \r\n食盐适量 \r\n桂圆(干)15克 姜2片', '1、墨鱼把骨头去掉，洗净切丝，然后用油炸香，用油炸一下可以减少墨鱼的腥味；\r\n\r\n2、将猪肚放到热水中，放入姜块，煮5分钟；\r\n\r\n3、取出煮好的猪肚，把一端面白色的东西去掉即可；\r\n\r\n4、处理好的猪肚切丝；\r\n\r\n5、将所有材料放入锅里，加入适量的水；\r\n\r\n6、电压力锅选择煲汤功能炖20分钟，如果用砂锅要炖40分钟；\r\n\r\n7、汤炖好加入适量的盐调味即可', '猪肚具有养胃的功效，而墨鱼常吃可以滋阴又补血，而且还是凉补，它们一起炖出来的汤不用加任何调料，味道非常清香，是女性的好朋友，对于孕妇产妇理更是相宜。红皮花生是补血良品。', 5433, NULL, NULL);
INSERT INTO `caipu_info` VALUES (26, '阿胶糕', 'http://localhost:9000/image/caipupic/ejg.png', '孕妇', 8, '阿胶250克 黄酒300克 核桃仁250克 黑芝麻250克 红枣250克 桂圆75克', '冰糖150克', '1、阿胶取出来，用干净的纱布袋包裹好，用刀背稍微敲碎一些；\r\n\r\n2、将敲碎的阿胶块放入破壁机中。阿胶太硬，实在敲不动，就全部交给机器吧；\r\n\r\n3、启动破壁机，将阿胶搅打成粉末。如果没有破壁机的话，药店有那种磨粉的机器，可以代加工的；\r\n\r\n4、阿胶粉中倒入黄酒，盖上保鲜膜，浸泡一天。盖保鲜膜是为了防止酒精挥发；\r\n\r\n5、将黄酒和阿胶全部倒入不锈钢锅中，小火加热，然后放入冰糖，搅拌至冰糖融化，继续小火慢慢熬煮，中间要不时的搅拌一下；\r\n\r\n6、熬煮阿胶的时候可以顺便把配料准备好。核桃仁炒香或者放入烤箱150度，烤10-15分钟。红枣清洗干净以后沥干水分，去核，剪成条。桂圆干去壳去核；\r\n\r\n7、黑芝麻清洗干净以后炒熟，或者用烤箱150度烤8-10分钟，注意不要烤糊了；\r\n\r\n8、将阿胶熬制粘稠，提起铲子，阿胶不容易滴落，在铲子上出现倒三角的拉丝状态，这样的阿胶就熬得差不多了；\r\n\r\n9、阿胶熬好之后，关火，先放入黑芝麻拌匀，然后倒入核桃仁、红枣、桂圆肉，充分搅拌均匀。过程要快速，阿胶冷了就不容易拌了；\r\n\r\n10、拌好之后，倒在不沾烤盘里面。没有不沾烤盘的话，就要垫不沾油纸，不然的话，最后会粘黏取不下来；\r\n\r\n11、表面盖一张不沾油纸，用擀面杖压平，形状尽量规则一点，最后才容易切成整齐的片状；\r\n\r\n12、自然晾凉，至阿胶糕完全定型，然后就可以取出来切片了。切好之后用密封保鲜盒装起来，每天吃一至两片', '阿胶具有很好的滋阴作用，自古以来都是很好的滋补圣品。加入了核桃、黑芝麻、桂圆、红枣的阿胶糕，可以补气养血，美容养颜，特别适合女士们食用。', 9766, NULL, NULL);
INSERT INTO `caipu_info` VALUES (27, '小米山药粥', 'http://localhost:9000/image/caipupic/xmsyz.png', '老年人', 7, '小米150克 山药300克', '糖适量', '1、准备好所用食材，山药去皮洗净；\r\n\r\n2、山药切小块，小米淘洗干净，山药装碗中备用；\r\n\r\n3、电饭锅加足量开水，把小米、山药倒入锅中；\r\n\r\n4、盖上锅盖，按下煮饭键开始煮粥；\r\n\r\n5、开锅后打开锅盖以防米汤溢出；\r\n\r\n6、将按键改至汤粥键小火慢煮（煮粥中间用饭勺多搅动几次，以防粘锅底）；\r\n\r\n7、煮至小米开花、米汤粘稠，调入1茶勺盐搅匀入味就可以出锅了', '小米山药粥是一款老少皆宜的美味粥，鲜香软糯。', 6333, NULL, NULL);
INSERT INTO `caipu_info` VALUES (28, '黑燕麦片玉米饼', 'http://localhost:9000/image/caipupic/hymymb.png', '糖尿病', 9, '糯玉米360克 \r\n黑麦片35克', '水晶菜80克 清水微量 沙拉酱适量', '1、准备好糯玉米、黑麦片、水晶菜、辣椒、沙拉酱；\r\n\r\n2、黑麦片用少许清水浸泡。（清水只需要淹过麦片即可）；\r\n\r\n3、玉米粒放入搅拌机打成泥。（加入微量清水）；\r\n\r\n4、把黑燕麦片加入玉米泥里；\r\n\r\n5、搅拌均匀。无需放入任何调料。自然香甜；\r\n\r\n6、煎锅里加入适量植物油，把玉米泥放入，压成小圆饼；\r\n\r\n7、双面煎，直至煎熟。搭配蔬菜、淋上沙拉酱就完成了', '黑燕麦对于顽固性糖尿病有很好的补益作用，虽为粮食，含有高纤膳食纤维，但是补益效果胜似药物。——摘自百度百科', 979, NULL, NULL);
INSERT INTO `caipu_info` VALUES (29, '海米烧冬瓜', 'http://localhost:9000/image/caipupic/hmsdg.png', '高血压', 10, '冬瓜450克 海米80克', '食盐3克 食用油25克 \r\n生姜8克 香葱15克 \r\n生抽8毫升 鸡精3克', '1、海米用温水泡软；\r\n\r\n2、香葱、冬瓜、生姜分别处理好；\r\n\r\n3、炒锅热油，把葱段和海米爆香；\r\n\r\n4、把冬瓜块倒入小翻片刻；\r\n\r\n5、加入半碗清水，焖煮至冬瓜酥烂；\r\n\r\n6、加入食盐和鸡精炒匀即可关火', '清热解暑：冬瓜性寒味甘，清热生津，僻暑除烦，在夏日服食尤为适宜。', 764, NULL, NULL);
INSERT INTO `caipu_info` VALUES (30, '辣炒鲜虾', 'http://localhost:9000/image/caipupic/lcxx.png', '家常菜', 1, '\r\n鲜虾450克 \r\n花生仁(炒)70克 \r\n西芹30克', '香葱1根 青花椒2克 \r\n干辣椒8克 生姜6克 \r\n料酒20毫升 黑胡椒粉2克 \r\n精盐2克 蒸鱼豉油15毫升', 'step1、新鲜的虾，洗净剪掉虾须；\r\n\r\nstep2、从背部的第二关节，挑出虾线；\r\n\r\nstep3、再次洗净沥水后入碗中，加料酒，生姜丝，黑胡椒粉，拌匀后腌20分钟；\r\n\r\nstep4、各式配料准备；\r\n\r\nstep5、锅中注入食用油，下腌好的虾炸制；\r\n\r\nstep6、炸制虾变红色后捞出控油；\r\n\r\nstep7、锅中底少许底油，下生姜丝，花椒，辣椒煸炒；\r\n\r\nstep8、出香味后下之前炸好的虾；\r\n\r\nstep9、翻炒后下西芹菜粒，略翻炒后下精盐；\r\n\r\nstep10、加入蒸鱼豉油，略焖1分钟，下酒鬼花生，快速翻炒后下葱末；\r\n\r\nstep11、关火，出锅即可', '好吃的不得了！就是这个味！', 7645, NULL, NULL);

-- ----------------------------
-- Table structure for shoucang_info
-- ----------------------------
DROP TABLE IF EXISTS `shoucang_info`;
CREATE TABLE `shoucang_info`  (
  `scid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shouchang_id` int NULL DEFAULT NULL COMMENT '收藏id',
  PRIMARY KEY (`scid`) USING BTREE,
  INDEX `shoucang_caipu_id`(`shouchang_id`) USING BTREE,
  CONSTRAINT `shoucang_caipu_id` FOREIGN KEY (`shouchang_id`) REFERENCES `caipu_info` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoucang_info
-- ----------------------------
INSERT INTO `shoucang_info` VALUES (1, 'aha', 1);
INSERT INTO `shoucang_info` VALUES (2, 'aha', 2);
INSERT INTO `shoucang_info` VALUES (3, 'admin', 3);
INSERT INTO `shoucang_info` VALUES (4, 'admin', 4);
INSERT INTO `shoucang_info` VALUES (5, 'aha', 3);
INSERT INTO `shoucang_info` VALUES (6, 'aha', 5);

-- ----------------------------
-- Table structure for small_type
-- ----------------------------
DROP TABLE IF EXISTS `small_type`;
CREATE TABLE `small_type`  (
  `sid` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱小类名称',
  `simage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类图片',
  `sremark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `big_type_id` int NULL DEFAULT NULL COMMENT '菜谱大类编号',
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `big_type_id`(`big_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of small_type
-- ----------------------------
INSERT INTO `small_type` VALUES (1, '家常菜', 'http://localhost:9000/image/typepic/jiachangcai.png', '家常菜', 1);
INSERT INTO `small_type` VALUES (2, '汤类', 'http://localhost:9000/image/typepic/tanglei.png', '汤类', 1);
INSERT INTO `small_type` VALUES (3, '小吃', 'http://localhost:9000/image/typepic/xiaochi.png', '小吃', 1);
INSERT INTO `small_type` VALUES (4, '早餐', 'http://localhost:9000/image/typepic/breakfast.png', '早餐', 1);
INSERT INTO `small_type` VALUES (5, '甜品', 'http://localhost:9000/image/typepic/tianpin.png', '甜品', 1);
INSERT INTO `small_type` VALUES (6, '幼儿', 'http://localhost:9000/image/typepic/young.png', '幼儿', 2);
INSERT INTO `small_type` VALUES (7, '老人', 'http://localhost:9000/image/typepic/old.png', '老人', 2);
INSERT INTO `small_type` VALUES (8, '孕妇', 'http://localhost:8080/image/typepic/yunfu.png', '孕妇', 2);
INSERT INTO `small_type` VALUES (9, '糖尿病', 'http://localhost:9000/image/typepic/tangniaobing.png', '糖尿病', 2);
INSERT INTO `small_type` VALUES (10, '高血压', 'http://localhost:9000/image/typepic/gaoxueya.png', '高血压', 3);
INSERT INTO `small_type` VALUES (11, '推荐列表', NULL, '推荐列表', 2);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT 0 COMMENT '//0为正常，1为注销',
  `per` int NULL DEFAULT 0 COMMENT '//权限  0为用户，1为管理员',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'aha', '123456', 0, 0);
INSERT INTO `user_info` VALUES (2, 'admin', '123456', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
