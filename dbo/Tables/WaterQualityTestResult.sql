CREATE TABLE [dbo].[WaterQualityTestResult] (
    [waterqualitytestresultId]   UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [TTLInSeconds]               INT              NULL,
    [partitionId]                NVARCHAR (100)   NULL,
    [createdOn]                  DATETIME         NULL,
    [modifiedOn]                 DATETIME         NULL,
    [importSequenceNumber]       INT              NULL,
    [overriddenCreatedOn]        DATETIME         NULL,
    [name]                       NVARCHAR (100)   NULL,
    [waterqualityanalysis]       UNIQUEIDENTIFIER NOT NULL,
    [comments]                   NVARCHAR (100)   NULL,
    [description]                NVARCHAR (250)   NULL,
    [measuredvalue]              NVARCHAR (100)   NULL,
    [precision]                  NVARCHAR (100)   NULL,
    [resultstatus]               NVARCHAR (100)   NULL,
    [unit]                       UNIQUEIDENTIFIER NOT NULL,
    [waterqualitycharacteristic] UNIQUEIDENTIFIER NOT NULL,
    [watersample]                UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([waterqualitytestresultId] ASC),
    FOREIGN KEY ([unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([waterqualityanalysis]) REFERENCES [dbo].[WaterQualityAnalysis] ([waterqualityanalysisId]),
    FOREIGN KEY ([waterqualitycharacteristic]) REFERENCES [dbo].[WaterQualityCharacteristic] ([waterqualitycharacteristicId]),
    FOREIGN KEY ([watersample]) REFERENCES [dbo].[WaterSample] ([waterinstrumentconfigurationId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field that indicates the any additional details regarding the result provided by the analysis', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'comments';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the measurable property for which the water sample has been analyzed and measured value provided', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'waterqualitycharacteristic';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates how the measurements for a property has been prescribed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'precision';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The reportable measured value of a characteristic being analyzed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'measuredvalue';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit of measurement of the measure value in the test result', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'waterqualitytestresultId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Logical partition id. A logical partition consists of a set of records with same partition id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'partitionId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the analysis that was performed to arrive at the water quality test result', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'waterqualityanalysis';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time to live in seconds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'TTLInSeconds';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the details of the water sample collected for the water quality test', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'watersample';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates whether the measure of the characteristic is within the permissible range', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityTestResult', @level2type = N'COLUMN', @level2name = N'resultstatus';


GO

