CREATE TABLE IF NOT EXISTS tbl_user (
    org_id UUID NOT NULL REFERENCES tbl_org (org_id),
    user_id UUID DEFAULT uuid_generate_v4 () NOT NULL PRIMARY KEY,
    user_first_name VARCHAR(200) NOT NULL,
    user_last_name VARCHAR(200) NOT NULL,
    user_email_id VARCHAR(200) NOT NULL,
    user_contact_no VARCHAR(10) NOT NULL,
    user_enabled_YN CHAR(1) NOT NULL,
    user_login_date_time TIMESTAMP,
    user_login_fail_tries SMALLINT,
    user_password VARCHAR(25) NOT NULL
);
