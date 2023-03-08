CREATE TABLE [dbo].[UnitGroup] (
    [unitgroupId]               UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [baseunit]                  UNIQUEIDENTIFIER NULL,
    [description]               NVARCHAR (250)   NULL,
    [reportingunit]             UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([unitgroupId] ASC),
    FOREIGN KEY ([baseunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([reportingunit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the unit group which will be used in reports.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'reportingunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'unitgroupId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The base or primary unit of the unit group that the entity belongs to.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'baseunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UnitGroup', @level2type = N'COLUMN', @level2name = N'statecode';


GO

