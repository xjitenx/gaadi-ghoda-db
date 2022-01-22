CREATE TABLE IF NOT EXISTS tbl_org (
    id uuid DEFAULT uuid_generate_v4 () NOT NULL PRIMARY KEY,
    org_firm_name VARCHAR(200) NOT NULL,
    org_first_name VARCHAR(200) NOT NULL,
    org_last_name VARCHAR(200) NOT NULL,
    org_email_id VARCHAR(200) NOT NULL,
    org_contact_no VARCHAR(10) NOT NULL,
    org_address VARCHAR(100) NOT NULL,
	org_country VARCHAR(50) NOT NULL,
	org_state VARCHAR(50) NOT NULL,
	org_city VARCHAR(50) NOT NULL,
	org_zip_code VARCHAR(10) NOT NULL,
    org_enabled_YN CHAR(1) NOT NULL
);