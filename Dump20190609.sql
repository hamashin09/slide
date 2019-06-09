-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `japanese_title`
--

DROP TABLE IF EXISTS `japanese_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `japanese_title` (
  `movie` varchar(60) NOT NULL,
  `japanese` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `japanese_title`
--

LOCK TABLES `japanese_title` WRITE;
/*!40000 ALTER TABLE `japanese_title` DISABLE KEYS */;
INSERT INTO `japanese_title` VALUES ('12 Angry Men (1957)','12人の怒れる男 (1957)'),('Air Force One (1997)','エアフォース・ワン (1997)'),('Aliens (1986)','エイリアン2 (1986)'),('Antonia\'s Line (1995)','アントニア (1995)'),('Apt Pupil (1998)','ゴールデンボーイ (1998)'),('Army of Darkness (1993)','キャプテン・スーパーマーケット (1993)'),('As Good As It Gets (1997)','恋愛小説家 (1997)'),('Bad Boys (1995)','バッドボーイズ (1995)'),('Bed of Roses (1996)','マンハッタン花物語 (1996)'),('Belle de jour (1967)','昼顔 (1967)'),('Big Lebowski, The (1998)','ビッグ・リボウスキ (1998)'),('Birds, The (1963)','鳥 (1963)'),('Blade Runner (1982)','ブレードランナー (1982)'),('Boogie Nights (1997)','ブギーナイツ (1997)'),('Breakdown (1997)','ブレーキダウン (1997)'),('Breaking the Waves (1996)','奇跡の海 (1996)'),('Brothers McMullen, The (1995)','マクマレン兄弟 (1995)'),('Chinatown (1974)','チャイナタウン (1974)'),('Cinema Paradiso (1988)','ニューシネマパラダイス (1988)'),('Conspiracy Theory (1997)','陰謀のセオリー (1997)'),('Copycat (1995)','コピーキャット (1995)'),('Crash (1996)','クラッシュ (1996)'),('Disclosure (1994)','ディスクロージャー (1994)'),('Emma (1996)','エマ (1996)'),('Empire Strikes Back, The (1980)','スターウォーズ エピソード5 帝国の逆襲 (1980)'),('English Patient, The (1996)','イングリッシュ・ペイシェント (1996)'),('Evita (1996)','エビータ (1996)'),('Fargo (1996)','ファーゴ (1996)'),('Fugitive, The (1993)','逃亡者 (1993)'),('Full Monty, The (1997)','フル・モンティ (1997)'),('Game, The (1997)','ゲーム (1997)'),('Glengarry Glen Ross (1992)','摩天楼を夢見て (1992)'),('Godfather, The (1972)','ゴッドファーザー (1972)'),('Good Will Hunting (1997)','グッド・ウィル・ハンティング (1997)'),('Hoop Dreams (1994)','フープ・ドリームス (1994)'),('Ice Storm, The (1997)','アイス・ストーム (1997)'),('It\'s a Wonderful Life (1946)','素晴らしき哉、人生! (1946)'),('Jaws (1975)','ジョーズ (1975)'),('Jean de Florette (1986)','愛と宿命の泉 (1986)'),('Jude (1996)','日陰のふたり (1996)'),('Jungle2Jungle (1997)','ジャングル2ジャングル (1997)'),('Kolya (1996)','コーリャ 愛のプラハ (1996)'),('L.A. Confidential (1997)','L.A.コンフィデンシャル (1997)'),('Legends of the Fall (1994)','レジェンド・オブ・フォール (1994)'),('Manon of the Spring (Manon des sources) (1986)','愛と宿命の泉part2 (1986)'),('Mask, The (1994)','マスク (1994)'),('Mercury Rising (1998)','マーキュリーライジング (1998)'),('Moll Flanders (1996)','モル・フランダース (1996)'),('Mrs. Brown (Her Majesty, Mrs. Brown) (1997)','Queen Victoria 至上の愛 (1997)'),('Mystery Science Theater 3000: The Movie (1996)','ミステリーサイエンスシアター3000 (1996)'),('Phenomenon (1996)','フェノミナン (1996)'),('Postino, Il (1994)','イル・ポスティーノ (1994)'),('Postman, The (1997)','ポストマン (1997)'),('Professional, The (1994)','レオン (1994)'),('Promesse, La (1996)','The Promise (1996)'),('Pulp Fiction (1994)','パルプフィクション (1994)'),('Raiders of the Lost Ark (1981)','レイダース 失われたアーク (1981)'),('Red Rock West (1992)','レッドロック/裏切りの銃弾 (1992)'),('Remains of the Day, The (1993)','日の名残り (1993)'),('Return of the Jedi (1983)','スターウォーズ エピソード6 ジェダイの帰還 (1983)'),('Rock, The (1996)','ザ・ロック (1996)'),('Ruling Class, The (1972)','The Ruling Class (1972)'),('Rumble in the Bronx (1995)','レッド・ブロンクス (1995)'),('Schindler\'s List (1993)','シンドラーのリスト (1993)'),('Seven (Se7en) (1995)','セブン (1995)'),('Shawshank Redemption, The (1994)','ショーシャンクの空に (1994)'),('Silence of the Lambs, The (1991)','羊たちの沈黙 (1991)'),('Sling Blade (1996)','スリング・ブレイド (1996)'),('Star Wars (1977)','スターウォーズ エピソード4 新たなる希望 (1977)'),('Swiss Family Robinson (1960)','スイスファミリーロビンソン (1960)'),('Three Colors: Blue (1993)','トリコロール/青の愛 (1993)'),('Three Colors: Red (1994)','トリコロール/赤の愛 (1994)'),('Titanic (1997)','タイタニック (1997)'),('Toy Story (1995)','トイ・ストーリー (1995)'),('Trainspotting (1996)','トレインスポッティング (1996)'),('True Romance (1993)','トゥルー・ロマンス (1993)'),('Usual Suspects, The (1995)','ユージュアル・サスペクツ (1995)'),('When Harry Met Sally... (1989)','恋人たちの予感 (1989)'),('When the Cats Away (Chacun cherche son chat) (1996)','猫が行方不明 (1996)'),('Wings of the Dove, The (1997)','鳩の翼 (1997)');
/*!40000 ALTER TABLE `japanese_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-09 14:13:49
