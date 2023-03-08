CREATE TABLE [dbo].[OrganizationalUnit] (
    [sustainabilityorganizationalunitId] UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                          DATETIME         NULL,
    [modifiedOn]                         DATETIME         NULL,
    [statecode]                          INT              NOT NULL,
    [statuscode]                         INT              NULL,
    [importSequenceNumber]               INT              NULL,
    [overriddenCreatedOn]                DATETIME         NULL,
    [timeZoneRuleVersionNumber]          INT              NULL,
    [UTCConversionTimeZoneCode]          INT              NULL,
    [name]                               NVARCHAR (100)   NULL,
    [addresscity]                        NVARCHAR (100)   NULL,
    [addresscountryisocode]              NVARCHAR (3)     NULL,
    [addresscounty]                      NVARCHAR (100)   NULL,
    [addressstateprovince]               NVARCHAR (100)   NULL,
    [addressstreet1]                     NVARCHAR (250)   NULL,
    [addressstreet2]                     NVARCHAR (250)   NULL,
    [addresszippostalcode]               NVARCHAR (20)    NULL,
    [description]                        NVARCHAR (100)   NULL,
    [latitude]                           NVARCHAR (100)   NULL,
    [longitude]                          NVARCHAR (100)   NULL,
    [organizationalunittype]             INT              NULL,
    [origincorrelationid]                NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([sustainabilityorganizationalunitId] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'This information can make it easier to submit reports for public disclosure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'longitude';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'This information can make it easier to submit reports for public disclosure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'latitude';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'organizationalunittype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The county/region in which the facility resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addresscounty';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The state or province in which the facility resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addressstateprovince';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The city in which the facility resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addresscity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The three letter ISO code of the country/region.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addresscountryisocode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Secondary street address information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addressstreet2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'sustainabilityorganizationalunitId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The street address including the number and street name of the facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addressstreet1';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description to give additional detail to the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The zip or postal code in which the facility resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalUnit', @level2type = N'COLUMN', @level2name = N'addresszippostalcode';


GO

