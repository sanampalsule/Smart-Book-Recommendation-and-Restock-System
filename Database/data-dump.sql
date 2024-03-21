-- MySQL dump 10.13  Distrib 8.2.0, for macos13 (arm64)
--
-- Host: localhost    Database: BookShop
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `AuthorID` int DEFAULT NULL,
  `Name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Dan Simmons'),(2,'Colleen McCullough'),(3,'Vladimir Nabokov'),(4,'Sylvia Plath'),(5,'David D. Burns'),(6,'Mark Z. Danielewski'),(7,'Walter J. Cobb'),(8,'Geoffrey Miller'),(9,'Jean M. Auel'),(10,'Michael Connelly'),(11,'James A. Michener'),(12,'Laurell K. Hamilton'),(13,'Dean Koontz'),(14,'Robert Ludlum'),(15,'Bryce Courtenay'),(16,'Philippa Gregory'),(17,'Jeffrey Eugenides'),(18,'Victor Hugo'),(19,'James Patterson'),(20,'Ron Chernow'),(21,'Donna Tartt'),(22,'Jeffrey Archer'),(23,'David McCullough'),(24,'Jeffery Deaver'),(25,'Lisa Jackson'),(26,'Andrew Gross'),(27,'Clive Cussler'),(28,'Mark Helprin'),(29,'Susan Carroll'),(30,'Jane Smiley'),(31,'Clive Cussler'),(32,'Clive Barker'),(33,'Craig Dirgo'),(34,'Wilhelm Grimm'),(35,'Gordon Dahlquist'),(36,'Douglas Adams'),(37,'J.D. Salinger'),(38,'J.K. Rowling'),(39,'Jacob Grimm');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `ISBN` double DEFAULT NULL,
  `Title` text,
  `Authors` text,
  `NumPages` int DEFAULT NULL,
  `PublicationDate` text,
  `Publisher` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (9780446359207,'Carrion Comfort','Dan Simmons',884,'10/1/90','Warner Books'),(9780380710829,'The Grass Crown (Masters of Rome  #2)','Colleen McCullough',1104,'7/1/92','Avon'),(9780679729976,'The Stories of Vladimir Nabokov','Vladimir Nabokov',685,'12/9/96','Vintage'),(9780571201150,'Letters Home','Sylvia Plath',502,'1/1/99','Faber & Faber'),(9780452281325,'The Feeling Good Handbook','David D. Burns',729,'10/28/99','Penguin'),(9780385603102,'House of Leaves','Mark Z. Danielewski',705,'3/7/00','Random House'),(9780451527882,'The Hunchback of Notre-Dame','Victor Hugo/Walter J. Cobb',510,'4/10/01','Signet Classics'),(9780385495172,'The Mating Mind: How Sexual Choice Shaped the Evolution of Human Nature','Geoffrey Miller',528,'4/17/01','Anchor Books'),(9780553381665,'The Valley of Horses (Earth\'s Children  #2)','Jean M. Auel',544,'6/25/02','Bantam'),(9781423323235,'The Poet (Jack McEvoy  #1; Harry Bosch Universe  #5)','Michael Connelly',510,'7/1/02','Grand Central Publishing'),(9780375760389,'The Source','James A. Michener',1080,'7/9/02','Random House Trade Paperbacks'),(9780375760372,'Hawaii','James A. Michener',1136,'7/9/02','Dial Press Trade Paperback'),(9780515133875,'Narcissus in Chains (Anita Blake  Vampire Hunter  #10)','Laurell K. Hamilton',644,'9/24/02','Jove'),(9781561796779,'Strangers','Dean Koontz',704,'10/1/02','Berkley'),(9780312982515,'The Sigma Protocol','Robert Ludlum',662,'10/13/02','St. Martin\'s Paperbacks'),(9780670910618,'Matthew Flinders\' Cat','Bryce Courtenay',611,'12/31/02','Viking'),(9780743249294,'Wideacre  (The Wideacre Trilogy  #1)','Philippa Gregory',656,'7/2/03','Washington Square Press'),(9780965045643,'Middlesex','Jeffrey Eugenides',529,'9/16/03','Picador USA'),(9780755300204,'The Jester','James Patterson/Andrew Gross',548,'3/1/04','Headline'),(9781400077304,'Titan: The Life of John D. Rockefeller  Sr.','Ron Chernow',832,'3/30/04','Vintage'),(9781596913233,'The Secret History','Donna Tartt',559,'4/13/04','Vintage'),(9780312997113,'As the Crow Flies','Jeffrey Archer',800,'5/16/04','St. Martin\'s Paperbacks'),(9780743262132,'The Path Between the Seas: The Creation of the Panama Canal  1870-1914','David McCullough',697,'6/1/04','Simon  Schuster'),(9780743437813,'The Vanished Man (Lincoln Rhyme  #5)','Jeffery Deaver',560,'7/1/04','Pocket Books'),(9780821776056,'See How She Dies','Lisa Jackson',510,'8/1/04','Zebra Books'),(9780141010311,'Golden Buddha (Oregon Files  #1)','Clive Cussler/Craig Dirgo',527,'3/24/05','Penguin Books'),(9780521293730,'Winter\'s Tale','Mark Helprin',748,'6/1/05','Mariner Books'),(9780345437976,'The Courtesan (The Dark Queen Saga  #2)','Susan Carroll',560,'7/26/05','Ballantine Books'),(9781400095469,'The Greenlanders','Jane Smiley',608,'9/13/05','Anchor'),(9781416516859,'Deep Six (Dirk Pitt  #7)','Clive Cussler',535,'1/1/06','Pocket Books'),(9780060596385,'Abarat: Days of Magic  Nights of War','Clive Barker',569,'9/26/06','HarperCollins'),(9780517229255,'The Complete Brothers Grimm Fairy Tales','Jacob Grimm/Wilhelm Grimm',680,'10/3/06','Gramercy Books'),(9780385340359,'The Glass Books of the Dream Eaters (Miss Temple  Doctor Svenson  and Cardinal Chang  #1)','Gordon Dahlquist',760,'12/15/06','Bantam Books'),(9780345453747,'The Ultimate Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy  #1-5)','Douglas Adams',815,'4/30/02','Del Rey Books'),(9780316769174,'The Catcher in the Rye','J.D. Salinger',277,'1/30/01','Back Bay Books'),(9780976694007,'Agile Web Development with Rails: A Pragmatic Guide','Dave Thomas/David Heinemeier Hansson/Leon Breedt/Mike Clark/Thomas  Fuchs/Andreas  Schwarz',558,'7/28/05','Pragmatic Bookshelf'),(9780439064866,'Harry Potter and the Chamber of Secrets (Harry Potter  #2)','J.K. Rowling',352,'11/1/03','Bloomsbury Publishing'),(9780439785969,'Harry Potter and the Half-Blood Prince (Harry Potter  #6)','J.K. Rowling',768,'6/23/06','Bloomsbury Publishing'),(9780439655484,'Harry Potter and the Prisoner of Azkaban (Harry Potter  #3)','J.K. Rowling',480,'7/1/08','Bloomsbury Publishing'),(9780747546245,'Harry Potter and the Goblet of Fire (Harry Potter  #4)','J.K. Rowling',636,'7/8/00','Bloomsbury Publishing');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookauthor`
