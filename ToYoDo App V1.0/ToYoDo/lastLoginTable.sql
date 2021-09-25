--
-- Table structure for table `last_login_details`
--

DROP TABLE IF EXISTS `last_login_details`;
CREATE TABLE IF NOT EXISTS `last_login_details` (
  `login_id` varchar(50) NOT NULL,
  `logintime` datetime NOT NULL,
  PRIMARY KEY (`login_id`)
)
