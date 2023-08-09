CREATE TABLE IF NOT EXISTS deals (
	id BIGINT DEFAULT nextval('deals_id_seq') PRIMARY KEY,
	name character varying(100) DEFAULT NULL::character varying,
	product_cat_id bigint NOT NULL,
	updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    created_at TIMESTAMP NOT NULL,
	free_period smallint,
	price_commitment_period smallint DEFAULT '1'::smallint,
	presentment_start_date date,
	presentment_end_date date,
	description character varying(256) DEFAULT NULL::character varying,
	promotion_id bigint,
	walkout boolean DEFAULT false,
	status character varying(30) DEFAULT 'draft'::character varying NOT NULL,
	deal_type character varying(30) DEFAULT 'SUBSCRIPTION'::character varying NOT NULL
);
