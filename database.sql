CREATE TABLE `userInfo` (
`userid` int(11) NOT NULL,
`groupid` int(11) NOT NULL,
`subgroupid` int(11) NULL,
PRIMARY KEY (`groupid`, `userid`) 
);
CREATE TABLE `Group` (
`groupid` int(11) NOT NULL AUTO_INCREMENT,
`groupname` varchar(255) NOT NULL,
PRIMARY KEY (`groupid`) 
);
CREATE TABLE `Role` (
`roleid` int(11) NOT NULL AUTO_INCREMENT,
`rolename` varchar(255) NOT NULL,
`groupid` int(11) NOT NULL,
PRIMARY KEY (`roleid`) 
);
CREATE TABLE `subGroup` (
`subgroupid` int(11) NOT NULL AUTO_INCREMENT,
`subgroupname` varchar(255) NOT NULL,
`groupid` int(11) NOT NULL,
PRIMARY KEY (`subgroupid`) 
);
CREATE TABLE `message` (
`messageid` int(11) NOT NULL AUTO_INCREMENT,
`messagename` varchar(255) NULL,
`userid` int(11) NOT NULL,
`otheruserid` int(11) NULL,
`uploadtime` datetime NULL,
`subtopicid` int(11) NOT NULL,
PRIMARY KEY (`messageid`) 
);
CREATE TABLE `data` (
`dataid` int(11) NOT NULL AUTO_INCREMENT,
`datatype` varchar(255) NOT NULL,
`dataname` varchar(255) NOT NULL,
`dataurl` varchar(255) NULL,
`messageid` int(11) NOT NULL,
`uploadtime` datetime NULL,
PRIMARY KEY (`dataid`) 
);
CREATE TABLE `subTopic` (
`subtopicid` int(11) NOT NULL AUTO_INCREMENT,
`subtopicname` varchar(255) NOT NULL,
`topicid` int(11) NOT NULL,
PRIMARY KEY (`subtopicid`) 
);
CREATE TABLE `topic` (
`topicid` int(11) NOT NULL AUTO_INCREMENT,
`topicname` varchar(255) NOT NULL,
`subgroupid` int(11) NOT NULL,
PRIMARY KEY (`topicid`) 
);
CREATE TABLE `userDetail` (
`userid` int(11) NOT NULL AUTO_INCREMENT,
`username` varchar(255) NOT NULL,
`email` varchar(255) NOT NULL,
`password` varchar(255) NOT NULL,
`telephone` varchar(255) NULL,
`usertype` varchar(255) NULL,
`status` varchar(255) NULL,
`secure` varchar(255) NULL,
PRIMARY KEY (`userid`) 
);

ALTER TABLE `data` ADD CONSTRAINT `fk_data_message_1` FOREIGN KEY (`messageid`) REFERENCES `message` (`messageid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `subGroup` ADD CONSTRAINT `fk_subGroup_Group_1` FOREIGN KEY (`groupid`) REFERENCES `Group` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `userInfo` ADD CONSTRAINT `fk_userInfo_Group_1` FOREIGN KEY (`groupid`) REFERENCES `Group` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `message` ADD CONSTRAINT `fk_message_subTopic_1` FOREIGN KEY (`subtopicid`) REFERENCES `subTopic` (`subtopicid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `subTopic` ADD CONSTRAINT `fk_subTopic_topic_1` FOREIGN KEY (`topicid`) REFERENCES `topic` (`topicid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `topic` ADD CONSTRAINT `fk_topic_subGroup_1` FOREIGN KEY (`subgroupid`) REFERENCES `subGroup` (`subgroupid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `userInfo` ADD CONSTRAINT `fk_userInfo_userDetail_1` FOREIGN KEY (`userid`) REFERENCES `userDetail` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `userInfo` ADD CONSTRAINT `fk_userInfo_subGroup_1` FOREIGN KEY (`subgroupid`) REFERENCES `subGroup` (`subgroupid`);

