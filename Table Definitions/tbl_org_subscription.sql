CREATE TABLE IF NOT EXISTS tbl_org (
    org_id UUID NOT NULL REFERENCES tbl_org (org_id),
    bookie_access_YN CHAR(1) NOT NULL,
    broker_access_YN CHAR(1) NOT NULL,
    bookie_start_date TIMESTAMP,
    broker_start_date TIMESTAMP,
);