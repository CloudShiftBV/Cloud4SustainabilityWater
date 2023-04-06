CREATE TABLE `Facility` (
  `facilityid` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances.',
  `waterstressedarea` boolean COMMENT 'Indicates whether the facility is located in a water stressed area or not'
);

CREATE TABLE `IndustrialProcessType` (
  `industrialprocesstypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the IndustrialProcessType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the IndustrialProcessType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `OrganizationalUnit` (
  `sustainabilityorganizationalunitId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `addresscity` varchar(100) COMMENT 'The city in which the facility resides.',
  `addresscountryisocode` varchar(3) COMMENT 'The three letter ISO code of the country/region.',
  `addresscounty` varchar(100) COMMENT 'The county/region in which the facility resides.',
  `addressstateprovince` varchar(100) COMMENT 'The state or province in which the facility resides.',
  `addressstreet1` varchar(250) COMMENT 'The street address including the number and street name of the facility.',
  `addressstreet2` varchar(250) COMMENT 'Secondary street address information.',
  `addresszippostalcode` varchar(20) COMMENT 'The zip or postal code in which the facility resides.',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `latitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `longitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `organizationalunittype` int COMMENT 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `Unit` (
  `unitId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Unit. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `baseunit` binary(16) COMMENT 'The base or primary unit of the unit group that the entity belongs to.',
  `conversionfactor` decimal(14,2) COMMENT 'Conversion factor to convert to the base unit.',
  `isbaseunit` boolean COMMENT 'Indicates whether the unit is the base unit for the associated unit group.',
  `shouldValidateCreate` boolean COMMENT 'Describes whether the plugin should run validations on create of a unit record. For internal use only.',
  `unitgroup` binary(16) NOT NULL COMMENT '	The ID of the unit group that the unit is associated with.'
);

CREATE TABLE `UnitGroup` (
  `unitgroupId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `baseunit` binary(16) COMMENT 'The base or primary unit of the unit group that the entity belongs to.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `reportingunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the unit group which will be used in reports.'
);

CREATE TABLE `WaterInstrument` (
  `waterinstrumentId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the water instrument. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the water instrument. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `waterinstrumentconfig` binary(16) NOT NULL COMMENT 'Indicates the corresponding configuration for the water instrument',
  `waterinstrumenttype` varchar(100) COMMENT 'Optional field to classify the water instrument',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `facility` binary(16) NOT NULL COMMENT '	Indicates the facility mapped to the water instrument',
  `industrialprocesstype` binary(16) NOT NULL COMMENT 'Indicates the process for which the water instrument is being used',
  `organizationalunit` binary(16) NOT NULL COMMENT 'Indicates the organizational unit where the water instrument is located',
  `origincorrelationid` varchar(100) COMMENT 'Optional field to store source unique identifier values for the entity.'
);

CREATE TABLE `WaterInstrumentConfiguration` (
  `waterinstrumentconfigurationId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Water Instrument Configuration. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Water Instrument Configuration. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `configurationtype` int COMMENT 'Indicates the water dimension for which the water instrument configuration exists. Configurations are: Water quantity: 755210000, Water quality: 755210001',
  `waterqualitycharacteristic` binary(16) NOT NULL COMMENT 'Optional field to indicate the property which is being measured by the water quality instrument',
  `watersource` binary(16) NOT NULL COMMENT '	Indicates the source from which the water enters or leaves the instrument',
  `watertransactiontype` int COMMENT 'Indicates the type of transaction related to water flow, such as withdrawal: 700610000, discharge: 700610001, consumption: 700610002, or recycled: 700610003'
);

CREATE TABLE `WaterQualityAnalysis` (
  `waterqualityanalysisId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Water Quality Analysis. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Water Quality Analysis. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `analysismethod` varchar(100) COMMENT 'Indicates the type of analysis performed',
  `analysisstartdate` dateTime COMMENT '	Indicates the date and time at which the water quality analysis started',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `laboratorycomments` varchar(100) COMMENT 'tion	Optional field to provide the comments from the lab regarding the analysis method being performed',
  `laboratoryname` varchar(100) COMMENT 'Indicates the name of the lab that carried out the water quality analysis.',
  `origincorrelationid` varchar(100) COMMENT 'Optional field to store source unique identifier values for the entity.'
);

CREATE TABLE `WaterQualityCharacteristic` (
  `waterqualitycharacteristicId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Water Quality Characteristic. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Water Quality Characteristic. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `origincorrelationid` varchar(100) COMMENT 'Optional field to store source unique identifier values for the entity.',
  `referencerangelowerlimit` decimal(14,2) COMMENT 'Field for storing the lower limit of the ideal range for the characteristic measure value in the water sample',
  `referencerangeunit` binary(16) NOT NULL COMMENT 'Indicates the unit of measurement for the reference range',
  `referencerangeupperlimit` decimal(14,2) COMMENT 'Field for storing the upper limit of the ideal range for the characteristic measure value in the water sample',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `type` int COMMENT 'Indicates the classification of characteristic for which the water sample is being tested. Characteristic are: Physical: 700610000, Chemical: 700610001, Biological: 700610002'
);

CREATE TABLE `WaterQualityTestResult` (
  `waterqualitytestresultId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `waterqualityanalysis` binary(16) NOT NULL COMMENT 'Indicates the analysis that was performed to arrive at the water quality test result',
  `comments` varchar(100) COMMENT 'Optional field that indicates the any additional details regarding the result provided by the analysis',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `measuredvalue` varchar(100) COMMENT 'The reportable measured value of a characteristic being analyzed',
  `precision` varchar(100) COMMENT 'Indicates how the measurements for a property has been prescribed',
  `resultstatus` varchar(100) COMMENT 'Indicates whether the measure of the characteristic is within the permissible range',
  `unit` binary(16) NOT NULL COMMENT 'The unit of measurement of the measure value in the test result',
  `waterqualitycharacteristic` binary(16) NOT NULL COMMENT 'Indicates the measurable property for which the water sample has been analyzed and measured value provided',
  `watersample` binary(16) NOT NULL COMMENT 'Indicates the details of the water sample collected for the water quality test'
);

CREATE TABLE `WaterQuantity` (
  `waterqualitytestresultId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `origincorrelationid` varchar(100) COMMENT 'Optional field to store source unique identifier values for the entity.',
  `quantity` int COMMENT 'Indicates the actual quantity of water that was part of the transaction',
  `transactionenddate` dateTime COMMENT 'Indicates the date and time at which the transaction recording ended',
  `transactionstartdate` dateTime COMMENT 'Indicates the date and time at which the transaction recording started',
  `evidence` varchar(100) COMMENT 'Optional field to indicate the origin for the water quantity data',
  `unit` binary(16) NOT NULL COMMENT 'The unit of measurement of the measure value in the test result',
  `waterinstrument` binary(16) NOT NULL COMMENT 'Describes the corresponding water instrument for which the water quantity information is being recorded'
);

CREATE TABLE `WaterSample` (
  `waterinstrumentconfigurationId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Water Sample. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Water Sample. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `collectiondate` dateTime COMMENT '	Indicates the date and time at which the water sample was collected.',
  `collectionequipment` varchar(100) COMMENT '	Optional field to store the details of the equipment used to collect the water sample.',
  `collectionmethod` int COMMENT '	Indicates the method applied to collect the water sample. Method are: Composite: 700610000, Grab: 700610001',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `facility` binary(16) NOT NULL COMMENT '	Indicates the facility mapped to the water instrument',
  `industrialprocesstype` binary(16) NOT NULL COMMENT 'Indicates the process for which the water instrument is being used',
  `organizationalunit` binary(16) NOT NULL COMMENT 'Indicates the organizational unit where the water instrument is located',
  `origincorrelationid` varchar(100) COMMENT 'Optional field to store source unique identifier values for the entity.'
);

CREATE TABLE `WaterSource` (
  `waterinstrumentconfigurationId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Water Source. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Water Source. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'Optional field to store source unique identifier values for the entity.',
  `subtype` varchar(100) COMMENT 'Optional field to further classify the water source type',
  `sourcetype` int COMMENT 'Field used to classify the water source. Classifications are: Surface water: 700610000, Ground water: 700610001, Sea water: 700610002, Produced water: 700610003, Third party water: 700610004',
  `waterqualitytype` int COMMENT 'Describes the quality of the water being withdrawn/discharged from/to the water source. Qualities are: Fresh Water: 700610000, Other water: 700610001'
);

ALTER TABLE `Unit` ADD FOREIGN KEY (`unitgroup`) REFERENCES `UnitGroup` (`unitgroupId`);

ALTER TABLE `UnitGroup` ADD FOREIGN KEY (`baseunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `UnitGroup` ADD FOREIGN KEY (`reportingunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WaterInstrument` ADD FOREIGN KEY (`facility`) REFERENCES `Facility` (`facilityid`);

ALTER TABLE `WaterInstrument` ADD FOREIGN KEY (`industrialprocesstype`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `WaterInstrument` ADD FOREIGN KEY (`organizationalunit`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `WaterQualityCharacteristic` ADD FOREIGN KEY (`referencerangeunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WaterQualityTestResult` ADD FOREIGN KEY (`unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WaterQualityTestResult` ADD FOREIGN KEY (`watersample`) REFERENCES `WaterSample` (`waterinstrumentconfigurationId`);

ALTER TABLE `WaterQualityTestResult` ADD FOREIGN KEY (`waterqualitycharacteristic`) REFERENCES `WaterQualityCharacteristic` (`waterqualitycharacteristicId`);

ALTER TABLE `WaterQualityTestResult` ADD FOREIGN KEY (`waterqualityanalysis`) REFERENCES `WaterQualityAnalysis` (`waterqualityanalysisId`);

ALTER TABLE `WaterInstrumentConfiguration` ADD FOREIGN KEY (`waterqualitycharacteristic`) REFERENCES `WaterQualityCharacteristic` (`waterqualitycharacteristicId`);

ALTER TABLE `WaterInstrumentConfiguration` ADD FOREIGN KEY (`watersource`) REFERENCES `WaterSource` (`waterinstrumentconfigurationId`);

ALTER TABLE `WaterSample` ADD FOREIGN KEY (`industrialprocesstype`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `WaterSample` ADD FOREIGN KEY (`facility`) REFERENCES `Facility` (`facilityid`);

ALTER TABLE `WaterSample` ADD FOREIGN KEY (`organizationalunit`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `WaterQuantity` ADD FOREIGN KEY (`waterinstrument`) REFERENCES `WaterInstrument` (`waterinstrumentId`);

ALTER TABLE `WaterQuantity` ADD FOREIGN KEY (`unit`) REFERENCES `Unit` (`unitId`);
