CREATE TABLE IF NOT EXISTS tbl_org_broker_account (
    org_id UUID NOT NULL REFERENCES tbl_org (org_id),
    broker_id UUID DEFAULT uuid_generate_v4 () NOT NULL PRIMARY KEY,
    broker_firm_name VARCHAR(256) NOT NULL,
    broker_first_name VARCHAR(200) NOT NULL,
    broker_last_name VARCHAR(200) NOT NULL,
    broker_email_id VARCHAR(256) NOT NULL,
    broker_contact_no VARCHAR(10) NOT NULL,
    broker_address VARCHAR(100) NOT NULL,
	broker_country VARCHAR(50) NOT NULL,
	broker_state VARCHAR(50) NOT NULL,
	broker_city VARCHAR(50) NOT NULL,
	broker_zip_code VARCHAR(10) NOT NULL,
    broker_account_enabled_YN CHAR(1) NOT NULL
);