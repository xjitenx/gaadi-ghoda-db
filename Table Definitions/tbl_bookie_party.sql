CREATE TABLE IF NOT EXISTS tbl_bookie_party (
    org_id UUID NOT NULL REFERENCES tbl_org (org_id),
    party_id UUID DEFAULT uuid_generate_v4 () NOT NULL PRIMARY KEY,
    party_name VARCHAR(256) NOT NULL,
    party_person_first_name VARCHAR(200) NOT NULL,
    party_person_last_name VARCHAR(200) NOT NULL,
    party_email_id VARCHAR(256) NOT NULL,
    party_contact_no VARCHAR(10) NOT NULL,
    party_address VARCHAR(100) NOT NULL,
	party_country VARCHAR(50) NOT NULL,
	party_state VARCHAR(50) NOT NULL,
	party_city VARCHAR(50) NOT NULL,
	party_zip_code VARCHAR(10) NOT NULL
);
