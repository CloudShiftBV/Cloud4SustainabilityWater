CREATE TABLE [dbo].[WaterSource] (
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
    [description]                    NVARCHAR (250)   NULL,
    [origincorrelationid]            NVARCHAR (100)   NULL,
    [subtype]                        NVARCHAR (100)   NULL,
    [sourcetype]                     INT              NULL,
    [waterqualitytype]               INT              NULL,
    PRIMARY KEY CLUSTERED ([waterinstrumentconfigurationId] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the Water Source. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to further classify the water source type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'subtype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'waterinstrumentconfigurationId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the Water Source. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Describes the quality of the water being withdrawn/discharged from/to the water source. Qualities are: Fresh Water: 700610000, Other water: 700610001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'waterqualitytype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to store source unique identifier values for the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Field used to classify the water source. Classifications are: Surface water: 700610000, Ground water: 700610001, Sea water: 700610002, Produced water: 700610003, Third party water: 700610004', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'sourcetype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterSource', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

