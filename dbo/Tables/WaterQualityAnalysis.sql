CREATE TABLE [dbo].[WaterQualityAnalysis] (
    [waterqualityanalysisId]    UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [analysismethod]            NVARCHAR (100)   NULL,
    [analysisstartdate]         DATETIME         NULL,
    [description]               NVARCHAR (250)   NULL,
    [laboratorycomments]        NVARCHAR (100)   NULL,
    [laboratoryname]            NVARCHAR (100)   NULL,
    [origincorrelationid]       NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([waterqualityanalysisId] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field to store source unique identifier values for the entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the Water Quality Analysis. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the type of analysis performed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'analysismethod';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the Water Quality Analysis. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Indicates the date and time at which the water quality analysis started', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'analysisstartdate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'tion	Optional field to provide the comments from the lab regarding the analysis method being performed', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'laboratorycomments';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'waterqualityanalysisId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates the name of the lab that carried out the water quality analysis.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'laboratoryname';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WaterQualityAnalysis', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

