CREATE TABLE IF NOT EXISTS TblOrgSubscription (
    OrgId UUID NOT NULL REFERENCES TblOrg (Id),
    BookieAccessYN CHAR(1) NOT NULL,
    BrokerAccessYN CHAR(1) NOT NULL,
    BookieStartDate TIMESTAMP,
    BrokerStartDate TIMESTAMP
);