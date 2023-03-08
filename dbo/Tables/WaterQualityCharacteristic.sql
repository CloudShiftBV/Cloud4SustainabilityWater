CREATE TABLE [dbo].[WaterQualityCharacteristic] (
    [waterqualitycharacteristicId] UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                    DATETIME         NULL,
    [modifiedOn]                   DATETIME         NULL,
    [statecode]                    INT              NOT NULL,
    [statuscode]                   INT              NULL,
    [importSequenceNumber]         INT              NULL,
    [overriddenCreatedOn]          DATETIME         NULL,
    [timeZoneRuleVersionNumber]    INT              NULL,
    [UTCConversionTimeZoneCode]    INT              NULL,
    [name]                         NVARCHAR (100)   NULL,
    [origincorrelationid]          NVARCHAR (100)   NULL,
    [referencerangelowerlimit]     DECIMAL (14, 2)  NULL,
    [referencerangeunit]           UNIQUEIDENTIFIER NOT NULL,
    [referencerangeupperlimit]     DECIMAL (14, 2)  NULL,
    [description]                  NVARCHAR (250)   NULL,
    [type]                         INT              NULL,
    PRIMARY KEY CLUSTERED ([waterqualitycharacteristicId] ASC),
    FOREIGN KEY ([referencerangeunit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Field for storing the lower limit of the ideal range for the characteristic measure value in the water sample', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'referencerangelowerlimit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'waterqualitycharacteristicId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the Water Quality Characteristic. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to store source unique identifier values for the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the Water Quality Characteristic. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the unit of measurement for the reference range', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'referencerangeunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Field for storing the upper limit of the ideal range for the characteristic measure value in the water sample', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'referencerangeupperlimit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the classification of characteristic for which the water sample is being tested. Characteristic are: Physical: 700610000, Chemical: 700610001, Biological: 700610002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityCharacteristic', @level2type = N'COLUMN', @level2name = N'type';


GO