--

DROP TABLE IF EXISTS `bookauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookauthor` (
  `ISBN` double DEFAULT NULL,
  `Author` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookauthor`
--

LOCK TABLES `bookauthor` WRITE;
/*!40000 ALTER TABLE `bookauthor` DISABLE KEYS */;
INSERT INTO `bookauthor` VALUES (9780000000000,'Dan Simmons'),(9780000000000,'Colleen McCullough'),(9780000000000,'Vladimir Nabokov'),(9780000000000,'Sylvia Plath'),(9780000000000,'David D. Burns'),(9780000000000,'Mark Z. Danielewski'),(9780000000000,'Victor Hugo'),(9780000000000,'Geoffrey Miller'),(9780000000000,'Jean M. Auel'),(9780000000000,'Michael Connelly'),(9780000000000,'James A. Michener'),(9780000000000,'James A. Michener'),(9780000000000,'Laurell K. Hamilton'),(9780000000000,'Dean Koontz'),(9780000000000,'Robert Ludlum'),(9780000000000,'Bryce Courtenay'),(9780000000000,'Philippa Gregory'),(9780000000000,'Jeffrey Eugenides'),(9780000000000,'James Patterson/Andrew Gross'),(9780000000000,'Ron Chernow'),(9780000000000,'Donna Tartt'),(9780000000000,'Jeffrey Archer'),(9780000000000,'David McCullough'),(9780000000000,'Jeffery Deaver'),(9780000000000,'Lisa Jackson'),(9780000000000,'Clive Cussler/Craig Dirgo'),(9780000000000,'Mark Helprin'),(9780000000000,'Susan Carroll'),(9780000000000,'Jane Smiley'),(9780000000000,'Clive Cussler'),(9780000000000,'Clive Barker'),(9780000000000,'Jacob Grimm'),(9780000000000,'Gordon Dahlquist'),(9780000000000,'Douglas Adams'),(9780000000000,'J.D. Salinger'),(9780000000000,'Dave Thomas'),(9780000000000,'J.K. Rowling'),(9780000000000,'J.K. Rowling'),(9780000000000,'J.K. Rowling'),(9780000000000,'J.K. Rowling'),(9780000000000,'Wilhelm Grimm'),(9780000000000,'David Heinemeier Hansson'),(9780000000000,'Leon Breedt'),(9780000000000,'Mike Clark'),(9780000000000,'Thomas  Fuchs'),(9780000000000,'Andreas  Schwarz'),(9780000000000,'Walter J. Cobb');
/*!40000 ALTER TABLE `bookauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booksreturn`
--

DROP TABLE IF EXISTS `booksreturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booksreturn` (
  `ReturnID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `BookISBN` double DEFAULT NULL,
  `Date` text,
  `Reason` text,
  `Status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booksreturn`
--

LOCK TABLES `booksreturn` WRITE;
/*!40000 ALTER TABLE `booksreturn` DISABLE KEYS */;
INSERT INTO `booksreturn` VALUES (1,1,9781400000000,'10/18/23','Bought by mistake','Processed'),(2,2,9780310000000,'1/16/23','Didn\'t like the book','Processed'),(3,3,9780740000000,'6/2/23','Bought by mistake','Processed'),(4,4,9780770100000,'6/18/23','Bought by mistake','Pending');
/*!40000 ALTER TABLE `booksreturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` text,
  `PhoneNo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Joe','Scruton','jscruton0@nature.com','936-193-6112'),(2,'Maryrose','Cyphus','mcyphus1@sakura.ne.jp','931-391-5818'),(3,'Simonette','Brownstein','sbrownstein2@chron.com','266-266-4640'),(4,'Paddy','Ismay','pismay3@cbslocal.com','365-880-8115'),(5,'Talyah','Eglinton','teglinton4@angelfire.com','989-397-2845'),(6,'Dame','Garrish','dgarrish5@epa.gov','832-825-1064'),(7,'Abagail','MacCaull','amaccaull6@rakuten.co.jp','746-325-4829'),(8,'Hube','Treherne','htreherne7@uol.com.br','654-611-8260'),(9,'Raleigh','Moncey','rmoncey8@reddit.com','944-681-9709'),(10,'Maxy','Edgeler','medgeler9@amazon.com','169-738-5445'),(11,'Carolus','Buttfield','cbuttfielda@amazon.com','706-409-2409'),(12,'Nan','Burdett','nburdettb@huffingtonpost.com','801-519-4752'),(13,'Kearney','Furnell','kfurnellc@sbwire.com','135-717-4055'),(14,'Noellyn','Stout','nstoutd@blog.com','103-303-2150'),(15,'Biddy','Stanlick','bstanlicke@zimbio.com','693-187-5767'),(16,'Kevin','Goreway','kgorewayf@yahoo.com','872-864-2791'),(17,'Colin','Smissen','csmisseng@domainmarket.com','228-758-0285'),(18,'Geneva','Slides','gslidesh@51.la','789-907-7983'),(19,'Lamont','Eltringham','leltringhami@geocities.com','972-471-9396'),(20,'Bev','Cowsby','bcowsbyj@squidoo.com','600-906-0520'),(21,'Paule','Dallender','pdallenderk@sun.com','768-304-7576'),(22,'Emlen','Birley','ebirleyl@alibaba.com','196-652-3225'),(23,'Tallie','Kneale','tknealem@independent.co.uk','567-637-8935'),(24,'Derril','Twell','dtwelln@techcrunch.com','328-853-7882'),(25,'Adham','Polden','apoldeno@berkeley.edu','794-479-5584'),(26,'Newton','Wattingham','nwattinghamp@ca.gov','950-840-5159'),(27,'Hyman','McMahon','hmcmahonq@techcrunch.com','896-833-3316'),(28,'Ilyssa','Hanhart','ihanhartr@livejournal.com','761-132-0147'),(29,'Jourdain','Crocken','jcrockens@admin.ch','771-162-2631'),(30,'Erv','Staines','estainest@cdbaby.com','773-713-0852'),(31,'Jan','Negro','jnegrou@oaic.gov.au','711-898-5098'),(32,'Bunnie','Whatsize','bwhatsizev@fastcompany.com','710-378-4509'),(33,'Page','Buckenhill','pbuckenhillw@cafepress.com','841-743-9976'),(34,'Katya','Ferreo','kferreox@fda.gov','622-864-7477'),(35,'Dede','Priestland','dpriestlandy@springer.com','591-577-9125'),(36,'Amandi','Brockhurst','abrockhurstz@sfgate.com','843-261-6627'),(37,'Demott','Power','dpower10@cornell.edu','244-571-6360'),(38,'Janaye','Ives','jives11@dion.ne.jp','885-444-7111'),(39,'Duffie','Pirri','dpirri12@virginia.edu','210-555-8329'),(40,'Sandy','Bulley','sbulley13@mysql.com','493-461-6416'),(41,'Josey','Stampe','jstampe14@mlb.com','635-803-9908'),(42,'Reginauld','Arstall','rarstall15@paypal.com','874-315-2634'),(43,'Emmanuel','Vampouille','evampouille16@ted.com','989-476-6318'),(44,'Anderea','Hasely','ahasely17@ask.com','767-273-8096'),(45,'Andres','Shoemark','ashoemark18@smugmug.com','721-459-9841'),(46,'Madelin','Roughley','mroughley19@yolasite.com','871-667-8903'),(47,'Ebeneser','Normand','enormand1a@netlog.com','769-580-5932'),(48,'Freeland','Carden','fcarden1b@youku.com','186-181-1506'),(49,'Rafi','Dykes','rdykes1c@artisteer.com','510-826-8118'),(50,'Brit','Goodhall','bgoodhall1d@bloomberg.com','885-544-8870');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraddress`
--

DROP TABLE IF EXISTS `customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddress` (
  `CustomerID` int DEFAULT NULL,
  `AddressLine1` text,
  `AddressLine2` text,
  `City` text,
  `State` text,
  `ZipCode` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddress`
--

LOCK TABLES `customeraddress` WRITE;
/*!40000 ALTER TABLE `customeraddress` DISABLE KEYS */;
INSERT INTO `customeraddress` VALUES (1,'6334 Lotheville Drive','Apt 727','Boston','Massachusetts',92186),(2,'2 Bluestem Court','Room 794','Staten Island','New York',94028),(3,'3307 Green Center','PO Box 99119','New York City','New York',51607),(4,'381 Clarendon Way','PO Box 12017','Boston','Massachusetts',77629),(5,'426 Moland Road','PO Box 98782','Great Neck','New York',92606),(6,'5 Center Crossing','Room 1049','Newton','Massachusetts',5678),(7,'912 Brown Road','Apt 947','New York City','New York',15247),(8,'1 Pennsylvania Hill','Apt 1290','Johnstown','Pennsylvania',98126),(9,'2774 Meadow Vale Crossing','Apt 500','New Bedford','Massachusetts',70353),(10,'6 Gateway Center','Room 935','Mc Keesport','Pennsylvania',95313),(11,'085 Fordem Plaza','Suite 69','Rochester','New York',28025),(12,'5749 Goodland Circle','PO Box 3134','New York City','New York',2978),(13,'0 Esch Park','Apt 312','Albany','New York',36007),(14,'29213 Holmberg Court','PO Box 18739','Flint','Michigan',6911),(15,'12236 Pankratz Hill','Suite 76','Albany','New York',43886),(16,'80 Lake View Lane','4th Floor','Farmington','Michigan',18369),(17,'667 Monument Way','Suite 60','Saginaw','Michigan',64563),(18,'72081 Fuller Junction','Suite 81','Brooklyn','New York',12399),(19,'975 Hazelcrest Court','PO Box 39501','Boston','Massachusetts',41473),(20,'068 Milwaukee Trail','Suite 46','Detroit','Michigan',55960),(21,'52 Sullivan Junction','2nd Floor','Watertown','Massachusetts',56477),(22,'33194 Dottie Trail','Room 1573','Boston','Massachusetts',34813),(23,'62 Erie Plaza','PO Box 65447','Buffalo','New York',69743),(24,'81164 Arrowood Terrace','PO Box 80786','Brooklyn','New York',38981),(25,'868 Forest Trail','4th Floor','Albany','New York',21185),(26,'27 Stone Corner Park','Suite 29','New York City','New York',75777),(27,'0 Mallory Lane','PO Box 11920','Albany','New York',99872),(28,'9074 Rowland Alley','Suite 87','Danbury','Connecticut',43722),(29,'45390 Riverside Point','PO Box 64125','Lansing','Michigan',58671),(30,'6 Weeping Birch Trail','Apt 1876','Hartford','Connecticut',61264),(31,'5333 Londonderry Center','Apt 1168','Albany','New York',45848),(32,'4645 Ridgeway Center','4th Floor','Philadelphia','Pennsylvania',92129),(33,'50280 Elka Terrace','Room 117','Grand Rapids','Michigan',59623),(34,'821 Towne Pass','Apt 332','Springfield','Massachusetts',88901),(35,'0 Roth Road','PO Box 9861','Detroit','Michigan',77244),(36,'56477 Corben Terrace','Apt 1075','Grand Rapids','Michigan',19958),(37,'32 Messerschmidt Crossing','Suite 72','Springfield','Massachusetts',27662),(38,'202 Everett Hill','Apt 814','Stamford','Connecticut',26503),(39,'98 Miller Trail','Room 209','Norwalk','Connecticut',56050),(40,'3 3rd Way','PO Box 77224','Rochester','New York',31707),(41,'7 Havey Alley','PO Box 43697','Dearborn','Michigan',44510),(42,'3 Dorton Center','9th Floor','Grand Rapids','Michigan',81664),(43,'92 Texas Circle','Suite 66','Staten Island','New York',27067),(44,'645 Lotheville Plaza','Suite 32','Hartford','Connecticut',91581),(45,'66 Granby Drive','20th Floor','Brooklyn','New York',433),(46,'71151 Monica Circle','Room 696','New York City','New York',45382),(47,'7574 Summerview Park','Room 1327','Pittsburgh','Pennsylvania',92548),(48,'1119 Forest Dale Court','Apt 1040','Albany','New York',99011),(49,'70 Burrows Point','Suite 100','Erie','Pennsylvania',14000),(50,'0 Lawn Way','Room 1534','Hartford','Connecticut',85382);
/*!40000 ALTER TABLE `customeraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discountoffer`
--

DROP TABLE IF EXISTS `discountoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discountoffer` (
  `OfferID` int DEFAULT NULL,
  `BookISBN` double DEFAULT NULL,
  `StartDate` text,
  `EndDate` text,
  `Discount%` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discountoffer`
--

LOCK TABLES `discountoffer` WRITE;
/*!40000 ALTER TABLE `discountoffer` DISABLE KEYS */;
INSERT INTO `discountoffer` VALUES (1,9780446359207,'9/16/23','4/1/23',11),(2,9780380710829,'7/17/23','6/16/23',5),(3,9780679729976,'11/12/23','9/7/23',14),(4,9780571201150,'3/31/23','2/9/23',12),(5,9780452281325,'4/17/23','3/24/23',19),(6,9780385603102,'1/22/23','7/25/23',14),(7,9780451527882,'7/15/23','5/30/23',20),(8,9780385495172,'3/19/23','10/26/23',10),(9,9780553381665,'1/31/23','10/11/23',15),(10,9780375760372,'11/13/23','7/18/23',20);
/*!40000 ALTER TABLE `discountoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int DEFAULT NULL,
  `FName` text,
  `LName` text,
  `DoB` text,
  `Salary` text,
  `Email` text,
  `PhoneNo` text,
  `JoiningDate` text,
  `JobRole` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Libbie','Sergean','11/11/75','$7,382.61 ','lsergean0@blogger.com','989-567-3031','1/23/12','Salesperson'),(2,'Adeline','Bendan','12/9/22','$8,261.97 ','abendan1@ucsd.edu','592-424-1618','2/6/15','Salesperson'),(3,'Shaylah','Knudsen','6/9/99','$7,529.10 ','sknudsen2@ovh.net','898-537-6304','1/24/16','Salesperson'),(4,'Barbee','Brandham','1/1/13','$9,903.27 ','bbrandham3@parallels.com','794-625-4574','3/18/23','Salesperson'),(5,'Marilee','Ludron','3/6/10','$9,176.01 ','mludron4@toplist.cz','137-858-9011','9/17/12','Salesperson'),(6,'Jarib','Roj','5/15/21','$7,015.44 ','jroj5@google.de','717-635-8626','7/23/17','Salesperson'),(7,'Lesley','Readshaw','3/26/86','$8,134.69 ','lreadshaw6@g.co','428-777-0924','2/3/11','Salesperson'),(8,'Blondell','Dautry','2/8/10','$7,513.66 ','bdautry7@taobao.com','143-687-6433','4/14/14','Salesperson'),(9,'Hew','Bolger','6/25/92','$9,607.19 ','hbolger8@ft.com','191-908-4931','11/8/18','Manager'),(10,'Suzette','Falvey','12/25/95','$7,820.63 ','sfalvey9@hhs.gov','595-118-7946','9/1/13','Cashier');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeschedule`
--

DROP TABLE IF EXISTS `employeeschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeschedule` (
  `ScheduleID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Date` text,
  `ShiftStart` text,
  `ShiftEnd` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeschedule`
--

LOCK TABLES `employeeschedule` WRITE;
/*!40000 ALTER TABLE `employeeschedule` DISABLE KEYS */;
INSERT INTO `employeeschedule` VALUES (1,1,'12/10/23','9:00 AM','5:00 PM'),(2,2,'12/10/23','9:00 AM','5:00 PM'),(3,3,'12/10/23','9:00 AM','5:00 PM'),(4,4,'12/10/23','9:00 AM','5:00 PM'),(5,5,'12/10/23','9:00 AM','5:00 PM'),(6,6,'12/10/23','10:00 AM','6:00 PM'),(7,7,'12/10/23','10:00 AM','6:00 PM'),(8,8,'12/10/23','10:00 AM','6:00 PM'),(9,9,'12/10/23','10:00 AM','6:00 PM'),(10,10,'12/10/23','10:00 AM','6:00 PM'),(11,1,'12/11/23','10:00 AM','6:00 PM'),(12,2,'12/11/23','10:00 AM','6:00 PM'),(13,3,'12/11/23','10:00 AM','6:00 PM'),(14,4,'12/11/23','10:00 AM','6:00 PM'),(15,5,'12/11/23','10:00 AM','6:00 PM'),(16,6,'12/11/23','9:00 AM','5:00 PM'),(17,7,'12/11/23','9:00 AM','5:00 PM'),(18,8,'12/11/23','9:00 AM','5:00 PM'),(19,9,'12/11/23','9:00 AM','5:00 PM'),(20,10,'12/11/23','9:00 AM','5:00 PM');
/*!40000 ALTER TABLE `employeeschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offlinepurchase`
--

DROP TABLE IF EXISTS `offlinepurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offlinepurchase` (
  `PurchaseID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `ShopID` int DEFAULT NULL,
  `Time` text,
  `Date` text,
  `BasePrice` text,
  `Tax` text,
  `Discount` text,
  `TotalPrice` text,
  `PaymentMethodID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offlinepurchase`
--

LOCK TABLES `offlinepurchase` WRITE;
/*!40000 ALTER TABLE `offlinepurchase` DISABLE KEYS */;
INSERT INTO `offlinepurchase` VALUES (1,1,1,'5:48 PM','9/4/23','$50.18 ','$10.09 ','$15.84 ','$76.11 ',1),(2,2,1,'11:11 AM','11/22/23','$147.89 ','$23.64 ','$10.63 ','$182.16 ',1),(3,3,1,'5:33 PM','3/13/23','$141.69 ','$12.21 ','$19.37 ','$173.27 ',2),(4,4,1,'4:01 PM','8/13/23','$120.93 ','$25.78 ','$18.64 ','$165.35 ',1),(5,5,1,'12:56 PM','11/21/23','$63.57 ','$18.71 ','$12.26 ','$94.54 ',1),(6,6,1,'2:19 PM','1/2/23','$34.32 ','$20.39 ','$19.71 ','$74.42 ',1),(7,7,1,'2:45 PM','4/11/23','$167.41 ','$11.79 ','$13.13 ','$192.33 ',1),(8,8,1,'11:27 AM','8/17/23','$109.11 ','$26.61 ','$16.33 ','$152.05 ',2),(9,9,1,'3:59 PM','8/21/23','$90.18 ','$27.78 ','$18.40 ','$136.36 ',2),(10,10,1,'12:31 PM','1/13/23','$95.83 ','$13.53 ','$16.14 ','$125.50 ',2);
/*!40000 ALTER TABLE `offlinepurchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlinepurchase`
--

DROP TABLE IF EXISTS `onlinepurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlinepurchase` (
  `PurchaseID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `Time` text,
  `Date` text,
  `ShippingDate` text,
  `Status` text,
  `BasePrice` text,
  `Tax` text,
  `Discount` text,
  `TotalPrice` text,
  `PaymentMethodID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlinepurchase`
--

LOCK TABLES `onlinepurchase` WRITE;
/*!40000 ALTER TABLE `onlinepurchase` DISABLE KEYS */;
INSERT INTO `onlinepurchase` VALUES (1,1,'5:48 PM','9/4/23','2/1/23','Delivered','$50.18 ','$10.09 ','$15.84 ','$76.11 ',1),(2,2,'11:11 AM','11/22/23','5/11/23','Shipped','$147.89 ','$23.64 ','$10.63 ','$182.16 ',1),(3,3,'5:33 PM','3/13/23','6/29/23','Delivered','$141.69 ','$12.21 ','$19.37 ','$173.27 ',2),(4,4,'4:01 PM','8/13/23','5/27/23','Delivered','$120.93 ','$25.78 ','$18.64 ','$165.35 ',1),(5,5,'12:56 PM','11/21/23','3/4/23','Shipped','$63.57 ','$18.71 ','$12.26 ','$94.54 ',1),(6,6,'2:19 PM','1/2/23','8/19/23','Shipped','$34.32 ','$20.39 ','$19.71 ','$74.42 ',1),(7,7,'2:45 PM','4/11/23','5/28/23','Shipped','$167.41 ','$11.79 ','$13.13 ','$192.33 ',1),(8,8,'11:27 AM','8/17/23','3/26/23','Delivered','$109.11 ','$26.61 ','$16.33 ','$152.05 ',2),(9,9,'3:59 PM','8/21/23','1/3/23','Delivered','$90.18 ','$27.78 ','$18.40 ','$136.36 ',2),(10,10,'12:31 PM','1/13/23','10/7/23','Shipped','$95.83 ','$13.53 ','$16.14 ','$125.50 ',2);
/*!40000 ALTER TABLE `onlinepurchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethod` (
  `PaymentID` text,
  `Name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES ('PaymentID','Name'),('1','Cash'),('2','Card');
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `CompanyID` int DEFAULT NULL,
  `Name` text,
  `PhoneNo` text,
  `Email` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Anchor','948-723-6407','ebeig0@zimbio.com'),(2,'Anchor Books','136-356-4517','wyarranton1@alibaba.com'),(3,'Avon','457-555-7515','ccorton2@desdev.cn'),(4,'Back Bay Books','427-425-3733','eminico3@discovery.com'),(5,'Ballantine Books','229-969-6172','ddakhno4@epa.gov'),(6,'Bantam','552-732-1919','cridoutt5@usda.gov'),(7,'Bantam Books','432-221-3043','dmonini6@nba.com'),(8,'Berkley','884-807-0449','dludye7@wikipedia.org'),(9,'Bloomsbury Publishing','939-582-3700','tpomphrett8@ask.com'),(10,'Del Rey Books','942-222-5117','tthicking9@imdb.com'),(11,'Dial Press Trade Paperback','721-568-4644','kmazeya@webs.com'),(12,'Faber & Faber','217-185-1106','wteanbyb@weather.com'),(13,'Gramercy Books','259-474-6331','cyegorshinc@netvibes.com'),(14,'Grand Central Publishing','276-451-1640','aeckfordd@blogs.com'),(15,'HarperCollins','202-292-3410','zmcneile@multiply.com'),(16,'Headline','124-243-9174','ddomneyf@youtube.com'),(17,'Jove','914-938-2424','amaccartneyg@sakura.ne.jp'),(18,'Mariner Books','815-956-9775','mgageh@blogs.com'),(19,'Penguin','262-277-2700','sdangli@elpais.com'),(20,'Penguin Books','566-241-3432','dsteptoj@weebly.com'),(21,'Picador USA','619-441-5902','kcoathamk@dot.gov'),(22,'Pocket Books','883-587-3541','iduffilll@symantec.com'),(23,'Pragmatic Bookshelf','707-388-3058','mhendrixm@salon.com'),(24,'Random House','246-875-9166','wsweedn@msu.edu'),(25,'Random House Trade Paperbacks','265-886-6905','jalldritto@noaa.gov'),(26,'Signet Classics','916-425-1550','ewhybornep@pbs.org'),(27,'Simon  Schuster','854-824-8635','ccaganq@studiopress.com'),(28,'St. Martin\'s Paperbacks','393-325-1007','wmcsperrinr@blinklist.com'),(29,'Viking','610-462-9914','lwebermanns@stanford.edu'),(30,'Vintage','919-393-0111','ebalselliet@techcrunch.com'),(31,'Warner Books','556-380-1966','bhaddenu@hexun.com'),(32,'Washington Square Press','957-456-7639','fkilkennyv@guardian.co.uk'),(33,'Zebra Books','417-627-3067','lpenningsw@ucoz.com');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendation` (
  `RecommendationID` text,
  `CustomerID` text,
  `RecommededBookISBN1` text,
  `RecommededBookISBN2` text,
  `RecommededBookISBN3` text,
  `RecommededBookISBN4` text,
  `RecommededBookISBN5` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation`
--

LOCK TABLES `recommendation` WRITE;
/*!40000 ALTER TABLE `recommendation` DISABLE KEYS */;
INSERT INTO `recommendation` VALUES ('1','1','9780571201150','9780515133875','9780743437813','9780521293730','9780743249294'),('2','2','9780670910618','9780060596385','9780446359207','9780439064866','9780747546245'),('','','','','','',''),('','','','','','',''),('','','','','','','');
/*!40000 ALTER TABLE `recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restockorder`
--

DROP TABLE IF EXISTS `restockorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restockorder` (
  `OrderID` int DEFAULT NULL,
  `PlacedByID` int DEFAULT NULL,
  `BookISBN` double DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `DatePlacedOn` text,
  `DeliveryDate` text,
  `Status` text,
  `ShippingCost` text,
  `Taxes` text,
  `TotalCost` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restockorder`
--

LOCK TABLES `restockorder` WRITE;
/*!40000 ALTER TABLE `restockorder` DISABLE KEYS */;
INSERT INTO `restockorder` VALUES (1,1,9780450000000,2,'8/26/23','3/28/23','Pending','$57.23 ','$186.53 ','$8,443.95 '),(2,2,9780380000000,5,'12/8/23','7/7/23','Pending','$75.82 ','$195.96 ','$9,032.33 '),(3,3,9780680000000,4,'9/17/23','7/26/23','Fulfilled','$72.29 ','$113.42 ','$8,819.34 '),(4,4,9780570000000,4,'11/25/23','10/14/23','Fulfilled','$85.05 ','$174.10 ','$9,767.27 '),(5,5,9780450000000,2,'3/3/23','6/10/23','Pending','$97.71 ','$175.05 ','$8,026.31 '),(6,6,9780390000000,4,'4/25/23','2/1/23','Fulfilled','$64.93 ','$198.49 ','$7,087.65 '),(7,7,9780450000000,1,'2/4/23','12/2/23','Pending','$66.37 ','$134.10 ','$7,253.49 '),(8,8,9780390000000,3,'6/28/23','12/14/22','Pending','$89.43 ','$161.75 ','$6,719.74 '),(9,9,9780550000000,3,'9/29/23','9/9/23','Fulfilled','$64.73 ','$172.04 ','$6,729.51 '),(10,10,9780450000000,4,'2/20/23','5/16/23','Fulfilled','$99.80 ','$140.72 ','$6,752.50 ');
/*!40000 ALTER TABLE `restockorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `BookISBN` double DEFAULT NULL,
  `BookName` text,
  `NoInStock` int DEFAULT NULL,
  `UnitPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (9780446359207,'Carrion Comfort',4,26.14),(9780380710829,'The Grass Crown (Masters of Rome  #2)',8,63.24),(9780679729976,'The Stories of Vladimir Nabokov',13,15.3),(9780571201150,'Letters Home',15,43.07),(9780452281325,'The Feeling Good Handbook',22,97.84),(9780385603102,'House of Leaves',5,79.24),(9780451527882,'The Hunchback of Notre-Dame',14,13.89),(9780385495172,'The Mating Mind: How Sexual Choice Shaped the Evolution of Human Nature',16,53.89),(9780553381665,'The Valley of Horses (Earth\'s Children  #2)',20,60.09),(9781423323235,'The Poet (Jack McEvoy  #1; Harry Bosch Universe  #5)',6,24.65),(9780375760389,'The Source',18,66.1),(9780375760372,'Hawaii',2,61.45),(9780515133875,'Narcissus in Chains (Anita Blake  Vampire Hunter  #10)',3,58.75),(9781561796779,'Strangers',7,82.66),(9780312982515,'The Sigma Protocol',10,58.84),(9780670910618,'Matthew Flinders\' Cat',11,36.5),(9780743249294,'Wideacre  (The Wideacre Trilogy  #1)',1,75.26),(9780965045643,'Middlesex',9,21.13),(9780755300204,'The Jester',12,96.34),(9781400077304,'Titan: The Life of John D. Rockefeller  Sr.',17,84.02),(9781596913233,'The Secret History',19,94.3),(9780312997113,'As the Crow Flies',21,54.72),(9780743262132,'The Path Between the Seas: The Creation of the Panama Canal  1870-1914',24,82.9),(9780743437813,'The Vanished Man (Lincoln Rhyme  #5)',26,39.05),(9780821776056,'See How She Dies',41,7.76),(9780141010311,'Golden Buddha (Oregon Files  #1)',25,18.87),(9780521293730,'Winter\'s Tale',29,43.19),(9780345437976,'The Courtesan (The Dark Queen Saga  #2)',33,17.33),(9781400095469,'The Greenlanders',36,37.3),(9781416516859,'Deep Six (Dirk Pitt  #7)',37,45.57),(9780060596385,'Abarat: Days of Magic  Nights of War',38,79.36),(9780517229255,'The Complete Brothers Grimm Fairy Tales',39,55.47),(9780385340359,'The Glass Books of the Dream Eaters (Miss Temple  Doctor Svenson  and Cardinal Chang  #1)',43,44.15),(9780345453747,'The Ultimate Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy  #1-5)',27,100.59),(9780316769174,'The Catcher in the Rye',42,47.26),(9780976694007,'Agile Web Development with Rails: A Pragmatic Guide',44,72.22),(9780439064866,'Harry Potter and the Chamber of Secrets (Harry Potter  #2)',32,41.34),(9780439785969,'Harry Potter and the Half-Blood Prince (Harry Potter  #6)',34,20.58),(9780439655484,'Harry Potter and the Prisoner of Azkaban (Harry Potter  #3)',23,87.68),(9780747546245,'Harry Potter and the Goblet of Fire (Harry Potter  #4)',28,79.54);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierID` int DEFAULT NULL,
  `Name` text,
  `PhoneNo` text,
  `Email` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Paperback Paradise','768-144-0882','bcusworth0@baidu.com'),(2,'Novel Nook','999-945-5049','aleamy1@issuu.com'),(3,'Novel Nook','117-719-1222','kstitch2@homestead.com'),(4,'Book World','966-420-1268','bjarrett3@ucoz.ru'),(5,'Paperback Paradise','549-166-5337','jrosten4@meetup.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 14:37:10
