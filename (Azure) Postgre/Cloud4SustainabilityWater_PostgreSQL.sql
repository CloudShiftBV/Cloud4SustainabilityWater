CREATE TABLE "Facility" (
  "facilityid" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "waterstressedarea" boolean
);

CREATE TABLE "IndustrialProcessType" (
  "industrialprocesstypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "OrganizationalUnit" (
  "sustainabilityorganizationalunitId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "addresscity" varchar(100),
  "addresscountryisocode" varchar(3),
  "addresscounty" varchar(100),
  "addressstateprovince" varchar(100),
  "addressstreet1" varchar(250),
  "addressstreet2" varchar(250),
  "addresszippostalcode" varchar(20),
  "description" varchar(100),
  "latitude" varchar(100),
  "longitude" varchar(100),
  "organizationalunittype" int,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "Unit" (
  "unitId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "baseunit" char(16),
  "conversionfactor" decimal(14,2),
  "isbaseunit" boolean,
  "shouldValidateCreate" boolean,
  "unitgroup" char(16) NOT NULL
);

CREATE TABLE "UnitGroup" (
  "unitgroupId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "baseunit" char(16),
  "description" varchar(250),
  "reportingunit" char(16) NOT NULL
);

CREATE TABLE "WaterInstrument" (
  "waterinstrumentId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "waterinstrumentconfig" char(16) NOT NULL,
  "waterinstrumenttype" varchar(100),
  "description" varchar(250),
  "facility" char(16) NOT NULL,
  "industrialprocesstype" char(16) NOT NULL,
  "organizationalunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "WaterInstrumentConfiguration" (
  "waterinstrumentconfigurationId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "dataqualitytype" int,
  "description" varchar(250),
  "configurationtype" int,
  "waterqualitycharacteristic" char(16) NOT NULL,
  "watersource" char(16) NOT NULL,
  "watertransactiontype" int
);

CREATE TABLE "WaterQualityAnalysis" (
  "waterqualityanalysisId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "analysismethod" varchar(100),
  "analysisstartdate" timestamp,
  "description" varchar(250),
  "laboratorycomments" varchar(100),
  "laboratoryname" varchar(100),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "WaterQualityCharacteristic" (
  "waterqualitycharacteristicId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "origincorrelationid" varchar(100),
  "referencerangelowerlimit" decimal(14,2),
  "referencerangeunit" char(16) NOT NULL,
  "referencerangeupperlimit" decimal(14,2),
  "description" varchar(250),
  "type" int
);

CREATE TABLE "WaterQualityTestResult" (
  "waterqualitytestresultId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "waterqualityanalysis" char(16) NOT NULL,
  "comments" varchar(100),
  "description" varchar(250),
  "measuredvalue" varchar(100),
  "precision" varchar(100),
  "resultstatus" varchar(100),
  "unit" char(16) NOT NULL,
  "waterqualitycharacteristic" char(16) NOT NULL,
  "watersample" char(16) NOT NULL
);

CREATE TABLE "WaterQuantity" (
  "waterqualitytestresultId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "origincorrelationid" varchar(100),
  "quantity" int,
  "transactionenddate" timestamp,
  "transactionstartdate" timestamp,
  "evidence" varchar(100),
  "unit" char(16) NOT NULL,
  "waterinstrument" char(16) NOT NULL
);

CREATE TABLE "WaterSample" (
  "waterinstrumentconfigurationId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "collectiondate" timestamp,
  "collectionequipment" varchar(100),
  "collectionmethod" int,
  "description" varchar(250),
  "facility" char(16) NOT NULL,
  "industrialprocesstype" char(16) NOT NULL,
  "organizationalunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "WaterSource" (
  "waterinstrumentconfigurationId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100),
  "subtype" varchar(100),
  "sourcetype" int,
  "waterqualitytype" int
);

COMMENT ON COLUMN "Facility"."facilityid" IS 'Unique identifier for entity instances.';

COMMENT ON COLUMN "Facility"."waterstressedarea" IS 'Indicates whether the facility is located in a water stressed area or not';

COMMENT ON COLUMN "IndustrialProcessType"."industrialprocesstypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "IndustrialProcessType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "IndustrialProcessType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "IndustrialProcessType"."statecode" IS 'Status of the IndustrialProcessType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "IndustrialProcessType"."statuscode" IS 'Reason for the status of the IndustrialProcessType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "IndustrialProcessType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "IndustrialProcessType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "IndustrialProcessType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "IndustrialProcessType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "IndustrialProcessType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "IndustrialProcessType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "IndustrialProcessType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "OrganizationalUnit"."sustainabilityorganizationalunitId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "OrganizationalUnit"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "OrganizationalUnit"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "OrganizationalUnit"."statecode" IS 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "OrganizationalUnit"."statuscode" IS 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "OrganizationalUnit"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "OrganizationalUnit"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "OrganizationalUnit"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "OrganizationalUnit"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "OrganizationalUnit"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "OrganizationalUnit"."addresscity" IS 'The city in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."addresscountryisocode" IS 'The three letter ISO code of the country/region.';

COMMENT ON COLUMN "OrganizationalUnit"."addresscounty" IS 'The county/region in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."addressstateprovince" IS 'The state or province in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."addressstreet1" IS 'The street address including the number and street name of the facility.';

COMMENT ON COLUMN "OrganizationalUnit"."addressstreet2" IS 'Secondary street address information.';

COMMENT ON COLUMN "OrganizationalUnit"."addresszippostalcode" IS 'The zip or postal code in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "OrganizationalUnit"."latitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "OrganizationalUnit"."longitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "OrganizationalUnit"."organizationalunittype" IS 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ';

COMMENT ON COLUMN "OrganizationalUnit"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "Unit"."unitId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Unit"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Unit"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Unit"."statecode" IS 'Status of the Unit. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "Unit"."statuscode" IS 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "Unit"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Unit"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Unit"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "Unit"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "Unit"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Unit"."baseunit" IS 'The base or primary unit of the unit group that the entity belongs to.';

COMMENT ON COLUMN "Unit"."conversionfactor" IS 'Conversion factor to convert to the base unit.';

COMMENT ON COLUMN "Unit"."isbaseunit" IS 'Indicates whether the unit is the base unit for the associated unit group.';

COMMENT ON COLUMN "Unit"."shouldValidateCreate" IS 'Describes whether the plugin should run validations on create of a unit record. For internal use only.';

COMMENT ON COLUMN "Unit"."unitgroup" IS '	The ID of the unit group that the unit is associated with.';

COMMENT ON COLUMN "UnitGroup"."unitgroupId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "UnitGroup"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "UnitGroup"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "UnitGroup"."statecode" IS 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "UnitGroup"."statuscode" IS 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "UnitGroup"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "UnitGroup"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "UnitGroup"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "UnitGroup"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "UnitGroup"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "UnitGroup"."baseunit" IS 'The base or primary unit of the unit group that the entity belongs to.';

COMMENT ON COLUMN "UnitGroup"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "UnitGroup"."reportingunit" IS 'Unique identifier for the unit associated with the unit group which will be used in reports.';

COMMENT ON COLUMN "WaterInstrument"."waterinstrumentId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterInstrument"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterInstrument"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterInstrument"."statecode" IS 'Status of the water instrument. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "WaterInstrument"."statuscode" IS 'Reason for the status of the water instrument. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "WaterInstrument"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterInstrument"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterInstrument"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "WaterInstrument"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "WaterInstrument"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterInstrument"."waterinstrumentconfig" IS 'Indicates the corresponding configuration for the water instrument';

COMMENT ON COLUMN "WaterInstrument"."waterinstrumenttype" IS 'Optional field to classify the water instrument';

COMMENT ON COLUMN "WaterInstrument"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterInstrument"."facility" IS '	Indicates the facility mapped to the water instrument';

COMMENT ON COLUMN "WaterInstrument"."industrialprocesstype" IS 'Indicates the process for which the water instrument is being used';

COMMENT ON COLUMN "WaterInstrument"."organizationalunit" IS 'Indicates the organizational unit where the water instrument is located';

COMMENT ON COLUMN "WaterInstrument"."origincorrelationid" IS 'Optional field to store source unique identifier values for the entity.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."waterinstrumentconfigurationId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."statecode" IS 'Status of the Water Instrument Configuration. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."statuscode" IS 'Reason for the status of the Water Instrument Configuration. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."configurationtype" IS 'Indicates the water dimension for which the water instrument configuration exists. Configurations are: Water quantity: 755210000, Water quality: 755210001';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."waterqualitycharacteristic" IS 'Optional field to indicate the property which is being measured by the water quality instrument';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."watersource" IS '	Indicates the source from which the water enters or leaves the instrument';

COMMENT ON COLUMN "WaterInstrumentConfiguration"."watertransactiontype" IS 'Indicates the type of transaction related to water flow, such as withdrawal: 700610000, discharge: 700610001, consumption: 700610002, or recycled: 700610003';

COMMENT ON COLUMN "WaterQualityAnalysis"."waterqualityanalysisId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterQualityAnalysis"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterQualityAnalysis"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterQualityAnalysis"."statecode" IS 'Status of the Water Quality Analysis. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "WaterQualityAnalysis"."statuscode" IS 'Reason for the status of the Water Quality Analysis. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "WaterQualityAnalysis"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterQualityAnalysis"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterQualityAnalysis"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "WaterQualityAnalysis"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "WaterQualityAnalysis"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterQualityAnalysis"."analysismethod" IS 'Indicates the type of analysis performed';

COMMENT ON COLUMN "WaterQualityAnalysis"."analysisstartdate" IS '	Indicates the date and time at which the water quality analysis started';

COMMENT ON COLUMN "WaterQualityAnalysis"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterQualityAnalysis"."laboratorycomments" IS 'tion	Optional field to provide the comments from the lab regarding the analysis method being performed';

COMMENT ON COLUMN "WaterQualityAnalysis"."laboratoryname" IS 'Indicates the name of the lab that carried out the water quality analysis.';

COMMENT ON COLUMN "WaterQualityAnalysis"."origincorrelationid" IS 'Optional field to store source unique identifier values for the entity.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."waterqualitycharacteristicId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterQualityCharacteristic"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."statecode" IS 'Status of the Water Quality Characteristic. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "WaterQualityCharacteristic"."statuscode" IS 'Reason for the status of the Water Quality Characteristic. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "WaterQualityCharacteristic"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."origincorrelationid" IS 'Optional field to store source unique identifier values for the entity.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."referencerangelowerlimit" IS 'Field for storing the lower limit of the ideal range for the characteristic measure value in the water sample';

COMMENT ON COLUMN "WaterQualityCharacteristic"."referencerangeunit" IS 'Indicates the unit of measurement for the reference range';

COMMENT ON COLUMN "WaterQualityCharacteristic"."referencerangeupperlimit" IS 'Field for storing the upper limit of the ideal range for the characteristic measure value in the water sample';

COMMENT ON COLUMN "WaterQualityCharacteristic"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterQualityCharacteristic"."type" IS 'Indicates the classification of characteristic for which the water sample is being tested. Characteristic are: Physical: 700610000, Chemical: 700610001, Biological: 700610002';

COMMENT ON COLUMN "WaterQualityTestResult"."waterqualitytestresultId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterQualityTestResult"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "WaterQualityTestResult"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "WaterQualityTestResult"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterQualityTestResult"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterQualityTestResult"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterQualityTestResult"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterQualityTestResult"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterQualityTestResult"."waterqualityanalysis" IS 'Indicates the analysis that was performed to arrive at the water quality test result';

COMMENT ON COLUMN "WaterQualityTestResult"."comments" IS 'Optional field that indicates the any additional details regarding the result provided by the analysis';

COMMENT ON COLUMN "WaterQualityTestResult"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterQualityTestResult"."measuredvalue" IS 'The reportable measured value of a characteristic being analyzed';

COMMENT ON COLUMN "WaterQualityTestResult"."precision" IS 'Indicates how the measurements for a property has been prescribed';

COMMENT ON COLUMN "WaterQualityTestResult"."resultstatus" IS 'Indicates whether the measure of the characteristic is within the permissible range';

COMMENT ON COLUMN "WaterQualityTestResult"."unit" IS 'The unit of measurement of the measure value in the test result';

COMMENT ON COLUMN "WaterQualityTestResult"."waterqualitycharacteristic" IS 'Indicates the measurable property for which the water sample has been analyzed and measured value provided';

COMMENT ON COLUMN "WaterQualityTestResult"."watersample" IS 'Indicates the details of the water sample collected for the water quality test';

COMMENT ON COLUMN "WaterQuantity"."waterqualitytestresultId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterQuantity"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "WaterQuantity"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "WaterQuantity"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterQuantity"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterQuantity"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterQuantity"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterQuantity"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterQuantity"."origincorrelationid" IS 'Optional field to store source unique identifier values for the entity.';

COMMENT ON COLUMN "WaterQuantity"."quantity" IS 'Indicates the actual quantity of water that was part of the transaction';

COMMENT ON COLUMN "WaterQuantity"."transactionenddate" IS 'Indicates the date and time at which the transaction recording ended';

COMMENT ON COLUMN "WaterQuantity"."transactionstartdate" IS 'Indicates the date and time at which the transaction recording started';

COMMENT ON COLUMN "WaterQuantity"."evidence" IS 'Optional field to indicate the origin for the water quantity data';

COMMENT ON COLUMN "WaterQuantity"."unit" IS 'The unit of measurement of the measure value in the test result';

COMMENT ON COLUMN "WaterQuantity"."waterinstrument" IS 'Describes the corresponding water instrument for which the water quantity information is being recorded';

COMMENT ON COLUMN "WaterSample"."waterinstrumentconfigurationId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterSample"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterSample"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterSample"."statecode" IS 'Status of the Water Sample. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "WaterSample"."statuscode" IS 'Reason for the status of the Water Sample. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "WaterSample"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterSample"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterSample"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "WaterSample"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "WaterSample"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterSample"."collectiondate" IS '	Indicates the date and time at which the water sample was collected.';

COMMENT ON COLUMN "WaterSample"."collectionequipment" IS '	Optional field to store the details of the equipment used to collect the water sample.';

COMMENT ON COLUMN "WaterSample"."collectionmethod" IS '	Indicates the method applied to collect the water sample. Method are: Composite: 700610000, Grab: 700610001';

COMMENT ON COLUMN "WaterSample"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterSample"."facility" IS '	Indicates the facility mapped to the water instrument';

COMMENT ON COLUMN "WaterSample"."industrialprocesstype" IS 'Indicates the process for which the water instrument is being used';

COMMENT ON COLUMN "WaterSample"."organizationalunit" IS 'Indicates the organizational unit where the water instrument is located';

COMMENT ON COLUMN "WaterSample"."origincorrelationid" IS 'Optional field to store source unique identifier values for the entity.';

COMMENT ON COLUMN "WaterSource"."waterinstrumentconfigurationId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WaterSource"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WaterSource"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WaterSource"."statecode" IS 'Status of the Water Source. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "WaterSource"."statuscode" IS 'Reason for the status of the Water Source. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "WaterSource"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WaterSource"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WaterSource"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "WaterSource"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "WaterSource"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WaterSource"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "WaterSource"."origincorrelationid" IS 'Optional field to store source unique identifier values for the entity.';

COMMENT ON COLUMN "WaterSource"."subtype" IS 'Optional field to further classify the water source type';

COMMENT ON COLUMN "WaterSource"."sourcetype" IS 'Field used to classify the water source. Classifications are: Surface water: 700610000, Ground water: 700610001, Sea water: 700610002, Produced water: 700610003, Third party water: 700610004';

COMMENT ON COLUMN "WaterSource"."waterqualitytype" IS 'Describes the quality of the water being withdrawn/discharged from/to the water source. Qualities are: Fresh Water: 700610000, Other water: 700610001';

ALTER TABLE "Unit" ADD FOREIGN KEY ("unitgroup") REFERENCES "UnitGroup" ("unitgroupId");

ALTER TABLE "UnitGroup" ADD FOREIGN KEY ("baseunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "UnitGroup" ADD FOREIGN KEY ("reportingunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WaterInstrument" ADD FOREIGN KEY ("facility") REFERENCES "Facility" ("facilityid");

ALTER TABLE "WaterInstrument" ADD FOREIGN KEY ("industrialprocesstype") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "WaterInstrument" ADD FOREIGN KEY ("organizationalunit") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "WaterQualityCharacteristic" ADD FOREIGN KEY ("referencerangeunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WaterQualityTestResult" ADD FOREIGN KEY ("unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WaterQualityTestResult" ADD FOREIGN KEY ("watersample") REFERENCES "WaterSample" ("waterinstrumentconfigurationId");

ALTER TABLE "WaterQualityTestResult" ADD FOREIGN KEY ("waterqualitycharacteristic") REFERENCES "WaterQualityCharacteristic" ("waterqualitycharacteristicId");

ALTER TABLE "WaterQualityTestResult" ADD FOREIGN KEY ("waterqualityanalysis") REFERENCES "WaterQualityAnalysis" ("waterqualityanalysisId");

ALTER TABLE "WaterInstrumentConfiguration" ADD FOREIGN KEY ("waterqualitycharacteristic") REFERENCES "WaterQualityCharacteristic" ("waterqualitycharacteristicId");

ALTER TABLE "WaterInstrumentConfiguration" ADD FOREIGN KEY ("watersource") REFERENCES "WaterSource" ("waterinstrumentconfigurationId");

ALTER TABLE "WaterSample" ADD FOREIGN KEY ("industrialprocesstype") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "WaterSample" ADD FOREIGN KEY ("facility") REFERENCES "Facility" ("facilityid");

ALTER TABLE "WaterSample" ADD FOREIGN KEY ("organizationalunit") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "WaterQuantity" ADD FOREIGN KEY ("waterinstrument") REFERENCES "WaterInstrument" ("waterinstrumentId");

ALTER TABLE "WaterQuantity" ADD FOREIGN KEY ("unit") REFERENCES "Unit" ("unitId");
