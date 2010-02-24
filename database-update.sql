ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_input` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_input_prev` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_input_delta` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_input_rate` int(11) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_output` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_output_prev` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_output_delta` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedBytes_output_rate` int(11) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_input` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_input_prev` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_input_delta` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_input_rate` int(11) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_output` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_output_prev` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_output_delta` bigint(20) default NULL;
ALTER TABLE `mac_accounting` ADD `cipMacHCSwitchedPkts_output_rate` int(11) default NULL;
ALTER TABLE `mac_accounting` ADD `poll_time` int(11) default NULL;
ALTER TABLE `mac_accounting` ADD `poll_prev` int(11) default NULL;
ALTER TABLE `mac_accounting` ADD `poll_period` int(11) default NULL;
ALTER TABLE `interfaces` ADD `ifInUcastPkts` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInUcastPkts_prev` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInUcastPkts_delta` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInUcastPkts_rate` int(11) default NULL;
ALTER TABLE `interfaces` ADD `ifOutUcastPkts` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutUcastPkts_prev` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutUcastPkts_delta` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutUcastPkts_rate` int(11) default NULL;
ALTER TABLE `interfaces` ADD `ifInErrors` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInErrors_prev` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInErrors_delta` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInErrors_rate` int(11) default NULL;
ALTER TABLE `interfaces` ADD `ifOutErrors` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutErrors_prev` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutErrors_delta` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutErrors_rate` int(11) default NULL;
ALTER TABLE `interfaces` ADD `ifInOctets` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInOctets_prev` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInOctets_delta` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifInOctets_rate` int(11) default NULL;
ALTER TABLE `interfaces` ADD `ifOutOctets` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutOctets_prev` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutOctets_delta` bigint(20) default NULL;
ALTER TABLE `interfaces` ADD `ifOutOctets_rate` int(11) default NULL;
ALTER TABLE `interfaces` ADD `poll_time` int(11) default NULL;
ALTER TABLE `interfaces` ADD `poll_prev` int(11) default NULL;
ALTER TABLE `interfaces` ADD `poll_period` int(11) default NULL;
ALTER TABLE `interfaces` ADD `pagpOperationMode` VARCHAR( 32 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpPortState` VARCHAR( 16 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpPartnerDeviceId` VARCHAR( 48 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpPartnerLearnMethod` VARCHAR( 16 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpPartnerIfIndex` INT NULL ;
ALTER TABLE `interfaces` ADD `pagpPartnerGroupIfIndex` INT NULL ;
ALTER TABLE `interfaces` ADD `pagpPartnerDeviceName` VARCHAR( 128 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpEthcOperationMode` VARCHAR( 16 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpDeviceId` VARCHAR( 48 ) NULL ;
ALTER TABLE `interfaces` ADD `pagpGroupIfIndex` INT NULL ;
ALTER TABLE `interfaces` ADD `ifPromiscuousMode` VARCHAR( 12 )  NULL DEFAULT NULL AFTER `ifSpeed`;
ALTER TABLE `interfaces` ADD `ifConnectorPresent` VARCHAR( 12 ) NULL DEFAULT NULL AFTER `ifSpeed`;
ALTER TABLE `interfaces` ADD `ifName` VARCHAR( 64 )  NULL DEFAULT NULL AFTER `ifDescr`;
ALTER TABLE `interfaces` ADD `portName` VARCHAR( 128 ) NULL DEFAULT NULL AFTER `ifName`;
ALTER TABLE `interfaces` ADD `ifHighSpeed` BIGINT ( 20 ) NULL DEFAULT NULL AFTER `ifSpeed`;
ALTER TABLE `interfaces` DROP `in_rate`;
ALTER TABLE `interfaces` DROP `out_rate`;
ALTER TABLE `interfaces` DROP `in_errors`;
ALTER TABLE `interfaces` DROP `out_errors`;
CREATE TABLE IF NOT EXISTS `cmpMemPool` (  `cmp_id` int(11) NOT NULL auto_increment,  `Index` varchar(8) NOT NULL,  `cmpName` varchar(32) NOT NULL,  `cmpValid` varchar(8) NOT NULL,  `device_id` int(11) NOT NULL,  `cmpUsed` int(11) NOT NULL,  `cmpFree` int(11) NOT NULL,  `cmpLargestFree` int(11) NOT NULL,  `cmpAlternate` tinyint(4) default NULL,  PRIMARY KEY  (`cmp_id`),  KEY `device_id` (`device_id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `hrDevice` ( `hrDevice_id` int(11) NOT NULL auto_increment,  `device_id` int(11) NOT NULL,  `hrDeviceIndex` int(11) NOT NULL,  `hrDeviceDescr` text NOT NULL,  `hrDeviceType` text NOT NULL,  `hrDeviceErrors` int(11) NOT NULL,  `hrDeviceStatus` text NOT NULL,  `hrProcessorLoad` tinyint(4) default NULL,  PRIMARY KEY  (`hrDevice_id`),  KEY `device_id` (`device_id`)) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
ALTER TABLE `entPhysical` ADD  `entPhysicalHardwareRev` VARCHAR( 16 ) NULL AFTER  `entPhysicalName` ,ADD  `entPhysicalFirmwareRev` VARCHAR( 16 ) NULL AFTER  `entPhysicalHardwareRev` ,ADD  `entPhysicalSoftwareRev` VARCHAR( 16 ) NULL AFTER  `entPhysicalFirmwareRev` ,ADD  `entPhysicalAlias` VARCHAR( 32 ) NULL AFTER  `entPhysicalSoftwareRev` ,ADD  `entPhysicalAssetID` VARCHAR( 32 ) NULL AFTER  `entPhysicalAlias` ,ADD  `entPhysicalIsFRU` VARCHAR( 8 ) NULL AFTER  `entPhysicalAssetID`;
ALTER TABLE `devices` ADD `last_discovered` timestamp NULL DEFAULT NULL AFTER `last_polled`;
ALTER TABLE `devices` CHANGE  `lastchange`  `uptime` BIGINT NULL DEFAULT NULL;
ALTER TABLE `storage` ADD `hrStorageType` VARCHAR( 32 ) NULL DEFAULT NULL AFTER `hrStorageIndex`;
ALTER TABLE `devices` MODIFY `type` varchar(8) DEFAULT 'unknown';
ALTER TABLE `devices` CHANGE `os` `os` VARCHAR( 32 ) NULL DEFAULT NULL;
ALTER TABLE `temperature` ADD `temp_precision` INT(11) NULL DEFAULT '1';
UPDATE temperature SET temp_precision=10 WHERE temp_tenths=1;
ALTER TABLE `temperature` ADD  `temp_index` INT NOT NULL AFTER  `temp_host` , ADD  `temp_mibtype` VARCHAR( 32 ) NOT NULL AFTER  `temp_index`
ALTER TABLE `temperature` DROP `temp_tenths`;
CREATE TABLE IF NOT EXISTS `dbSchema` ( `revision` int(11) NOT NULL default '0', PRIMARY KEY (`revision`)) ENGINE=MyISAM DEFAULT CHARSET=latin1;
ALTER TABLE `storage` ADD `storage_perc_warn` INT(11) NULL DEFAULT '60';
CREATE TABLE IF NOT EXISTS `voltage` (  `volt_id` int(11) NOT NULL auto_increment,  `volt_host` int(11) NOT NULL default '0',  `volt_oid` varchar(64) NOT NULL,  `volt_descr` varchar(32) NOT NULL default '',  `volt_precision` int(11) NOT NULL default '1',  `volt_current` int(11) NOT NULL default '0',  `volt_limit` int(11) NOT NULL default '60',  PRIMARY KEY  (`volt_id`),  KEY `volt_host` (`volt_host`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `fanspeed` (   `fan_id` int(11) NOT NULL auto_increment,  `fan_host` int(11) NOT NULL default '0',  `fan_oid` varchar(64) NOT NULL,  `fan_descr` varchar(32) NOT NULL default '',  `fan_precision` int(11) NOT NULL default '1',  `fan_current` int(11) NOT NULL default '0',  `fan_limit` int(11) NOT NULL default '60',  PRIMARY KEY  (`fan_id`),  KEY `fan_host` (`fan_host`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
ALTER TABLE `voltage` ADD `volt_limit_low` int(11) NULL DEFAULT NULL AFTER `volt_limit`;
ALTER TABLE `voltage` CHANGE `volt_current` `volt_current` FLOAT(3) NULL DEFAULT NULL;
ALTER TABLE `voltage` CHANGE `volt_limit` `volt_limit` FLOAT(3) NULL DEFAULT NULL;
ALTER TABLE `voltage` CHANGE `volt_limit_low` `volt_limit_low` FLOAT(3) NULL DEFAULT NULL;
ALTER TABLE  `fanspeed` ADD  `fan_index` INT NOT NULL AFTER  `fan_host` , ADD  `fan_mibtype` VARCHAR( 32 ) NOT NULL AFTER  `fan_index`;
ALTER TABLE  `temperature` CHANGE  `temp_host`  `device_id` INT( 11 ) NOT NULL DEFAULT  '0';
ALTER TABLE  `fanspeed` CHANGE  `fan_host`  `device_id` INT( 11 ) NOT NULL DEFAULT  '0';
ALTER TABLE  `voltage` CHANGE  `volt_host`  `device_id` INT( 11 ) NOT NULL DEFAULT  '0';
CREATE TABLE IF NOT EXISTS `processors` (  `processor_id` int(11) NOT NULL AUTO_INCREMENT,  `entPhysicalIndex` int(11) NOT NULL,  `device_id` int(11) NOT NULL,  `processor_oid` int(11) NOT NULL,  `processor_type` int(11) NOT NULL,  `processor_usage` int(11) NOT NULL,  `processor_description` varchar(64) NOT NULL,  PRIMARY KEY (`processor_id`),  KEY `cpuCPU_id` (`processor_id`,`device_id`) ) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
ALTER TABLE  `processors` ADD `hrDeviceIndex` int(11) NULL AFTER `entPhysicalIndex`;
ALTER TABLE  `temperature` CHANGE  `temp_current`  `temp_current` FLOAT( 4 ) NOT NULL DEFAULT  '0';
ALTER TABLE  `processors` ADD `processor_index` varchar(32) NOT NULL AFTER `processor_oid`;
ALTER TABLE  `processors` CHANGE `processor_description` `processor_descr` varchar(64) NOT NULL;
ALTER TABLE  `fanspeed` CHANGE `fan_mibtype` `fan_type` varchar(64) NOT NULL ;
ALTER TABLE  `voltage` ADD  `volt_index` VARCHAR( 8 ) NOT NULL AFTER  `volt_oid`,ADD  `volt_type` VARCHAR( 32 ) NOT NULL AFTER  `volt_index` ;
ALTER TABLE `processors` ADD `processor_precision` INT( 11 ) NOT NULL DEFAULT '1';
ALTER TABLE `links` CHANGE `cdp` `vendor` VARCHAR( 11 ) NULL DEFAULT NULL;
ALTER TABLE `links` ADD `remote_hostname` VARCHAR( 128 ) NOT NULL ,ADD `remote_port` VARCHAR( 128 ) NOT NULL ,ADD `remote_platform` VARCHAR( 128 ) NOT NULL ,ADD `remote_version` VARCHAR( 256 ) NOT NULL ;
ALTER TABLE `links` CHANGE `src_if` `local_interface_id` INT( 11 ) NULL DEFAULT NULL ,CHANGE `dst_if` `remote_interface_id` INT( 11 ) NULL DEFAULT NULL ;
ALTER TABLE `links` CHANGE `vendor` `protocol` VARCHAR( 11 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;
ALTER TABLE `processors` CHANGE `processor_type` `processor_type` varchar(16) NOT NULL;
ALTER TABLE `bgpPeers_cbgp` CHANGE `afi` `afi` VARCHAR( 16 ) NOT NULL , CHANGE `safi` `safi` VARCHAR( 16 ) NOT NULL; 
ALTER TABLE  `eventlog` ADD  `reference` VARCHAR( 64 ) NOT NULL AFTER  `type`;
ALTER TABLE `syslog` CHANGE `datetime` `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE `syslog`  DROP `host`,  DROP `processed`;
RENAME TABLE  `interfaces` TO  `ports` ;
RENAME TABLE  `interfaces_perms` TO `ports_perms` ;
ALTER TABLE  `temperature` CHANGE `temp_index` `temp_index` VARCHAR( 32 ) NOT NULL AFTER  `device_id` , ADD  `temp_type` VARCHAR( 16 ) NOT NULL AFTER  `temp_index`;
ALTER TABLE  `processors` CHANGE  `processor_oid`  `processor_oid` VARCHAR( 128 ) NOT NULL;
ALTER TABLE eventlog CHANGE `type` `type` VARCHAR( 64 ) NOT NULL;
ALTER TABLE  `services` CHANGE  `service_host`  `device_id` INT( 11 ) NOT NULL;
CREATE TABLE IF NOT EXISTS `mempools` (  `mempool_id` int(11) NOT NULL AUTO_INCREMENT,  `mempool_index` varchar(8) CHARACTER SET latin1 NOT NULL,  `entPhysicalIndex` int(11) DEFAULT NULL,  `hrDeviceIndex` int(11) DEFAULT NULL,  `mempool_type` varchar(32) CHARACTER SET latin1 NOT NULL,  `mempool_precision` int(11) NOT NULL DEFAULT '1',  `mempool_descr` varchar(32) CHARACTER SET latin1 NOT NULL,  `device_id` int(11) NOT NULL,  `mempool_used` int(11) NOT NULL,  `mempool_free` int(11) NOT NULL,  `mempool_total` int(11) NOT NULL,  `mempool_largestfree` int(11) DEFAULT NULL,  `mempool_lowestfree` int(11) DEFAULT NULL,  PRIMARY KEY (`mempool_id`),  KEY `device_id` (`device_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ;
ALTER TABLE `storage` CHANGE `storage_id` `storage_id` INT( 11 ) NOT NULL AUTO_INCREMENT , CHANGE `host_id` `device_id` INT( 11 ) NOT NULL , CHANGE `hrStorageIndex` `storage_index` INT( 11 ) NOT NULL , CHANGE `hrStorageType` `storage_type` VARCHAR( 32 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL , CHANGE `hrStorageDescr` `storage_descr` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL , CHANGE `hrStorageSize` `storage_size` INT( 11 ) NOT NULL , CHANGE `hrStorageAllocationUnits` `storage_units` INT( 11 ) NOT NULL , CHANGE `hrStorageUsed` `storage_used` INT( 11 ) NOT NULL , CHANGE `storage_perc` `storage_perc` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;
ALTER TABLE `storage` ADD `storage_mib` VARCHAR( 16 ) NOT NULL AFTER `device_id`;
ALTER TABLE `storage` ADD `storage_free` INT NOT NULL AFTER `storage_used`;
ALTER TABLE `storage` CHANGE `storage_size` `storage_size` BIGINT NOT NULL ,CHANGE `storage_used` `storage_used` BIGINT NOT NULL ,CHANGE `storage_free` `storage_free` BIGINT NOT NULL 
