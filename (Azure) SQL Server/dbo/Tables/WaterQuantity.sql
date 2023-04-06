CREATE TABLE [dbo].[WaterQuantity] (
    [waterqualitytestresultId] UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [TTLInSeconds]             INT              NULL,
    [partitionId]              NVARCHAR (100)   NULL,
    [createdOn]                DATETIME         NULL,
    [modifiedOn]               DATETIME         NULL,
    [importSequenceNumber]     INT              NULL,
    [overriddenCreatedOn]      DATETIME         NULL,
    [name]                     NVARCHAR (100)   NULL,
    [origincorrelationid]      NVARCHAR (100)   NULL,
    [quantity]                 INT              NULL,
    [transactionenddate]       DATETIME         NULL,
    [transactionstartdate]     DATETIME         NULL,
    [evidence]                 NVARCHAR (100)   NULL,
    [unit]                     UNIQUEIDENTIFIER NOT NULL,
    [waterinstrument]          UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([waterqualitytestresultId] ASC),
    FOREIGN KEY ([unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([waterinstrument]) REFERENCES [dbo].[WaterInstrument] ([waterinstrumentId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time to live in seconds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'TTLInSeconds';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the date and time at which the transaction recording started', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'transactionstartdate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to indicate the origin for the water quantity data', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'evidence';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the actual quantity of water that was part of the transaction', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'quantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the date and time at which the transaction recording ended', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'transactionenddate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to store source unique identifier values for the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'waterqualitytestresultId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Logical partition id. A logical partition consists of a set of records with same partition id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'partitionId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit of measurement of the measure value in the test result', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Describes the corresponding water instrument for which the water quantity information is being recorded', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQuantity', @level2type = N'COLUMN', @level2name = N'waterinstrument';


GO

