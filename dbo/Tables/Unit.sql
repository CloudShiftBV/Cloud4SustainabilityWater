CREATE TABLE [dbo].[Unit] (
    [unitId]                    UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
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
    [conversionfactor]          DECIMAL (14, 2)  NULL,
    [isbaseunit]                BIT              NULL,
    [shouldValidateCreate]      BIT              NULL,
    [unitgroup]                 UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([unitId] ASC),
    FOREIGN KEY ([unitgroup]) REFERENCES [dbo].[UnitGroup] ([unitgroupId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The ID of the unit group that the unit is associated with.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'unitgroup';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates whether the unit is the base unit for the associated unit group.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'isbaseunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Describes whether the plugin should run validations on create of a unit record. For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'shouldValidateCreate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The base or primary unit of the unit group that the entity belongs to.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'baseunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the Unit. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Conversion factor to convert to the base unit.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'conversionfactor';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'unitId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Unit', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

