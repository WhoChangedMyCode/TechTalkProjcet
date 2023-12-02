-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: thinking
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `adminName` varchar(100) DEFAULT NULL,
  `adminPassword` varchar(100) DEFAULT NULL,
  `adminHead` text,
  `adminBirthday` date DEFAULT NULL,
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `adminName` (`adminName`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','$2a$10$ll.brLxJofHt9Pj4MW.yqesIYcXGnOAOejA2qLU6qpoL9Wp6U5A9a','1700806801941bbcd662b-6929-44a5-934c-983301575660Tux.svg','2023-07-11'),(21,'demo01','$2a$10$o7Qoo/guabsRKa7vxYNG7u1RwLhrGepAocDLk8MogvdmOe80/bZlG',NULL,'2023-11-21'),(22,'demo02','$2a$10$ZGn2LfLPyt1c6wzA2jcHrOiHjvL/nyrwcuvsMfQPypSpYfI8XGEk2',NULL,'2023-11-21'),(23,'demo03','$2a$10$E0Dc5ZVirm1b/yw59pJ77ejqBUk.xOTKhiFoBx6CYXAb.9xbc2H7C',NULL,'2023-11-23');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `articleId` int NOT NULL AUTO_INCREMENT,
  `articleTitle` varchar(200) DEFAULT NULL,
  `articleContent` text,
  `articleIssueTime` datetime DEFAULT NULL,
  `humanId` int DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  PRIMARY KEY (`articleId`),
  KEY `articleTitleIndex` (`articleTitle`(20))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'今天的日记','<p style=\"text-align:center;\">今天的日记<span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">今天的日记</span></p><p style=\"text-align:center;\">今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记<span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p><p style=\"text-align:center;\">今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记<br></p><p style=\"text-align:center;\">今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记今天的日记<img src=\"/editorimages/168809045756791eb1f4b-d11c-4bfc-b283-3759269273f3WX20230316-113808@2x.png\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); max-width: 100%;\" width=\"50%\"><br></p><p style=\"text-align:center;\"><span style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><br></span></p>','2023-06-30 10:01:28',1,3),(2,'ddsf','<p>sfdsfsdfasdfa</p>','2023-06-30 10:12:03',2,3),(3,'demo01 User First CHANGED.','<p>demo 01 user content</p><p>First CHANGED.</p>','2023-11-25 21:29:38',5,11),(4,'Demo01 User title 02','<p><b>skdfjosajd 山小地方</b><span style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">😅</span><b style=\"font-size: 1em; color: var(--bs-body-color); font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\">東人快如閃電大葉桉發生第三代</b><span style=\"font-size: var(--bs-body-font-size); color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">😅</span><img src=\"/editorimages/17010677227311a11f948-f8ce-4d36-8568-09a24724f39aventoy.png\" width=\"77.19\" height=\"77.19\" style=\"font-size: var(--bs-body-font-size); color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); max-width: 100%;\"></p>','2023-11-27 14:49:42',5,12),(5,'00111','<p>1231212312</p>','2023-12-02 18:53:50',5,11),(6,'12312123','<p>12312<img src=\"/editorimages/1701514610349467ef5d3-c648-4575-ad96-103c75030ff8QQ图片20230721120152.jpg\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); max-width: 100%;\"></p>','2023-12-02 18:56:52',5,4),(7,'123121211111111111111111111','<p>11111111111111<img src=\"/editorimages/170152152912527ce7f5e-3b27-4bfd-b824-a63b5d1f7785ventoy.png\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); max-width: 100%;\"></p>','2023-12-02 20:52:10',5,14),(9,'為什麼要使用Linux？','<h2><p><font size=\"3\">為什麼要使用Linux？Linux 可以提供哪些優勢？以下是使用該作業系統的 10 個好處。</font></p></h2><h3><font size=\"3\">它可以在任何硬體上運行</font></h3><h2><p><font size=\"3\">Linux 幾乎與當今市場上的所有硬體設備相容。包括了：</font></p><ul><li><font size=\"3\">Windows PC 和筆記型電腦</font></li><li><font size=\"3\">麥克斯</font></li><li><font size=\"3\">Windows 平板電腦</font></li><li><font size=\"3\">Chromebook</font></li><li><font size=\"3\">非 Android 手機和平板電腦</font></li><li><font size=\"3\">遊戲機－甚至<a href=\"https://www.linux.org/threads/linux-on-the-wii.10675/?ref=kodekloud.com\">Wii 也可以運行 Linux</a>！</font></li></ul><p><font size=\"3\">憑藉如此廣泛的覆蓋範圍，Linux 可能是迄今為止最通用的作業系統。這種多功能性歸功於其開源結構（我們將在下一點中介紹）。因此，如果您想學習如何運行具有最多用例的單一作業系統，Linux 是一個不錯的選擇。</font></p></h2><h3><font size=\"3\">開源</font></h3><h2><p><font size=\"3\">Linux 是一個開源作業系統。對於如何使用該軟體沒有任何限制，任何人都可以出於自己的目的運行和修改原始程式碼。開源使得 Linux 能夠完全滿足開發人員的需求，這是專有作業系統軟體永遠無法享受的奢侈。</font></p></h2><h3><font size=\"3\">可客製化</font></h3><h2><p><font size=\"3\">由於該作業系統的開源特性，開發人員在自訂選項方面擁有非凡的靈活性。這些自訂從美學偏好開始，例如更改桌面環境或終端的顏色。使用 Linux 檔案系統，您可以更改特定應用程式的功能和介面，例如垃圾箱和其他桌面應用程式。</font></p><p><font size=\"3\">Linux 還可以進行功能定制，讓您可以更改原始程式碼並針對您計劃安裝的任何硬體優化作業系統。否則 Linux 怎能在幾乎所有類型的硬體上運作？</font></p><p><font size=\"3\">Linux 的客製化功能也使其成為您想要使用的幾乎所有軟體的理想選擇。設計、影片編輯、遊戲和其他用例可以在 Linux 上非常順利地運行 - 您可以將其自訂為您需要的任何內容。</font></p></h2><h3><font size=\"3\">教育性</font></h3><h2><p><font size=\"3\">Linux 非常<a href=\"https://kodekloud.com/blog/how-to-learn-linux-everything-you-need-to-know/\">適合初學者開發人員</a>，因為它可以教您作業系統如何運作。您可以輕鬆地查看原始程式碼來研究其結構，逐段剖析它以了解 Linux 的運作原理。</font></p><p><font size=\"3\">一旦您熟悉並熟悉原始程式碼，您就可以慢慢嘗試更改它以針對更具體的用例定製作業系統。無論是開發新應用程式還是在不同的硬體上運行作業系統，開源模型都允許無限學習和測試。</font></p></h2><h3><font size=\"3\">安全的</font></h3><h2><p><font size=\"3\">有些人可能擔心，由於任何人都可以存取 Linux 的源代碼，因此該作業系統很容易受到駭客的攻擊。但事實並非如此，因為原始程式碼上有如此多的目光，人們可以識別漏洞並及時處理它們。結果是程式碼更加健壯，不易受到網路攻擊。</font></p><p><font size=\"3\">Linux 還具有明確定義的權限來限制不屬於該權限的人員的存取。根級存取權限相當於其他作業系統中的管理員權限，是專門針對開發人員的。系統的每個其他使用者僅被授予較低等級的有限存取權限。</font></p></h2><h3><font size=\"3\">可靠的</font></h3><h2><p><font size=\"3\">與其他作業系統相比，Linux 非常可靠，大多數用戶遇到的問題較少。這種可靠性的部分原因是 Linux 非常注重後台進程管理。其他作業系統將在會話期間連續使用後台程序。Linux 只會在必要時使用進程，並停用它，直到再次需要它。</font></p><p><font size=\"3\">Windows 和 OS X 有一種特殊的「手持式」運算方法，旨在讓您的生活更輕鬆。但是，如果您想執行這些設定參數以外的任務，您將遇到不必要的障礙。Linux 不會強制其程式設計中斷您的進程，而是讓您按照自己的意願進行計算。</font></p></h2><h3><font size=\"3\">易於安裝</font></h3><h2><p><font size=\"3\">Linux 的安裝再簡單不過了。雖然過程相當複雜，但分配方式卻很容易取得。許多發行商都可以讓您存取 Linux，包括 Fedora、Ubuntu、Arch Linux 和 Linux Mint。</font></p><p><font size=\"3\">安裝過程取決於您的分發模型，因此請按照您選擇的模型概述的步驟進行操作。</font></p></h2><h3><font size=\"3\">強大的社區支持</font></h3><h2><p><font size=\"3\">Linux 吸引了忠誠而熱情的社群成員，他們希望看到作業系統的快速發展。這種熱情催生了無數的幫助和知識共享論壇，以幫助 Linux 用戶（無論是初學者還是老手）充分利用該作業系統的潛力。</font></p><p><font size=\"3\">還有<a href=\"https://www.linuxfoundation.org/?ref=kodekloud.com\">Linux 基金會</a>，一個致力於透過開源軟體支援技術專案的平台。</font></p></h2><h3><font size=\"3\">方便使用</font></h3><h2><p><font size=\"3\">Linux 因其專為核心開發人員而設計而享有盛譽。雖然在成立之初這可能是正確的，但現在情況已不再如此。Linux 提供了精心設計的用戶體驗，並附帶預先安裝的工具和應用程序，可幫助您熟悉該作業系統。</font></p><p><font size=\"3\">此外，下載 Linux 更新可以說比 Windows 更新過程更簡單。Linux 可以在您工作時在背景安裝更新，因此您不必在電腦強制自動更新時停止一切操作。</font></p></h2><h3><font size=\"3\">自由的</font></h3><h2><p><font size=\"3\">最好的部分？Linux 是免費的！您可以零成本在任意多個平台上安裝作業系統。安裝 Linux 是零風險、高回報——兩全其美。</font></p></h2>','2023-12-03 00:17:52',6,14),(10,'RISC-V 是未來嗎？','<p><a href=\"https://codasip.com/2016/09/22/what-is-risc-vwhy-do-we-care-and-why-you-should-too/\">RISC-V</a>是未來嗎？這是我們經常被問到的問題，假設我們的意思是「RISC-V 將成為處理器市場的主導 ISA 嗎？」。這無疑是一個正在發展的情況，並且在過去五年中發生了重大變化。</p><h3><strong>什麼是 RISC-V，RISC-V 有什麼作用？</strong></h3><p><strong>RISC-V</strong>於 2010 年起源於加州大學柏克萊分校，花了數年時間才得到業界的關注。RISC-V 基金會於 2015 年成立，作為一個非營利組織，推動 RISC-V 的採用，這是向前邁出的一大步。2020 年初，RISC-V 基金會活動重新命名並重組為總部位於瑞士的 RISC-V International。</p><p>我記得在 2017 年的 Embedded World 展會上，Codasip 展位上醒目地展示了 RISC-V 標誌。很多參觀者問，「<a href=\"https://codasip.wpengine.com/2016/09/22/what-is-risc-vwhy-do-we-care-and-why-you-should-too/\">RISC-V是什麼？</a>”，顯示歐洲的認知度較低。從那時起，情況發生了巨大的變化，所有地區都表現出了高度的興趣。</p><p>多年來，我們傾向於將處理器分類為MPU、MCU、GPU、APU、DSP等。一些設備（例如手機）會在設計中結合多種類型的處理器核心。如果我們回想一下 2016 年，MPU 世界由 X86 架構主導，而 Arm 主導著 APU（應用處理器和手機生態系統）和 MCU。</p><p><strong>RISC-V 比 Arm 好嗎？RISC-V 比 Intel/AMD 的 x86 好嗎？</strong>它絕對是不同的，並帶來新的機會。今天，我們可以確定 RISC-V 帶來的一些市場新趨勢。讓我們來看看其中的 3 個。</p><h3><strong>趨勢一：RISC-V效能不斷提升</strong></h3><p>RISC-V早期主要用於學術課程。然而，到 2016 年，大量商業公司正在開發基於<strong>RISC-V ISA</strong>的嵌入式微控制器。可以說，對於 RISC-V 社群來說，這是一個相對容易的步驟，因為嵌入式開發人員習慣從各種來源（包括作為原始碼交付的中間件）建立他們的系統。此外，<strong>嵌入式核心的</strong>複雜性也更簡單。</p><p><img src=\"https://codasip.com/wp-content/uploads/2021/07/GP-R5-trend-2.png\" style=\"max-width:100%;\"><br></p><figure><figcaption>RISC-V處理器效能呈上升趨勢。資料來源：<a href=\"https://codasip.wpengine.com/\">Codasip</a>。</figcaption></figure><p>更具挑戰性的是<strong>應用程式處理器</strong>，支援Linux 或 Android 等<strong>豐富的作業系統所需的複雜性要高得多。</strong>就手機應用而言，存在一個複雜的生態系統，RISC-V 供應商需要一段時間才能支援。儘管如此，在使用 Linux 的系統中，RISC-V 應用處理器還有很多其他機會，並且可以選擇 IP 核，例如解決中階效能的<a href=\"https://codasip.wpengine.com/products/codasip-risc-v-processors/\">Codasip 的 A70 。</a></p><p>最後，我們可以預期未來會有越來越多的供應商為高效能運算創建複雜的 RISC-V 核心。</p><h3><strong>趨勢二：RISC-V正在打破處理器類型之間的障礙</strong></h3><p>隨著<strong>半導體縮放的失敗</strong>，傳統處理器分組之間的界限變得模糊。<a href=\"https://codasip.wpengine.com/solutions/dsa/\">隨著對特定領域加速器</a>實現具有成本效益的片上性能的需求越來越多，越來越有必要根據所需工作負載的需求來調整設計。</p><p>RISC-V ISA 具有<strong>極簡基本整數指令集</strong>並提供<strong>自訂擴展</strong>，是創建特殊加速器的理想起點。</p><p>雖然某些應用程式（例如行動電話）具有複雜的遺留軟體，不太可能在短期內改變架構，但其他應用程式則沒有限制。AI（人工智慧）等新應用正在轉向 RISC-V 作為具有靈活性和<strong>客製化</strong>的開放 ISA 。在更遙遠的未來，隨著傳統考量不再適用，RISC-V 有潛力獲得更大的市場份額。</p><h3><strong>趨勢三：客戶希望避開壟斷供應商</strong></h3><p>最後，處理器市場有強烈的變革意願。自 1980 年代以來，微處理器一直由 Intel/AMD X86 雙寡頭壟斷，但到 90 年代末，Arm 成為手機處理器市場事實上的標準。這種壟斷進一步延伸到鄰近領域，包括嵌入式領域。</p><p>在過去的十年中，我經常聽到工程師談論「手臂疲勞」以及對關鍵市場的壟斷地位和供應商鎖定的不安。然而，只要 Arm 能夠以其廣泛的產品系列聲稱“瑞士中立”，就沒有人會因為授權 Arm 而被解僱。隨著軟銀的收購，這種中立性被嚴重削弱，而現在失敗的英偉達合併嘗試讓許多被授權人感到不安。</p><p>自由<strong>開放的 RISC-V ISA</strong>引起了廣泛的興趣，並可能成為市場發生巨大變化的催化劑。作為一個<strong>開放標準</strong>，它有可能持續數十年，並且由於多個供應商提供處理器內核，它避免了供應商鎖定</p><p><img src=\"https://codasip.com/wp-content/uploads/2021/07/semico-2.png\" style=\"max-width:100%;\"><br></p><figure><figcaption>RISC-V 出貨量預計將強勁成長。資料來源：<a href=\"https://semico.com/content/risc-v-market-analysis-new-kid-block\">Semico 研究公司。</a></figcaption></figure><p>雖然沒有人期望具有豐富歷史的架構（例如 X86 或 Arm）會在一夜之間消失，但幾十年來設計人員第一次<strong>在 RISC-V 中找到了可行的替代方案</strong>。隨著RISC-V<strong>覆蓋的性能範圍越來越廣</strong>，<strong>生態系統迅速擴大</strong>，RISC-V的市場份額將持續成長。<a href=\"https://semico.com/content/risc-v-market-analysis-new-kid-block\">Semico Research</a>等市場報告就反映了這一點，預測到 2025 年市場將消耗 624 億個 RISC-V CPU 核心。</p><p>RISC-V 無疑擁有快速發展的未來，並且很有可能成為主導架構。</p>','2023-12-03 00:09:38',6,11),(11,'人工智能三階段：為何科學家聯署限制可導致人類滅絕的AI技術','<p><img src=\"https://ichef.bbci.co.uk/news/800/cpsprodpb/025D/production/_129750600_1.jpg\" style=\"max-width:100%;\"><br></p><p><b>包括OpenAI和谷歌Deepmind負責人在內的專家警告，人工智能可能導致人類滅絕，但是機器如何取代人類呢？</b></p><p>自2022年11月推出以來，ChatGPT——一款使用人工智能根據用戶的需求回答問題或生成文本甚至代碼的聊天機器人，已經成為歷史上增長最快的互聯網應用程序。</p><p></p><p>在僅兩個月的時間裏，它的活躍用戶達到了1億。據科技監測公司Sensor Town稱，Instagram花了兩年半的時間才達到這一里程碑。</p><p><img src=\"https://ichef.bbci.co.uk/news/800/cpsprodpb/8901/production/_129937053_8170a6fd-eb4b-403d-a91c-f8e20a055f54.jpg\" style=\"max-width:100%;\"><br></p><p>OpenAI公司在微軟的資助下開發的ChatGPT廣受歡迎，引發了人們對人工智能影響人類未來的激烈猜測。</p><p>數十名專家支持在人工智能安全中心（Center for AI Safety）網頁上發表的一份聲明，稱：「減輕人工智能造成的滅絕風險，應該與流行病和核戰爭等其他社會規模的風險一起成為全球優先事項。」</p><p></p><p>但也有人表示，這種擔憂被誇大了。</p><p><br></p><p>see more:<a href=\"https://www.bbc.com/zhongwen/trad/science-65752703\" target=\"_blank\" style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">https://www.bbc.com/zhongwen/trad/science-65752703</a></p>','2023-12-03 00:17:04',6,12);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human`
--

DROP TABLE IF EXISTS `human`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `human` (
  `humanId` int NOT NULL AUTO_INCREMENT,
  `humanName` varchar(200) DEFAULT NULL,
  `humanNiceName` varchar(200) DEFAULT NULL,
  `humanPassword` varchar(200) DEFAULT NULL,
  `humanEmail` varchar(200) DEFAULT NULL,
  `humanDescribe` text,
  PRIMARY KEY (`humanId`),
  KEY `humanLoginIndex` (`humanName`(20),`humanPassword`(20))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human`
