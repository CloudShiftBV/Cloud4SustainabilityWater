CREATE TABLE [dbo].[WaterInstrumentConfiguration] (
    [waterinstrumentconfigurationId] UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                      DATETIME         NULL,
    [modifiedOn]                     DATETIME         NULL,
    [statecode]                      INT              NOT NULL,
    [statuscode]                     INT              NULL,
    [importSequenceNumber]           INT              NULL,
    [overriddenCreatedOn]            DATETIME         NULL,
    [timeZoneRuleVersionNumber]      INT              NULL,
    [UTCConversionTimeZoneCode]      INT              NULL,
    [name]                           NVARCHAR (100)   NULL,
    [dataqualitytype]                INT              NULL,
    [description]                    NVARCHAR (250)   NULL,
    [configurationtype]              INT              NULL,
    [waterqualitycharacteristic]     UNIQUEIDENTIFIER NOT NULL,
    [watersource]                    UNIQUEIDENTIFIER NOT NULL,
    [watertransactiontype]           INT              NULL,
    PRIMARY KEY CLUSTERED ([waterinstrumentconfigurationId] ASC),
    FOREIGN KEY ([waterqualitycharacteristic]) REFERENCES [dbo].[WaterQualityCharacteristic] ([waterqualitycharacteristicId]),
    FOREIGN KEY ([watersource]) REFERENCES [dbo].[WaterSource] ([waterinstrumentconfigurationId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'waterinstrumentconfigurationId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the Water Instrument Configuration. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the Water Instrument Configuration. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the type of transaction related to water flow, such as withdrawal: 700610000, discharge: 700610001, consumption: 700610002, or recycled: 700610003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'watertransactiontype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Indicates the source from which the water enters or leaves the instrument', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'watersource';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'dataqualitytype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the water dimension for which the water instrument configuration exists. Configurations are: Water quantity: 755210000, Water quality: 755210001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'configurationtype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to indicate the property which is being measured by the water quality instrument', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrumentConfiguration', @level2type = N'COLUMN', @level2name = N'waterqualitycharacteristic';


GO

