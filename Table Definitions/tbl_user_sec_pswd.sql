CREATE TABLE IF NOT EXISTS tbl_user_sec_pswd (
    OrgId UUID NOT NULL REFERENCES tbl_org (Id),
    UserId UUID NOT NULL REFERENCES tbl_user (Id),
    Password VARCHAR(25) NOT NULL,
    LoginDateTime TIMESTAMP,
    LoginFailTries SMALLINT DEFAULT 0
);
