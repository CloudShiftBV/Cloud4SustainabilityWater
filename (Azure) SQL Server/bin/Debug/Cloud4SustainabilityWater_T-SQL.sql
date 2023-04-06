CREATE TABLE [Facility] (
  [facilityid] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [waterstressedarea] bit
)
GO

CREATE TABLE [IndustrialProcessType] (
  [industrialprocesstypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [OrganizationalUnit] (
  [sustainabilityorganizationalunitId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [addresscity] nvarchar(100),
  [addresscountryisocode] nvarchar(3),
  [addresscounty] nvarchar(100),
  [addressstateprovince] nvarchar(100),
  [addressstreet1] nvarchar(250),
  [addressstreet2] nvarchar(250),
  [addresszippostalcode] nvarchar(20),
  [description] nvarchar(100),
  [latitude] nvarchar(100),
  [longitude] nvarchar(100),
  [organizationalunittype] int,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [Unit] (
  [unitId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [baseunit] uniqueidentifier,
  [conversionfactor] decimal(14,2),
  [isbaseunit] bit,
  [shouldValidateCreate] bit,
  [unitgroup] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [UnitGroup] (
  [unitgroupId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [baseunit] uniqueidentifier,
  [description] nvarchar(250),
  [reportingunit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [WaterInstrument] (
  [waterinstrumentId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [waterinstrumentconfig] uniqueidentifier NOT NULL,
  [waterinstrumenttype] nvarchar(100),
  [description] nvarchar(250),
  [facility] uniqueidentifier NOT NULL,
  [industrialprocesstype] uniqueidentifier NOT NULL,
  [organizationalunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [WaterInstrumentConfiguration] (
  [waterinstrumentconfigurationId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [dataqualitytype] int,
  [description] nvarchar(250),
  [configurationtype] int,
  [waterqualitycharacteristic] uniqueidentifier NOT NULL,
  [watersource] uniqueidentifier NOT NULL,
  [watertransactiontype] int
)
GO

CREATE TABLE [WaterQualityAnalysis] (
  [waterqualityanalysisId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [analysismethod] nvarchar(100),
  [analysisstartdate] dateTime,
  [description] nvarchar(250),
  [laboratorycomments] nvarchar(100),
  [laboratoryname] nvarchar(100),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [WaterQualityCharacteristic] (
  [waterqualitycharacteristicId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [origincorrelationid] nvarchar(100),
  [referencerangelowerlimit] decimal(14,2),
  [referencerangeunit] uniqueidentifier NOT NULL,
  [referencerangeupperlimit] decimal(14,2),
  [description] nvarchar(250),
  [type] int
)
GO

CREATE TABLE [WaterQualityTestResult] (
  [waterqualitytestresultId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [waterqualityanalysis] uniqueidentifier NOT NULL,
  [comments] nvarchar(100),
  [description] nvarchar(250),
  [measuredvalue] nvarchar(100),
  [precision] nvarchar(100),
  [resultstatus] nvarchar(100),
  [unit] uniqueidentifier NOT NULL,
  [waterqualitycharacteristic] uniqueidentifier NOT NULL,
  [watersample] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [WaterQuantity] (
  [waterqualitytestresultId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [origincorrelationid] nvarchar(100),
  [quantity] int,
  [transactionenddate] dateTime,
  [transactionstartdate] dateTime,
  [evidence] nvarchar(100),
  [unit] uniqueidentifier NOT NULL,
  [waterinstrument] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [WaterSample] (
  [waterinstrumentconfigurationId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [collectiondate] dateTime,
  [collectionequipment] nvarchar(100),
  [collectionmethod] int,
  [description] nvarchar(250),
  [facility] uniqueidentifier NOT NULL,
  [industrialprocesstype] uniqueidentifier NOT NULL,
  [organizationalunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [WaterSource] (
  [waterinstrumentconfigurationId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100),
  [subtype] nvarchar(100),
  [sourcetype] int,
  [waterqualitytype] int
)
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates whether the facility is located in a water stressed area or not',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'waterstressedarea';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'industrialprocesstypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the IndustrialProcessType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the IndustrialProcessType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'sustainabilityorganizationalunitId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The city in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresscity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The three letter ISO code of the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresscountryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The county/region in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresscounty';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The state or province in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addressstateprovince';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The street address including the number and street name of the facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addressstreet1';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Secondary street address information.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addressstreet2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The zip or postal code in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresszippostalcode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'latitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'longitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'organizationalunittype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'unitId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Unit. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The base or primary unit of the unit group that the entity belongs to.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'baseunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Conversion factor to convert to the base unit.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'conversionfactor';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates whether the unit is the base unit for the associated unit group.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'isbaseunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Describes whether the plugin should run validations on create of a unit record. For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'shouldValidateCreate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The ID of the unit group that the unit is associated with.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'unitgroup';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'unitgroupId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The base or primary unit of the unit group that the entity belongs to.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'baseunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the unit group which will be used in reports.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'reportingunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'waterinstrumentId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the water instrument. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the water instrument. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the corresponding configuration for the water instrument',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'waterinstrumentconfig';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to classify the water instrument',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'waterinstrumenttype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Indicates the facility mapped to the water instrument',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'facility';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the process for which the water instrument is being used',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'industrialprocesstype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the organizational unit where the water instrument is located',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'organizationalunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to store source unique identifier values for the entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrument',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'waterinstrumentconfigurationId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Water Instrument Configuration. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Water Instrument Configuration. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the water dimension for which the water instrument configuration exists. Configurations are: Water quantity: 755210000, Water quality: 755210001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'configurationtype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to indicate the property which is being measured by the water quality instrument',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'waterqualitycharacteristic';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Indicates the source from which the water enters or leaves the instrument',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'watersource';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the type of transaction related to water flow, such as withdrawal: 700610000, discharge: 700610001, consumption: 700610002, or recycled: 700610003',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterInstrumentConfiguration',
@level2type = N'Column', @level2name = 'watertransactiontype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'waterqualityanalysisId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Water Quality Analysis. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Water Quality Analysis. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the type of analysis performed',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'analysismethod';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Indicates the date and time at which the water quality analysis started',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'analysisstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'tion	Optional field to provide the comments from the lab regarding the analysis method being performed',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'laboratorycomments';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the name of the lab that carried out the water quality analysis.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'laboratoryname';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to store source unique identifier values for the entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityAnalysis',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'waterqualitycharacteristicId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Water Quality Characteristic. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Water Quality Characteristic. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to store source unique identifier values for the entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Field for storing the lower limit of the ideal range for the characteristic measure value in the water sample',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'referencerangelowerlimit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the unit of measurement for the reference range',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'referencerangeunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Field for storing the upper limit of the ideal range for the characteristic measure value in the water sample',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'referencerangeupperlimit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the classification of characteristic for which the water sample is being tested. Characteristic are: Physical: 700610000, Chemical: 700610001, Biological: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityCharacteristic',
@level2type = N'Column', @level2name = 'type';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'waterqualitytestresultId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the analysis that was performed to arrive at the water quality test result',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'waterqualityanalysis';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field that indicates the any additional details regarding the result provided by the analysis',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'comments';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The reportable measured value of a characteristic being analyzed',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'measuredvalue';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates how the measurements for a property has been prescribed',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'precision';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates whether the measure of the characteristic is within the permissible range',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'resultstatus';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement of the measure value in the test result',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the measurable property for which the water sample has been analyzed and measured value provided',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'waterqualitycharacteristic';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the details of the water sample collected for the water quality test',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQualityTestResult',
@level2type = N'Column', @level2name = 'watersample';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'waterqualitytestresultId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to store source unique identifier values for the entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the actual quantity of water that was part of the transaction',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the date and time at which the transaction recording ended',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'transactionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the date and time at which the transaction recording started',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'transactionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to indicate the origin for the water quantity data',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement of the measure value in the test result',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Describes the corresponding water instrument for which the water quantity information is being recorded',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterQuantity',
@level2type = N'Column', @level2name = 'waterinstrument';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'waterinstrumentconfigurationId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Water Sample. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Water Sample. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Indicates the date and time at which the water sample was collected.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'collectiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Optional field to store the details of the equipment used to collect the water sample.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'collectionequipment';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Indicates the method applied to collect the water sample. Method are: Composite: 700610000, Grab: 700610001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'collectionmethod';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Indicates the facility mapped to the water instrument',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'facility';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the process for which the water instrument is being used',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'industrialprocesstype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates the organizational unit where the water instrument is located',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'organizationalunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to store source unique identifier values for the entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSample',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'waterinstrumentconfigurationId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Water Source. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Water Source. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to store source unique identifier values for the entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field to further classify the water source type',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'subtype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Field used to classify the water source. Classifications are: Surface water: 700610000, Ground water: 700610001, Sea water: 700610002, Produced water: 700610003, Third party water: 700610004',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'sourcetype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Describes the quality of the water being withdrawn/discharged from/to the water source. Qualities are: Fresh Water: 700610000, Other water: 700610001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WaterSource',
@level2type = N'Column', @level2name = 'waterqualitytype';
GO

ALTER TABLE [Unit] ADD FOREIGN KEY ([unitgroup]) REFERENCES [UnitGroup] ([unitgroupId])
GO

ALTER TABLE [UnitGroup] ADD FOREIGN KEY ([baseunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [UnitGroup] ADD FOREIGN KEY ([reportingunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WaterInstrument] ADD FOREIGN KEY ([facility]) REFERENCES [Facility] ([facilityid])
GO

ALTER TABLE [WaterInstrument] ADD FOREIGN KEY ([industrialprocesstype]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [WaterInstrument] ADD FOREIGN KEY ([organizationalunit]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [WaterQualityCharacteristic] ADD FOREIGN KEY ([referencerangeunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WaterQualityTestResult] ADD FOREIGN KEY ([unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WaterQualityTestResult] ADD FOREIGN KEY ([watersample]) REFERENCES [WaterSample] ([waterinstrumentconfigurationId])
GO

ALTER TABLE [WaterQualityTestResult] ADD FOREIGN KEY ([waterqualitycharacteristic]) REFERENCES [WaterQualityCharacteristic] ([waterqualitycharacteristicId])
GO

ALTER TABLE [WaterQualityTestResult] ADD FOREIGN KEY ([waterqualityanalysis]) REFERENCES [WaterQualityAnalysis] ([waterqualityanalysisId])
GO

ALTER TABLE [WaterInstrumentConfiguration] ADD FOREIGN KEY ([waterqualitycharacteristic]) REFERENCES [WaterQualityCharacteristic] ([waterqualitycharacteristicId])
GO

ALTER TABLE [WaterInstrumentConfiguration] ADD FOREIGN KEY ([watersource]) REFERENCES [WaterSource] ([waterinstrumentconfigurationId])
GO

ALTER TABLE [WaterSample] ADD FOREIGN KEY ([industrialprocesstype]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [WaterSample] ADD FOREIGN KEY ([facility]) REFERENCES [Facility] ([facilityid])
GO

ALTER TABLE [WaterSample] ADD FOREIGN KEY ([organizationalunit]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [WaterQuantity] ADD FOREIGN KEY ([waterinstrument]) REFERENCES [WaterInstrument] ([waterinstrumentId])
GO

ALTER TABLE [WaterQuantity] ADD FOREIGN KEY ([unit]) REFERENCES [Unit] ([unitId])
GO
