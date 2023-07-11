CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movies`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `reference_id` int unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int unsigned NOT NULL,
  `movie_title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `poster_url` text NOT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,4993,'The Lord of the Rings: The Fellowship of the Ring (2001)','Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg\r'),(2,6539,'Pirates of the Caribbean: The Curse of the Black Pearl (2003)','Jack Sparrow, a freewheeling 18th-century pirate, quarrels with a rival pirate bent on pillaging Port Royal. When the governor\'s daughter is kidnapped, Sparrow decides to help the girl\'s love save her.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/z8onk7LV9Mmw6zKz4hT6pzzvmvl.jpg\r'),(3,858,'The Godfather (1972)','Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/3bhkrj58Vtu7enYsRolD1fZdja1.jpg\r'),(4,1213,'Goodfellas (1990)','The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/zDWWXoekRzssD20LdG7b7nAv1pD.jpg\r'),(5,1221,'Godfather: Part II, The (1974)','In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/bMadFzhjy9T7R8J48QGq1ngWNAK.jpg\r'),(6,47,'Seven (a.k.a. Se7en) (1995)','Two homicide detectives are on a desperate hunt for a serial killer whose crimes are based on the \"seven deadly sins\" in this dark and haunting film that takes viewers from the tortured remains of one victim to the next. The seasoned Det. Sommerset researches each sin in an effort to get inside the killer\'s mind, while his novice partner, Mills, scoffs at his efforts to unravel the case.\n','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6yoghtyTpznpBik8EngEmJskVUO.jpg\r'),(7,1580,'Men in Black (a.k.a. MIB) (1997)','After a police chase with an otherworldly being, a New York City cop is recruited as an agent in a top-secret organization established to monitor and police alien activity on Earth: the Men in Black. Agent Kay and new recruit Agent Jay find themselves in the middle of a deadly plot by an intergalactic terrorist who has arrived on Earth to assassinate two ambassadors from opposing galaxies.\n ','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uLOmOF5IzWoyrgIF5MfUnh5pa1X.jpg \r'),(8,2028,'Saving Private Ryan (1998)','As U.S. troops storm the beaches of Normandy, three brothers lie dead on the battlefield, with a fourth trapped behind enemy lines. Ranger captain John Miller and seven men are tasked with penetrating German-held territory and bringing the boy home.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/uqx37cS8cpHg8U35f9U5IBlrCV3.jpg\r'),(9,2959,'Fight Club (1999)','A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg\r'),(10,5618,'Spirited Away (Sen to Chihiro no kamikakushi) (2001)','A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg\r'),(11,71520,'Invention of Lying, The (2009)','Set in a world where the concept of lying doesn\'t exist, a loser changes his lot when he invents lying and uses it to get ahead.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/clP8tDZeM9jgnqmu4VBClBDpLtS.jpg\r'),(12,89753,'Tinker Tailor Soldier Spy (2011)','In the bleak days of the Cold War, espionage veteran George Smiley is forced from semi-retirement to uncover a Soviet mole within his former colleagues at the heart of MI6.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/bsL9UZPCmQKgl88wXwMulKuw9Jh.jpg\r'),(13,62849,'RocknRolla (2008)','When a Russian mobster sets up a real estate scam that generates millions of pounds, various members of London\'s criminal underworld pursue their share of the fortune. Various shady characters, including Mr One-Two, Stella the accountant, and Johnny Quid, a druggie rock-star, try to claim their slice.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/i7eyngqjdvKB7NvrWtCjjTNNq8N.jpg\r'),(14,119141,'The Interview (2014)','Dave Skylark and his producer Aaron Rapaport run the celebrity tabloid show \"Skylark Tonight\". When they land an interview with a surprise fan, North Korean dictator Kim Jong-un, they are recruited by the CIA to turn their trip to Pyongyang into an assassination mission.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/tIDC4xT65l7a8qbgg8GvwD5g8c5.jpg\r'),(15,102123,'This Is the End (2013)','While attending a party at James Franco\'s house, Seth Rogen, Jay Baruchel and many other celebrities are faced with the apocalypse.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/7Wdc3etyBJA4432TYtz6n9GQd1c.jpg\r'),(16,33162,'Kingdom of Heaven (2005)','After his wife dies, a blacksmith named Balian is thrust into royalty, political intrigue and bloody holy wars during the Crusades.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/uk55nBEFIQFveIiy9jvLGiVtk4h.jpg\r'),(17,81932,'Fighter, The (2010)','The Ultimate Fighter is an American reality television series and mixed martial arts (MMA) competition produced by the Ultimate Fighting Championship (UFC) and Pilgrim Media Group currently airing on ESPN+. It previously aired for fourteen seasons on Spike TV. The show features professional MMA fighters living together in Las Vegas, Nevada, and follows them as they train and compete against each other for a prized six-figure contract with the UFC. The series debuted on January 17, 2005.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/k3NlkqDeYmKTsx7QIQWjXXo0DeW.jpg\r'),(18,44022,'Ice Age 2: The Meltdown (2006)','Diego, Manny and Sid return in this sequel to the hit animated movie Ice Age. This time around, the deep freeze is over, and the ice-covered earth is starting to melt, which will destroy the trio\'s cherished valley. The impending disaster prompts them to reunite and warn all the other beasts about the desperate situation.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vdluBXie4qDvh0dFX2Fpq8v16it.jpg\r'),(19,115149,'John Wick (2014)','With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg\r'),(20,88163,'Crazy, Stupid, Love. (2011)','Cal Weaver is living the American dream. He has a good job, a beautiful house, great children and a beautiful wife, named Emily. Cal\'s seemingly perfect life unravels, however, when he learns that Emily has been unfaithful and wants a divorce. Over 40 and suddenly single, Cal is adrift in the fickle world of dating. Enter, Jacob Palmer, a self-styled player who takes Cal under his wing and teaches him how to be a hit with the ladies.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/p4RafgAPk558muOjnBMHhMArjS2.jpg\r'),(21,104879,'Prisoners (2013)','Keller Dover faces a parent\'s worst nightmare when his 6-year-old daughter, Anna, and her friend go missing. The only lead is an old motorhome that had been parked on their street. The head of the investigation, Detective Loki, arrests the driver, but a lack of evidence forces Loki to release his only suspect. Dover, knowing that his daughter\'s life is at stake, decides that he has no choice but to take matters into his own hands.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/tuZhZ6biFMr5n9YSVuHOJnNL1uU.jpg\r'),(22,139385,'The Revenant (2015)','In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ji3ecJphATlVgWNY0B0RVXZizdf.jpg\r'),(23,31696,'Constantine (2005)','John Constantine has literally been to Hell and back. When he teams up with a policewoman to solve the mysterious suicide of her twin sister, their investigation takes them through the world of demons and angels that exists beneath the landscape of contemporary Los Angeles.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vPYgvd2MwHlxTamAOjwVQp4qs1W.jpg\r'),(24,98809,'Hobbit: An Unexpected Journey, The (2012)','Bilbo Baggins, a hobbit enjoying his quiet life, is swept into an epic quest by Gandalf the Grey and thirteen dwarves who seek to reclaim their mountain home from Smaug, the dragon.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/yHA9Fc37VmpUA5UncTxxo3rTGVA.jpg\r'),(25,54503,'Superbad (2007)','Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ek8e8txUyUwd2BNqj6lFEerJfbq.jpg\r'),(26,51255,'Hot Fuzz (2007)','As a former London constable, Nicholas Angel finds it difficult to adapt to his new assignment in the sleepy British village of Sandford. Not only does he miss the excitement of the big city, but he also has a well-meaning oaf for a partner. However, when a series of grisly accidents rocks Sandford, Angel smells something rotten in the idyllic village.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/zPib4ukTSdXvHP9pxGkFCe34f3y.jpg\r'),(27,73017,'Sherlock Holmes (2009)','Sherlock Holmes uses his abilities to take on cases by private clients and those that the Scotland Yard are unable to solve, along with his friend Dr. Watson.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/thC0OuUvfGbOcoJ3aY5L4vlO6lA.jpg\r'),(28,116797,'The Imitation Game (2014)','Based on the real life story of legendary cryptanalyst Alan Turing, the film portrays the nail-biting race against time by Turing and his brilliant team of code-breakers at Britain\'s top-secret Government Code and Cypher School at Bletchley Park, during the darkest days of World War II.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/zSqJ1qFq8NXFfi7JeIYMlzyR0dx.jpg\r'),(29,68954,'Up (2009)','Carl Fredricksen spent his entire life dreaming of exploring the globe and experiencing life to its fullest. But at age 78, life seems to have passed him by, until a twist of fate (and a persistent 8-year old Wilderness Explorer named Russell) gives him a new lease on life.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/mFvoEwSfLqbcWwFsDjQebn9bzFe.jpg\r'),(30,109487,'Interstellar (2014)','The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg\r'),(31,4963,'Ocean\'s Eleven (2001)','Less than 24 hours into his parole, charismatic thief Danny Ocean is already rolling out his next plan: In one night, Danny\'s hand-picked crew of specialists will attempt to steal more than $150 million from three Las Vegas casinos. But to score the cash, Danny risks his chances of reconciling with ex-wife, Tess.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/hQQCdZrsHtZyR6NbKH2YyCqd2fR.jpg\r'),(32,6874,'Kill Bill: Vol. 1 (2003)','An assassin is shot by her ruthless employer, Bill, and other members of their assassination circle – but she lives to plot her vengeance.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg\r'),(33,4226,'Memento (2000)','Leonard Shelby is tracking down the man who raped and murdered his wife. The difficulty of locating his wife\'s killer, however, is compounded by the fact that he suffers from a rare, untreatable form of short-term memory loss. Although he can recall details of life before his accident, Leonard cannot remember what happened fifteen minutes ago, where he\'s going, or why.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/yuNs09hvpHVU1cBTCAk9zxsL2oW.jpg\r'),(34,58559,'Dark Knight, The (2008)','Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qJ2tW6WMUDux911r6m7haRef0WH.jpg\r'),(35,296,'Pulp Fiction (1994)','A burger-loving hit man, his philosophical partner, a drug-addled gangster\'s moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg\r'),(36,36529,'Lord of War (2005)','Yuri Orlov is a globetrotting arms dealer and, through some of the deadliest war zones, he struggles to stay one step ahead of a relentless Interpol agent, his business rivals and even some of his customers who include many of the world\'s most notorious dictators. Finally, he must also face his own conscience.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/3MGQD4yXokufNlW1AyRXdiy7ytP.jpg\r'),(37,48780,'Prestige, The (2006)','A mysterious story of two magicians whose intense rivalry leads them on a life-long battle for supremacy -- full of obsession, deceit and jealousy with dangerous and deadly consequences.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/bdN3gXuIZYaJP7ftKK2sU0nPtEA.jpg\r'),(38,48516,'Departed, The (2006)','To take down South Boston\'s Irish Mafia, the police send in one of their own to infiltrate the underworld, not realizing the syndicate has done likewise. While an undercover cop curries favor with the mob kingpin, a career criminal rises through the police ranks. But both sides soon discover there\'s a mole among them.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nT97ifVT2J1yMQmeq20Qblg61T.jpg\r'),(39,7361,'Eternal Sunshine of the Spotless Mind (2004)','Joel Barish, heartbroken that his girlfriend underwent a procedure to erase him from her memory, decides to do the same. However, as he watches his memories of her fade away, he realises that he still loves her, and may be too late to correct his mistake.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5MwkWH9tYHv3mV9OdYTMR5qreIz.jpg\r'),(40,79132,'Inception (2010)','Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person\'s idea into a target\'s subconscious.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/edv5CZvWj09upOsy2Y6IwDhK8bt.jpg\r'),(41,5952,'Lord of the Rings: The Two Towers, The (2002)','Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg\r'),(42,7153,'Lord of the Rings: The Return of the King, The (2003)','Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron\'s forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord\'s realm.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg\r'),(43,45722,'Pirates of the Caribbean: Dead Man\'s Chest (2006)','Captain Jack Sparrow works his way out of a blood debt with the ghostly Davy Jones to avoid eternal damnation.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/uXEqmloGyP7UXAiphJUu2v2pcuE.jpg\r'),(44,2571,'Matrix, The (1999)','Plagued by strange memories, Neo\'s life takes an unexpected turn when he finds himself back inside the Matrix.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8c4a8kE7PizaGQQnditMmI1xbRp.jpg\r'),(45,318,'Shawshank Redemption, The (1994)','Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.','https://www.themoviedb.org/t/p/w300_and_h450_bestv2/lyQBXzOQSuE59IsHyhrp0qIiPAz.jpg\r');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12  2:41:53