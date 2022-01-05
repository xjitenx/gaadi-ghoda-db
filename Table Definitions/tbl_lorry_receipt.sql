CREATE SEQUENCE IF NOT EXISTS tbl_lorry_receipt_lorry_receipt_no_seq;

CREATE TABLE IF NOT EXISTS tbl_lorry_receipt (
    org_id UUID NOT NULL REFERENCES tbl_org (org_id),
    lorry_receipt_id UUID DEFAULT uuid_generate_v4 () NOT NULL PRIMARY KEY,
    lorry_receipt_no INTEGER NOT NULL DEFAULT nextval('tbl_lorry_receipt_lorry_receipt_no_seq'),
    lorry_receipt_origin VARCHAR(100) NOT NULL,
    lorry_receipt_destination VARCHAR(100) NOT NULL,
    lorry_receipt_weight NUMERIC NOT NULL,
    lorry_receipt_rate NUMERIC NOT NULL,
    lorry_receipt_party_id UUID NOT NULL REFERENCES tbl_bookie_party (party_id),
    lorry_receipt_broker_id UUID NOT NULL REFERENCES tbl_bookie_broker (broker_id),
    lorry_receipt_vehicle_no VARCHAR(10) NOT NULL
);
