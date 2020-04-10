-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: db_my_boke
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_article`
--

DROP TABLE IF EXISTS `app_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `vnum` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_article_category_id_7e0b83c8_fk_app_category_id` (`category_id`),
  KEY `app_article_user_id_b6977a19_fk_app_bokeuser_id` (`user_id`),
  CONSTRAINT `app_article_category_id_7e0b83c8_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  CONSTRAINT `app_article_user_id_b6977a19_fk_app_bokeuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_bokeuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_article`
--

LOCK TABLES `app_article` WRITE;
/*!40000 ALTER TABLE `app_article` DISABLE KEYS */;
INSERT INTO `app_article` VALUES (1,0,'2020-03-28 15:14:22.365898','2020-03-28 15:14:22.365898','狂战士','狂战士是网络游戏《地下城与勇士》中男鬼剑士转职后的职业之一，狂战士又称红眼，典型的战斗机器。天生就是为战斗而生的角色。',0,'article/2020/03/29/q.jpg',1,'<p style=\"text-align: center;\"><img src=\"/media/article/content/0_20200329214616.jpg\" title=\"\" alt=\"0.jpg\"/></p><p>&nbsp;&nbsp; “为了得到更强的力量，不惜一切代价！即使出卖自己的灵魂！”</p><p>被鬼神<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8D%A1%E8%B5%9E\">卡赞</a>所控制的鬼剑士。也称为卡赞综合病症。</p><p>平时没什么异常，一旦有愤怒、激动的情绪，精神达到崩溃状态时会成为疯狂的鬼神。</p><p>因失去了理智所以无法区分敌军与我军，但他的速度与攻击力非常高。</p><p>狂战士卢克西摆平了异界生命体希洛克，希洛克是10年前的剑魂4人组合也无法相比的。</p><p>所以狂战士在疯狂的瞬间也许是所有职业里最强的。</p><p><br/></p>',2,1),(2,0,'2020-03-29 13:51:24.888135','2020-03-29 13:51:24.888135','剑魂','剑魂是网络游戏《地下城与勇士》中男鬼剑士转职后的职业之一。 剑魂为精通所有剑类武器的武器专家，战场上的多面手。也是男鬼剑士中能掌握光剑的角色。擅长以迅雷不及掩耳之势的连击击溃对手。能够在战斗中进退自如。 对各种武器的掌握是其在鬼剑士职业中最大的特点。',0,'article/2020/03/29/w.jpeg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/2_20200329214928.jpg\" title=\"\" alt=\"2.jpg\"/><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p><strong>“不屈服于鬼神的束缚，一如既往地修炼自己的宝剑，这难道不是武道的极限吗？”</strong></p><p>有这样的一些人。无论是心脏虚弱还是缺少一只腿，他们在任何条件下都不会屈服，勇往直前，向自己特定的目标前进。</p><p>同样也有这样的一些人，即使拿武器的手变得扭曲，也不会向命运屈服，而会更努力地对武器进行精研。其中一部分人在各自的武器领域里达到了极限，人们将这些<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%AC%BC%E5%89%91%E5%A3%AB\">鬼剑士</a>称为“剑魂”。</p><p>20多岁成为德罗斯帝国剑术指导的短剑达人<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B7%B4%E6%81%A9\">巴恩</a>，“10年前”在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%82%B2%E9%B8%A3%E6%B4%9E%E7%A9%B4\">悲鸣洞穴</a>失踪的太刀达人<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%A5%BF%E5%B2%9A\">西岚</a>，北部班图族族长钝器专家<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B8%83%E4%B8%87%E5%8A%A0\">布万加</a>，挎着长剑到处流浪的流浪儿<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%98%BF%E7%94%98%E5%B7%A6\">阿甘左</a>，在四处修炼的神剑<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%A2%81%E6%9C%88/15440603\" data-lemmaid=\"15440603\">梁月</a>和剑圣<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%B4%A2%E5%BE%B7%E7%BD%97%E6%96%AF/8285221\" data-lemmaid=\"8285221\">索德罗斯</a>，他们的故事振奋着所有的战士们。</p><br/><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p>',2,1),(3,0,'2020-03-29 14:01:13.571176','2020-03-29 14:01:13.572173','鬼泣','鬼泣，是腾讯代理的横版格斗过关式网络游戏《地下城与勇士》中的转职职业之一。为男鬼剑士15级转职的方向之一，另外四个职业是狂战士，阿修罗，剑魂，剑影。 鬼泣，剑士中的召唤者，是唯一能解除左手封印并掌握鬼之力的角色。擅长召唤鬼神助阵，精通各类阵法，步伐。如：增强自身智力和力量的刀魂之卡赞，削弱敌人心智的侵蚀之普戾蒙，冰冻能力极强的冰霜之萨亚，虚无状态的残影之凯贾，以及致命的冥炎之卡洛，吞噬一切的邪神之怖拉修等。',0,'article/2020/03/29/e.jpeg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/3_20200329215958.jpg\" title=\"\" alt=\"3.jpg\"/>&nbsp; <br/></p><p><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9C%B0%E4%B8%8B%E5%9F%8E%E4%B8%8E%E5%8B%87%E5%A3%AB\">地下城与勇士</a>中的职业，在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%AC%BC%E5%89%91%E5%A3%AB\">鬼剑士</a>升到15级转职以后可以使用，是剑士中的召唤者。</p><p>“能否将命运的铁链揭开，完全在于自身的意志”</p><p>如果把缠绕在臂上的铁链松开，鬼神便会自由的行动，所以一部分鬼剑士会扔掉铁链成为鬼泣。巧妙的利用鬼神会对战斗有利。<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A5%9E%E5%AE%98\">神官</a>吉格将刀魂之<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8D%A1%E8%B5%9E\">卡赞</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%AE%8B%E5%BD%B1%E4%B9%8B%E5%87%AF%E8%B4%BE\">残影之凯贾</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%86%B0%E9%9C%9C%E4%B9%8B%E8%90%A8%E4%BA%9A\">冰霜之萨亚</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BE%B5%E8%9A%80%E4%B9%8B%E6%99%AE%E6%88%BE%E8%92%99\">侵蚀之普戾蒙</a>等鬼神的使用方法传播给了鬼泣。鬼泣最终也不乐观。吉格在与<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%87%8E%E8%9B%AE%E4%BA%BA\">野蛮人</a>战斗中多次被雷击，失去了对付鬼神的技能，最后被鬼神们埋在了地下。</p><p><br/></p>',2,1),(4,0,'2020-03-29 14:04:44.267007','2020-03-29 14:04:44.267007','阿修罗','阿修罗是网络游戏《地下城与勇士》中男鬼剑士转职后的职业之一。 “眼睛虽已长眠，但只要心脏不停，我的身体就是我的眼睛。”——阿修罗 “刀斩肉身，心斩灵魂，用心眼看世界”——阿修罗GSD 师承阿拉德大陆救世主GSD，为了能感触到波动，而放弃了眼睛。 失去双目后，为了加强近距离战斗力，向武将打造板甲护甲提高自身的防御力。失去五感中的一感的他，向赫顿玛尔后院里的G.S.D习得了感知气流的功能，通过气流判断出敌人所在位置。',0,'article/2020/03/29/r.jpeg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/4_20200329220250.jpg\" title=\"\" alt=\"4.jpg\"/> <br/></p><p>“眼睛虽已长眠，但只要心脏不停，我的身体就是我的眼睛。”</p><p>一些鬼剑士为了能感触到波动，而放弃了眼睛。</p><p>失去双目后，为了加强近距离战斗力，向武将打造板甲护甲提高自身的防御力。失去五感中的一感的他，向赫顿玛尔后院里的G.S.D习得了感知气流的功能，通过气流判断出敌人所在位置。</p><p>剩下的就是踏入战场的战神之路。</p><p>的确，身为瞎子的他们，不管有多艰难，即使自己的左手非常疼痛，但是靠着坚韧的意念就能在这块大陆下生存下来。为了激发波动而放弃双眼的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%AC%BC%E5%89%91%E5%A3%AB/366632\" data-lemmaid=\"366632\">鬼剑士</a>，他们在失去了视力之后，为了掩饰自己的外形，给自己带上了眼罩。为了弥补近战上的战斗力，委托了“素喃工坊”的盲人工匠们定制了一套“板金”盔甲，拥有了强大的防御力。失去了5感中其一的他们，在赫顿玛尔后巷的G.S.D那里可以学到感知气流掌握敌人动向，制约气流并发散出强烈波动的技术。剩下的只是为驰骋战场的ASURA们指出一条明路而已了。他们会让你感受到用视觉换来的命运之路上，没有后悔的决然意志。</p><p>他们拥有无比高尚的意念，任何人都阻止不了他们。他们的思维永远是正确的。当他们的意念高于自身的潜力的时候，就能发出“非魔法元素”产生的意念波动，让意念代替手中的武器进行战斗，让心和武器永远结合在一起……</p><p>阿修罗职业特色是具备感知能力的职业，为了感触波动而放弃了双目。以剑气为主要攻击手段，鬼剑中的“魔法师”。擅长中远距离打击，瞬间伤害极高的职业。凡是靠近他的敌人都会被其强烈的杀气所震慑。</p><p>当你看到他周围存在大量的刻印符，而你却不幸成为他的猎物，相信死神已经离你不远了。</p><p><br/></p>',2,1),(5,0,'2020-03-29 14:07:25.505842','2020-03-29 14:07:25.505842','剑影','剑影是网络游戏《地下城与勇士》中男鬼剑士转职后的职业之一，剑影与鬼合二为一，拥有快速的剑技。',0,'article/2020/03/29/t.jpeg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/5_20200329220647.jpg\" title=\"\" alt=\"5.jpg\"/></p><p>被鬼手宿命束缚的剑士们。</p><p>他们虽以各自的方式对抗着不公的命运，但最终还是会被暴走的鬼手控制，躲不过悲惨的下场。<br/>　　这，便是鬼剑士们的结局。<br/>　　不过，在濒死的鬼剑士身上偶尔也会发生一些不可思议的事。</p><p>“鬼人化”。</p><p>是指幻鬼进入到濒死的肉体内，两个魂魄共存于一体的现象。<br/>　　被命运推向这诡谲的漩涡之中，他们将会作为非人非鬼的存在重生。<br/>　　毫无血色的身体，毫无血色的鬼手。</p><p>毫无生机的模样仿若行走在世间的鬼神。<br/>　　尽管如此，他依然紧握刀剑、战斗不止。</p><p>从此，人们称呼他们为“剑影”，如鬼魅之影一般存在于世。</p><p><br/></p>',2,1),(6,0,'2020-03-29 14:10:54.179800','2020-03-29 14:10:54.179800','剑魔','剑魔是网络游戏《地下城与勇士》中的角色，为契魔者（女鬼剑转职后）一次觉醒之后的称呼。 使用三位魔人合一的魔剑-蛇腹剑进行战斗的职业。',0,'article/2020/03/29/a.jpg',0,'<p><img src=\"/media/article/content/00_20200329220858.jpg\" title=\"\" alt=\"00.jpg\"/></p><p><strong>“自从与魔人签订了<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A5%91%E7%BA%A6/2874688\" data-lemmaid=\"2874688\">契约</a>……我就开始渴求……更强敌人的鲜血……而且！我jio香”</strong><br/>　　契魔者是指与魔人签订契约的剑士，她们最为明显的特征是使用“蛇腹剑”进行战斗。这把蛇腹剑名叫“普诺”，它的剑身随时可以拉长10倍以上，并像鞭子一样舞动。<a class=\"lemma-album layout-right nslog:10000206\" title=\"剑魔\" href=\"https://baike.baidu.com/pic/%E5%89%91%E9%AD%94/13213655/18079081/c83d70cf3bc79f3db692bc4abca1cd11728b295c?fr=lemma&ct=cover\" target=\"_blank\" style=\"width:191px;\"></a></p><p></p><p>“普诺”还有一个不为人知的秘密，那就是它本身是由多个魔人组合而成：魔王“塔莫斯”是为剑柄，魔人“普诺”是为剑身，魔人“克库斯”是为剑刃。其中，塔莫斯是一位失去了躯体以能量组成的魔王。它生前曾是一位无比强大的剑士，所以对使用者的要求也非常高。只有使用者得到塔莫斯的认可，并与之签订契约才能够获得驱使蛇腹剑的力量。而剑的主体——普诺是居住在博隆克斯南部的强大魔人（同时也是最先被发现的魔人），具有蛇形的身躯，能够自由的伸缩舞动，同时它还能够驱使下级魔人克库斯依附在自己身上，从而让自己的本体更加强大。只有三个魔人默契的配合才能够组成这把威力无穷的“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%AD%94%E5%89%91/4512311\" data-lemmaid=\"4512311\">魔剑</a>”，身为主体的“普诺”也成了这把蛇腹剑的名字。</p><p>塔莫斯、普诺以及克库斯三个魔人都极为好战，因此契魔者如果想要完全掌控蛇腹剑，必须要拥有无比坚定的意志，否则稍有不慎，便会遭到蛇腹剑的反噬。</p><p><br/></p>',1,1),(7,0,'2020-03-29 14:14:14.165611','2020-03-29 14:14:14.165611','剑宗','剑宗，是腾讯旗下网络游戏《地下城与勇士（简称：DNF）》中女鬼剑士转职驭剑士之后第一次觉醒的名称。',0,'article/2020/03/29/s.jpg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/01_20200329221327.jpeg\" title=\"\" alt=\"01.jpeg\"/> <br/></p><p><strong>“异端？如果我的剑道是你们所谓的异端……那就让我用它来实现你们背弃的正义吧！”</strong><br/>　　帝国曾经流传着一种被称为“驭剑术”的极致剑术，这种剑术的来源已不可考，据说是由一位剑神结合多种剑术与武技创造而出的，讲究瞬间出剑，具有极其恐怖的破坏力。</p><p>但是这种剑术自一出现就被正统的剑士们视为异端并加以排斥，所以学习驭剑术的剑士越来越少，到了最后，只有在少数古老的贵族家族里才能见到这种伟大剑术的传承。</p><p>这种情况一直持续到驭剑士的出现，才有所改观。驭剑士们根据这套禁忌的剑术创造了一个全新的招式流派，她们利用鬼手的转移能量赋予武器强大的魔法力量从而改变剑的形态，并凭此施展出了令整个帝国为之震惊的强大剑术。</p><p>随着驭剑士与日俱增的威名，让帝国高层处于非常尴尬的局面。他们一方面需要这种强大的剑术为帝国开疆辟土，另一方面这种异端的剑术对帝国来说终究是一种威胁。</p><p>最后，帝国还是做出了他们既往风格的决定：“只有获得帝国准许的人才能使用驭剑术，若有他人擅自掌握和使用，即认为是叛国，一律处于死刑。”</p><p><br/></p>',1,1),(8,0,'2020-03-29 14:16:24.070674','2020-03-29 14:16:24.070674','剑豪','剑豪，网络游戏《地下城与勇士》中流浪武士的一次觉醒名称，二觉名称为剑帝。拥有双武器系统，技能华丽。',0,'article/2020/03/29/d.jpg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/02_20200329221458.jpg\" title=\"\" alt=\"02.jpg\"/></p><p>比尔马克<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B8%9D%E5%9B%BD/21615\" data-lemmaid=\"21615\">帝国</a>试验场逃出生天的少女们，转眼间已被帝国添加进了通缉名单。</p><p>在无尽的逃亡中，她们每天都会有人死亡，或是因为无法控制的转移之力的反噬，或是因为帝国士兵的追杀。终于，在绝望之中，一小部分少女爆发出了惊人的潜力，她们掌控了这种转移之力，并将其衍化成了独特的内劲，一种阿拉德大陆上从未出现的力量。</p><p>为了向帝国复仇，她们不得不想方设法提升自己的力量。为此，她们忍住了心中的痛苦，混杂在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%86%92%E9%99%A9%E5%AE%B6/83207\" data-lemmaid=\"83207\">冒险家</a>的队伍中，开始了漫长的游历。在这过程中，她们不断熟悉内劲的力量，并向各色强者偷学战斗绝技。虽然冒险之中</p><p>接踵而至的战斗随时会要了她们的生命，但也让她们对力量与技巧的领悟更加深刻。</p><p>终于，结合独特的内劲之力，她们融汇了战斗中见到的所有的武学精华，创造出了独树一帜的双持剑术。<br/>　　这种华丽且优雅的战斗方式让她们一时之间名声大噪，整个阿拉德大陆都为之震撼。</p><p>有人在得悉她们那艰难坎坷的经历后， 无意中道出的一句话，成为了她们的名字及称号——<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B5%81%E6%B5%AA%E6%AD%A6%E5%A3%AB/1567670\" data-lemmaid=\"1567670\">流浪武士</a>。<br/>　　如花朵般美丽，如毒刺般残忍，流浪在孤独的世界。这正是她们的人生写照<sup class=\"sup--normal\" data-sup=\"1\" data-ctrmap=\":1,\">[1]</sup><br/></p><p><br/></p>',1,1),(9,0,'2020-03-29 14:20:34.772830','2020-03-29 14:20:34.772830','暗帝','暗帝，是网络游戏DNF（地下城与勇士）中暗殿骑士的一次觉醒名称。二觉之后名为裁决女神。 暗帝是女鬼剑士四大职业当中唯一魔攻职业。在安图恩副本中因极强的控场能力而倍受各大职业欢迎，装备尚可时也有着不错的输出，但暗帝的小技能输出严重不足，主要输出比较依赖无色技能。 暗帝的技能较少，流派差别不大，故sp也相对充裕；在二觉之后，由于新技能的出现，可考虑舍弃部分非必要技能，譬如：暗影之矛、暗影漩涡、暗影囚杀等。 在二次觉醒后新增了三个高百分比的主动技能：天罚死光、天罚之剑、神罚·灭世裁决；并增添被动技能：薄暮，大大',0,'article/2020/03/29/f.jpg',0,'<p style=\"text-align: right;\"><img src=\"/media/article/content/03_20200329221956.jpg\" title=\"\" alt=\"03.jpg\"/></p><p>冥王乌希尔，关于他的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%A0%E8%AF%B4/69398\" data-lemmaid=\"69398\">传说</a>甚至可以追溯到人类开始记载历史之前。根据遗留下来的资料判断，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B3%A2%E7%BD%97%E4%B8%81/17032590\" data-lemmaid=\"17032590\">波罗丁</a>王甚至都是他忠诚的信徒。</p><p>但是，在波罗丁王权统治被推翻后，曾经受他压迫的势力将波罗丁的信仰定为异端，凡是信奉乌希尔的人都遭到了残酷的对待。特别是在背叛了波罗丁的部下——贝洛乌·里·格兰茨建立新的王朝后，更是立下了“凡信仰乌希尔者，诛灭三族”的严厉法规。那无法让现在的人所理解的独裁政策，贯穿了整个贝洛乌时代。最终，乌希尔这个名字也湮没在历史的长河之中。</p><p>正当人们认为有关乌希尔的一切都已经销声匿迹的时候，她们的出现告诉人们， 信奉冥王乌希尔的战士依然存在。</p><p>她们就是<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%9A%97%E6%AE%BF%E9%AA%91%E5%A3%AB/14492780\" data-lemmaid=\"14492780\">暗殿骑士</a>，守护冥王<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%B9%8C%E5%B8%8C%E5%B0%94/12666942\" data-lemmaid=\"12666942\">乌希尔</a>的禁卫骑士团。</p><p>隐居在斯特鲁山脉深处的她们，其真面目世人了解甚少，亲眼所见的更是少之又少。但是在极少数关于她们的传闻中都有一个共同特点，那就是，她们都是越战越勇的强者，隐蔽在暗影之下，借助乌希尔的力量毁灭敌人，犹如幽冥之中的鬼神一般吸取敌人的灵魂，强化自身。</p><p>她们到底是如何做到如此隐蔽不为人知？又是怀着怎样的目的走出历史的阴暗出现在人们的视线之中？</p><p>这个神秘的组织从头至尾都是一个费解的谜团。但唯一肯定的是，她们阴森凶狠的战斗方式，让所有敌视乌希尔的人从心底感到恐惧。</p><p><br/></p>',1,1);
/*!40000 ALTER TABLE `app_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_article_tag`
--

DROP TABLE IF EXISTS `app_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_article_tag_article_id_tag_id_1cab5f61_uniq` (`article_id`,`tag_id`),
  KEY `app_article_tag_tag_id_f35ce6e5_fk_app_tag_id` (`tag_id`),
  CONSTRAINT `app_article_tag_article_id_450af862_fk_app_article_id` FOREIGN KEY (`article_id`) REFERENCES `app_article` (`id`),
  CONSTRAINT `app_article_tag_tag_id_f35ce6e5_fk_app_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `app_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_article_tag`
--

LOCK TABLES `app_article_tag` WRITE;
/*!40000 ALTER TABLE `app_article_tag` DISABLE KEYS */;
INSERT INTO `app_article_tag` VALUES (1,1,1),(2,1,3),(3,1,5),(4,2,1),(5,2,4),(6,2,5),(7,3,1),(8,3,4),(9,3,6),(10,4,1),(11,4,3),(12,4,6),(13,5,1),(14,5,4),(15,5,5),(16,6,1),(17,6,4),(18,6,5),(19,7,1),(20,7,4),(21,7,5),(22,8,1),(23,8,4),(24,8,5),(25,9,1),(26,9,4),(27,9,6);
/*!40000 ALTER TABLE `app_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_banner`
--

DROP TABLE IF EXISTS `app_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `title` varchar(10) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_banner`
--

LOCK TABLES `app_banner` WRITE;
/*!40000 ALTER TABLE `app_banner` DISABLE KEYS */;
INSERT INTO `app_banner` VALUES (1,0,'2020-03-28 14:44:20.344007','2020-03-28 14:44:20.344007','狂战士','banner/2020/03/28/kzs.png','https://www.baidu.com/',1),(2,0,'2020-03-28 14:44:36.586598','2020-03-28 14:44:36.586598','剑魂','banner/2020/03/28/jh.png','https://www.baidu.com/',2),(3,0,'2020-03-28 14:44:55.322051','2020-03-28 14:44:55.322051','阿修罗','banner/2020/03/28/axl.png','https://www.baidu.com/',3);
/*!40000 ALTER TABLE `app_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bokeuser`
--

DROP TABLE IF EXISTS `app_bokeuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bokeuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bokeuser`
--

LOCK TABLES `app_bokeuser` WRITE;
/*!40000 ALTER TABLE `app_bokeuser` DISABLE KEYS */;
INSERT INTO `app_bokeuser` VALUES (1,'pbkdf2_sha256$120000$D5hAVz3arAdZ$S32zCtM2b/ftuN6jNtwJep4LKRHNUzugSMrdy4iLd84=','2020-04-01 13:00:32.243810',1,'shanyuan','','','shanyuan@qq.com',1,1,'2020-03-27 15:03:22.735110','');
/*!40000 ALTER TABLE `app_bokeuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bokeuser_groups`
--

DROP TABLE IF EXISTS `app_bokeuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bokeuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bokeuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_bokeuser_groups_bokeuser_id_group_id_21f9bf30_uniq` (`bokeuser_id`,`group_id`),
  KEY `app_bokeuser_groups_group_id_bd5de310_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_bokeuser_groups_bokeuser_id_6b6f2823_fk_app_bokeuser_id` FOREIGN KEY (`bokeuser_id`) REFERENCES `app_bokeuser` (`id`),
  CONSTRAINT `app_bokeuser_groups_group_id_bd5de310_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bokeuser_groups`
--

LOCK TABLES `app_bokeuser_groups` WRITE;
/*!40000 ALTER TABLE `app_bokeuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_bokeuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bokeuser_user_permissions`
--

DROP TABLE IF EXISTS `app_bokeuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bokeuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bokeuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_bokeuser_user_permis_bokeuser_id_permission_i_5d92ba68_uniq` (`bokeuser_id`,`permission_id`),
  KEY `app_bokeuser_user_pe_permission_id_e0df5193_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_bokeuser_user_pe_bokeuser_id_60edcb6d_fk_app_bokeu` FOREIGN KEY (`bokeuser_id`) REFERENCES `app_bokeuser` (`id`),
  CONSTRAINT `app_bokeuser_user_pe_permission_id_e0df5193_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bokeuser_user_permissions`
--

LOCK TABLES `app_bokeuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `app_bokeuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_bokeuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (1,0,'2020-03-28 15:02:26.260859','2020-03-28 15:02:26.260859','女鬼剑',1),(2,0,'2020-03-28 15:02:30.169863','2020-03-28 15:02:30.169863','男鬼剑',0);
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_comment`
--

DROP TABLE IF EXISTS `app_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_comment_article_id_c87ecbda_fk_app_article_id` (`article_id`),
  KEY `app_comment_user_id_693f46cc_fk_app_bokeuser_id` (`user_id`),
  CONSTRAINT `app_comment_article_id_c87ecbda_fk_app_article_id` FOREIGN KEY (`article_id`) REFERENCES `app_article` (`id`),
  CONSTRAINT `app_comment_user_id_693f46cc_fk_app_bokeuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_bokeuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_comment`
--

LOCK TABLES `app_comment` WRITE;
/*!40000 ALTER TABLE `app_comment` DISABLE KEYS */;
INSERT INTO `app_comment` VALUES (4,0,'2020-03-30 12:20:54.271159','2020-03-30 12:20:54.271159','鬼泣666',3,1),(5,0,'2020-03-30 12:21:04.331239','2020-03-30 12:21:04.331239','剑魂666',2,1),(6,0,'2020-03-30 12:21:18.113978','2020-03-30 12:21:18.113978','狂战士666',1,1);
/*!40000 ALTER TABLE `app_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_friendlink`
--

DROP TABLE IF EXISTS `app_friendlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_friendlink`
--

LOCK TABLES `app_friendlink` WRITE;
/*!40000 ALTER TABLE `app_friendlink` DISABLE KEYS */;
INSERT INTO `app_friendlink` VALUES (1,0,'2020-03-30 12:29:03.656062','2020-03-30 12:29:03.656062','狂战士','https://baike.baidu.com/item/%E7%8B%82%E6%88%98%E5%A3%AB/4547888?fr=aladdin',1),(2,0,'2020-03-30 12:29:25.318917','2020-03-30 12:29:25.318917','剑魂','https://baike.baidu.com/item/%E5%89%91%E9%AD%82/79243?fr=aladdin',2),(3,0,'2020-03-30 12:30:12.043806','2020-03-30 12:30:12.043806','鬼泣','https://baike.baidu.com/item/%E9%AC%BC%E6%B3%A3/10503416?fr=aladdin',3);
/*!40000 ALTER TABLE `app_friendlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tag`
--

DROP TABLE IF EXISTS `app_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tag`
--

LOCK TABLES `app_tag` WRITE;
/*!40000 ALTER TABLE `app_tag` DISABLE KEYS */;
INSERT INTO `app_tag` VALUES (1,0,'2020-03-28 15:09:49.696496','2020-03-28 15:09:49.696496','鬼剑士',1),(3,0,'2020-03-28 15:17:34.293006','2020-03-28 15:17:34.293006','固伤',4),(4,0,'2020-03-28 15:17:39.894044','2020-03-28 15:17:39.895658','百分比',5),(5,0,'2020-03-28 15:22:57.732080','2020-03-28 15:22:57.732080','物理系',2),(6,0,'2020-03-28 15:24:36.970041','2020-03-28 15:24:36.970041','魔法系',3);
/*!40000 ALTER TABLE `app_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_bokeuser'),(22,'Can change user',6,'change_bokeuser'),(23,'Can delete user',6,'delete_bokeuser'),(24,'Can view user',6,'view_bokeuser'),(25,'Can add 文章',7,'add_article'),(26,'Can change 文章',7,'change_article'),(27,'Can delete 文章',7,'delete_article'),(28,'Can view 文章',7,'view_article'),(29,'Can add 轮播图',8,'add_banner'),(30,'Can change 轮播图',8,'change_banner'),(31,'Can delete 轮播图',8,'delete_banner'),(32,'Can view 轮播图',8,'view_banner'),(33,'Can add 分类',9,'add_category'),(34,'Can change 分类',9,'change_category'),(35,'Can delete 分类',9,'delete_category'),(36,'Can view 分类',9,'view_category'),(37,'Can add 评论',10,'add_comment'),(38,'Can change 评论',10,'change_comment'),(39,'Can delete 评论',10,'delete_comment'),(40,'Can view 评论',10,'view_comment'),(41,'Can add 友情链接',11,'add_friendlink'),(42,'Can change 友情链接',11,'change_friendlink'),(43,'Can delete 友情链接',11,'delete_friendlink'),(44,'Can view 友情链接',11,'view_friendlink'),(45,'Can add 标签',12,'add_tag'),(46,'Can change 标签',12,'change_tag'),(47,'Can delete 标签',12,'delete_tag'),(48,'Can view 标签',12,'view_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_bokeuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_bokeuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_bokeuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-28 14:44:20.354953','1','Banner object (1)',1,'[{\"added\": {}}]',8,1),(2,'2020-03-28 14:44:36.592593','2','Banner object (2)',1,'[{\"added\": {}}]',8,1),(3,'2020-03-28 14:44:55.327080','3','Banner object (3)',1,'[{\"added\": {}}]',8,1),(4,'2020-03-28 15:02:26.263851','1','科技',1,'[{\"added\": {}}]',9,1),(5,'2020-03-28 15:02:30.171843','2','游戏',1,'[{\"added\": {}}]',9,1),(6,'2020-03-28 15:09:49.698492','1','男鬼剑',1,'[{\"added\": {}}]',12,1),(7,'2020-03-28 15:11:56.183721','2','女鬼剑',1,'[{\"added\": {}}]',12,1),(8,'2020-03-28 15:14:22.380832','1','狂战士',1,'[{\"added\": {}}]',7,1),(9,'2020-03-28 15:14:46.113367','1','男职业',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(10,'2020-03-28 15:17:26.724861','1','固伤',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(11,'2020-03-28 15:17:34.295031','3','物理系',1,'[{\"added\": {}}]',12,1),(12,'2020-03-28 15:17:39.895658','4','魔法系',1,'[{\"added\": {}}]',12,1),(13,'2020-03-28 15:17:46.705277','2','女鬼剑',3,'',12,1),(14,'2020-03-28 15:18:07.328660','3','男鬼剑',1,'[{\"added\": {}}]',9,1),(15,'2020-03-28 15:18:13.695971','3','男鬼剑',3,'',9,1),(16,'2020-03-28 15:18:58.203909','2','男鬼剑',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(17,'2020-03-28 15:19:35.409104','1','女鬼剑',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(18,'2020-03-28 15:21:01.301018','1','狂战士',2,'[{\"changed\": {\"fields\": [\"tag\"]}}]',7,1),(19,'2020-03-28 15:22:27.550358','3','百分比',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(20,'2020-03-28 15:22:43.872390','4','物理系',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(21,'2020-03-28 15:22:57.732080','5','魔法系',1,'[{\"added\": {}}]',12,1),(22,'2020-03-28 15:24:36.971039','6','鬼剑士',1,'[{\"added\": {}}]',12,1),(23,'2020-03-28 15:27:47.136043','1','鬼剑士',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(24,'2020-03-28 15:27:55.306016','3','固伤',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(25,'2020-03-28 15:28:03.870157','4','百分比',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(26,'2020-03-28 15:28:09.272505','5','物理系',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(27,'2020-03-28 15:28:40.000446','6','魔法系',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(28,'2020-03-28 15:29:07.586114','1','狂战士',2,'[{\"changed\": {\"fields\": [\"tag\"]}}]',7,1),(29,'2020-03-28 15:50:44.098686','1','狂战士',2,'[{\"changed\": {\"fields\": [\"title\", \"cover\"]}}]',8,1),(30,'2020-03-28 15:51:02.117688','2','剑魂',2,'[{\"changed\": {\"fields\": [\"title\", \"cover\"]}}]',8,1),(31,'2020-03-28 15:51:13.364895','3','阿修罗',2,'[{\"changed\": {\"fields\": [\"title\", \"cover\"]}}]',8,1),(32,'2020-03-28 15:57:47.153182','1','狂战士',2,'[{\"changed\": {\"fields\": [\"is_top\"]}}]',7,1),(33,'2020-03-29 13:22:58.984585','1','狂战士',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',7,1),(34,'2020-03-29 13:46:22.367426','1','狂战士',2,'[{\"changed\": {\"fields\": [\"cover\", \"content\"]}}]',7,1),(35,'2020-03-29 13:51:24.894083','2','剑魂',1,'[{\"added\": {}}]',7,1),(36,'2020-03-29 14:01:13.581149','3','鬼泣',1,'[{\"added\": {}}]',7,1),(37,'2020-03-29 14:04:44.279941','4','阿修罗',1,'[{\"added\": {}}]',7,1),(38,'2020-03-29 14:07:25.511825','5','剑影',1,'[{\"added\": {}}]',7,1),(39,'2020-03-29 14:07:33.944245','4','阿修罗',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(40,'2020-03-29 14:07:55.502585','5','剑影',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(41,'2020-03-29 14:10:54.185817','6','剑魔',1,'[{\"added\": {}}]',7,1),(42,'2020-03-29 14:14:14.169600','7','剑宗',1,'[{\"added\": {}}]',7,1),(43,'2020-03-29 14:16:24.077621','8','剑豪',1,'[{\"added\": {}}]',7,1),(44,'2020-03-29 14:20:34.776862','9','暗帝',1,'[{\"added\": {}}]',7,1),(45,'2020-03-29 14:54:34.994369','1','狂战士',2,'[]',7,1),(46,'2020-03-30 12:16:51.493381','1','狂战士666',1,'[{\"added\": {}}]',10,1),(47,'2020-03-30 12:17:17.433294','2','剑魂666',1,'[{\"added\": {}}]',10,1),(48,'2020-03-30 12:18:19.837872','3','鬼泣666',1,'[{\"added\": {}}]',10,1),(49,'2020-03-30 12:19:08.842287','2','剑魂666',2,'[]',10,1),(50,'2020-03-30 12:19:18.953518','2','剑魂666',2,'[]',10,1),(51,'2020-03-30 12:19:36.031438','2','剑魂6666',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),(52,'2020-03-30 12:19:44.854236','2','剑魂666',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',10,1),(53,'2020-03-30 12:20:39.514511','3','鬼泣666',3,'',10,1),(54,'2020-03-30 12:20:39.517504','2','剑魂666',3,'',10,1),(55,'2020-03-30 12:20:39.519550','1','狂战士666',3,'',10,1),(56,'2020-03-30 12:20:54.272157','4','鬼泣666',1,'[{\"added\": {}}]',10,1),(57,'2020-03-30 12:21:04.331239','5','剑魂666',1,'[{\"added\": {}}]',10,1),(58,'2020-03-30 12:21:18.114976','6','狂战士666',1,'[{\"added\": {}}]',10,1),(59,'2020-03-30 12:29:03.661222','1','狂战士',1,'[{\"added\": {}}]',11,1),(60,'2020-03-30 12:29:25.321907','2','剑魂',1,'[{\"added\": {}}]',11,1),(61,'2020-03-30 12:30:12.045802','3','鬼泣',1,'[{\"added\": {}}]',11,1),(62,'2020-03-30 12:35:26.580148','3','鬼泣',2,'[{\"changed\": {\"fields\": [\"position\"]}}]',11,1),(63,'2020-03-31 12:09:15.538876','5','物理系',2,'[{\"changed\": {\"fields\": [\"position\"]}}]',12,1),(64,'2020-03-31 12:09:25.356016','6','魔法系',2,'[{\"changed\": {\"fields\": [\"position\"]}}]',12,1),(65,'2020-03-31 12:09:31.091625','3','固伤',2,'[{\"changed\": {\"fields\": [\"position\"]}}]',12,1),(66,'2020-03-31 12:09:35.007151','4','百分比',2,'[{\"changed\": {\"fields\": [\"position\"]}}]',12,1),(67,'2020-04-01 13:00:43.878694','10','',3,'',10,1),(68,'2020-04-01 13:00:43.882787','9','',3,'',10,1),(69,'2020-04-01 13:00:43.885665','8','',3,'',10,1),(70,'2020-04-01 13:00:43.887663','7','',3,'',10,1),(71,'2020-04-01 13:07:44.322433','11','魔神天下第一',3,'',10,1),(72,'2020-04-01 13:09:12.208856','12','哈哈',3,'',10,1),(73,'2020-04-01 13:17:22.404793','13','哈哈',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','article'),(8,'app','banner'),(6,'app','bokeuser'),(9,'app','category'),(10,'app','comment'),(11,'app','friendlink'),(12,'app','tag'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-27 14:57:39.778989'),(2,'contenttypes','0002_remove_content_type_name','2020-03-27 14:57:39.909639'),(3,'auth','0001_initial','2020-03-27 14:57:40.303585'),(4,'auth','0002_alter_permission_name_max_length','2020-03-27 14:57:40.353452'),(5,'auth','0003_alter_user_email_max_length','2020-03-27 14:57:40.359436'),(6,'auth','0004_alter_user_username_opts','2020-03-27 14:57:40.366418'),(7,'auth','0005_alter_user_last_login_null','2020-03-27 14:57:40.373399'),(8,'auth','0006_require_contenttypes_0002','2020-03-27 14:57:40.377389'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-27 14:57:40.383373'),(10,'auth','0008_alter_user_username_max_length','2020-03-27 14:57:40.391352'),(11,'auth','0009_alter_user_last_name_max_length','2020-03-27 14:57:40.399330'),(12,'app','0001_initial','2020-03-27 14:57:41.510363'),(13,'admin','0001_initial','2020-03-27 14:57:41.665947'),(14,'admin','0002_logentry_remove_auto_add','2020-03-27 14:57:41.678912'),(15,'admin','0003_logentry_add_action_flag_choices','2020-03-27 14:57:41.690879'),(16,'sessions','0001_initial','2020-03-27 14:57:41.739748');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('xv3vklcvy1gfoappzb49r434ymmljazt','ODVlNjRiMzUzZWZkYzYwY2M1ZDBkNDdkYTI5NjkzNzkwMzAyYjA4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZDI5NTE5NjM3MjRlNjhjMDI0YWQ1NjljZWI3MzRjNmJjMWVjZTkzIn0=','2020-04-15 13:00:32.248798');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03 15:43:04
