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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,'ddsf','<p>sfdsfsdfasdfa</p>','2023-06-30 10:12:03',2,3),(9,'為什麼要使用Linux？','<h2><p><font size=\"3\">為什麼要使用Linux？Linux 可以提供哪些優勢？以下是使用該作業系統的 10 個好處。</font></p></h2><h3><font size=\"3\">它可以在任何硬體上運行</font></h3><h2><p><font size=\"3\">Linux 幾乎與當今市場上的所有硬體設備相容。包括了：</font></p><ul><li><font size=\"3\">Windows PC 和筆記型電腦</font></li><li><font size=\"3\">麥克斯</font></li><li><font size=\"3\">Windows 平板電腦</font></li><li><font size=\"3\">Chromebook</font></li><li><font size=\"3\">非 Android 手機和平板電腦</font></li><li><font size=\"3\">遊戲機－甚至<a href=\"https://www.linux.org/threads/linux-on-the-wii.10675/?ref=kodekloud.com\">Wii 也可以運行 Linux</a>！</font></li></ul><p><font size=\"3\">憑藉如此廣泛的覆蓋範圍，Linux 可能是迄今為止最通用的作業系統。這種多功能性歸功於其開源結構（我們將在下一點中介紹）。因此，如果您想學習如何運行具有最多用例的單一作業系統，Linux 是一個不錯的選擇。</font></p></h2><h3><font size=\"3\">開源</font></h3><h2><p><font size=\"3\">Linux 是一個開源作業系統。對於如何使用該軟體沒有任何限制，任何人都可以出於自己的目的運行和修改原始程式碼。開源使得 Linux 能夠完全滿足開發人員的需求，這是專有作業系統軟體永遠無法享受的奢侈。</font></p></h2><h3><font size=\"3\">可客製化</font></h3><h2><p><font size=\"3\">由於該作業系統的開源特性，開發人員在自訂選項方面擁有非凡的靈活性。這些自訂從美學偏好開始，例如更改桌面環境或終端的顏色。使用 Linux 檔案系統，您可以更改特定應用程式的功能和介面，例如垃圾箱和其他桌面應用程式。</font></p><p><font size=\"3\">Linux 還可以進行功能定制，讓您可以更改原始程式碼並針對您計劃安裝的任何硬體優化作業系統。否則 Linux 怎能在幾乎所有類型的硬體上運作？</font></p><p><font size=\"3\">Linux 的客製化功能也使其成為您想要使用的幾乎所有軟體的理想選擇。設計、影片編輯、遊戲和其他用例可以在 Linux 上非常順利地運行 - 您可以將其自訂為您需要的任何內容。</font></p></h2><h3><font size=\"3\">教育性</font></h3><h2><p><font size=\"3\">Linux 非常<a href=\"https://kodekloud.com/blog/how-to-learn-linux-everything-you-need-to-know/\">適合初學者開發人員</a>，因為它可以教您作業系統如何運作。您可以輕鬆地查看原始程式碼來研究其結構，逐段剖析它以了解 Linux 的運作原理。</font></p><p><font size=\"3\">一旦您熟悉並熟悉原始程式碼，您就可以慢慢嘗試更改它以針對更具體的用例定製作業系統。無論是開發新應用程式還是在不同的硬體上運行作業系統，開源模型都允許無限學習和測試。</font></p></h2><h3><font size=\"3\">安全的</font></h3><h2><p><font size=\"3\">有些人可能擔心，由於任何人都可以存取 Linux 的源代碼，因此該作業系統很容易受到駭客的攻擊。但事實並非如此，因為原始程式碼上有如此多的目光，人們可以識別漏洞並及時處理它們。結果是程式碼更加健壯，不易受到網路攻擊。</font></p><p><font size=\"3\">Linux 還具有明確定義的權限來限制不屬於該權限的人員的存取。根級存取權限相當於其他作業系統中的管理員權限，是專門針對開發人員的。系統的每個其他使用者僅被授予較低等級的有限存取權限。</font></p></h2><h3><font size=\"3\">可靠的</font></h3><h2><p><font size=\"3\">與其他作業系統相比，Linux 非常可靠，大多數用戶遇到的問題較少。這種可靠性的部分原因是 Linux 非常注重後台進程管理。其他作業系統將在會話期間連續使用後台程序。Linux 只會在必要時使用進程，並停用它，直到再次需要它。</font></p><p><font size=\"3\">Windows 和 OS X 有一種特殊的「手持式」運算方法，旨在讓您的生活更輕鬆。但是，如果您想執行這些設定參數以外的任務，您將遇到不必要的障礙。Linux 不會強制其程式設計中斷您的進程，而是讓您按照自己的意願進行計算。</font></p></h2><h3><font size=\"3\">易於安裝</font></h3><h2><p><font size=\"3\">Linux 的安裝再簡單不過了。雖然過程相當複雜，但分配方式卻很容易取得。許多發行商都可以讓您存取 Linux，包括 Fedora、Ubuntu、Arch Linux 和 Linux Mint。</font></p><p><font size=\"3\">安裝過程取決於您的分發模型，因此請按照您選擇的模型概述的步驟進行操作。</font></p></h2><h3><font size=\"3\">強大的社區支持</font></h3><h2><p><font size=\"3\">Linux 吸引了忠誠而熱情的社群成員，他們希望看到作業系統的快速發展。這種熱情催生了無數的幫助和知識共享論壇，以幫助 Linux 用戶（無論是初學者還是老手）充分利用該作業系統的潛力。</font></p><p><font size=\"3\">還有<a href=\"https://www.linuxfoundation.org/?ref=kodekloud.com\">Linux 基金會</a>，一個致力於透過開源軟體支援技術專案的平台。</font></p></h2><h3><font size=\"3\">方便使用</font></h3><h2><p><font size=\"3\">Linux 因其專為核心開發人員而設計而享有盛譽。雖然在成立之初這可能是正確的，但現在情況已不再如此。Linux 提供了精心設計的用戶體驗，並附帶預先安裝的工具和應用程序，可幫助您熟悉該作業系統。</font></p><p><font size=\"3\">此外，下載 Linux 更新可以說比 Windows 更新過程更簡單。Linux 可以在您工作時在背景安裝更新，因此您不必在電腦強制自動更新時停止一切操作。</font></p></h2><h3><font size=\"3\">自由的</font></h3><h2><p><font size=\"3\">最好的部分？Linux 是免費的！您可以零成本在任意多個平台上安裝作業系統。安裝 Linux 是零風險、高回報——兩全其美。</font></p></h2>','2023-12-03 00:17:52',6,14),(10,'RISC-V 是未來嗎？','<p><a href=\"https://codasip.com/2016/09/22/what-is-risc-vwhy-do-we-care-and-why-you-should-too/\">RISC-V</a>是未來嗎？這是我們經常被問到的問題，假設我們的意思是「RISC-V 將成為處理器市場的主導 ISA 嗎？」。這無疑是一個正在發展的情況，並且在過去五年中發生了重大變化。</p><h3><strong>什麼是 RISC-V，RISC-V 有什麼作用？</strong></h3><p><strong>RISC-V</strong>於 2010 年起源於加州大學柏克萊分校，花了數年時間才得到業界的關注。RISC-V 基金會於 2015 年成立，作為一個非營利組織，推動 RISC-V 的採用，這是向前邁出的一大步。2020 年初，RISC-V 基金會活動重新命名並重組為總部位於瑞士的 RISC-V International。</p><p>我記得在 2017 年的 Embedded World 展會上，Codasip 展位上醒目地展示了 RISC-V 標誌。很多參觀者問，「<a href=\"https://codasip.wpengine.com/2016/09/22/what-is-risc-vwhy-do-we-care-and-why-you-should-too/\">RISC-V是什麼？</a>”，顯示歐洲的認知度較低。從那時起，情況發生了巨大的變化，所有地區都表現出了高度的興趣。</p><p>多年來，我們傾向於將處理器分類為MPU、MCU、GPU、APU、DSP等。一些設備（例如手機）會在設計中結合多種類型的處理器核心。如果我們回想一下 2016 年，MPU 世界由 X86 架構主導，而 Arm 主導著 APU（應用處理器和手機生態系統）和 MCU。</p><p><strong>RISC-V 比 Arm 好嗎？RISC-V 比 Intel/AMD 的 x86 好嗎？</strong>它絕對是不同的，並帶來新的機會。今天，我們可以確定 RISC-V 帶來的一些市場新趨勢。讓我們來看看其中的 3 個。</p><h3><strong>趨勢一：RISC-V效能不斷提升</strong></h3><p>RISC-V早期主要用於學術課程。然而，到 2016 年，大量商業公司正在開發基於<strong>RISC-V ISA</strong>的嵌入式微控制器。可以說，對於 RISC-V 社群來說，這是一個相對容易的步驟，因為嵌入式開發人員習慣從各種來源（包括作為原始碼交付的中間件）建立他們的系統。此外，<strong>嵌入式核心的</strong>複雜性也更簡單。</p><p><img src=\"https://codasip.com/wp-content/uploads/2021/07/GP-R5-trend-2.png\" style=\"max-width:100%;\"><br></p><figure><figcaption>RISC-V處理器效能呈上升趨勢。資料來源：<a href=\"https://codasip.wpengine.com/\">Codasip</a>。</figcaption></figure><p>更具挑戰性的是<strong>應用程式處理器</strong>，支援Linux 或 Android 等<strong>豐富的作業系統所需的複雜性要高得多。</strong>就手機應用而言，存在一個複雜的生態系統，RISC-V 供應商需要一段時間才能支援。儘管如此，在使用 Linux 的系統中，RISC-V 應用處理器還有很多其他機會，並且可以選擇 IP 核，例如解決中階效能的<a href=\"https://codasip.wpengine.com/products/codasip-risc-v-processors/\">Codasip 的 A70 。</a></p><p>最後，我們可以預期未來會有越來越多的供應商為高效能運算創建複雜的 RISC-V 核心。</p><h3><strong>趨勢二：RISC-V正在打破處理器類型之間的障礙</strong></h3><p>隨著<strong>半導體縮放的失敗</strong>，傳統處理器分組之間的界限變得模糊。<a href=\"https://codasip.wpengine.com/solutions/dsa/\">隨著對特定領域加速器</a>實現具有成本效益的片上性能的需求越來越多，越來越有必要根據所需工作負載的需求來調整設計。</p><p>RISC-V ISA 具有<strong>極簡基本整數指令集</strong>並提供<strong>自訂擴展</strong>，是創建特殊加速器的理想起點。</p><p>雖然某些應用程式（例如行動電話）具有複雜的遺留軟體，不太可能在短期內改變架構，但其他應用程式則沒有限制。AI（人工智慧）等新應用正在轉向 RISC-V 作為具有靈活性和<strong>客製化</strong>的開放 ISA 。在更遙遠的未來，隨著傳統考量不再適用，RISC-V 有潛力獲得更大的市場份額。</p><h3><strong>趨勢三：客戶希望避開壟斷供應商</strong></h3><p>最後，處理器市場有強烈的變革意願。自 1980 年代以來，微處理器一直由 Intel/AMD X86 雙寡頭壟斷，但到 90 年代末，Arm 成為手機處理器市場事實上的標準。這種壟斷進一步延伸到鄰近領域，包括嵌入式領域。</p><p>在過去的十年中，我經常聽到工程師談論「手臂疲勞」以及對關鍵市場的壟斷地位和供應商鎖定的不安。然而，只要 Arm 能夠以其廣泛的產品系列聲稱“瑞士中立”，就沒有人會因為授權 Arm 而被解僱。隨著軟銀的收購，這種中立性被嚴重削弱，而現在失敗的英偉達合併嘗試讓許多被授權人感到不安。</p><p>自由<strong>開放的 RISC-V ISA</strong>引起了廣泛的興趣，並可能成為市場發生巨大變化的催化劑。作為一個<strong>開放標準</strong>，它有可能持續數十年，並且由於多個供應商提供處理器內核，它避免了供應商鎖定</p><p><img src=\"https://codasip.com/wp-content/uploads/2021/07/semico-2.png\" style=\"max-width:100%;\"><br></p><figure><figcaption>RISC-V 出貨量預計將強勁成長。資料來源：<a href=\"https://semico.com/content/risc-v-market-analysis-new-kid-block\">Semico 研究公司。</a></figcaption></figure><p>雖然沒有人期望具有豐富歷史的架構（例如 X86 或 Arm）會在一夜之間消失，但幾十年來設計人員第一次<strong>在 RISC-V 中找到了可行的替代方案</strong>。隨著RISC-V<strong>覆蓋的性能範圍越來越廣</strong>，<strong>生態系統迅速擴大</strong>，RISC-V的市場份額將持續成長。<a href=\"https://semico.com/content/risc-v-market-analysis-new-kid-block\">Semico Research</a>等市場報告就反映了這一點，預測到 2025 年市場將消耗 624 億個 RISC-V CPU 核心。</p><p>RISC-V 無疑擁有快速發展的未來，並且很有可能成為主導架構。</p>','2023-12-03 00:09:38',6,11),(11,'人工智能三階段：為何科學家聯署限制可導致人類滅絕的AI技術','<p><img src=\"https://ichef.bbci.co.uk/news/800/cpsprodpb/025D/production/_129750600_1.jpg\" style=\"max-width:100%;\"><br></p><p><b>包括OpenAI和谷歌Deepmind負責人在內的專家警告，人工智能可能導致人類滅絕，但是機器如何取代人類呢？</b></p><p>自2022年11月推出以來，ChatGPT——一款使用人工智能根據用戶的需求回答問題或生成文本甚至代碼的聊天機器人，已經成為歷史上增長最快的互聯網應用程序。</p><p></p><p>在僅兩個月的時間裏，它的活躍用戶達到了1億。據科技監測公司Sensor Town稱，Instagram花了兩年半的時間才達到這一里程碑。</p><p><img src=\"https://ichef.bbci.co.uk/news/800/cpsprodpb/8901/production/_129937053_8170a6fd-eb4b-403d-a91c-f8e20a055f54.jpg\" style=\"max-width:100%;\"><br></p><p>OpenAI公司在微軟的資助下開發的ChatGPT廣受歡迎，引發了人們對人工智能影響人類未來的激烈猜測。</p><p>數十名專家支持在人工智能安全中心（Center for AI Safety）網頁上發表的一份聲明，稱：「減輕人工智能造成的滅絕風險，應該與流行病和核戰爭等其他社會規模的風險一起成為全球優先事項。」</p><p></p><p>但也有人表示，這種擔憂被誇大了。</p><p><br></p><p>see more:<a href=\"https://www.bbc.com/zhongwen/trad/science-65752703\" target=\"_blank\" style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">https://www.bbc.com/zhongwen/trad/science-65752703</a></p>','2023-12-03 00:17:04',6,12),(12,'ChatGPT 正在贏得未來——但那是怎樣的未來呢？','<p>現代科技時代有過一些前後的時刻。一切都是一種方式，然後就這樣，突然很明顯，再也不會像那樣了。Netscape 向世界展示了網路；Facebook 讓網路個人化；iPhone 清楚地表明了行動時代將如何接管。還有其他一些——某處有一個約會應用程序，Netflix 開始播放電影也可能符合條件——但數量不多。</p><p><a href=\"https://www.theverge.com/23488017/openai-chatbot-chatgpt-ai-examples-web-demo\">OpenAI一年前的今天</a>推出的 ChatGPT可能是有史以來最低調的遊戲規則改變者。沒有人登台宣布他們發明了未來，也沒有人認為他們正在推出能讓他們致富的東西。如果說我們在過去12 個月裡學到了一件事，那就是沒有人——無論是OpenAI 的競爭對手，還是技術使用的公眾，甚至是該平台的創建者——認為ChatGPT 會成為歷史上成長最快的<a href=\"https://www.theverge.com/2023/11/6/23948386/chatgpt-active-user-count-openai-developer-conference\">消費科技</a>。回想起來，沒有人預見到 ChatGPT 的到來可能正是它似乎改變了一切的原因。</p><p></p><p><font><font>ChatGPT 推出一年來，幾乎為</font></font><a href=\"https://www.theverge.com/23610427/chatbots-chatgpt-new-bing-google-bard-conversational-ai\"><font><font>科技業的每個角落</font></font></a><font><font>帶來了改變。</font><font>在創投投資大幅下降的一年中，似乎任何在其融資方案中包含「人工智慧」的公司都能夠籌集資金——根據Pitchbook 的數據，</font></font><a href=\"https://www.bloomberg.com/news/articles/2023-10-17/ai-funding-soars-to-17-9-billion-as-the-rest-of-tech-slumps?sref=ExbtjcSG#xj4y7vzkg\"><font><font>光是</font></font></a><font><font>今年第三季就籌集了 179 億美元。業界最大的創投公司正在籌集巨額資金，只是為了繼續向人工智慧投入資金。</font></font></p><p style=\"text-align:center;\"><font><font><img src=\"https://duet-cdn.vox-cdn.com/thumbor/0x0:3846x2400/750x468/filters:focal(1923x1200:1924x1201):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/25065898/New_ChatGPT_UI.png\" style=\"max-width:100%;\"><br></font></font></p><figcaption style=\"text-align:center;\"><em>ChatGPT 仍然是一個超級簡單的應用程式 - 但無論如何它已經取得了巨大的成功。</em><span style=\"font-size: 1em; text-align: center; color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight);\">圖片來源：OpenAI</span></figcaption><figcaption style=\"text-align:left;\"><p>一些公司似乎已經處於領先地位：Anthropic 正在成為 OpenAI 最好、資金最充足的競爭對手之一，<a href=\"https://www.theverge.com/2022/8/2/23287173/ai-image-generation-art-midjourney-multiverse-interview-david-holz\">Midjourney 的</a>圖像生成人工智能正在以驚人的速度進步，甚至就在本週 Pika 也<a href=\"https://twitter.com/pika_labs/status/1729510078959497562\">出現了</a>一個令人印象深刻的人工智慧視訊工具突然<a href=\"https://twitter.com/pika_labs/status/1729510078959497562\">出現。</a>但無論您喜歡筆記應用程式、音訊混合工具，還是總結會議、書籍或法律文件的簡單方法，幾乎每天都會有新的、很酷的東西推出。</p><p>同時，在科技業的另一端，人工智慧已經吞噬了地球上最大的公司。身為 OpenAI 的合作夥伴和投資者，微軟在人工智慧驅動的 Bing 上下了大賭注，同時也將其人工智慧「<a href=\"https://www.theverge.com/2023/9/21/23883798/microsoft-copilot-unified-windows-11-apps-launch-date\">Copilots</a>」引入 Office、Windows、Azure 等。谷歌發明了許多現在突然無所不在的基礎技術，它爭先恐後地推出了 Bard 和搜尋生成體驗，並將<a href=\"https://www.theverge.com/2023/8/29/23849457/google-duet-ai-docs-slides-gmail\">Duet AI</a>內建到了自己的工作場所產品中。人工智慧是亞馬遜今年發布的核心內容，從法學碩士支援的 Alexa 到為 AWS 客戶提供的 100 萬種新人工智慧工具。Meta<a href=\"https://www.theverge.com/2023/9/27/23891128/meta-ai-assistant-characters-whatsapp-instagram-connect\">現在將人工智慧視為</a>其未來的重要組成部分，甚至可能比 Metaverse 更重要。人工智慧硬體使英偉達成為地球上最有價值的公司之一。就連科技巨頭中行動最不積極的蘋果也開始更多地談論其人工智慧方面的努力，並且可能很快就會<a href=\"https://www.theverge.com/2023/7/19/23800430/apple-gpt-ai-chatbot-generative-ai\">為 Siri 制定宏偉計劃。</a>我可以繼續前進。稱之為繁榮，稱之為泡沫，但整個科技界已經很久沒有如此沉迷於單一事物了。</p><p>但請不要誤會：ChatGPT 是 ChatGPT 革命的最大贏家。它看起來並不多——它的新音訊和圖像功能很簡潔，但基本上它仍然只是一個設計粗略的聊天介面——而且它一直受到可靠性問題的困擾，但這並沒有阻止它的發展勢頭。它在五天內就擁有了 100 萬用戶，僅僅兩個月後就擁有了 1 億用戶，現在每週都有 1 億用戶。&nbsp;</p><p><br></p><p>see more:<a href=\"https://www.theverge.com/23981318/chatgpt-open-ai-launch-anniversary-future\" target=\"_blank\" style=\"font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight);\">https://www.theverge.com/23981318/chatgpt-open-ai-launch-anniversary-future</a></p></figcaption>','2023-12-03 20:03:25',1,12),(13,'美國限制中國企業和電池零件獲得電動車稅收抵免','<p>路透社華盛頓12月1日 - 拜登政府週五發布了期待已久的指導意見，該指導意見將從明年開始限制符合電動車稅收抵免資格的電池中的中國成分。</p><p>為了汽車製造商的勝利，美國財政部將暫時免除一些微量關鍵礦物，使其免受新的嚴格規定的限制，禁止來自中國和其他被視為「外國關注實體」的國家的材料。（遠東石油公司）</p><p>根據 2022 年 8 月頒布的法律，新規定旨在讓美國電動車電池鏈擺脫中國的束縛，汽車製造商在為向電動車過渡而做出電池生產投資決策時受到密切關注。</p><p><br></p><p>FEOC 規則對於成品電池將於 2024 年生效，對於用於生產電池的關鍵礦物則於 2025 年生效。</p><p>代表幾乎所有主要汽車製造商的汽車創新聯盟表示，免除微量材料兩年的決定“意義重大且明智”，否則幾乎所有車輛都將不再符合資格。</p><p>財政部表示，少數獲得豁免的材料各自佔電池關鍵礦物價值的不到 2%。</p><p><br></p><p>通用汽車週五表示，它相信「在 2024 年及以後，我們有能力維持消費者對我們許多電動車的購買動力」。</p><p>福特汽車公司10月表示，正在等待指導意見，以確定其與中國電池製造商CATL&nbsp;<a target=\"_blank\" href=\"https://www.reuters.com/markets/companies/300750.SZ\">（300750.SZ）</a>的許可協議（作為該汽車製造商計劃的密西根電池工廠的一部分）是否會違反規定。拜登政府官員不會對規則是否允許這種安排發表評論。福特拒絕發表評論。</p><p><br></p><p>共和黨參議員馬可·盧比奧 (Marco Rubio) 表示，該指導似乎使福特 CATL 協議符合資格。他批評了這項決定，認為政府將「電動車特殊利益團體置於美國利益之上」。</p><p>美國能源部表示，如果一家公司由指定外國政府擁有或控制，則該公司將被視為 FEOC。如果相關實體持有該實體 25% 的董事會席位、投票權或股權，該公司也將不符合資格。</p><p><br></p><p>這些國家包括北韓、中國、俄羅斯和伊朗。</p><p>該汽車製造商集團表示，“看來在中國運營的公司被視為 FEOC。在某些情況下，具有特定所有權或治理結構的中國實體可能會被允許。”</p><p>預計這些規則將進一步減少有資格獲得電動車稅收抵免的電動車數量。該法律立即規定任何車輛如果不是在北美組裝的，則不符合資格。今年早些時候，新的電池和礦物採購要求從 1 月 1 日起生效，價格和買家收入資格受到限制。</p><p>參議員能源委員會主席喬·曼欽（Joe Manchin）譴責財政部允許來自中國的一些微量關鍵礦物符合資格，並發誓要抓住一切機會“扭轉這一非法、可恥的擬議規則，保護我們的能源安全。”</p><p>財政部表示，在規則最終確定之前，允許合規車輛符合資格，將為擁有清潔供應鏈的汽車製造商提供快速合規方法。</p>','2023-12-03 20:04:22',1,11),(14,'PSA：立即更新 Chrome 瀏覽器以避免已經存在的漏洞','<p style=\"text-align:center;\"><img src=\"https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/640x427/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/24418650/STK114_Google_Chrome_01.jpg\" style=\"max-width:100%;\"><br></p><p>在，一些 Mac、Linux 和 Windows 上的 Chrome 用戶可以使用一個重要的安全性更新，該更新修復了一個零日漏洞，該漏洞可能使系統容易遭受資料竊取和其他網路攻擊。週二，谷歌在<a href=\"https://chromereleases.googleblog.com/2023/11/stable-channel-update-for-desktop_28.html\">Chrome 穩定頻道更新</a>中確認，它「意識到存在<a href=\"https://nvd.nist.gov/vuln/detail/CVE-2023-6345\">CVE-2023-6345</a>漏洞」。該漏洞是由 Google 威脅分析小組 (TAG) 內的兩名安全研究人員於 11 月 24 日發現的。&nbsp;</p><p>Google 尚未發布有關 CVE-2023-6345 漏洞利用的更多詳細信息，但這是可以預料的。正如<a href=\"https://www.androidcentral.com/apps-software/google-updates-chrome-browser-sixth-zero-day-vulnerability-of-2023\"><em>Android Central</em>指出的</a>那樣，谷歌與許多科技公司一樣，通常選擇保密有關漏洞的信息，直到這些漏洞得到大部分解決，因為詳細信息可能會讓攻擊者更容易利用未受保護的 Chrome 用戶。目前尚不清楚該漏洞在上週被發現之前已被積極利用了多長時間。</p><p><br></p><p>CVE-2023-6345 漏洞可能允許駭客遠端存取個人資料並部署惡意程式碼</p><p>我們<em>所</em>知道的是，CVE-2023-6345 是一個整數溢位漏洞，會影響 Chrome 圖形引擎中的開源 2D 圖形庫 Skia。根據 Chrome 更新的說明，該漏洞允許至少一名攻擊者「可能透過惡意檔案執行沙箱逃逸」。沙箱逃逸可用於用惡意程式碼感染易受攻擊的系統並竊取敏感的用戶資料。</p><p></p><p><font><font>如果您已將 Chrome 瀏覽器設定為自動更新，則可能不需要採取任何操作。</font><font>對於其他人來說，值得在 Google Chrome 設定中手動更新到最新版本（Mac 和 Linux 為 119.0.6045.199，Windows 為 119.0.6045.199/.200），以避免系統暴露。</font><font>谷歌表示，該修復程序將在「未來幾天/幾週內」推出，因此在撰寫本文時可能無法立即向所有人提供。</font></font></p>','2023-12-03 20:05:36',1,11),(15,'愛奇藝借助AIGC提升內容生產與行銷效率','<p><i>採用大語言模型（LLM）輔助劇本評估，場景和人物細分準確率超過90%</i></p><p>北京2023年8月25日/美通社/ --&nbsp;中國市場領先的創新線上娛樂服務商愛奇藝本周宣布，已利用生成式人工智慧提高內容製作和行銷效率，並取得了令人鼓舞的初步成果場景和角色分解的準確度超過 90%。此模型也展現了公司運用科技創新賦能娛樂產業、提升使用者體驗的強大能力。</p><p>根據愛奇藝介紹，內容創作者現在可以利用AIGC（AI generated Content）技術從劇本中提取核心訊息，協助前期專案階段的劇本評估，實現更精準的預算規劃和資源管理。此外，它還可以快速評估複雜的故事情節，透過改善搜尋結果、推薦和播放互動體驗來增強使用者體驗。</p><p>愛奇藝技術長劉文峰表示：「透過引入AIGC賦能內容生產和運營，愛奇藝希望在不斷提升用戶體驗的同時，提升內容運營和推廣的品質和效率。」現在使用AIGC進行內部運營和外部推廣。”</p><p>愛奇藝開發了星羅，這是一個 AIGC 平台，利用法學碩士的先進能力和專有技術來理解和增強長影片內容的故事情節。星洛自動大量生成各種影片類型以及各種文字和影像內容，包括影片旁白和混合剪輯。</p><p>此外，該平台使用戶能夠透過在微博等社交媒體平台上搜尋與熱門劇集相關的熱門關鍵字，快速導航到特定劇集和場景。例如，今年夏天在網路上引起極大關注的愛奇藝熱門電視劇《<i>命中註定</i>》，當用戶被正在討論的特定情節或場景所吸引時，可以透過愛奇藝搜尋立即存取。此外，除了電視劇之外，該模式也被運用在《<i>樂隊大作戰3》</i>等熱門綜藝節目中。</p><p>截至目前，已有數萬張愛奇藝內容專輯納入AIGC協助產生營運素材。已形成影片、文字、圖片等素材操作項目超過70萬條。</p><p>愛奇藝自2022年以來一直在探索AIGC在視訊領域的應用。2023年2月，愛奇藝宣布與百度簽署框架協議，將愛奇藝與百度生成對話產品ERNIE Bot連接起來。此次合作的目的是共同探討AIGC在愛奇藝各項業務中的運用，包括內容搜尋、小說創作和工具等領域。</p><p>2023年上半年，愛奇藝還成立了“愛奇藝AIGC內容技術創新中心”，不斷探索更多AIGC與娛樂產業的融合場景。</p><p>此外，AIGC在廣告內容創意和變現表現方面也卓有成效。據愛奇藝稱，利用生成式人工智慧製作效果廣告內容，投資報酬率提高了20個百分點。例如，愛奇藝的效果廣告平台已成功將人工智慧應用程式整合到簡化的文案和圖形設計中，並可供廣告品牌和代理商使用。這項進步顯著提高了廣告製作流程的效率。</p><p>展望未來，愛奇藝致力於利用AIGC賦能愛奇藝各業務線生態。同時，公司積極運用技術，在劇本創作、評價、動畫製作和商業化等方面實現更多突破，助推產業升級與革命。</p><p>聯絡方式：愛奇藝出版社，<a href=\"mailto:press@qiyi.com\" target=\"_blank\">press@qiyi.com</a></p><p>消息來源愛奇藝</p>','2023-12-03 20:10:17',3,15),(16,'聯邦法官發誓要調查谷歌故意破壞聊天記錄','<p style=\"text-align:center;\"><img src=\"https://duet-cdn.vox-cdn.com/thumbor/0x0:6081x4054/640x427/filters:focal(1394x1708:1395x1709):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/25126920/1820421553.jpg\" style=\"max-width:100%;\"><br></p><p>詹姆斯·多納託法官正在審理<a href=\"https://www.theverge.com/23944251/epic-google-antitrust-trial-explainer-monopoly\"><em>Epic 訴谷歌</em></a>一案，該案可能決定 Android 應用商店的未來，但該案的證詞也可能對谷歌產生更多影響。</p><p>週五，多納託法官發誓要調查谷歌故意和系統性壓制證據的行為，稱該公司的行為是「對公平司法的正面攻擊」。我們在法庭上聽他的解釋。</p><p>他說：「我將徹查到底是誰的責任。」他補充說，他將「在本次審判之外，獨自解決這些問題」。</p><p><em>Epic 訴谷歌</em>審判以及<a href=\"https://www.theverge.com/2023/10/30/23939043/us-v-google-sundar-pichai-testimony\">美國司法部在華盛頓特區對谷歌提起的反壟斷訴訟</a>中的證詞顯示，谷歌自動刪除了員工之間的聊天訊息，並且一直到首席執行官桑達爾·皮查伊(Sundar Pichai)的員工都故意利用這些訊息來確保對話消失。皮查伊和許多其他員工也作證說，即使他們意識到保留證據的法律義務，<a href=\"https://www.theverge.com/2023/11/14/23960827/pichai-admits-he-didnt-change-his-default-auto-delete-chat-settings-to-preserve-evidence\">他們也沒有更改自動刪除設定。</a></p><p>皮查伊和其他員工<a href=\"https://www.theverge.com/2023/11/14/23960825/google-ceo-sundar-pichai-admits-he-used-fake-legal-privilege\">承認，他們將文件標記為具有法律特權</a>，只是為了防止這些文件落入他人手中。</p><p>11 月 14 日，<a href=\"https://www.theverge.com/2023/11/14/23960808/epic-is-attempting-a-buck-stops-with-pichai-line-of-questioning\">皮查伊告訴法庭</a>，他依靠法律和合規團隊對他進行適當的指導，特別是Alphabet 首席法律官肯特·沃克(Kent Walker)，因此多納託法官在兩天后將沃克拖上法庭。</p><p>但法官<a href=\"https://www.theverge.com/2023/11/16/23964135/we-didnt-put-these-chats-on-litigation-hold-until-earlier-this-year-walker-attempts-to-clarify\">對沃克的證詞</a>也不滿意，指責他「跳踢踏舞」。</p><p>沃克表示，他<a href=\"https://www.theverge.com/2023/11/16/23964138/did-you-do-anything-ever-to-audit-chats-no-says-walker\">從未試圖審查</a>員工是否真正保留了證據——由員工個人決定哪些通信可能與法律案件相關，並且不止一名員工在法庭上作證說，他們對相關內容有錯誤的想法。</p><p><br></p><p>“這是我十年來在替補席上見過的最嚴重、最令人不安的證據”</p><p>今天，多納託法官表示，谷歌的這種行為“讓作為一名美國司法官員的我深感不安”，並稱這是“我在法官十年中見過的最嚴重、最令人不安的證據”。當事人故意隱瞞相關證據。”</p><p>「這種行為是對公正司法的正面攻擊。它削弱了正當程序。它對法律糾紛的公正解決提出了質疑。這與我們的製度背道而馳，」多納託法官說。</p><p>然而，法官今天決定，他不會發布「強制性推理指示」——該指示將告訴陪審團，他們應該理解谷歌銷毀了可能對其案件不利的證據。</p><h3>有關的</h3><ul><li><a href=\"https://www.theverge.com/2023/11/16/23964146/judge-donato-has-dismissed-googles-kent-walker-what-are-we-going-to-do-about-this-he-asks\">多納託法官解雇了谷歌的肯特·沃克。“我們該怎麼辦？”&nbsp;他問。</a></li><li><a href=\"https://www.theverge.com/2023/11/16/23964131/you-use-the-word-destroy-i-would-say-not-retained\">“你用破壞這個詞，我會說不保留。”</a></li><li><a href=\"https://www.theverge.com/2023/11/16/23964133/is-walker-passing-the-buck\">沃克在推卸責任嗎？</a></li><li><a href=\"https://www.theverge.com/2023/11/16/23964140/walker-confirms-chat-history-is-now-on-by-default-for-all-google-employees\">沃克確認所有谷歌員工的聊天記錄現已預設開啟。</a></li></ul><p>相反，將會有一個「寬容的」陪審團指示——陪審團「可能」推斷出缺失的證據可能幫助了 Epic，損害了谷歌。</p><p>「最好的做法是由陪審團自行決定是否做出推論。我不會透過為陪審團做出這樣的推論來限制陪審團的自由裁量權，」他說。</p><p>多納託法官表示：“儘管發布強制性推理指令是完全可以的，但我可以在本次審判之外的後續審判中自行解決這些問題。”</p><p>他說：“我將找出責任人到底是誰。”&nbsp;“這將與這裡發生的任何事情分開，但那一天即將到來。”</p><p>谷歌拒絕就多納託法官的言論向<em>The Verge發表評論。</em>沃克在法庭上作證說，所有Google員工的自動刪除設定現在都預設為關閉。</p><p></p><p><font></font><em><font><font>今天，Epic 和 Google 在Epic v Google</font></font></em><font><font>案中結案</font><font>。</font><font>我們將於</font></font><a href=\"https://www.theverge.com/23945184/epic-v-google-fortnite-play-store-antitrust-trial-updates\"><font><font>12 月 11 日回來</font></font></a><font><font>聽取結案陳詞和陪審團指示</font></font></p>','2023-12-03 20:17:09',3,11),(17,'OpenAI 的客製化聊天機器人正在洩露他們的秘密','<p><img src=\"https://media.wired.com/photos/65668a1b4cb65084356e789a/master/w_1920,c_limit/112823-security-openai-gpts-data.jpg\" style=\"max-width:100%;\"><br></p><p>您不需要知道如何編碼來創建您自己的人工智慧聊天機器人。自 11 月初以來（就在公司<a href=\"https://www.wired.com/story/sam-altman-second-coming-sparks-new-fears-ai-apocalypse/\">發生</a><a href=\"https://www.wired.com/story/openai-staff-walk-protest-sam-altman/\">混亂</a>之前不久），<a href=\"https://www.wired.com/story/what-openai-really-wants/\">OpenAI</a>允許任何人<a href=\"https://www.wired.com/story/openai-wants-everyone-to-build-their-own-version-of-chatgpt/\">建立和發布自己的 ChatGPT 自訂版本</a>，稱為「GPT」。已經創建了數千個：一個「遊牧者」GPT 提供有關遠距工作和生活的建議，另一個聲稱搜尋 2 億篇學術論文來回答你的問題，還有一個會把你變成皮克斯角色。<a href=\"https://www.wired.com/story/sam-altman-second-coming-sparks-new-fears-ai-apocalypse/\"></a><a href=\"https://www.wired.com/story/what-openai-really-wants/\"></a><a href=\"https://www.wired.com/story/openai-wants-everyone-to-build-their-own-version-of-chatgpt/\"></a></p><figure><p><br></p><p>然而，這些定制 GPT 也可能被迫洩露其秘密。安全研究人員和技術人員對客製化聊天機器人進行了調查，他們洩露了創建聊天機器人時收到的初始指令，並且還發現並下載了用於自訂聊天機器人的文件。專家表示，人們的個人資訊或專有數據可能面臨風險。</p><p>「文件洩露的隱私問題應該被認真對待，」西北大學電腦科學研究人員於嘉豪說。“即使它們不包含敏感信息，它們也可能包含一些設計者不想與他人分享的知識，並且[作為]定制GPT的核心部分。”</p><p><br></p><p>Yu 與西北大學的其他研究人員一起<a href=\"https://arxiv.org/pdf/2311.11538.pdf\" target=\"_blank\">測試了 200 多個客製化 GPT</a>，發現從它們中洩露資訊「非常簡單」。「我們的文件洩漏成功率為 100%，系統提示提取成功率為 97%，只需簡單的提示即可實現，不需要提示工程或紅隊方面的專業知識，」Yu 說。</p><p><a href=\"https://openai.com/blog/introducing-gpts\" target=\"_blank\">定制 GPT</a>就其設計而言很容易製作。訂閱 OpenAI 的人可以創建 GPT，也稱為 AI 代理。OpenAI<a href=\"https://openai.com/blog/introducing-gpts\" target=\"_blank\">表示</a>GPT 可以供個人使用或發佈到網路上。該公司計劃讓開發者最終能夠根據使用 GPT 的人數來賺錢。</p><p><br></p><p><br></p><p>要建立自訂 GPT，您所需要做的就是向<a href=\"https://zapier.com/blog/custom-chatgpt/\" target=\"_blank\">ChatGPT 發送訊息並說出您希望自訂機器人執行的操作</a>。您需要向其提供有關機器人應該做什麼或不應該做什麼的說明。例如，可以回答有關美國稅法問題的機器人可能會收到指示，不要回答不相關的問題或其他國家法律的答案。您可以上傳包含特定資訊的文檔，以便為聊天機器人提供更多專業知識，例如向美國稅務機器人提供有關法律如何運作的文件。將第三方 API 連接到自訂 GPT 還可以幫助增加其能夠存取的資料以及可以完成的任務類型。</p><p><br></p><p><br></p><p><br></p><p><br></p><p>最受歡迎</p><ul><li><p><a href=\"https://www.wired.com/story/smart-thermostat-science/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"></a></p><p><a href=\"https://www.wired.com/story/smart-thermostat-science/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><picture><source><source><img alt=\"如何根據科學設定恆溫器\" src=\"https://media.wired.com/photos/65664ebef0f200d31c380ec6/16:9/w_800%2Ch_450%2Cc_limit/undefined\"></picture></a></p><p>科學</p><a href=\"https://www.wired.com/story/smart-thermostat-science/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><p>如何根據科學設定恆溫器</p></a><p>克里斯·巴拉紐克</p></li><li><p><a href=\"https://www.wired.com/story/gadget-lab-podcast-622/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"></a></p><p><a href=\"https://www.wired.com/story/gadget-lab-podcast-622/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><picture><source><source><img alt=\"咖啡愛好者，是時候停止使用 K 杯了\" src=\"https://media.wired.com/photos/6567b1414cb65084356e78a3/16:9/w_800%2Ch_450%2Cc_limit/undefined\"></picture></a></p><p>齒輪</p><a href=\"https://www.wired.com/story/gadget-lab-podcast-622/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><p>咖啡愛好者，是時候停止使用 K 杯了</p></a><p>麥可·卡洛</p></li><li><p><a href=\"https://www.wired.com/story/cicadas-are-so-loud-fiber-optic-cables-can-hear-them/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"></a></p><p><a href=\"https://www.wired.com/story/cicadas-are-so-loud-fiber-optic-cables-can-hear-them/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><picture><source><source><img alt=\"蟬聲如此之大，光纖電纜可以「聽到」它們\" src=\"https://media.wired.com/photos/65674879be84c9017e998301/16:9/w_800%2Ch_450%2Cc_limit/undefined\"></picture></a></p><p>科學</p><a href=\"https://www.wired.com/story/cicadas-are-so-loud-fiber-optic-cables-can-hear-them/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><p>蟬聲如此之大，光纖電纜可以「聽到」它們</p></a><p>馬特·西蒙</p></li><li><p><a href=\"https://www.wired.com/story/doomscrolling-bad-news-mental-health/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"></a></p><p><a href=\"https://www.wired.com/story/doomscrolling-bad-news-mental-health/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><picture><source><source><img alt=\"是時候註銷了\" src=\"https://media.wired.com/photos/655e136563bba0f0f5b580fd/16:9/w_800%2Ch_450%2Cc_limit/undefined\"></picture></a></p><p>安全</p><a href=\"https://www.wired.com/story/doomscrolling-bad-news-mental-health/#intcid=_wired-right-rail_0f05f968-8a70-4bfa-ad0a-aa3eae877590_popular4-1-reranked-by-vidi\" target=\"_self\"><p>是時候註銷了</p></a><p>托爾·本森</p></li><li><p><br></p></li></ul><p><br></p><p><br></p><p>提供給自訂 GPT 的資訊通常可能相對無關緊要，但在某些情況下可能更為敏感。Yu 表示，自訂 GPT 中的資料通常包含設計者的“特定領域的見解”，或包含敏感信息，例如<a href=\"https://twitter.com/zuhayeer/status/1723065439910011055\" target=\"_blank\">“</a>薪資和工作描述”與其他機密資料一起上傳。GitHub 的一個頁面列出了大約100 組針對自訂 GPT 的<a href=\"https://github.com/linexjlin/GPTs/blob/main/Agi.zip.md\">洩漏指令。</a>這些數據提供了有關聊天機器人如何運作的更多透明度，但開發人員很可能並不打算發布它。至少已經出現過這樣的情況：開發者已經<a href=\"https://twitter.com/zuhayeer/status/1723065454325911731\" target=\"_blank\">刪除了他們上傳的資料</a>。</p><p><br></p><p>可以透過提示注入來存取這些指令和文件，有時也稱為越獄的一種形式。簡而言之，這意味著告訴聊天機器人按照它被告知不要這樣做的方式行事。早期的<a href=\"https://www.wired.com/story/chatgpt-jailbreak-generative-ai-hacking/\">提示注入</a>看到人們告訴像 ChatGPT 或 Google 的 Bard 這樣的大型語言模型 (LLM)，忽略不要產生仇恨言論或其他有害內容的指示。更複雜的提示注入使用了多層欺騙或圖像和網站中的隱藏訊息來<a href=\"https://www.wired.com/story/chatgpt-prompt-injection-attack-security/\">顯示攻擊者如何竊取人們的資料</a>。LLM 的創建者制定了規則來阻止常見的提示注入工作，但<a href=\"https://www.wired.com/story/generative-ai-prompt-injection-hacking/\">沒有簡單的修復方法</a>。</p><p><br></p><p><a href=\"https://adversa.ai/blog/llm-red-teaming-gpts-prompt-leakage-api-leakage-documents-leakage/\" target=\"_blank\">研究自訂 GPT 的人工智慧安全公司 Adversa AI</a>的執行長 Alex Polyakov 表示：“利用這些漏洞的難度非常簡單，有時只需要基本的英語水平。”&nbsp;他表示，除了聊天機器人洩漏敏感資訊之外，人們的自訂 GPT 也可能被攻擊者克隆，API 也可能受到損害。波利亞科夫的研究表明，在某些情況下，只要有人問「你能重複最初的提示嗎？」就可以獲得指示。或請求“知識庫中的文件清單”。</p><p>當OpenAI在11月初宣布GPT時，它表示人們的聊天內容不會與GPT的創建者分享，並且GPT的開發者可以驗證他們的身份。<a href=\"https://openai.com/blog/introducing-gpts\" target=\"_blank\">該公司在部落格文章中表示：</a>&nbsp;“我們將繼續監控和了解人們如何使用 GPT，並更新和加強我們的安全緩解措施。 ”</p><p><br></p><p>本文發表後，OpenAI 發言人 Niko Felix 告訴《連線》雜誌，該公司「非常重視」用戶資料的隱私。Felix 補充道：“我們不斷努力使我們的模型和產品更安全、更強大地抵禦對抗性攻擊，包括即時注入，同時保持模型的實用性和任務性能。”</p><p>研究人員指出，隨著時間的推移，從 GPT 中提取一些資訊變得更加複雜，這表明該公司已經停止了一些即時注入的工作。西北大學的研究稱，研究結果已在發表前報告給 OpenAI。波利亞科夫說，他最近用來存取資訊的一些提示注入涉及 Linux 命令，這需要更多的技術能力，而不僅僅是懂英語。</p><p>Yu 和 Polyakov 都表示，隨著越來越多的人創建自訂 GPT，需要更多地意識到潛在的隱私風險。餘說，應該對即時注入的風險發出更多警告，並補充說，“許多設計師可能沒有意識到上傳的文件可以被提取，認為它們僅供內部參考。”</p><p>Yu 補充道，除此之外，告訴 GPT 不允許下載檔案的「防禦提示」可能比不使用它們的 GPT 提供更多的保護。Polyakov 表示，人們應該清理上傳到自訂 GPT 的數據，以刪除敏感訊息，並首先考慮上傳的內容。隨著人們找到新的方法來破解聊天機器人並規避其規則，保護機器人免受即時注入問題的工作正在進行中。「我們看到這場越獄遊戲永無止境，」波利亞科夫說。</p><p></p><p><em><font><font>更新於 2023 年 11 月 29 日美國東部時間中午 12:20，包含來自 OpenAI 的評論</font></font></em></p></figure>','2023-12-03 20:18:53',3,12),(18,'Meta 如何為超大規模 Linux 打補丁\n','<p><img src=\"https://cdn.thenewstack.io/media/2023/11/1b8e869d-casey-allen-ujpeghu8unu-unsplash-1024x683.jpg\" style=\"max-width:100%;\"><br></p><p>弗吉尼亞州里士滿——任何有技術線索的人都可以修補 Linux 伺服器。但是，要在不停機的情況下修補數千個漏洞，這並不容易。</p><p>在本月稍早舉行的<a href=\"https://lpc.events/\">Linux Plumbers Conference</a>（僅限受邀參加的頂級 Linux 核心開發人員會議）上，<a href=\"https://thenewstack.io/meta-adds-cool-new-features-to-python-3-12/\">Meta</a>&nbsp;Linux 核心工程師<a href=\"https://github.com/leitao\">Breno Leitao</a>解釋了Facebook 如何利用其遍布全球的數百萬台伺服器來實現這一目標。</p><p>雷濤表示，如果使用普通技術，需要超過 45 天的時間才能為所有機器推出新核心。正如他所說，“排空和不排空主機是很困難的。”&nbsp;你可以再說一次。</p><p>如果它是一個小更新，那可能沒問題，但如果它是一個安全補丁，那就行不通了。</p><p>因此，Meta 使用<a href=\"https://documentation.suse.com/smart/deploy-upgrade/html/concept-klp/index.html\">核心即時修補 (KLP)</a>和<a href=\"https://www.openshift.com/try?utm_content=inline-mention\" target=\"_blank\">Red Hat</a>的<a href=\"https://www.redhat.com/en/blog/introducing-kpatch-dynamic-kernel-patching\">Kpatch</a>來快速提供修補程式。在 KLP 中，您無需重新啟動即可將最新的安全性更新套用到 Linux 核心。這可以最大限度地延長系統的正常運作時間和可用性。</p><h2>實時核心補丁</h2><p>核心即時補丁以包含修改程式碼的套件的形式提供，這些程式碼與主核心包分開。即時補丁是累積的，因此最新補丁包含核心包之前補丁的所有修復。每個核心即時套件都與其發布的確切核心版本相關聯。</p><p>不過，即時補丁並不適用於所有情況。您無法修補資料或結構。另一個問題是，製作即時補丁通常需要額外的工程工作。正如 Leitao 所警告的那樣，「這不僅僅是編譯即時補丁、知道它是安全的並應用它那麼簡單。這些是核心模組，如果你不小心，你可能會破壞它們。不能保證補丁本身是正確的。”</p><p><br></p><p>Kpatch 的工作原理是比較原始核心和修補的內核，然後使用自訂的核心模組將新程式碼修補到正在運行的核心中。<a href=\"http://elinux.org/Ftrace\">然後，Kpatch 進程使用ftrace</a>監視現有進程的堆疊，以查看是否可以在沒有任何有害影響的情況下製作補丁。</p><p>當安全性時，它將正在運行的程式碼重定向到已修補的函數，然後刪除現在過時的程式碼。現在，您的伺服器已打補丁，並且沒有停機情況。</p><p>當然，實際操作起來沒那麼簡單。Leitao 解釋道：「在 Meta，當我們應用即時補丁時，通常需要一到兩秒鐘的時間才能將補丁應用到主機上。這是針對單一主機的，顯然不喜歡整個伺服器群，但對於主機來說，一到兩秒鐘的時間確實非常快，甚至比<a href=\"https://wiki.archlinux.org/title/kexec\">kexec</a>（用於啟動新核心的 Linux 核心機制）還要快。它不需要任何停機時間或工作負載遷移，您只需應用即時補丁，然後就可以開始了。”</p><h2>如何修補數百萬台機器</h2><p>但是，當您談論數百萬台機器時，這並不是故事的全部。Meta 會在補丁發布期間發現錯誤，因此管理員首先修補候選版本層。因此，當包滾輪交付基於<a href=\"https://rpm.org/\">RPM</a>的修補程式時，也會自動檢查伺服器的運作狀況。</p><p>Meta 在新核心中尋找崩潰、主要警報以及應用程式問題和效能。該數據是從各種來源提取的，包括崩潰、<a href=\"https://www.kernel.org/doc/Documentation/networking/netconsole.txt\">網路控制台</a>結果和核心轉儲。如果錯誤率超過每千台伺服器一次崩潰，則會拉取修補程式並恢復舊核心。</p><p>Facebook 擁有超過 10 億用戶，它也密切關注效能。正如雷濤所說，“實時補丁的性能開銷很小，但是當補丁比較熱門的功能時，總會有一個擔憂。”</p><p>雖然 Meta 使用 Kpatch，但還有其他選擇。SUSE 提供<a href=\"https://documentation.suse.com/sles/12-SP4/single-html/SLES-kgraft/\">kGraft</a>；而<a href=\"https://developer.oracle.com/?utm_content=inline-mention\" target=\"_blank\">Oracle</a>使用<a href=\"https://ksplice.oracle.com/\">Ksplice</a>；Canonical 支援<a href=\"https://ubuntu.com/security/livepatch/docs/livepatch\">Livepatch</a>。無論代碼如何，它們都提供相似的結果。</p><p>因此，如果您不想讓伺服器、資料中心和雲端出現停機，請按照 Meta 的範例並使用即時修補。你會很高興你這麼做了。</p>','2023-12-03 20:29:42',5,14),(19,'Linux Kernel 6.5 生命週期結束，是時候升級到 Linux Kernel 6.6 LTS 了','<p>僅經過十三次維護更新後，Linux 6.5 核心系列現已在 kernel.org 網站上標記為 EOL（生命週期結束），這意味著它將不再支援錯誤和安全修復。</p><p><strong><a href=\"https://9to5linux.com/linux-kernel-6-5-officially-released-this-is-whats-new\">Linux 核心 6.5</a></strong>由 Linus Torvalds 於 2023 年 8 月 27 日發布，以慶祝<strong><a href=\"https://9to5linux.com/happy-32nd-birthday-linux\">Linux 32 歲生日</a></strong>。它引入了令人興奮的新功能，例如Wi-Fi 7 支援、ALSA 中的MIDI 2.0 支援、RISC-V 架構的ACPI 支援、UML（用戶模式Linux）的Landlock 支援以及AMD「Zen」系統改進。</p><p>今天，在發布整整三個月後，著名的 Linux 核心開發人員 Greg Kroah-Hartman<em><a href=\"https://lkml.iu.edu/hypermail/linux/kernel/2311.3/04928.html\" target=\"_blank\">宣布推出</a></em>Linux 核心6.5.13，這似乎是Linux 6.5 核心系列中的最後一個維護更新，該系列現已結束生命週期，並且是Linux 6.5 核心系列中的最後一個維護更新。很少有核心系列只有第 13 個版本。</p><p>像往常一樣，當 Linux 核心分支生命週期結束時，Greg Kroah-Hartman 敦促所有用戶和發行版維護者考慮盡快升級到最新的穩定核心系列。在這種情況下，運行 Linux 核心 6.5 的使用者應考慮升級到<strong><a href=\"https://9to5linux.com/its-official-linux-kernel-6-6-will-be-lts-supported-until-december-2026\">Linux 核心 6.6 LTS</a></strong>。</p><p><br></p><p>「我宣布發布 6.5.13 核心。所有6.5核心系列的用戶都必須升級。請注意，這是最新的 6.5.y 核心版本。該分支現已終止生命週期，此時所有使用者都必須遷移到 6.6.y 核心分支。」Greg Kroah-Hartman 在 Linux 核心郵件清單公告中表示。</p><p>Linux 6.6 不僅是最新的穩定核心版本，而且還是一個 LTS（長期支援）分支，從撰寫本文之日起直至 2026 年 12 月，該分支將透過定期維護更新提供錯誤和安全修復支持，為期三年。</p><p>Linux 核心6.6 LTS 於2023 年10 月29 日發布，具有Intel Shadow Stack 支援、名為EEVDF 的新任務調度程序、改進的對Lenovo IdeaPad、HP 和ASUS 設備的支援、USB MIDI 2 小工具支援等新功能，以及眾多新功能。新的和更新的驅動程式以獲得更好的硬體支援。</p><p>Linux 6.6 LTS 已經為各種流行的 GNU/Linux 發行版提供支持，例如<strong><a href=\"https://9to5linux.com/arch-linux-installer-archinstall-2-7-adds-support-for-unified-kernel-image\">Arch Linux</a></strong>和 openSUSE Tumbleweed，並且很快就會在<strong><a href=\"https://9to5linux.com/fedora-linux-39-is-now-available-for-download-powered-by-linux-kernel-6-5\">Fedora Linux 39</a></strong>中提供。Ubuntu 用戶也可以使用此處的便利教學安裝 Linux 核心 6.6&nbsp;<strong><a href=\"https://9to5linux.com/you-can-now-install-linux-kernel-6-6-on-ubuntu-heres-how\">LTS</a></strong>。</p>','2023-12-03 20:30:51',5,14),(20,'Fractal 5：使用 GTK 4 和 Rust SDK 升級 Linux 矩陣訊息應用程式\n','<p><img src=\"https://news.itsfoss.com/content/images/size/w1304/2023/11/fractal-matrix-client.png\" style=\"max-width:100%;\"><br></p><p><a href=\"https://matrix.org/?ref=news.itsfoss.com\">Matrix</a>是一種受歡迎的安全、去中心化通訊網絡，它的相關性日益增強。我們周圍的世界正在以前所未有的速度發生變化，而對安全通訊工具的需求只是其副產品之一。</p><p>Fractal 就是一種有助於利用 Matrix 的工具。<a href=\"https://itsfoss.com/best-matrix-clients/?ref=news.itsfoss.com\">它是去中心化訊息傳遞的最佳 Matrix 用戶端</a>之一。</p><p>最近宣布，<strong>Fractal 5</strong>進行了重大修改 🎉</p><p>那麼，讓我們簡單地看一下。</p><h2>🆕 分形 5：有什麼新內容？</h2><p><img src=\"https://news.itsfoss.com/content/images/2023/11/Fractal_5_a.png\" style=\"max-width:100%;\"><br></p><p>與先前的版本相比，Fractal 5進行了<strong>徹底重寫</strong>，現在使用<a href=\"https://blog.gtk.org/2020/12/16/gtk-4-0/?ref=news.itsfoss.com\">GTK 4</a>、<a href=\"https://gitlab.gnome.org/GNOME/libadwaita?ref=news.itsfoss.com\">libadwaita</a>和<a href=\"https://github.com/matrix-org/matrix-rust-sdk?ref=news.itsfoss.com\">Matrix Rust SDK</a>來提供現代外觀、讓人感覺賓至如歸的介面。</p><p>分形現在<strong>可以在各種螢幕上正確縮放</strong>，無論大小；以前版本的使用者應該會發現它很熟悉，不需要太多的學習曲線。</p><p>此外，現在可以<strong>回覆特定訊息</strong>，使用表情符號<strong>對訊息做出反應</strong>，甚至可以在 Fractal 上聊天時<strong>編輯/刪除訊息</strong>。</p><p style=\"text-align:center;\"><img src=\"https://news.itsfoss.com/content/images/2023/11/Fractal_5_c.png\" style=\"max-width:100%;\"><br></p><p style=\"text-align:left;\">您也可以<strong>將目前位置傳送</strong>到任何聊天室，只需確保您的系統支援「位置服務」並已啟用即可。<br></p><p style=\"text-align:center;\"><img src=\"https://news.itsfoss.com/content/images/2023/11/Fractal_5_d.png\" style=\"max-width:100%;\"><br></p><p style=\"text-align:left;\">查看圖像和播放音訊或視訊現在更加直觀，您可以直接從聊天視窗本身查看/播放這些內容。<br></p><p style=\"text-align:center;\"><img src=\"https://news.itsfoss.com/content/images/2023/11/Fractal_5_e.png\" style=\"max-width:100%;\"><br></p><p style=\"text-align:left;\">最後，Fractal 現在<strong>支援登入多個帳戶</strong>，並額外支援<a href=\"https://matrix.org/docs/older/client-sso-guide/?ref=news.itsfoss.com\">單一登入</a>(SSO)。這將使在同一客戶端實例上處理多個帳戶變得毫不費力。<br></p><p style=\"text-align:center;\"><img src=\"https://news.itsfoss.com/content/images/2023/11/Fractal_5_f.png\" style=\"max-width:100%;\"><br></p><p><strong>對於未來的版本</strong>，開發人員計劃添加一些簡潔的功能，例如房間設置、更好的審核工具和通知設定。他們還希望改善事物的可訪問性。</p><p>您可以閱讀<a href=\"https://gitlab.gnome.org/GNOME/fractal/-/releases/5?ref=news.itsfoss.com\">發行說明</a>以了解所有技術細節。</p><p><a href=\"https://news.itsfoss.com/element-x-matrix-2/\">我很高興看到 Fractal 正在積極開發，如果你問我，這個版本使它與正在開發的ElementX</a>更加接近，ElementX 是 Element 訊息應用程式的後繼者。</p>','2023-12-03 20:35:16',5,13),(21,'ATTACK ATTACK !!','<p><img src=\"/editorimages/1701607504722fe013af2-eafc-428f-a8d8-73e32d059bc1fik2kut529a61.webp\" style=\"max-width:100%;\"><br></p>','2023-12-03 20:45:07',5,14),(22,'小米平板7 將與小米14 Ultra 一同發佈，可能還有小米平板7 Ultra？','<p style=\"text-align:center;\"><img src=\"https://qooah.com/wp-content/uploads/2023/12/3678699091992082989029802.jpg\" style=\"max-width:100%;\" width=\"50%\"><br></p><p>在今年4月，小米 13 Ultra 與小米平板 6 系列一同推出。近期消息顯示，小米將會繼續沿用該發佈策略。</p><p style=\"text-align:center;\"><a href=\"https://qooah.com/wp-content/uploads/2023/12/5342342213233215454423334432.png\"><img src=\"https://qooah.com/wp-content/uploads/2023/12/5342342213233215454423334432.png\" alt=\"\"></a></p><p>據博主 @數碼閒聊站 的爆料，小米新款平板將搭載 Snapdragon 8 Gen2 處理器，而新款影像旗艦將搭載 Snapdragon 8 Gen3 處理器。結合目前的爆料，預計分別為小米平板7 系列和小米14 Ultra 手機。</p><p><br></p><p>博主 @數碼閒聊站表示，該平板採用 144Hz 高刷屏，搭載 Snapdragon 8 Gen2 處理器。採用 5000萬像素雙鏡、4揚聲器、67W / 90W 快充雙芯大電池以及更完整的多端新系統。除此之外，小米新款平板還開了 Snapdragon 8 Gen3，很可能會在明年發佈。而用 Snapdragon 8 Gen3 的平板很可能是小米平板7 Ultra？</p>','2023-12-03 20:58:57',5,11);
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
INSERT INTO `human` VALUES (1,'xiaoming','小明','123456','xiaohong@email.com','NULL'),(2,'xiaojun','隔壁老王','admin','xiaojun@email',NULL),(3,'lanruijiang','江哥','admin','364832707@qq.com','NULL'),(5,'Lane','Lane','demo01','demo@demo.com','NEW DESCRIBE'),(6,'demo','Lane','demo','demo@dmeo.com','NULL');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level1Reply`
--

LOCK TABLES `level1Reply` WRITE;
/*!40000 ALTER TABLE `level1Reply` DISABLE KEYS */;
INSERT INTO `level1Reply` VALUES (6,20,5,'01-01',0,0,'2023-11-30 17:35:13'),(32,26,3,'蘋果會不會因為Arm的高額授權費用而轉向開源的Risc-V呢？',5,2,'2023-12-03 20:21:05'),(33,26,5,'開源萬歲！！！',10,4,'2023-12-03 20:24:02'),(34,27,5,'中國應該將重心放到Risc-V中，而不是x86',11,1,'2023-12-03 20:48:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (20,'<p>reply01</p>','2023-11-30 17:35:02',5,2,0,0),(25,'<p><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\"><br></p>','2023-12-03 00:18:17',6,10,9,2),(26,'<p><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">期待Risc-V和GNU/Linux的結合<img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"></p>','2023-12-03 19:59:21',1,10,10,1),(27,'<p>是時候將x86掃入歷史的垃圾堆了！<img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/3c/pcmoren_wu_org.png\" alt=\"[[污]]\" style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"></p>','2023-12-03 20:27:36',5,10,15,2),(28,'<p><img src=\"https://i.ytimg.com/vi/vcAVx8CV2fY/sddefault.jpg\" style=\"max-width:100%;\"><br></p>','2023-12-03 20:47:25',5,10,18,0),(29,'<p>希望Risc-V一統天下</p>','2023-12-03 20:49:44',5,10,0,0),(30,'<p>lol<span style=\"color: var(--bs-body-color); font-family: var(--bs-body-font-family); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">😆</span></p>','2023-12-03 20:50:09',5,10,0,0);
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
INSERT INTO `type` VALUES (11,'Tech'),(12,'AI'),(13,'FOSS'),(14,'Linux'),(15,'AIGC');
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

-- Dump completed on 2023-12-03 21:06:32