--

LOCK TABLES `human` WRITE;
/*!40000 ALTER TABLE `human` DISABLE KEYS */;
INSERT INTO `human` VALUES (1,'xiaoming','小怪','123456','xiaohong@email.com',NULL),(2,'xiaojun','隔壁老王','admin','xiaojun@email',NULL),(3,'lanruijiang','隔壁老王','admin','364832707@qq.com',NULL),(5,'demo01','Lane1','demo01','demo@demo.com','NEW DESCRIBE'),(6,'demo','Lane','demo','demo@dmeo.com','NULL');
/*!40000 ALTER TABLE `human` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageStore`
--

DROP TABLE IF EXISTS `imageStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageStore` (
  `imageStoreId` int NOT NULL AUTO_INCREMENT,
  `imageStoreAddress` text,
  `imageStoreDate` datetime DEFAULT NULL,
  PRIMARY KEY (`imageStoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageStore`
--

LOCK TABLES `imageStore` WRITE;
/*!40000 ALTER TABLE `imageStore` DISABLE KEYS */;
/*!40000 ALTER TABLE `imageStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level1Reply`
--

DROP TABLE IF EXISTS `level1Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level1Reply` (
  `level1ReplyId` int NOT NULL AUTO_INCREMENT,
  `replyId` int NOT NULL,
  `humanId` int NOT NULL,
  `level1ReplyContent` text,
  `level1ReplyLikeCount` int DEFAULT '0',
  `level1ReplyDislikeCount` int DEFAULT '0',
  `level1ReplyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`level1ReplyId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level1Reply`
--

LOCK TABLES `level1Reply` WRITE;
/*!40000 ALTER TABLE `level1Reply` DISABLE KEYS */;
INSERT INTO `level1Reply` VALUES (1,15,5,'04-01',10,26,'2023-11-29 15:41:44'),(2,15,5,'04-02',5,7,'2023-11-29 16:55:13'),(3,15,5,'04-03',5,11,'2023-11-29 16:56:27'),(4,15,5,'04-05',5,1,'2023-11-29 16:58:20'),(5,15,5,'04-04',0,0,'2023-11-30 11:55:57'),(6,20,5,'01-01',0,0,'2023-11-30 17:35:13'),(7,15,5,'04-07',0,0,'2023-11-30 17:37:08'),(20,17,5,'05-02',8,2,'2023-12-01 10:36:38'),(22,17,5,'05-04',8,0,'2023-12-01 10:55:14'),(24,17,5,'05-01',2,0,'2023-12-01 11:02:51'),(25,17,5,'111',0,0,'2023-12-01 11:03:18'),(26,17,5,'11',0,0,'2023-12-01 11:08:47'),(27,17,5,'123',0,0,'2023-12-01 11:09:06'),(28,17,5,'123123123',0,0,'2023-12-01 11:12:12'),(29,15,5,'2342',0,0,'2023-12-01 11:26:50'),(30,21,5,'12312',2,2,'2023-12-02 18:57:01');
/*!40000 ALTER TABLE `level1Reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `messageId` int NOT NULL AUTO_INCREMENT,
  `messageTitle` varchar(200) DEFAULT NULL,
  `messageText` text,
  `messageTime` datetime DEFAULT NULL,
  `adminId` int DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (56,'Demo Tile 0','Demo Content 0','2023-12-02 23:41:49',1),(57,'Demo Tile 1','Demo Content 1','2023-12-02 23:41:49',1),(58,'Demo Tile 2','Demo Content 2','2023-12-02 23:41:49',1),(59,'Demo Tile 3','Demo Content 3','2023-12-02 23:41:49',1),(60,'Demo Tile 4','Demo Content 4','2023-12-02 23:41:49',1),(61,'Demo Tile 5','Demo Content 5','2023-12-02 23:41:49',1),(62,'Demo Tile 6','Demo Content 6','2023-12-02 23:41:49',1),(63,'Demo Tile 7','Demo Content 7','2023-12-02 23:41:49',1),(64,'Demo Tile 8','Demo Content 8','2023-12-02 23:41:49',1),(65,'Demo Tile 9','Demo Content 9','2023-12-02 23:41:49',1),(66,'Demo Tile 10','Demo Content 10','2023-12-02 23:41:49',1),(67,'Demo Tile 11','Demo Content 11','2023-12-02 23:41:49',1),(68,'Demo Tile 12','Demo Content 12','2023-12-02 23:41:49',1),(69,'Demo Tile 13','Demo Content 13','2023-12-02 23:41:49',1),(70,'Demo Tile 14','Demo Content 14','2023-12-02 23:41:49',1),(71,'Demo Tile 15','Demo Content 15','2023-12-02 23:41:49',1),(72,'Demo Tile 16','Demo Content 16','2023-12-02 23:41:49',1),(73,'Demo Tile 17','Demo Content 17','2023-12-02 23:41:49',1),(74,'Demo Tile 18','Demo Content 18','2023-12-02 23:41:49',1),(75,'Demo Tile 19','Demo Content 19','2023-12-02 23:41:49',1),(76,'Demo Tile 20','Demo Content 20','2023-12-02 23:41:50',1),(77,'Demo Tile 21','Demo Content 21','2023-12-02 23:41:50',1),(78,'Demo Tile 22','Demo Content 22','2023-12-02 23:41:50',1),(79,'Demo Tile 23','Demo Content 23','2023-12-02 23:41:50',1),(80,'Demo Tile 24','Demo Content 24','2023-12-02 23:41:50',1),(81,'Demo Tile 25','Demo Content 25','2023-12-02 23:41:50',1),(82,'Demo Tile 26','Demo Content 26','2023-12-02 23:41:50',1),(83,'Demo Tile 27','Demo Content 27','2023-12-02 23:41:50',1),(84,'Demo Tile 28','Demo Content 28','2023-12-02 23:41:50',1),(85,'Demo Tile 29','Demo Content 29','2023-12-02 23:41:50',1),(86,'Demo Tile 30','Demo Content 30','2023-12-02 23:41:50',1),(87,'Demo Tile 31','Demo Content 31','2023-12-02 23:41:50',1),(88,'Demo Tile 32','Demo Content 32','2023-12-02 23:41:50',1),(89,'Demo Tile 33','Demo Content 33','2023-12-02 23:41:50',1),(90,'Demo Tile 34','Demo Content 34','2023-12-02 23:41:50',1),(91,'Demo Tile 35','Demo Content 35','2023-12-02 23:41:50',1),(92,'Demo Tile 36','Demo Content 36','2023-12-02 23:41:50',1),(93,'Demo Tile 37','Demo Content 37','2023-12-02 23:41:50',1),(94,'Demo Tile 38','Demo Content 38','2023-12-02 23:41:50',1),(95,'Demo Tile 39','Demo Content 39','2023-12-02 23:41:50',1),(96,'Demo Tile 40','Demo Content 40','2023-12-02 23:41:50',1),(97,'Demo Tile 41','Demo Content 41','2023-12-02 23:41:50',1),(98,'Demo Tile 42','Demo Content 42','2023-12-02 23:41:50',1),(99,'Demo Tile 43','Demo Content 43','2023-12-02 23:41:50',1),(100,'Demo Tile 44','Demo Content 44','2023-12-02 23:41:50',1),(101,'Demo Tile 45','Demo Content 45','2023-12-02 23:41:50',1),(102,'Demo Tile 46','Demo Content 46','2023-12-02 23:41:50',1),(103,'Demo Tile 47','Demo Content 47','2023-12-02 23:41:50',1),(104,'Demo Tile 48','Demo Content 48','2023-12-02 23:41:50',1),(105,'Demo Tile 49','Demo Content 49','2023-12-02 23:41:50',1),(106,'Fedora','<p><img src=\"/news/4d88b977-f345-42b6-a603-da28ada2f2d4Screenshot from 2023-12-02 23-44-42.png\" style=\"max-width:100%;\"><br></p>','2023-12-02 23:46:01',1);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `replyId` int NOT NULL AUTO_INCREMENT,
  `replyContent` text,
  `replyTime` datetime DEFAULT NULL,
  `humanId` int DEFAULT NULL,
  `articleId` int DEFAULT NULL,
  `replyLikeCount` int DEFAULT '0',
  `replyDislikeCount` int DEFAULT '0',
  PRIMARY KEY (`replyId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'<p>阿斯达是的撒</p>','2023-06-30 10:04:23',1,1,0,0),(2,'<p><img src=\"/editorimages/1688090675472ac358ff7-cbbb-4f7c-91e2-4a5fc14118e5WX20230316-113808@2x.png\" style=\"max-width:100%;\" width=\"30%\"><br></p>','2023-06-30 10:04:38',1,1,0,0),(3,'<p>扯淡<img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"></p>','2023-06-30 10:11:00',2,1,0,0),(6,'<p>reply 02</p>','2023-11-25 16:42:51',5,3,7,2),(7,'<p>reply 03</p>','2023-11-25 20:51:25',5,3,31,13),(8,'<p>demo01 user reply 01</p>','2023-11-27 14:14:52',5,1,0,0),(9,'<p>demo01 user reply 01</p>','2023-11-27 14:15:38',5,1,0,0),(10,' <p>demo01 user reply 02</p>','2023-11-27 14:23:28',5,1,0,0),(11,'<p>demo01 user reply 03<br></p>','2023-11-27 14:41:55',5,1,0,0),(12,'<p><img src=\"/editorimages/170106762456145bcb805-28b1-4ef4-9dc3-9e3cadc81718Screenshot from 2023-11-11 12-06-53.png\" style=\"max-width:100%;\"><br></p>','2023-11-27 14:47:07',5,1,0,0),(13,'<p>2343</p>','2023-11-27 14:49:20',5,4,2,9),(15,'<p>reply 04<span style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">😅</span></p>','2023-11-29 14:31:08',5,3,85,55),(17,'<p>reply 05</p>','2023-11-30 14:43:19',5,3,13,14),(20,'<p>reply01</p>','2023-11-30 17:35:02',5,2,0,0),(21,'<p>12312</p>','2023-12-02 18:56:58',5,6,2,2),(24,'<p>11</p>','2023-12-02 20:52:14',5,7,0,0),(25,'<p><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\"><br></p>','2023-12-03 00:18:17',6,10,6,0);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_leve11_reply_trigger` AFTER DELETE ON `reply` FOR EACH ROW BEGIN
    DELETE FROM level1Reply WHERE replyId = OLD.replyId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roleRelation`
--

DROP TABLE IF EXISTS `roleRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roleRelation` (
  `roleRelationId` int NOT NULL AUTO_INCREMENT,
  `roleId` int DEFAULT NULL,
  `adminId` int DEFAULT NULL,
  PRIMARY KEY (`roleRelationId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleRelation`
--

LOCK TABLES `roleRelation` WRITE;
/*!40000 ALTER TABLE `roleRelation` DISABLE KEYS */;
INSERT INTO `roleRelation` VALUES (1,1,1),(2,2,1),(3,3,1),(14,3,21),(15,3,22),(16,3,23);
/*!40000 ALTER TABLE `roleRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) DEFAULT NULL,
  `roleDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','管理员'),(2,'ROLE_ADMINTYPE','文章类型管理'),(3,'ROLE_ADMINMESSAGE','新闻管理');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `typeId` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (2,'我的日记'),(3,'我的感悟'),(4,'我的相册'),(11,'Tech'),(12,'AI'),(13,'FOSS'),(14,'Linux'),(15,'AIGC');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03  0:36:56
