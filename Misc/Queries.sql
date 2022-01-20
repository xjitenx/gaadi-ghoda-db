
	
	INSERT INTO public.tbl_org (
org_person_name, org_email_id, org_contact_no, org_address, org_enabled_yn) VALUES (
'Jitender Sharma'::character varying, 'jitender.gow@gmail.com'::character varying, '1231231231'::character varying, 'Gandhidham, Gujarat'::character varying, 'Y')
 returning org_id;
 
	INSERT INTO public.tbl_org_subscription (
org_id, bookie_subscription_count, broker_subscription_count, subscription_start_date, subscription_end_date) VALUES (
'd87005c6-9a10-41be-a83a-bdf8f52d3e90'::uuid, '1'::smallint, '0'::smallint, '2021-11-06 12:33:24.847166+05:30'::timestamp without time zone, '2022-11-06 12:33:24.847166+05:30'::timestamp without time zone)
 returning org_id;
 
 
 
	INSERT INTO public.tbl_user (
user_login_date_time, org_id, user_first_name, user_last_name, user_email_id, user_contact_no, user_enabled_yn, user_login_allowed_yn, user_login_fail_tries, bookie_access_yn, broker_access_yn, user_password) VALUES (
'2021-11-06 12:33:24.847166+05:30'::timestamp without time zone, 'd87005c6-9a10-41be-a83a-bdf8f52d3e90'::uuid, 'Jitender'::character varying, 'Sharma'::character varying, 'jitender.gow@gmail.com'::character varying, '1231231231'::character varying, 'Y', 'Y', '0'::smallint, 'Y', 'N', 'poplol123'::character varying)
 returning user_id;
 
 
	INSERT INTO public.tbl_org_bookies (
org_id, org_bookie_firm_name, org_bookie_person_name, org_bookie_email_id, org_bookie_contact_no, org_bookie_address) VALUES (
'd87005c6-9a10-41be-a83a-bdf8f52d3e90'::uuid, 'Parul Roadlines'::character varying, 'Jitender Sharma
'::character varying, 'jitender.gow@gmail.com'::character varying, '1231231231'::character varying, 'Gandhidham, Gujarat'::character varying)
 returning org_bookie_id;