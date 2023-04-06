CREATE TABLE [dbo].[Facility] (
    [facilityid]        UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [waterstressedarea] BIT              NULL,
    PRIMARY KEY CLUSTERED ([facilityid] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'facilityid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates whether the facility is located in a water stressed area or not', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Facility', @level2type = N'COLUMN', @level2name = N'waterstressedarea';


GO

