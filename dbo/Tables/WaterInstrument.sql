CREATE TABLE [dbo].[WaterInstrument] (
    [waterinstrumentId]         UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [waterinstrumentconfig]     UNIQUEIDENTIFIER NOT NULL,
    [waterinstrumenttype]       NVARCHAR (100)   NULL,
    [description]               NVARCHAR (250)   NULL,
    [facility]                  UNIQUEIDENTIFIER NOT NULL,
    [industrialprocesstype]     UNIQUEIDENTIFIER NOT NULL,
    [organizationalunit]        UNIQUEIDENTIFIER NOT NULL,
    [origincorrelationid]       NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([waterinstrumentId] ASC),
    FOREIGN KEY ([facility]) REFERENCES [dbo].[Facility] ([facilityid]),
    FOREIGN KEY ([industrialprocesstype]) REFERENCES [dbo].[IndustrialProcessType] ([industrialprocesstypeId]),
    FOREIGN KEY ([organizationalunit]) REFERENCES [dbo].[OrganizationalUnit] ([sustainabilityorganizationalunitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to store source unique identifier values for the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'waterinstrumentId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the organizational unit where the water instrument is located', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'organizationalunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the water instrument. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to classify the water instrument', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'waterinstrumenttype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the process for which the water instrument is being used', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'industrialprocesstype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the corresponding configuration for the water instrument', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'waterinstrumentconfig';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Indicates the facility mapped to the water instrument', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'facility';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the water instrument. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterInstrument', @level2type = N'COLUMN', @level2name = N'statecode';


GO

