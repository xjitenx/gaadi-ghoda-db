CREATE TABLE IF NOT EXISTS tbl_org_bookie_account (
    org_id UUID NOT NULL REFERENCES tbl_org (org_id),
    bookie_id UUID DEFAULT uuid_generate_v4 () NOT NULL PRIMARY KEY,
    bookie_firm_name VARCHAR(256) NOT NULL,
    bookie_first_name VARCHAR(200) NOT NULL,
    bookie_last_name VARCHAR(200) NOT NULL,
    bookie_email_id VARCHAR(256) NOT NULL,
    bookie_contact_no VARCHAR(10) NOT NULL,
    bookie_address VARCHAR(100) NOT NULL,
	bookie_country VARCHAR(50) NOT NULL,
	bookie_state VARCHAR(50) NOT NULL,
	bookie_city VARCHAR(50) NOT NULL,
	bookie_zip_code VARCHAR(10) NOT NULL,
    bookie_account_enabled_YN CHAR(1) NOT NULL
);