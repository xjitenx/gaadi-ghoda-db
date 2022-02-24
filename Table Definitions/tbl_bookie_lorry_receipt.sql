CREATE SEQUENCE IF NOT EXISTS lorry_receipt_no_seq;

CREATE TABLE IF NOT EXISTS tbl_bookie_lorry_receipt (
    OrgId UUID NOT NULL REFERENCES tbl_org (Id),
    BookieId UUID NOT NULL REFERENCES tbl_org_account (Id),
    Id UUID DEFAULT UUID_GENERATE_V4 () NOT NULL PRIMARY KEY,
    No INTEGER NOT NULL DEFAULT NEXTVAL('lorry_receipt_no_seq'),
    Origin VARCHAR(64) NOT NULL,
    Destination VARCHAR(64) NOT NULL,
    Weight NUMERIC NOT NULL,
    Rate NUMERIC NOT NULL,
    VehicleNo VARCHAR(10) NOT NULL,
    PartyId UUID NOT NULL REFERENCES tbl_bookie_party (Id),
    BrokerId UUID NOT NULL REFERENCES tbl_bookie_broker (Id),
    CreatedAt TIMESTAMP
);
