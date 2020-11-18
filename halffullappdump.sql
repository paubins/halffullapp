--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: halffullapp; Type: SCHEMA; Schema: -; Owner: halffullapp
--

CREATE SCHEMA halffullapp;


ALTER SCHEMA halffullapp OWNER TO halffullapp;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE halffullapp.auth_group OWNER TO halffullapp;

--
-- Name: auth_group_permissions; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE halffullapp.auth_group_permissions OWNER TO halffullapp;

--
-- Name: auth_permission; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE halffullapp.auth_permission OWNER TO halffullapp;

--
-- Name: auth_user; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE halffullapp.auth_user OWNER TO halffullapp;

--
-- Name: auth_user_groups; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE halffullapp.auth_user_groups OWNER TO halffullapp;

--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE halffullapp.auth_user_user_permissions OWNER TO halffullapp;

--
-- Name: django_admin_log; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag integer NOT NULL,
    change_message text NOT NULL
);


ALTER TABLE halffullapp.django_admin_log OWNER TO halffullapp;

--
-- Name: django_content_type; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE halffullapp.django_content_type OWNER TO halffullapp;

--
-- Name: django_session; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE halffullapp.django_session OWNER TO halffullapp;

--
-- Name: django_site; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE halffullapp.django_site OWNER TO halffullapp;

--
-- Name: quotes_quote; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.quotes_quote (
    id integer NOT NULL,
    mood character varying(15) NOT NULL,
    attribution character varying(255) NOT NULL,
    color character varying(10),
    lang character varying(10),
    quote text
);


ALTER TABLE halffullapp.quotes_quote OWNER TO halffullapp;

--
-- Name: quotes_quote_translated_quotes; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.quotes_quote_translated_quotes (
    id integer NOT NULL,
    from_quote_id integer NOT NULL,
    to_quote_id integer NOT NULL
);


ALTER TABLE halffullapp.quotes_quote_translated_quotes OWNER TO halffullapp;

--
-- Name: south_migrationhistory; Type: TABLE; Schema: halffullapp; Owner: halffullapp
--

CREATE TABLE halffullapp.south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE halffullapp.south_migrationhistory OWNER TO halffullapp;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
22	Can add quote	8	add_quote
23	Can change quote	8	change_quote
24	Can delete quote	8	delete_quote
25	Can add migration history	9	add_migrationhistory
26	Can change migration history	9	change_migrationhistory
27	Can delete migration history	9	delete_migrationhistory
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$10000$U2xMggckp2I1$VtfY7t7ZUbApDux+bsbW8G2DeLfMXEbnVt+oNnrjeAg=	2013-08-30 01:17:29-07	t	admin			paubin12@gmail.com	t	t	2013-08-16 04:46:22-07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2013-08-16 05:02:42-07	1	8	1	Quote object	1	
2	2013-08-16 05:02:51-07	1	8	2	Quote object	1	
3	2013-08-16 05:03:01-07	1	8	3	Quote object	1	
4	2013-08-16 05:03:10-07	1	8	4	Quote object	1	
5	2013-08-16 05:03:18-07	1	8	5	Quote object	1	
6	2013-08-16 05:05:59-07	1	8	5	Quote object	3	
7	2013-08-16 05:05:59-07	1	8	4	Quote object	3	
8	2013-08-16 05:05:59-07	1	8	3	Quote object	3	
9	2013-08-16 05:05:59-07	1	8	2	Quote object	3	
10	2013-08-16 05:05:59-07	1	8	1	Quote object	3	
11	2013-08-16 05:15:51-07	1	8	6	Quote object	1	
12	2013-08-16 05:16:14-07	1	8	7	Quote object	1	
13	2013-08-16 06:03:07-07	1	8	8	Quote object	1	
14	2013-08-16 06:03:22-07	1	8	9	Quote object	1	
15	2013-08-16 06:03:40-07	1	8	10	Quote object	1	
16	2013-08-16 06:04:01-07	1	8	11	Quote object	1	
17	2013-08-16 06:04:24-07	1	8	12	Quote object	1	
18	2013-08-16 06:04:39-07	1	8	13	Quote object	1	
19	2013-08-16 06:04:57-07	1	8	14	Quote object	1	
20	2013-08-16 06:05:14-07	1	8	15	Quote object	1	
21	2013-08-16 06:05:30-07	1	8	16	Quote object	1	
22	2013-08-16 06:05:53-07	1	8	17	Quote object	1	
23	2013-08-16 06:06:10-07	1	8	18	Quote object	1	
24	2013-08-16 06:06:26-07	1	8	19	Quote object	1	
25	2013-08-16 06:06:41-07	1	8	20	Quote object	1	
26	2013-08-16 06:06:55-07	1	8	21	Quote object	1	
27	2013-08-16 06:07:18-07	1	8	22	Quote object	1	
28	2013-08-16 06:07:37-07	1	8	23	Quote object	1	
29	2013-08-16 06:07:55-07	1	8	24	Quote object	1	
30	2013-08-16 06:08:15-07	1	8	25	Quote object	1	
31	2013-08-16 06:08:31-07	1	8	26	Quote object	1	
32	2013-08-16 06:08:56-07	1	8	27	Quote object	1	
33	2013-08-16 06:09:21-07	1	8	28	Quote object	1	
34	2013-08-16 06:09:38-07	1	8	29	Quote object	1	
35	2013-08-16 06:09:59-07	1	8	30	Quote object	1	
36	2013-08-16 06:10:13-07	1	8	31	Quote object	1	
37	2013-08-16 06:10:37-07	1	8	32	Quote object	1	
38	2013-08-16 06:10:51-07	1	8	33	Quote object	1	
39	2013-08-16 06:11:06-07	1	8	34	Quote object	1	
40	2013-08-16 06:11:20-07	1	8	35	Quote object	1	
41	2013-08-16 06:11:37-07	1	8	36	Quote object	1	
42	2013-08-16 06:12:11-07	1	8	37	Quote object	1	
43	2013-08-16 06:12:21-07	1	8	38	Quote object	1	
44	2013-08-16 06:12:40-07	1	8	39	Quote object	1	
45	2013-08-16 06:13:02-07	1	8	40	Quote object	1	
46	2013-08-16 06:13:25-07	1	8	41	Quote object	1	
47	2013-08-16 06:13:43-07	1	8	42	Quote object	1	
48	2013-08-16 06:14:11-07	1	8	43	Quote object	1	
49	2013-08-16 06:14:31-07	1	8	44	Quote object	1	
50	2013-08-16 06:14:53-07	1	8	45	Quote object	1	
51	2013-08-16 06:15:09-07	1	8	46	Quote object	1	
52	2013-08-16 06:15:47-07	1	8	47	Quote object	1	
53	2013-08-16 06:16:03-07	1	8	48	Quote object	1	
54	2013-08-16 06:16:33-07	1	8	49	Quote object	1	
55	2013-08-16 06:16:48-07	1	8	50	Quote object	1	
56	2013-08-16 06:17:03-07	1	8	51	Quote object	1	
57	2013-08-16 06:18:03-07	1	8	52	Quote object	1	
58	2013-08-16 06:18:16-07	1	8	53	Quote object	1	
59	2013-08-16 06:18:33-07	1	8	54	Quote object	1	
60	2013-08-16 06:18:50-07	1	8	55	Quote object	1	
61	2013-08-16 06:19:05-07	1	8	56	Quote object	1	
62	2013-08-16 06:19:23-07	1	8	57	Quote object	1	
63	2013-08-16 06:19:43-07	1	8	58	Quote object	1	
64	2013-08-16 06:20:10-07	1	8	59	Quote object	1	
65	2013-08-16 06:20:26-07	1	8	60	Quote object	1	
66	2013-08-16 06:20:42-07	1	8	61	Quote object	1	
67	2013-08-16 06:21:08-07	1	8	62	Quote object	1	
68	2013-08-16 06:21:30-07	1	8	62	Quote object	2	Changed quote.
69	2013-08-16 06:21:46-07	1	8	63	Quote object	1	
70	2013-08-16 06:22:11-07	1	8	64	Quote object	1	
71	2013-08-16 06:22:30-07	1	8	65	Quote object	1	
72	2013-08-16 06:22:51-07	1	8	66	Quote object	1	
73	2013-08-16 06:23:43-07	1	8	67	Quote object	1	
74	2013-08-16 07:48:05-07	1	8	69	Quote object	3	
75	2013-08-19 06:30:17-07	1	8	6	Quote object	2	Changed quote.
76	2013-08-19 06:30:29-07	1	8	7	Quote object	2	Changed quote.
77	2013-08-19 06:30:38-07	1	8	8	Quote object	2	Changed quote.
78	2013-08-19 06:30:45-07	1	8	9	Quote object	2	Changed quote.
79	2013-08-19 06:30:55-07	1	8	10	Quote object	2	Changed quote.
80	2013-08-19 06:31:24-07	1	8	17	Quote object	2	Changed quote.
81	2013-08-19 06:31:33-07	1	8	18	Quote object	2	Changed quote.
82	2013-08-19 06:31:41-07	1	8	19	Quote object	2	Changed quote.
83	2013-08-19 06:31:49-07	1	8	20	Quote object	2	Changed quote.
84	2013-08-19 06:31:59-07	1	8	21	Quote object	2	Changed quote.
85	2013-08-19 06:32:22-07	1	8	27	Quote object	2	Changed quote.
86	2013-08-19 06:32:29-07	1	8	28	Quote object	2	Changed quote.
87	2013-08-19 06:32:38-07	1	8	29	Quote object	2	Changed quote.
88	2013-08-19 06:32:46-07	1	8	30	Quote object	2	Changed quote.
89	2013-08-19 06:32:54-07	1	8	31	Quote object	2	Changed quote.
90	2013-08-19 06:33:30-07	1	8	59	Quote object	2	Changed quote.
91	2013-08-19 06:33:40-07	1	8	60	Quote object	2	Changed quote.
92	2013-08-19 06:33:48-07	1	8	61	Quote object	2	Changed quote.
93	2013-08-19 06:34:06-07	1	8	62	Quote object	2	Changed quote.
94	2013-08-19 06:34:26-07	1	8	58	Quote object	2	Changed quote.
95	2013-08-19 06:34:34-07	1	8	57	Quote object	2	Changed quote.
96	2013-08-19 06:34:43-07	1	8	56	Quote object	2	Changed quote.
97	2013-08-19 06:34:52-07	1	8	55	Quote object	2	Changed quote.
98	2013-08-19 06:35:17-07	1	8	54	Quote object	2	Changed quote.
99	2013-08-19 06:35:28-07	1	8	53	Quote object	2	Changed quote.
100	2013-08-19 06:35:36-07	1	8	52	Quote object	2	Changed quote.
101	2013-08-19 06:36:11-07	1	8	16	Quote object	2	Changed quote.
102	2013-08-19 06:36:22-07	1	8	15	Quote object	2	Changed quote.
103	2013-08-19 06:36:30-07	1	8	14	Quote object	2	Changed quote.
104	2013-08-19 06:36:41-07	1	8	13	Quote object	2	Changed quote.
105	2013-08-19 06:36:51-07	1	8	12	Quote object	2	Changed quote.
106	2013-08-19 06:37:09-07	1	8	11	Quote object	2	Changed quote.
107	2013-08-19 06:37:31-07	1	8	47	Quote object	2	Changed quote.
108	2013-08-19 06:37:43-07	1	8	48	Quote object	2	Changed quote.
109	2013-08-19 06:37:52-07	1	8	49	Quote object	2	Changed quote.
110	2013-08-19 06:38:00-07	1	8	50	Quote object	2	Changed quote.
111	2013-08-19 06:38:09-07	1	8	51	Quote object	2	Changed quote.
112	2013-08-19 06:38:35-07	1	8	22	Quote object	2	Changed quote.
113	2013-08-19 06:38:43-07	1	8	23	Quote object	2	Changed quote.
114	2013-08-19 06:38:51-07	1	8	24	Quote object	2	Changed quote.
115	2013-08-19 06:39:00-07	1	8	25	Quote object	2	Changed quote.
116	2013-08-19 06:39:09-07	1	8	26	Quote object	2	Changed quote.
117	2013-08-19 06:39:30-07	1	8	42	Quote object	2	Changed quote.
118	2013-08-19 06:39:39-07	1	8	43	Quote object	2	Changed quote.
119	2013-08-19 06:39:47-07	1	8	44	Quote object	2	Changed quote.
120	2013-08-19 06:39:54-07	1	8	45	Quote object	2	Changed quote.
121	2013-08-19 06:40:02-07	1	8	46	Quote object	2	Changed quote.
122	2013-08-19 06:40:26-07	1	8	37	Quote object	2	Changed quote.
123	2013-08-19 06:40:36-07	1	8	38	Quote object	2	Changed quote.
124	2013-08-19 06:40:45-07	1	8	39	Quote object	2	Changed quote.
125	2013-08-19 06:40:55-07	1	8	40	Quote object	2	Changed quote.
126	2013-08-19 06:41:07-07	1	8	41	Quote object	2	Changed quote.
127	2013-08-19 06:41:46-07	1	8	63	Quote object	2	Changed quote.
128	2013-08-19 06:41:55-07	1	8	64	Quote object	2	Changed quote.
129	2013-08-19 06:42:12-07	1	8	66	Quote object	2	Changed quote.
130	2013-08-19 06:42:21-07	1	8	65	Quote object	2	Changed quote.
131	2013-08-19 06:42:36-07	1	8	67	Quote object	2	Changed quote.
132	2013-08-19 06:43:12-07	1	8	32	Quote object	2	Changed quote.
133	2013-08-19 06:43:26-07	1	8	33	Quote object	2	Changed quote.
134	2013-08-19 06:43:36-07	1	8	34	Quote object	2	Changed quote.
135	2013-08-19 06:43:43-07	1	8	35	Quote object	2	Changed quote.
136	2013-08-19 06:43:50-07	1	8	36	Quote object	2	Changed quote.
137	2013-08-19 06:44:00-07	1	8	70	Quote object	3	
138	2013-08-19 06:55:44-07	1	8	78	Quote object	3	
139	2013-08-19 06:55:44-07	1	8	77	Quote object	3	
140	2013-08-19 06:55:44-07	1	8	76	Quote object	3	
141	2013-08-19 06:55:44-07	1	8	75	Quote object	3	
142	2013-08-19 06:58:38-07	1	8	106	Quote object	3	
143	2013-08-19 06:58:38-07	1	8	105	Quote object	3	
144	2013-08-19 06:58:38-07	1	8	104	Quote object	3	
145	2013-08-19 06:58:38-07	1	8	103	Quote object	3	
146	2013-08-19 06:58:38-07	1	8	102	Quote object	3	
147	2013-08-19 06:58:38-07	1	8	101	Quote object	3	
148	2013-08-19 06:58:38-07	1	8	100	Quote object	3	
149	2013-08-19 06:58:38-07	1	8	99	Quote object	3	
150	2013-08-19 06:58:38-07	1	8	98	Quote object	3	
151	2013-08-19 06:58:38-07	1	8	97	Quote object	3	
152	2013-08-19 06:58:38-07	1	8	96	Quote object	3	
153	2013-08-19 06:58:38-07	1	8	95	Quote object	3	
154	2013-08-19 06:58:38-07	1	8	94	Quote object	3	
155	2013-08-19 06:58:38-07	1	8	93	Quote object	3	
156	2013-08-19 06:58:38-07	1	8	92	Quote object	3	
157	2013-08-19 06:58:38-07	1	8	91	Quote object	3	
158	2013-08-19 06:58:38-07	1	8	90	Quote object	3	
159	2013-08-19 06:58:38-07	1	8	89	Quote object	3	
160	2013-08-19 06:58:38-07	1	8	88	Quote object	3	
161	2013-08-19 06:58:38-07	1	8	87	Quote object	3	
162	2013-08-19 06:58:38-07	1	8	86	Quote object	3	
163	2013-08-19 06:58:38-07	1	8	85	Quote object	3	
164	2013-08-19 06:58:38-07	1	8	84	Quote object	3	
165	2013-08-19 06:58:38-07	1	8	83	Quote object	3	
166	2013-08-19 06:58:38-07	1	8	82	Quote object	3	
167	2013-08-19 06:58:38-07	1	8	81	Quote object	3	
168	2013-08-19 06:58:38-07	1	8	80	Quote object	3	
169	2013-08-19 06:58:38-07	1	8	79	Quote object	3	
170	2013-08-30 01:29:22-07	1	8	1737	Quote object	2	No fields changed.
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	log entry	admin	logentry
8	quote	quotes	quote
9	migration history	south	migrationhistory
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.django_session (session_key, session_data, expire_date) FROM stdin;
4gstsaj84st9kve3npio4vflzswcx6qv	Y2FlODIxNGNiZWFhZmU3NzRlNjMyZDdhZmIxZjg5NDk4MmI4ZGQwODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-08-31 07:41:24-07
4w7xi89to3uhocza982p289suljbwqcj	YjQyNDA1MGY0YjQyMzA5NTEzZDNiMTU2NmJlNTg2MzM1YzdmNDZjZTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==	2013-09-02 07:05:59-07
77k3iex5rqwwl3zn7jggssbmw0btb6kz	YjQyNDA1MGY0YjQyMzA5NTEzZDNiMTU2NmJlNTg2MzM1YzdmNDZjZTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==	2013-09-13 01:17:29-07
dw0itixvchg45nzpvkc9n6r3m9h2visd	YjQyNDA1MGY0YjQyMzA5NTEzZDNiMTU2NmJlNTg2MzM1YzdmNDZjZTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==	2013-08-30 04:54:21-07
snvfj3mikjo0p7gppnhlplgda0a5zi91	YjQyNDA1MGY0YjQyMzA5NTEzZDNiMTU2NmJlNTg2MzM1YzdmNDZjZTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==	2013-09-13 00:25:23-07
wzjcli76102oiv54mklgd2b3wuep9z3v	YjQyNDA1MGY0YjQyMzA5NTEzZDNiMTU2NmJlNTg2MzM1YzdmNDZjZTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==	2013-09-03 08:04:49-07
y1fha7zt8sxaxbjgsz78oz5mri8cggpa	YjQyNDA1MGY0YjQyMzA5NTEzZDNiMTU2NmJlNTg2MzM1YzdmNDZjZTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==	2013-09-02 06:20:10-07
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: quotes_quote; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.quotes_quote (id, mood, attribution, color, lang, quote) FROM stdin;
6	angry	Zora Neale Hurston		en	Sometimes, I feel discriminated against, but it does not make me angry. It merely astonishes me. How can any deny themselves the pleasure of my company? It's beyond me.
7	angry	Samuel L. Jackson		en	I'm not as angry as I used to be. But I can get in touch with that anger pretty quickly if I feel my space is being invaded or somebody is not treating me with the respect that I think I want.
8	angry	Henry Rollins		en	I'm mellower now, I'm over 50. But I don't think I'm too mellow. I'm still angry at a lot of things.
9	angry	Joe Moore		en	It's practically impossible to look at a penguin and feel angry.
10	angry	Margaret Smith		en	My uncle Sammy was an angry man. He had printed on his tombstone: What are you looking at?
11	impatient	George Carlin		en	When someone is impatient and says, 'I haven't got all day,' I always wonder, How can that be? How can you not have all day?
12	impatient	John Cale		en	I'm impatient. I get twitchy. When I get that feeling I just go out and make something happen.
13	impatient	Rita Mae Brown		en	Intuition is a suspension of logic due to impatience.
14	impatient	W. H. Auden		en	The ear tends to be lazy, craves the familiar and is shocked by the unexpected; the eye, on the other hand, tends to be impatient, craves the novel and is bored by repetition.
15	impatient	Jarod Kintz		en	I told her I'd wait forever for her, but that was before I found somebody else who'd give me a ride home.
16	impatient	Rachael Ray		en	EVOO is extra-virgin olive oil. I first coined 'EVOO' on my cooking show because saying 'extra virgin olive oil' over and over was wordy, and I'm an impatient girl - that's why I make 30-minute meals!
17	anxious	Lucius Annaeus Seneca		en	True happiness is... to enjoy the present, without anxious dependence upon the future.
18	anxious	Henry David Thoreau		en	There are moments when all anxiety and stated toil are becalmed in the infinite leisure and repose of nature.
19	anxious	Charles Spurgeon		en	Anxiety does not empty tomorrow of its sorrows, but only empties today of its strength.
20	anxious	Plato		en	Nothing in the affairs of men is worthy of great anxiety.
21	anxious	Chanakya		en	We should not fret for what is past, nor should we be anxious about the future; men of discernment deal only with the present moment.
22	lonely	Bette Davis		en	To fulfill a dream, to be allowed to sweat over lonely labor, to be given a chance to create, is the meat and potatoes of life. The money is the gravy.
23	lonely	Bill Murray		en	No one really wants to admit they are lonely, and it is never really addressed very much between friends and family. But I have felt lonely many times in my life.
24	lonely	Robert Plant		en	I like the idea of being alone. I like the idea of often being alone in all aspects of my life. I like to feel lonely. I like to need things.
25	lonely	Judy Garland		en	If I'm such a legend, then why am I so lonely? Let me tell you, legends are all very well if you've got somebody around who loves you.
26	lonely	Charlie Sheen		en	For now, I'm just going to hang out with these two smoking hotties and fly privately around the world. It might be lonely up here, but I sure like the view.
27	depressed	Jeanette Winterson		en	Art saved me; it got me through my depression and self-loathing, back to a place of innocence.
28	depressed	Bo Bennett		en	The concept of the 'good ol' days' must be one of our society's biggest delusions, top reasons for depression, as well as most often used excuse for lack of success.
29	depressed	Ernest Hemingway		en	That terrible mood of depression of whether it's any good or not is what is known as The Artist's Reward.
30	depressed	Bob Geldof		en	Certainly, I think being depressed is absolutely part of the human condition, it has to be, if there's joy there's its opposite, and it's something you ride if you possibly can.
31	depressed	Nate Ruess		en	I kind of like being depressed.
32	tired	Alysha Speer		en	Sleep did not honor me with it’s presence.
33	tired	Kate Moss		en	I got tired of feeling like Dracula. I wanted to see some daylight, and not just at six o’clock in the morning.
34	tired	George Orwell		en	Winston was gelatinous with fatigue.
35	tired	Mae West		en	Ten men waiting for me at the door? Send one of them home, I'm tired.
36	tired	Jules Renard		en	Laziness is nothing more than the habit of resting before you get tired.
37	sad	Helen Keller		en	I seldom think about my limitations, and they never make me sad. Perhaps there is just a touch of yearning at times; but it is vague, like a breeze among flowers.
38	sad	Stephen Chbosky		en	So, this is my life. And I want you to know that I am both happy and sad and I'm still trying to figure out how that could be.
39	sad	Dr. Seuss		en	Don't cry because it's over, smile because it happened.
40	sad	W.P. Kinsella		en	Success is getting what you want, happiness is wanting what you get.
41	sad	L.M. Montgomery		en	It's been my experience that you can nearly always enjoy things if you make up your mind firmly that you will.
42	nostalgic	Salvador Plascencia		en	I don't know what they are called, the spaces between seconds– but I think of you always in those intervals.
43	nostalgic	Bo Bennett		en	The concept of the 'good ol' days' must be one of our society's biggest delusions, top reasons for depression, as well as most often used excuse for lack of success.
44	nostalgic	Marcel Proust		en	Remembrance of things past is not necessarily the remembrance of things as they were.
45	nostalgic	Carson McCullers		en	We are homesick most for the places we have never known.
46	nostalgic	Groucho Marx		en	I don’t have a photograph, but you can have my footprints. They’re upstairs in my socks.
47	jealous	Jarod Kintz		en	If I had a clone, he’d better be my equal, and not my better. Can you imagine how I’d feel being jealous of myself?
48	jealous	Mary Schmich		en	Don't waste time on jealousy. Sometimes you're ahead, sometimes you're behind.
49	jealous	Summer Altice		en	People are taken aback by a confident, pretty girl who knows what she wants in life and isn't going to let anyone get in her way. And you know what it's all about? Jealousy.
50	jealous	Saint Augustine		en	He that is jealous is not in love.
51	jealous	Rodney Dangerfield		en	My wife's jealousy is getting ridiculous. The other day she looked at my calendar and wanted to know who May was.
188	angry	Henry Rollins	\N	sk	Som mäkšie teraz som starší ako 50 rokov. Ale ja si nemyslím, že som príliš mäkký. Som stále naštvaná na veľa vecí.
52	guilty	Meredith Sapp		en	Mistakes are part of life, everyone makes them, everyone regrets them. But, some learn from them and some end up making them again. It's up to you to decide if you'll use your mistakes to your advantage.
53	guilty	Unknown		en	Rather than resenting that you must do it, or feeling guilty about the fact that you should do it, simply choose to do it.
54	guilty	Jane Austen		en	Let other pens dwell on guilt and misery.
55	guilty	Alexander McQueen		en	Of course I make mistakes. I'm human. If I didn't make mistakes, I'd never learn. You can only go forward by making mistakes.
56	guilty	Leo Burnett		en	To swear off making mistakes is very easy. All you have to do is swear off having ideas.
57	guilty	Sophia Loren		en	Mistakes are part of the dues one pays for a full life.
58	guilty	Chinese proverb		en	Fall down seven times, stand up eight.
59	dull	Mason Cooley		en	Worried about being a dull fellow? You might develop your talent for being irritating.
60	dull	Steve Jobs		en	Your time is limited, so don't waste it living someone else's life.
61	dull	Billy Graham		en	Only those who want everything done for them are bored.
62	dull	Louis CK		en	“I’m bored’ is a useless thing to say. I mean, you live in a great, big, vast world that you’ve seen none percent of. Even the inside of your own mind is endless; it goes on forever, inwardly, do you understand? The fact that you’re alive is amazing, so you don’t get to say ‘I’m bored.” 
63	scared	George Burns		en	I honestly think it is better to be a failure at something you love than to be a success at something you hate.
64	scared	Wayne Gretzky		en	You’ll always miss 100% of the shots you don’t take.
65	scared	Vincent van Gogh		en	What would life be if we had no courage to attempt anything?
66	scared	Michael Jordan		en	I can accept failure, everyone fails at something. But I can’t accept not trying.
67	scared	Simon Holt, The Devouring		en	If you dont know learn how to be scared, you'll never really learn how to be brave.
107	angry	Zora Neale Hurston	\N	ar	أحيانا، أشعر تمييز، بل أنها لا تجعلني غاضبة. انها مجرد يدهشني. كيف يمكن لأي تحرم نفسها من دواعي سروري ان شركتي؟ انها خارج عن ارادتي.
108	angry	Zora Neale Hurston	\N	ca	A vegades, em sento discriminat, però no em fa enutjar. Simplement em sorprèn. Com pot algú negar a si mateixos el plaer de la meva companyia? Està més enllà de mi.
109	angry	Zora Neale Hurston	\N	cs	Někdy se cítím diskriminován, ale to neznamená, že mě zlobí. Je to jen udivuje mě. Jak může někdo popřít sami potěšení z mé společnosti? Je to mimo mě.
110	angry	Zora Neale Hurston	\N	da	Nogle gange føler jeg diskrimineret, men det gør mig ikke vred. Den har blot undrer mig. Hvordan kan nogen fornægte sig selv fornøjelsen af ​​min virksomhed? Det er ud over mig.
111	angry	Zora Neale Hurston	\N	de	Manchmal fühle ich mich diskriminiert, aber es macht mich nicht wütend. Es erstaunt mich nur. Wie kann jeder sich selbst verleugnen das Vergnügen meines Unternehmens? Es ist mir ein Rätsel.
112	angry	Zora Neale Hurston	\N	el	Μερικές φορές, αισθάνομαι διακρίσεις, αλλά αυτό δεν με κάνει να θυμώσει. Είναι εκπλήσσει μόνο. Πώς μπορεί κάποιος να αρνηθεί τον εαυτό τους τη χαρά της επιχείρησής μου; Είναι πέρα ​​από μένα.
113	angry	Zora Neale Hurston	\N	en	Sometimes, I feel discriminated against, but it does not make me angry. It merely astonishes me. How can any deny themselves the pleasure of my company? It's beyond me.
114	angry	Zora Neale Hurston	\N	es	A veces, me siento discriminado, pero no me hace enojar. Simplemente me asombra. ¿Cómo puede alguno negar a sí mismos el placer de mi compañía? Está más allá de mí.
115	angry	Zora Neale Hurston	\N	fi	Joskus minusta tuntuu syrjitään, mutta se ei tee minut vihaiseksi. Se vain hämmästyttää minua. Kuinka kukaan kieltää itse ilo oman yrityksen? Se menee yli ymmärrykseni.
116	angry	Zora Neale Hurston	\N	fr	Parfois, je me sens victime de discrimination, mais il ne me mettent en colère. Il m'étonne simplement. Comment quelqu'un peut se refuser le plaisir de mon entreprise? C'est dehors de ma volonté.
117	angry	Zora Neale Hurston	\N	he	לפעמים, אני מרגיש מקופח, אבל זה לא גורם לי לכעוס. זה רק מדהים אותי. איך כל יכול להכחיש את עצמם את ההנאה של החברה שלי? זה נשגב מבינתי.
118	angry	Zora Neale Hurston	\N	hr	Ponekad, osjećam diskriminiran, ali to ne znači da sam ljuta. To samo me zapanjuje. Kako može zanijekati sebe bilo zadovoljstvo moje tvrtke? To je izvan mene.
119	angry	Zora Neale Hurston	\N	hu	Néha úgy érzem, hátrányos megkülönböztetést, de nem vagyok dühös. Csupán csodálkozom nekem. Hogyan tagadják magát az örömben, hogy a cég? Ez túl van rám.
120	angry	Zora Neale Hurston	\N	it	A volte, mi sento discriminato, ma non mi fa arrabbiare. E 'semplicemente mi stupisce. Come può qualsiasi stessi negare il piacere della mia azienda? E 'al di là di me.
121	angry	Zora Neale Hurston	\N	ja	時々、私は差別を感じるが、それは私を怒らせることはありません。それは単に私を驚か。どのように任意のは、それ自体が私の会社の喜びを否定することができますか？それは私を超えています。
122	angry	Zora Neale Hurston	\N	ko	때때로, 나는 차별을 느끼지만, 그것은 나를 화나게하지 않습니다. 그것은 단지 나를 놀라게. 어떻게라도 스스로 우리 회사의 즐거움을 거부 할 수 있습니다? 그것은 내 능력 밖이다.
123	angry	Zora Neale Hurston	\N	nb	Noen ganger føler jeg diskriminert, men det gjør ikke meg sint. Det forbauser bare meg. Hvordan kan noen nekte seg gleden av mitt selskap? Det er utenfor min forstand.
124	angry	Zora Neale Hurston	\N	nl	Soms voel ik me gediscrimineerd, maar het maakt me niet boos. Het verbaast me alleen maar. Hoe kan ieder zichzelf verloochenen het genoegen van mijn bedrijf? Het is mij een raadsel.
125	angry	Zora Neale Hurston	\N	pl	Czasami czuję się dyskryminowany, ale nie denerwuj mnie. To tylko mnie zdumiewa. Jak można wszelkie odmówić sobie przyjemności z mojej firmy? To jest poza mną.
126	angry	Zora Neale Hurston	\N	pt-PT	Às vezes, eu me sinto discriminada, mas não me faz raiva. Ele simplesmente me surpreende. Como nenhuma pode negar-se o prazer da minha companhia? É além de mim.
127	angry	Zora Neale Hurston	\N	pt-PT	Às vezes, eu me sinto discriminada, mas não me faz raiva. Ele simplesmente me surpreende. Como nenhuma pode negar-se o prazer da minha companhia? É além de mim.
128	angry	Zora Neale Hurston	\N	ro	Uneori, mă simt discriminat, dar nu ma face sa supărat. Este pur și simplu mă miră. Cum se poate nega orice se plăcerea companiei mele? Este dincolo de mine.
129	angry	Zora Neale Hurston	\N	ru	Иногда, я чувствую дискриминацию, но это не делает меня сердиться. Он просто меня удивляет. Как может отказывать себе в удовольствии моей компании? Это выше моего понимания.
130	angry	Zora Neale Hurston	\N	sk	Niekedy sa cítim diskriminovaný, ale to neznamená, že ma hnevá. Je to len udivuje ma. Ako môže niekto poprieť sami potešenie z mojej spoločnosti? Je to mimo mňa.
131	angry	Zora Neale Hurston	\N	sv	Ibland känner jag mig diskriminerad, men det gör mig inte arg. Det förvånar mig bara. Hur kan någon förneka sig själva nöjet att mitt företag? Det är för mig obegripligt.
132	angry	Zora Neale Hurston	\N	th	บางครั้งฉันรู้สึกต่อต้าน discriminated แต่มันไม่ทำให้ฉันโกรธ มันเป็นเพียงฉันตะลึง วิธีการใดสามารถปฏิเสธตัวเองความสุขของ บริษัท ของฉัน? มันเกินฉัน
133	angry	Zora Neale Hurston	\N	tr	Bazen, ayrımcılığa hissediyorum, ama bana kızgın yapmaz. Bu sadece beni hayrete düşürmektedir. Nasıl herhangi bir kendilerini benim şirket zevk inkar edebilir? Benim ötesinde.
134	angry	Zora Neale Hurston	\N	uk	Іноді, я відчуваю дискримінацію, але це не робить мене сердитися. Він просто мене дивує. Як може відмовляти собі в задоволенні моєї компанії? Це вище мого розуміння.
135	angry	Zora Neale Hurston	\N	zh-Hant	有時候，我覺得受歧視，但它不會讓我生氣。它只是會讓我吃驚。任何否認我公司自己的樂趣？這是超越我。
136	angry	Samuel L. Jackson	\N	ar	أنا لست غاضبا كما اعتدت أن أكون. ولكن يمكنني الحصول على اتصال مع أن الغضب بسرعة كبيرة إذا أشعر يتعرض للغزو الفضاء بلدي أو شخص ما لا علاج لي مع الاحترام الذي أعتقد أنني أريد.
137	angry	Samuel L. Jackson	\N	ca	No estic tan enutjat com jo solia ser. Però puc estar en contacte amb aquesta ira bastant ràpid si sento el meu espai està sent envaït o algú que no m'està tractant amb el respecte que crec que vull.
138	angry	Samuel L. Jackson	\N	cs	Já nejsem tak naštvaný, jak jsem býval. Ale můžu dostat do kontaktu s tímto hněvem docela rychle, když mám pocit, můj prostor je napadena nebo někdo není ke mně s úctou, že si myslím, že chci.
139	angry	Samuel L. Jackson	\N	da	Jeg er ikke så vred, som jeg plejede at være. Men jeg kan komme i kontakt med, at vrede temmelig hurtigt, hvis jeg føler, mit rum bliver invaderet eller nogen er ikke at behandle mig med den respekt, som jeg tror, ​​jeg vil have.
140	angry	Samuel L. Jackson	\N	de	Ich bin nicht so böse, wie ich früher war. Aber ich kann in Verbindung mit dieser Wut ziemlich schnell bekommen, wenn ich das Gefühl mein Haus eingedrungen wird oder jemand nicht behandeln mich mit Respekt, dass ich denke ich will.
141	angry	Samuel L. Jackson	\N	el	Δεν είμαι τόσο θυμωμένος όπως συνήθιζα να είναι. Αλλά μπορώ να έρθετε σε επαφή με το θυμό αρκετά γρήγορα, αν αισθάνομαι χώρο μου γίνεται εισβολή ή κάποιος που δεν μου φέρεται με τον σεβασμό που νομίζω ότι θέλω.
142	angry	Samuel L. Jackson	\N	en	I'm not as angry as I used to be. But I can get in touch with that anger pretty quickly if I feel my space is being invaded or somebody is not treating me with the respect that I think I want.
143	angry	Samuel L. Jackson	\N	es	No estoy tan enojado como yo solía ser. Pero puedo estar en contacto con esa ira bastante rápido si siento mi espacio está siendo invadido o alguien que no me está tratando con el respeto que creo que quiero.
144	angry	Samuel L. Jackson	\N	fi	En ole niin vihainen kuin olin ennen. Mutta voin ottaa yhteyttä, että viha melko nopeasti, jos tunnen tila on tunkeutunut tai jota joku ei kohtele minua kunnioituksella, että en usko, että haluan.
145	angry	Samuel L. Jackson	\N	fr	Je ne suis pas aussi en colère que je l'habitude d'être. Mais je peux entrer en contact avec cette colère assez rapidement si je sens que mon espace est envahi ou quelqu'un ne me traite pas avec le respect que je pense que je veux.
146	angry	Samuel L. Jackson	\N	he	אני לא כועס כפי שהיה פעם. אבל אני יכול ליצור קשר עם כעס הזה די מהר אם אני מרגיש הוא להיות פלש המרחב שלי או מישהו שאינו מתייחס אליי בכבוד שאני חושב שאני רוצה.
147	angry	Samuel L. Jackson	\N	hr	Nisam ljuta, kao što sam nekad bio. Ali ja mogu doći u dodir s tim ljutnje prilično brzo ako se osjećam moje mjesto je napadnuto ili netko nije me liječenje s obzirom da mislim da želim.
148	angry	Samuel L. Jackson	\N	hu	Én nem vagyok olyan dühös, mint voltam. De én fel a kapcsolatot, hogy a harag elég gyorsan, ha úgy érzem, hogy helyet is megszállták, vagy valaki nem bánik velem a tekintetben, hogy azt hiszem, amit akarok.
149	angry	Samuel L. Jackson	\N	it	Io non sono arrabbiato come ho usato per essere. Ma posso entrare in contatto con quella rabbia abbastanza rapidamente se sento il mio spazio è stata invasa o qualcuno non mi sta trattando con il rispetto che penso che voglio.
150	angry	Samuel L. Jackson	\N	ja	私は、私がために使用されるように怒っていないよ。私はスペースが侵略されているか、誰かが私が欲しいと思うことに関しては私の治療されていないと感じた場合はしかし、私はかなり迅速にその怒りと連絡をとることができます。
151	angry	Samuel L. Jackson	\N	ko	나는 예전처럼 화가 아니에요. 내 공간이 침공 중이거나 누군가가 내가 원하는 생각과 관련하여 저를 치료하지 않는 경우에 느끼면하지만 난 꽤 빨리 분노와 연락 할 수 있습니다.
152	angry	Samuel L. Jackson	\N	nb	Jeg er ikke så sint som jeg pleide å være. Men jeg kan komme i kontakt med at sinne ganske raskt hvis jeg føler at min plass blir invadert eller noen er ikke å behandle meg med respekt som jeg tror jeg vil ha.
153	angry	Samuel L. Jackson	\N	nl	Ik ben niet zo boos als ik vroeger. Maar ik kan in contact te komen met die woede vrij snel als ik voel mijn ruimte wordt binnengevallen of iemand me niet behandelen met het respect dat ik denk dat ik wil.
187	angry	Henry Rollins	\N	ru	Я сочнее сейчас, я старше 50 лет. Но я не думаю, что я слишком мягкий. Я все еще зол на многие вещи.
154	angry	Samuel L. Jackson	\N	pl	Nie jestem tak zły, jak ja kiedyś. Ale mogę się skontaktować z tym gniewem dość szybko, jeśli czuję, że moje miejsce jest atakowane lub ktoś nie traktuje mnie z szacunkiem, że myślę, że chcę.
155	angry	Samuel L. Jackson	\N	pt-PT	Eu não sou tão irritado como eu costumava ser. Mas eu posso entrar em contato com essa raiva rapidamente se eu sinto o meu espaço está sendo invadido ou alguém não está me tratando com o respeito que eu acho que eu quero.
156	angry	Samuel L. Jackson	\N	pt-PT	Eu não sou tão irritado como eu costumava ser. Mas eu posso entrar em contato com essa raiva rapidamente se eu sinto o meu espaço está sendo invadido ou alguém não está me tratando com o respeito que eu acho que eu quero.
157	angry	Samuel L. Jackson	\N	ro	Eu nu sunt la fel de supărat ca am folosit pentru a fi. Dar eu pot lua legătura cu furie destul de repede dacă mă simt spatiul meu este invadat sau cineva nu mă tratează cu respectul care cred ca vreau.
158	angry	Samuel L. Jackson	\N	ru	Я не такой злой, как я раньше. Но я могу войти в контакт с гневом, что довольно быстро, если я чувствую, что мое пространство вторгаются или кто-то не относится ко мне с уважением, которого я думаю, что я хочу.
159	angry	Samuel L. Jackson	\N	sk	Ja nie som tak naštvaný, ako som býval. Ale môžem dostať do kontaktu s týmto hnevom celkom rýchlo, keď mám pocit, môj priestor je napadnutá alebo niekto nie je ku mne s úctou, že si myslím, že chcem.
160	angry	Samuel L. Jackson	\N	sv	Jag är inte så arg som jag brukade vara. Men jag kan komma i kontakt med den ilska ganska snabbt om jag känner mitt utrymme invaderas eller någon inte behandlar mig med den respekt som jag tror att jag vill.
161	angry	Samuel L. Jackson	\N	th	ฉันไม่โกรธที่ฉันเคยเป็น แต่ฉันจะได้รับในการติดต่อกับความโกรธที่สวยได้อย่างรวดเร็วถ้าผมรู้สึกว่าพื้นที่ของฉันคือการถูกรุกรานหรือใครสักคนที่ไม่ได้รับการปฏิบัติด้วยความเคารพฉันที่ฉันคิดว่าฉันต้องการ
162	angry	Samuel L. Jackson	\N	tr	Ben eskiden kadar kızgın değilim. Ben alanı işgal ediliyor ya da birileri İstediğim düşünüyorum bana saygı ile tedavi değil hissediyorum ama ben çok hızlı bir şekilde bu öfke ile irtibata geçebilirsiniz.
163	angry	Samuel L. Jackson	\N	uk	Я не такий злий, як я раніше. Але я можу увійти в контакт з гнівом, що досить швидко, якщо я відчуваю, що моє простір вторгаються або хтось не відноситься до мене з повагою, якого я думаю, що я хочу.
164	angry	Samuel L. Jackson	\N	zh-Hant	我不生氣，因為我曾經是。但我可以觸摸憤怒很快，如果我覺得我的空間被入侵或有人對我的尊​​重，我想我要。
165	angry	Henry Rollins	\N	ar	أنا أنضج الآن، وأنا أكثر من 50. لكنني لا أعتقد أنني يانع جدا. أنا ما زلت غاضبة في الكثير من الأشياء.
166	angry	Henry Rollins	\N	ca	Jo sóc més suau ara, estic més de 50. Però no crec que sóc massa suau. Encara estic enfadat amb un munt de coses.
167	angry	Henry Rollins	\N	cs	Jsem měkčí teď jsem starší 50 let. Ale já si nemyslím, že jsem příliš měkký. Jsem stále naštvaná na spoustu věcí.
168	angry	Henry Rollins	\N	da	Jeg mellower nu er jeg over 50 år. Men jeg tror ikke, jeg er for mellow. Jeg er stadig vred på en masse ting.
169	angry	Henry Rollins	\N	de	Ich bin weicher jetzt, ich bin über 50 Jahre. Aber ich glaube nicht, ich bin zu weich. Ich bin immer noch wütend auf eine Menge Dinge.
170	angry	Henry Rollins	\N	el	Είμαι mellower τώρα, είμαι άνω των 50 ετών. Αλλά δεν νομίζω ότι είμαι πολύ ώριμος. Είμαι ακόμα θυμωμένος με πολλά πράγματα.
171	angry	Henry Rollins	\N	en	I'm mellower now, I'm over 50. But I don't think I'm too mellow. I'm still angry at a lot of things.
172	angry	Henry Rollins	\N	es	Yo soy más suave ahora, estoy más de 50. Pero no creo que soy demasiado suave. Todavía estoy enojado con un montón de cosas.
173	angry	Henry Rollins	\N	fi	Olen mellower nyt, olen yli 50. Mutta en usko, että olen liian täyteläinen. Olen yhä vihainen paljon asioita.
174	angry	Henry Rollins	\N	fr	Je suis plus mûr maintenant, je suis plus de 50 ans. Mais je ne pense pas que je suis trop moelleux. Je suis toujours en colère à beaucoup de choses.
175	angry	Henry Rollins	\N	he	אני mellower עכשיו, אני מעל גיל 50. אבל אני לא חושב שאני רך מדי. אני עדיין כועס על הרבה דברים.
176	angry	Henry Rollins	\N	hr	Ja sam mellower sada, ja sam preko 50 godina. Ali ja ne mislim da sam previše blag. Ja sam još uvijek ljut na puno stvari.
177	angry	Henry Rollins	\N	hu	Én lágyabb, most vagyok 50. De nem hiszem, hogy én vagyok túl érett. Még mindig dühös egy csomó dolgot.
178	angry	Henry Rollins	\N	it	Sono più dolce ora, sono più di 50. Ma io non credo di essere troppo morbido. Sono ancora arrabbiato con un sacco di cose.
179	angry	Henry Rollins	\N	ja	私は今、まろやかだけど、私は50歳以上だ。しかし、私はあまりにもまろやかだとは思わない。私はまだ多くのことで怒ってんだ。
180	angry	Henry Rollins	\N	ko	지금 감미로운 해요, 나는 50 세가 넘었어요. 하지만 난 너무 부드러운라고 생각하지 않습니다. 난 여전히 많은 것들을 화가 해요.
181	angry	Henry Rollins	\N	nb	Jeg mellower nå, jeg er over 50 år. Men jeg tror ikke jeg er for myk. Jeg er fortsatt sint på en masse ting.
182	angry	Henry Rollins	\N	nl	Ik ben milder nu, ik ben ouder dan 50. Maar ik denk niet dat ik ben te mellow. Ik ben nog steeds boos op een heleboel dingen.
183	angry	Henry Rollins	\N	pl	Jestem łagodniejsze teraz, jestem na 50. Ale nie sądzę, że jestem zbyt łagodny. Nadal jestem zły na wiele rzeczy.
184	angry	Henry Rollins	\N	pt-PT	Estou mais maduro agora, eu sou mais de 50 anos. Mas eu não acho que eu sou muito maduro. Eu ainda estou com raiva de um monte de coisas.
185	angry	Henry Rollins	\N	pt-PT	Estou mais maduro agora, eu sou mais de 50 anos. Mas eu não acho que eu sou muito maduro. Eu ainda estou com raiva de um monte de coisas.
186	angry	Henry Rollins	\N	ro	Sunt mellower acum, eu sunt peste 50. Dar nu cred ca sunt prea moale. Sunt încă supărat la o mulțime de lucruri.
189	angry	Henry Rollins	\N	sv	Jag är mjukare nu, jag är över 50. Men jag tror inte att jag är alltför mellow. Jag är fortfarande arg på en massa saker.
190	angry	Henry Rollins	\N	th	ฉันโชนตอนนี้ผมกว่า 50 แต่ฉันไม่คิดว่าฉันกลมกล่อมเกินไป ฉันยังคงโกรธมากสิ่ง
191	angry	Henry Rollins	\N	tr	Şimdi malouweh, ben 50 aştım. Ama ben de yumuşak olduğumu sanmıyorum. Hala bir çok şey de kızgınım.
192	angry	Henry Rollins	\N	uk	Я соковитіше зараз, я старше 50 років. Але я не думаю, що я занадто м'який. Я все ще злий на багато речей.
193	angry	Henry Rollins	\N	zh-Hant	我圓潤現在，我超過50歲。但是，我不認為我太圓潤。我還是生氣了很多東西。
194	angry	Joe Moore	\N	ar	انه من المستحيل عمليا أن ننظر إلى البطريق ويشعرون بالغضب.
195	angry	Joe Moore	\N	ca	És pràcticament impossible mirar a un pingüí i sentir ràbia.
196	angry	Joe Moore	\N	cs	Je prakticky nemožné, aby se na tučňáka a vztek.
197	angry	Joe Moore	\N	da	Det er praktisk taget umuligt at se på en pingvin og føle vrede.
198	angry	Joe Moore	\N	de	Es ist praktisch unmöglich, auf eine Pinguin-Look and Feel wütend.
199	angry	Joe Moore	\N	el	Είναι πρακτικά αδύνατο να δούμε ένα πιγκουίνος και αισθάνονται θυμωμένοι.
200	angry	Joe Moore	\N	en	It's practically impossible to look at a penguin and feel angry.
201	angry	Joe Moore	\N	es	Es prácticamente imposible mirar a un pingüino y sentir rabia.
202	angry	Joe Moore	\N	fi	On käytännössä mahdotonta tarkastella pingviini ja vihaisia.
203	angry	Joe Moore	\N	fr	Il est pratiquement impossible de regarder un pingouin et ressentir de la colère.
204	angry	Joe Moore	\N	he	זה כמעט בלתי אפשרי להסתכל על פינגווין ומרגיש כעס.
205	angry	Joe Moore	\N	hr	To je gotovo nemoguće pogledati pingvin i ljuti.
206	angry	Joe Moore	\N	hu	Ez gyakorlatilag lehetetlen, hogy egy pillantást vetni a pingvin és dühösek.
207	angry	Joe Moore	\N	it	E 'praticamente impossibile guardare un pinguino e sentirsi arrabbiato.
208	angry	Joe Moore	\N	ja	それはペンギンを見て、怒りを感じることは事実上不可能です。
209	angry	Joe Moore	\N	ko	그것은 펭귄을보고 화가 느낌을 실질적으로 불가능하다.
210	angry	Joe Moore	\N	nb	Det er praktisk talt umulig å se på en pingvin og føler sint.
211	angry	Joe Moore	\N	nl	Het is praktisch onmogelijk om te kijken naar een pinguïn en boos.
212	angry	Joe Moore	\N	pl	Jest to praktycznie niemożliwe, aby spojrzeć na pingwina i gniew.
213	angry	Joe Moore	\N	pt-PT	É praticamente impossível olhar para um pinguim e sentir raiva.
214	angry	Joe Moore	\N	pt-PT	É praticamente impossível olhar para um pinguim e sentir raiva.
215	angry	Joe Moore	\N	ro	Este practic imposibil să se uite la un pinguin și furios.
216	angry	Joe Moore	\N	ru	Это практически невозможно смотреть на пингвинов и злиться.
217	angry	Joe Moore	\N	sk	Je prakticky nemožné, aby sa na tučniaka a zlosť.
218	angry	Joe Moore	\N	sv	Det är praktiskt taget omöjligt att titta på en pingvin och känna sig arg.
219	angry	Joe Moore	\N	th	มันเป็นไปไม่ได้จริงจะมองไปที่นกเพนกวินและความรู้สึกโกรธ
220	angry	Joe Moore	\N	tr	Bu bir penguen bakmak ve kızgın hissetmek neredeyse imkansız.
221	angry	Joe Moore	\N	uk	Це практично неможливо дивитися на пінгвінів і злитися.
222	angry	Joe Moore	\N	zh-Hant	看企鵝感到憤怒，這是幾乎不可能的。
223	angry	Margaret Smith	\N	ar	كان عمي سامي رجل غاضب. وكان قد طبع على شاهد قبره: ما كنت تبحث في؟
224	angry	Margaret Smith	\N	ca	El meu oncle Sammy era un home enutjat. Ell havia imprès en la seva làpida: Què estàs mirant?
225	angry	Margaret Smith	\N	cs	Můj strýc Sammy byl rozzlobený muž. Už vytištěn na jeho náhrobním kameni: Co čumíš?
226	angry	Margaret Smith	\N	da	Min onkel Sammy var en vred mand. Han havde trykt på hans gravsten: Hvad glor du på?
227	angry	Margaret Smith	\N	de	Mein Onkel Sammy war ein zorniger Mann. Er hatte auf seinem Grabstein gedruckt: Was guckst du?
228	angry	Margaret Smith	\N	el	Ο θείος μου Sammy ήταν ένας θυμωμένος άνθρωπος. Είχε εκτυπωθεί σε ταφόπλακα του: Τι κοιτάς;
229	angry	Margaret Smith	\N	en	My uncle Sammy was an angry man. He had printed on his tombstone: What are you looking at?
230	angry	Margaret Smith	\N	es	Mi tío Sammy era un hombre enojado. Él había impreso en su lápida: ¿Qué estás mirando?
231	angry	Margaret Smith	\N	fi	Setäni Sammy oli vihainen mies. Hän oli painettu hänen hautakivi: Mitä sinä tuijotat?
232	angry	Margaret Smith	\N	fr	Mon oncle Sammy était un homme en colère. Il avait imprimé sur sa pierre tombale: Qu'est-ce que tu regardes?
233	angry	Margaret Smith	\N	he	הדוד שלי היה סמי איש כועס. הוא מודפס על המצבה שלו: על מה אתה מסתכל?
234	angry	Margaret Smith	\N	hr	Moj ujak je Sammy bio ljutit čovjek. On je tiskana na njegov nadgrobni spomenik: Što ti gledaš?
235	angry	Margaret Smith	\N	hu	A nagybátyám Sammy dühös ember. Már nyomtatott a sírkövére: Mit nézel?
236	angry	Margaret Smith	\N	it	Mio zio Sammy era un uomo arrabbiato. Egli aveva stampato sulla sua lapide: Che cosa stai guardando?
237	angry	Margaret Smith	\N	ja	叔父サミーは怒って男だった。彼は彼の墓石に印刷されていた：あなたがに何をお探しですか？
238	angry	Margaret Smith	\N	ko	삼촌 새미 화가 사람이었습니다. 그는 자신의 묘비에 인쇄했다 : 당신이에 무엇을 찾고 있습니까?
239	angry	Margaret Smith	\N	nb	Min onkel Sammy var en sint mann. Han hadde skrevet på gravsteinen hans: Hva ser du på?
240	angry	Margaret Smith	\N	nl	Mijn oom Sammy was een boze man. Hij had op zijn grafsteen afgedrukt: Waar kijk je naar?
241	angry	Margaret Smith	\N	pl	Mój wujek Sammy był zły człowiek. Miał wydrukowane na jego nagrobku: Co się gapisz?
242	angry	Margaret Smith	\N	pt-PT	Meu tio Sammy era um homem bravo. Ele tinha imprimido em sua lápide: O que você está olhando?
243	angry	Margaret Smith	\N	pt-PT	Meu tio Sammy era um homem bravo. Ele tinha imprimido em sua lápide: O que você está olhando?
244	angry	Margaret Smith	\N	ro	Unchiul meu Sammy a fost un om furios. El a imprimat pe mormântul său: ce te uiti?
245	angry	Margaret Smith	\N	ru	Мой дядя Сэмми был злой человек. Он напечатан на его могильной плите: Что ты смотришь?
246	angry	Margaret Smith	\N	sk	Môj strýko Sammy bol nahnevaný muž. Už vytlačený na jeho náhrobnom kameni: Čo čumíš?
247	angry	Margaret Smith	\N	sv	Min farbror Sammy var en arg man. Han hade tryckt på hans gravsten: Vad tittar du på?
248	angry	Margaret Smith	\N	th	ลุงแซมมี่ฉันเป็นคนโกรธ เขาได้พิมพ์ลงบนหลุมศพของเขา: คุณกำลังค้นหาอะไรที่?
249	angry	Margaret Smith	\N	tr	Amcam Sammy öfkeli bir adamdı. Onun mezar taşı üzerinde yazılı vardı: size ne arıyorsun?
250	angry	Margaret Smith	\N	uk	Мій дядько Семмі був злий чоловік. Він надрукований на його могильній плиті: Що ти дивишся?
251	angry	Margaret Smith	\N	zh-Hant	我的叔叔薩米是一個憤怒的人。他印在他的墓碑：你在看什麼？
252	impatient	George Carlin	\N	ar	عندما يقوم شخص ما هو الصبر ويقول: &quot;ليس لدي كل يوم، 'أنا دائما أتساءل، كيف يمكن أن يكون؟ كيف يمكن أن لا يكون لديك كل يوم؟
253	impatient	George Carlin	\N	ca	Quan algú està impacient i diu: &quot;Jo no tinc tot el dia,&quot; Sempre em pregunto, com pot ser? Com no tenir tot el dia?
254	impatient	George Carlin	\N	cs	Když je někdo nedočkavý a říká: &quot;Nemám na to celý den,&quot; vždycky zajímalo, jak je to možné? Jak je možné, že nebudete mít po celý den?
255	impatient	George Carlin	\N	da	Når nogen er utålmodig og siger: &quot;Jeg har ikke fået hele dagen,&quot; Jeg spørger altid, hvordan kan det være? Hvordan kan du ikke have hele dagen?
256	impatient	George Carlin	\N	de	Wenn jemand ungeduldig ist und sagt: &quot;Ich habe nicht den ganzen Tag:&quot; Ich frage mich immer: Wie kann das sein? Wie können Sie nicht den ganzen Tag?
257	impatient	George Carlin	\N	el	Όταν κάποιος είναι ανυπόμονος και λέει, «δεν έχω όλη την ημέρα,« εγώ πάντα αναρωτιέμαι, πώς μπορεί αυτό να είναι; Πώς μπορείτε να μην έχετε όλη την ημέρα;
258	impatient	George Carlin	\N	en	When someone is impatient and says, 'I haven't got all day,' I always wonder, How can that be? How can you not have all day?
259	impatient	George Carlin	\N	es	Cuando alguien está impaciente y dice: &quot;Yo no tengo todo el día,&quot; Siempre me pregunto, ¿cómo puede ser? ¿Cómo no tener todo el día?
260	impatient	George Carlin	\N	fi	Kun joku on kärsimätön ja sanoo, &quot;Minulla ei ole koko päivän,&quot; Olen aina miettinyt, miten se on mahdollista? Miten voit olla koko päivän?
261	impatient	George Carlin	\N	fr	Quand quelqu'un est impatient et dit: «Je n'ai pas toute la journée, je me demande toujours, comment peut-on? Comment pouvez-vous ne pas avoir toute la journée?
262	impatient	George Carlin	\N	he	כאשר מישהו הוא חסר סבלנות ואומר, 'אין לי כל היום, &quot;אני תמיד שואל את עצמי, איך זה יכול להיות? איך אתה יכול לא צריך כל היום?
263	impatient	George Carlin	\N	hr	Kad je netko nestrpljiv i kaže: 'Ja nemam cijeli dan, &quot;Ja uvijek pitam, kako je to moguće? Kako možeš ne imati cijeli dan?
264	impatient	George Carlin	\N	hu	Ha valaki türelmetlen, és azt mondja: &quot;Nem érek rá egész nap,&quot; én mindig csoda, hogy lehet? Hogyan lehet, hogy nem minden nap?
265	impatient	George Carlin	\N	it	Quando qualcuno è impaziente e dice: 'Io non ho tutto il giorno,' mi chiedo sempre, come può essere? Come si può non avere tutto il giorno?
266	impatient	George Carlin	\N	ja	誰かがせっかちであり、私はいつも疑問に思う '、私が一日中持っていない &quot;、と言うとき、それはどのようにすることができますか？どのようにすべての一日を過ごすことができないのですか？
267	impatient	George Carlin	\N	ko	사람이 조급하고, 말할 때 '나는 하루 종일 없어'난 항상 궁금, 어떻게 그럴 수 있습니까? 어떻게 하루 종일 가질 수 없습니다?
268	impatient	George Carlin	\N	nb	Når noen er utålmodige og sier: Jeg har ikke hele dagen, 'jeg alltid lurer på, hvordan kan det ha seg? Hvordan kan du ikke ha hele dagen?
269	impatient	George Carlin	\N	nl	Wanneer iemand is ongeduldig en zegt: 'Ik heb niet de hele dag,' Ik vraag me altijd af, hoe kan dat zijn? Hoe kun je niet de hele dag?
270	impatient	George Carlin	\N	pl	Gdy ktoś jest niecierpliwy i mówi: &quot;Nie mam cały dzień,&quot; zawsze zastanawiam się, jak to możliwe? Jak nie masz cały dzień?
271	impatient	George Carlin	\N	pt-PT	Quando alguém está impaciente e diz: 'Eu não tenho o dia todo:' Eu sempre me pergunto: Como pode ser isso? Como você pode não ter o dia todo?
272	impatient	George Carlin	\N	pt-PT	Quando alguém está impaciente e diz: 'Eu não tenho o dia todo:' Eu sempre me pergunto: Como pode ser isso? Como você pode não ter o dia todo?
273	impatient	George Carlin	\N	ro	Când cineva este nerăbdător și spune: &quot;Nu am toată ziua,&quot; întotdeauna mă întreb, cum poate fi asta? Cum nu poți avea toată ziua?
274	impatient	George Carlin	\N	ru	Когда кто-то нетерпеливый и говорит: &quot;У меня нет весь день:&quot; Я всегда задаюсь вопросом, как такое может быть? Как вы можете не иметь весь день?
275	impatient	George Carlin	\N	sk	Keď je niekto nedočkavý a hovorí: &quot;Nemám na to celý deň,&quot; vždy zaujímalo, ako je to možné? Ako je možné, že nebudete mať po celý deň?
276	impatient	George Carlin	\N	sv	När någon är otålig och säger, &quot;Jag har inte hela dagen,&quot; Jag undrar alltid, hur kan det vara? Hur kan du inte hela dagen?
277	impatient	George Carlin	\N	th	เมื่อมีใครใจร้อนและพูดว่า 'ฉันไม่ได้มีทุกวัน' ฉันมักจะสงสัยว่าวิธีการที่สามารถ? คุณสามารถวิธีที่จะไม่ได้มีทุกวัน
278	impatient	George Carlin	\N	tr	Birisi sabırsız ve, diyor 'Bütün gün yok,' Ben her zaman merak ediyorum, nasıl olabilir? Nasıl bütün gün olamaz?
879	tired	Alysha Speer	\N	pl	Sen nie dla mnie zaszczyt z jego obecności.
279	impatient	George Carlin	\N	uk	Коли хтось нетерплячий і каже: &quot;У мене немає весь день:&quot; Я завжди задаюся питанням, як таке може бути? Як ви можете не мати весь день?
280	impatient	George Carlin	\N	zh-Hant	當有人不耐煩了，說：'我沒有整天，“我總是在想，怎麼會是這樣？你怎麼能不整天有空嗎？
281	impatient	John Cale	\N	ar	أنا غير صبور. أحصل مضطرب. عندما أحصل على هذا الشعور أنا مجرد الخروج ويجعل شيئا ما يحدث.
282	impatient	John Cale	\N	ca	Estic impacient. Tinc tics. Quan arribi aquest sentiment em surto i faig alguna cosa succeeixi.
283	impatient	John Cale	\N	cs	Jsem netrpělivý. Mám nervózní. Když jsem ten pocit jsem prostě jít ven a aby se něco stalo.
284	impatient	John Cale	\N	da	Jeg er utålmodig. Jeg får nervøse. Når jeg får den følelse jeg bare gå ud og gøre noget ske.
285	impatient	John Cale	\N	de	Ich bin ungeduldig. Ich nervös. Wenn ich das Gefühl bekomme ich einfach gehen und etwas zu bewirken.
286	impatient	John Cale	\N	el	Είμαι ανυπόμονος. Παίρνω twitchy. Όταν έχω αυτό το συναίσθημα θα ήθελα απλώς να βγει και να κάνει κάτι να συμβεί.
287	impatient	John Cale	\N	en	I'm impatient. I get twitchy. When I get that feeling I just go out and make something happen.
288	impatient	John Cale	\N	es	Estoy impaciente. Tengo tics. Cuando llegue ese sentimiento me salgo y hago algo suceda.
289	impatient	John Cale	\N	fi	Olen kärsimätön. I hermostua. Kun saan tuon tunteen minä vain mennä ja tehdä jotain tapahtuu.
290	impatient	John Cale	\N	fr	Je suis impatient. Je reçois crispé. Quand j'ai ce sentiment que je viens sortir et faire bouger les choses.
291	impatient	John Cale	\N	he	אני חסר סבלנות. אני מקבל עצבני. כשאני מקבל את ההרגשה שאני פשוט לצאת ולגרום למשהו לקרות.
292	impatient	John Cale	\N	hr	Ja sam nestrpljiva. Ja se twitchy. Kad sam dobiti taj osjećaj da sam samo izaći i napraviti nešto dogoditi.
293	impatient	John Cale	\N	hu	Én vagyok türelmetlen. Kapok izgága. Ha kapok ez az érzés csak menni, és valami történik.
294	impatient	John Cale	\N	it	Sono impaziente. Ottengo nervosa. Quando ho questa sensazione mi basta andare fuori e far succedere qualcosa.
295	impatient	John Cale	\N	ja	私はせっかちだ。私は落ち着きを得る。私はその感覚を得るとき、私はちょうど外に出て何かを実現する。
296	impatient	John Cale	\N	ko	나는 참을성 해요. 나는 짜증나게 얻는다. 나는 그 느낌을 얻을 때 난 그냥 나가서 뭔가 일어날 수 있도록.
297	impatient	John Cale	\N	nb	Jeg er utålmodig. Jeg får twitchy. Når jeg får den følelsen jeg bare gå ut og gjøre noe skje.
298	impatient	John Cale	\N	nl	Ik ben ongeduldig. Ik krijg zenuwachtig. Als ik dat gevoel dat ik gewoon naar buiten gaan en iets te laten gebeuren.
299	impatient	John Cale	\N	pl	Jestem niecierpliwy. Mam nerwowy. Kiedy się to uczucie po prostu wyjść i zrobić coś się stało.
300	impatient	John Cale	\N	pt-PT	Estou impaciente. Eu fico inquieto. Quando eu recebo esse sentimento eu simplesmente sair e fazer algo acontecer.
301	impatient	John Cale	\N	pt-PT	Estou impaciente. Eu fico inquieto. Quando eu recebo esse sentimento eu simplesmente sair e fazer algo acontecer.
302	impatient	John Cale	\N	ro	Sunt nerăbdător. I a lua iritat. Când am acest sentiment mă duc afară și de a face ceva sa se intample.
303	impatient	John Cale	\N	ru	Я нетерпелив. Я получаю нервный. Когда я понимаю, что чувство, которое я просто выйти и сделать что-то случится.
304	impatient	John Cale	\N	sk	Som netrpezlivý. Mám nervózny. Keď som ten pocit som jednoducho ísť von a aby sa niečo stalo.
305	impatient	John Cale	\N	sv	Jag är otålig. Jag får ryckiga. När jag får den känslan jag bara gå ut och få något att hända.
306	impatient	John Cale	\N	th	ผมใจร้อน ฉันได้รับกระตุก เมื่อฉันได้รับความรู้สึกที่ฉันเพียงแค่ออกไปและทำให้สิ่งที่เกิดขึ้น
307	impatient	John Cale	\N	tr	Ben sabırsız değilim. Ben twitchy olsun. Ben bu duygu olsun ben sadece dışarı çıkmak ve bir şeyler gerçekleştirmek.
308	impatient	John Cale	\N	uk	Я нетерплячий. Я отримую нервовий. Коли я розумію, що почуття, яке я просто вийти і зробити щось трапиться.
309	impatient	John Cale	\N	zh-Hant	我很不耐煩。我得到顛簸。當我得到的感覺，我只是走出去，使事情發生。
310	impatient	Rita Mae Brown	\N	ar	الحدس هو تعليق من المنطق بسبب نفاد الصبر.
311	impatient	Rita Mae Brown	\N	ca	La intuïció és una suspensió de la lògica a causa de la impaciència.
312	impatient	Rita Mae Brown	\N	cs	Intuice je pozastavení logiky kvůli netrpělivosti.
313	impatient	Rita Mae Brown	\N	da	Intuition er en suspension af logik skyldes utålmodighed.
314	impatient	Rita Mae Brown	\N	de	Intuition ist eine Suspension der Logik wegen Ungeduld.
315	impatient	Rita Mae Brown	\N	el	Η διαίσθηση είναι η αναστολή της λογικής λόγω ανυπομονησίας.
316	impatient	Rita Mae Brown	\N	en	Intuition is a suspension of logic due to impatience.
317	impatient	Rita Mae Brown	\N	es	La intuición es una suspensión de la lógica debido a la impaciencia.
318	impatient	Rita Mae Brown	\N	fi	Intuitio on keskeytetty logiikan takia kärsimättömyys.
319	impatient	Rita Mae Brown	\N	fr	L'intuition est une suspension de logique en raison de l'impatience.
320	impatient	Rita Mae Brown	\N	he	אינטואיציה היא השעיה של היגיון עקב חוסר סבלנות.
321	impatient	Rita Mae Brown	\N	hr	Intuicija je suspenzija logike zbog nestrpljivosti.
322	impatient	Rita Mae Brown	\N	hu	Az intuíció felfüggesztése logika miatt türelmetlenség.
323	impatient	Rita Mae Brown	\N	it	L'intuizione è una sospensione di logica a causa di impazienza.
324	impatient	Rita Mae Brown	\N	ja	直感は、焦りのために論理の懸濁液である。
325	impatient	Rita Mae Brown	\N	ko	직관은 성급함으로 인해 논리의 현탁액이다.
326	impatient	Rita Mae Brown	\N	nb	Intuisjon er en suspensjon av logikk på grunn av utålmodige.
327	impatient	Rita Mae Brown	\N	nl	Intuïtie is een suspensie van logische gevolg van ongeduld.
328	impatient	Rita Mae Brown	\N	pl	Intuicja jest zawieszenie logiki powodu niecierpliwości.
329	impatient	Rita Mae Brown	\N	pt-PT	A intuição é uma suspensão de lógica devido à impaciência.
330	impatient	Rita Mae Brown	\N	pt-PT	A intuição é uma suspensão de lógica devido à impaciência.
331	impatient	Rita Mae Brown	\N	ro	Intuitia este o suspensie de logică din cauza nerăbdării.
332	impatient	Rita Mae Brown	\N	ru	Интуиция представляет собой суспензию логики из-за нетерпения.
333	impatient	Rita Mae Brown	\N	sk	Intuícia je pozastavenie logiky kvôli netrpezlivosti.
334	impatient	Rita Mae Brown	\N	sv	Intuition är en suspension av logik på grund av otålighet.
335	impatient	Rita Mae Brown	\N	th	ปรีชาเป็นจังหวะของตรรกะอันเนื่องมาจากความอดทน
336	impatient	Rita Mae Brown	\N	tr	Sezgi sabırsızlığıda bağlı bir mantık süspansiyonudur.
337	impatient	Rita Mae Brown	\N	uk	Інтуїція являє собою суспензію логіки через нетерпіння.
338	impatient	Rita Mae Brown	\N	zh-Hant	直覺是暫停的邏輯，由於急躁。
339	impatient	W. H. Auden	\N	ar	الأذن تميل إلى أن تكون كسول، يتعطش المألوف وتشعر بالصدمة من قبل ما هو غير متوقع، والعين، من ناحية أخرى، يميل إلى أن يكون الصبر، يشتهي الرواية، وبالملل من التكرار.
340	impatient	W. H. Auden	\N	ca	L'oïda tendeix a ser mandrós, anhela el familiar i se sorprèn per l'inesperat, l'ull, d'altra banda, tendeix a ser impacient, anhela la novel · la i s'avorreix per la repetició.
341	impatient	W. H. Auden	\N	cs	Ucho má tendenci být líný, touží seznámit a je šokována nečekané, oko, na druhé straně, má tendenci být netrpělivý, touží román a nudit opakováním.
342	impatient	W. H. Auden	\N	da	Øret tendens til at være doven, higer det velkendte og er chokeret over det uventede, øjet, på den anden side, har en tendens til at være utålmodig, higer romanen og er kede af gentagelse.
343	impatient	W. H. Auden	\N	de	Das Ohr neigt, faul zu sein, sehnt die vertraute und wird durch den unerwarteten schockiert, das Auge, auf der anderen Seite neigt, ungeduldig zu sein, sehnt den Roman und wird durch Wiederholung zu langweilen.
344	impatient	W. H. Auden	\N	el	Το αυτί έχει την τάση να είναι τεμπέληδες, ποθεί το γνωστό και είναι συγκλονισμένη από τον απροσδόκητο? Το μάτι, από την άλλη πλευρά, έχει την τάση να είναι ανυπόμονοι, ποθεί το μυθιστόρημα και έχει βαρεθεί από την επανάληψη.
345	impatient	W. H. Auden	\N	en	The ear tends to be lazy, craves the familiar and is shocked by the unexpected; the eye, on the other hand, tends to be impatient, craves the novel and is bored by repetition.
346	impatient	W. H. Auden	\N	es	El oído tiende a ser perezoso, anhela lo familiar y se sorprende por lo inesperado, el ojo, por otro lado, tiende a ser impaciente, ansía la novela y se aburre por la repetición.
347	impatient	W. H. Auden	\N	fi	Korvan taipumus olla laiska, kaipaa tuttuja ja on järkyttynyt odottamaton, silmä, toisaalta, on taipumus olla kärsimätön, kaipaa uusia ja on kyllästynyt toistoa.
348	impatient	W. H. Auden	\N	fr	L'oreille a tendance à être paresseux, implore le familier et est choqué par l'inattendu; l'œil, en revanche, a tendance à être impatient, implore le roman et est percé par la répétition.
349	impatient	W. H. Auden	\N	he	האוזן נוטה להיות עצלן, משתוקק מוכרים, והוא הזדעזע מצפוי; העין, לעומת זאת, נוטה להיות חסרי סבלנות, משתוקק לרומן והוא משועמם על ידי חזרה.
350	impatient	W. H. Auden	\N	hr	Uho teži biti lijen, žudi upoznati i šokirani neočekivanim; očiju, s druge strane, ima tendenciju da se nestrpljivi, žudi za roman i dosadno ponavljanja.
351	impatient	W. H. Auden	\N	hu	A fül általában a lusta, vágyik a megszokott, és megdöbbentette a váratlan, a szem, a másik viszont, hajlamos arra, hogy türelmetlen, vágyik a regény és unatkozik az ismétlés.
352	impatient	W. H. Auden	\N	it	L'orecchio tende ad essere pigro, brama il familiare e si dichiara scioccato dalla inaspettata, l'occhio, d'altra parte, tende ad essere impaziente, brama il romanzo ed è annoiato dalla ripetizione.
353	impatient	W. H. Auden	\N	ja	耳が怠惰になりがち、おなじみのを懇願し、予期しないことでショックを受けている、目は、他の一方で、せっかちになりがち、小説を懇願し、繰り返しで退屈されています。
354	impatient	W. H. Auden	\N	ko	귀 게으른 경향 친숙한를 갈구하고 예상치 못한 의해 충격이다, 눈은, 다른 한편으로는, 참을성 경향, 소설을 갈구하고 반복으로 지루합니다.
355	impatient	W. H. Auden	\N	nb	Øret har en tendens til å være lat, Begjær det kjente og er sjokkert over det uventede; øyet, derimot, har en tendens til å være utålmodig, Begjær romanen, og er lei av repetisjon.
356	impatient	W. H. Auden	\N	nl	Het oor heeft de neiging om lui, hunkert naar het vertrouwde en is geschokt door het onverwachte, het oog, aan de andere kant, heeft de neiging om ongeduldig, hunkert de roman en verveelt zich door herhaling.
357	impatient	W. H. Auden	\N	pl	Ear bywa leniwy, pragnie znać i jest wstrząśnięty nieoczekiwane; oko, z drugiej strony, wydaje się być niecierpliwy, pragnie powieść i jest znudzony przez powtarzanie.
358	impatient	W. H. Auden	\N	pt-PT	O ouvido tende a ser preguiçoso, anseia o familiar e está chocado com o inesperado, o olho, por outro lado, tende a ser impaciente, anseia o romance e está entediado pela repetição.
359	impatient	W. H. Auden	\N	pt-PT	O ouvido tende a ser preguiçoso, anseia o familiar e está chocado com o inesperado, o olho, por outro lado, tende a ser impaciente, anseia o romance e está entediado pela repetição.
360	impatient	W. H. Auden	\N	ro	Urechii tinde să fie leneș, tanjeste dupa familiar și este șocat de neașteptată, ochi, pe de altă parte, tinde să fie nerăbdător, tanjeste dupa romanul și este plictisit de repetiție.
361	impatient	W. H. Auden	\N	ru	Уха, как правило, ленивые, жаждет знакомым и в шоке от неожиданного; глаз, с другой стороны, как правило, нетерпеливы, жаждет новых и скучно повторением.
880	tired	Alysha Speer	\N	pt-PT	O sono não me honrar com a sua presença.
362	impatient	W. H. Auden	\N	sk	Ucho má tendenciu byť lenivý, túži zoznámiť a je šokovaná nečakané, oko, na druhej strane, má tendenciu byť netrpezlivý, túži román a nudiť opakovaním.
363	impatient	W. H. Auden	\N	sv	Örat tenderar att vara lata, längtar bekant och är chockad av det oväntade, ögat, å andra sidan, tenderar att vara otålig, längtar romanen och är uttråkad av upprepning.
364	impatient	W. H. Auden	\N	th	หูมีแนวโน้มที่จะขี้เกียจ craves คุ้นเคยและตกใจโดยที่ไม่คาดคิด; ตาบนมืออื่น ๆ ที่มีแนวโน้มที่จะหมดความอดทน craves นวนิยายและเป็นที่น่าเบื่อโดยการทำซ้ำ
365	impatient	W. H. Auden	\N	tr	Kulak tembel olma eğilimindedir, tanıdık craves ve beklenmedik karşısında şok olan, göz, diğer taraftan, sabırsız olma eğilimindedir, yeni craves ve tekrarı ile sıkılmış.
366	impatient	W. H. Auden	\N	uk	Юшка, як правило, ліниві, жадає знайомим і в шоці від несподіваного; очей, з іншого боку, як правило, нетерплячі, жадає нових і нудно повторенням.
367	impatient	W. H. Auden	\N	zh-Hant	耳朵往往是懶惰的，渴望已久的熟悉和意想不到的震驚眼球，另一方面，往往是不耐煩了，渴望已久的小說，並通過重複無聊。
368	impatient	Jarod Kintz	\N	ar	قلت لها كنت انتظر إلى الأبد بالنسبة لها، ولكن ذلك كان قبل وجدت شخص آخر الذي كنت تعطيني توصيله الي منزله.
369	impatient	Jarod Kintz	\N	ca	Li vaig dir que m'agradaria esperar per sempre per a ella, però això va ser abans de trobar algú que em donaria a casa.
370	impatient	Jarod Kintz	\N	cs	Řekl jsem jí, že na ni čekat věčně, ale to bylo předtím, než jsem našel někoho, kdo by mi dá odvézt domů.
371	impatient	Jarod Kintz	\N	da	Jeg fortalte hende, jeg ville vente for evigt for hende, men det var før jeg fandt en anden, der ville give mig et lift hjem.
372	impatient	Jarod Kintz	\N	de	Ich sagte ihr, ich würde ewig warten für sie, aber das war, bevor ich jemanden der mir hätte eine Fahrt nach Hause gefunden.
373	impatient	Jarod Kintz	\N	el	Της είπα ότι θα περιμένω για πάντα γι 'αυτήν, αλλά αυτό ήταν πριν βρεθεί κάποιος άλλος που θα μου δώσει ένα σπίτι βόλτα.
374	impatient	Jarod Kintz	\N	en	I told her I'd wait forever for her, but that was before I found somebody else who'd give me a ride home.
375	impatient	Jarod Kintz	\N	es	Le dije que me gustaría esperar para siempre para ella, pero eso fue antes de encontrar alguien que me daría a casa.
376	impatient	Jarod Kintz	\N	fi	Sanoin hänelle olin odottaa ikuisesti hänen, mutta se oli ennen kuin löysin joku muu, joka antavat minulle kyydin kotiin.
377	impatient	Jarod Kintz	\N	fr	Je lui ai dit que j'attendrais toujours pour elle, mais c'était avant que je trouve quelqu'un d'autre qui me donnerait un retour à la maison.
378	impatient	Jarod Kintz	\N	he	אמרתי לה שאני אחכה לנצח בשבילה, אבל זה היה לפני שמצאתי מישהו אחר שינתנו לי טרמפ הביתה.
379	impatient	Jarod Kintz	\N	hr	Rekla sam joj da ću čekati zauvijek za nju, ali to je bilo prije nego što sam pronašao nekoga tko bi mi prijevoz kući.
380	impatient	Jarod Kintz	\N	hu	Azt mondtam neki, hogy örökké várni rá, de ez még azelőtt volt, én találtam valakit, aki adna nekem egy haza.
381	impatient	Jarod Kintz	\N	it	Le ho detto che avrei aspettato per sempre per lei, ma questo era prima che ho trovato qualcuno che mi avrebbe dato un passaggio a casa.
382	impatient	Jarod Kintz	\N	ja	私は彼女のために永遠に待つだろう彼女に言ったが、私は私に乗って家を与えるだろう他の誰かを見つけた前にそれがあった。
383	impatient	Jarod Kintz	\N	ko	나는 그녀를 영원히 기다릴 거라 그녀에게 말했다,하지만 난 나를 집까지 태워 줄 것 다른 사람을 발견하기 전에이었다.
384	impatient	Jarod Kintz	\N	nb	Jeg fortalte henne at jeg ville vente evig på henne, men det var før jeg fant noen andre som ville gi meg en tur hjem.
385	impatient	Jarod Kintz	\N	nl	Ik vertelde haar dat ik voor altijd op haar wachten, maar dat was voordat ik vond iemand anders die zou me een lift naar huis.
386	impatient	Jarod Kintz	\N	pl	Powiedziałem jej, że wiecznie czekać na nią, ale to było zanim znalazłem kogoś, kto by dać mi do domu.
387	impatient	Jarod Kintz	\N	pt-PT	Eu lhe disse que iria esperar para sempre para ela, mas isso foi antes de eu encontrar alguém que me daria uma carona para casa.
388	impatient	Jarod Kintz	\N	pt-PT	Eu lhe disse que iria esperar para sempre para ela, mas isso foi antes de eu encontrar alguém que me daria uma carona para casa.
389	impatient	Jarod Kintz	\N	ro	I-am spus mi-ar aștepta pentru totdeauna pentru ei, dar asta a fost înainte de am găsit pe cineva care mă duc acasă.
390	impatient	Jarod Kintz	\N	ru	Я сказал ей, что я вечно ждать ее, но это было до того я нашел кого-то еще, кто бы подвезти меня домой.
391	impatient	Jarod Kintz	\N	sk	Povedal som jej, že na ňu čakať večne, ale to bolo predtým, než som našiel niekoho, kto by mi dá odviezť domov.
392	impatient	Jarod Kintz	\N	sv	Jag sa till henne att jag skulle vänta för evigt för henne, men det var innan jag hittade någon annan som skulle ge mig en skjuts hem.
393	impatient	Jarod Kintz	\N	th	ฉันบอกเธอว่าฉันรอตลอดสำหรับเธอ แต่ที่ก่อนที่จะพบคนอื่นที่ต้องการให้ผมขี่รถกลับบ้าน
394	impatient	Jarod Kintz	\N	tr	Ben onun için sonsuza kadar beklemek söyledim, ama beni eve verirdim başkası bulmadan önce olmasıydı.
395	impatient	Jarod Kintz	\N	uk	Я сказав їй, що я вічно чекати її, але це було до того я знайшов когось ще, хто б підвезти мене додому.
396	impatient	Jarod Kintz	\N	zh-Hant	我告訴她我會永遠等待她的，但我發現別人誰願意給我回家之前。
397	impatient	Rachael Ray	\N	ar	EVOO هو زيت الزيتون البكر. أنا أول صاغ 'EVOO' على عرض الطبخ بلدي بسبب قائلا 'زيت الزيتون البكر الممتاز' مرارا وكان أكثر من الالفاظ، وأنا فتاة الصبر - وهذا هو السبب في أنني جعل وجبات الطعام لمدة 30 دقيقة!
398	impatient	Rachael Ray	\N	ca	AOVE és l'oli d'oliva extra verge. La primera vegada que va encunyar 'AOVE &quot;en el meu programa de cuina perquè deia« oli d'oliva verge extra' una i altra vegada era prolix, i jo sóc una noia impacient - per això faig els dinars de 30 minuts!
399	impatient	Rachael Ray	\N	cs	EVOO je extra panenský olivový olej. Poprvé jsem vymyslel &quot;EVOO 'na mé vaření show, protože slovy&quot; extra panenský olivový olej &quot;znovu a znovu byl rozvláčný, a já jsem netrpělivá dívka - to je důvod, proč jsem dělat 30-minutové jídla!
400	impatient	Rachael Ray	\N	da	EVOO er ekstra jomfru olivenolie. Jeg først opfundet 'EVOO' på min madlavning show, fordi sige 'ekstra jomfru olivenolie' igen og igen var ordrige, og jeg er en utålmodig pige - det er derfor jeg gør 30-minutters måltider!
401	impatient	Rachael Ray	\N	de	EVOO ist extra-natives Olivenöl. Ich zum ersten Mal 'EVOO' auf meiner Kochshow geprägt, weil Sprichwort &quot;natives Olivenöl extra&quot; über und über war wortreich, und ich bin ein ungeduldiger Mädchen - das ist, warum ich 30-Minuten-Mahlzeiten zu machen!
402	impatient	Rachael Ray	\N	el	EVOO είναι έξτρα παρθένο ελαιόλαδο. I έπλασε πρώτα «EVOO» στην εκπομπή μαγειρικής μου, γιατί λέει «έξτρα παρθένο ελαιόλαδο» ξανά και ξανά ήταν φλύαρες, και είμαι ανυπόμονος κορίτσι - γι 'αυτό και κάνω 30 λεπτά γεύματα!
403	impatient	Rachael Ray	\N	en	EVOO is extra-virgin olive oil. I first coined 'EVOO' on my cooking show because saying 'extra virgin olive oil' over and over was wordy, and I'm an impatient girl - that's why I make 30-minute meals!
404	impatient	Rachael Ray	\N	es	AOVE es el aceite de oliva extra virgen. La primera vez que acuñó 'AOVE &quot;en mi programa de cocina porque decía« aceite de oliva virgen extra' una y otra vez era prolijo, y yo soy una chica impaciente - por eso hago las comidas de 30 minutos!
405	impatient	Rachael Ray	\N	fi	EVOO on extra-virgin oliiviöljyä. Olen ensimmäinen keksi &quot;EVOO&quot; minun kokkiohjelma, koska sanonta &quot;extra virgin oliiviöljy&quot; uudestaan ​​ja oli monisanainen, ja olen kärsimätön tyttö - siksi teen 30 minuutin ateriat!
406	impatient	Rachael Ray	\N	fr	EVOO est l'huile d'olive extra-vierge. J'ai d'abord inventé »EVOO 'sur mon émission de cuisine parce que dire« huile d'olive vierge extra &quot;encore et j'étais verbeux, et je suis une fille impatiente - c'est pourquoi je fais des repas de 30 minutes!
407	impatient	Rachael Ray	\N	he	EVOO היא שמן זית כתית מעולה. אני ראשון שטבע 'EVOO' בתכנית הבישול שלי, כי &quot;שמן זית כתית&quot; מעל אומר ושוב היה מלל, ואני ילדה חסרת סבלנות - זה למה אני עושה ארוחות של 30 דקות!
408	impatient	Rachael Ray	\N	hr	EVOO je ekstra djevičansko maslinovo ulje. Prvi put sam skovao 'EVOO' na moje kuhanje show, jer kaže 'ekstra djevičansko maslinovo ulje &quot;više i više je razvučen, i ja sam nestrpljiva djevojka - to je razlog zašto sam napraviti 30 minute obroka!
409	impatient	Rachael Ray	\N	hu	EVOO extra szűz olívaolaj. Először megalkotta &quot;EVOO&quot; én főzőshow mert azt mondja &quot;extra szűz olívaolaj&quot; újra és újra volt bőbeszédű, és én vagyok türelmetlen lány - ezért is, hogy 30 perces ételek!
410	impatient	Rachael Ray	\N	it	EVOO è l'olio extravergine di oliva. Ho coniato 'OEVO' nel mio show cooking perché dire 'olio extra vergine di oliva' più e più volte è stato prolisso, e io sono una ragazza impaziente - è per questo che io faccio i pasti di 30 minuti!
411	impatient	Rachael Ray	\N	ja	EVOOは、エキストラバージンオリーブオイルです。私は30分の食事を作る理由です - と言って 'エキストラバージンオリーブオイル'繰り返し冗長だった、と私はせっかちな女の子だので、私は最初に私の料理番組で 'EVOOを'造語！
412	impatient	Rachael Ray	\N	ko	EVOO는 엑스트라 버진 올리브 오일입니다. 나는 30 분 식사를 만들 이유 - 말 '엑스트라 버진 올리브 오일'에 이상 말로이었다, 나는 참을성이 여자라서 내가 먼저 내 요리 쇼에 'EVOO'를 만들어 낸!
413	impatient	Rachael Ray	\N	nb	EVOO er extra virgin olivenolje. Jeg først oppfunnet 'EVOO' på min matlaging show fordi si &quot;ekstra virgin olivenolje&quot; over og over var ordrike, og jeg er en utålmodig jente - det er derfor jeg gjør 30-minutters måltider!
414	impatient	Rachael Ray	\N	nl	EVOO is extra vergine olijfolie. Ik eerst bedacht 'Tables' op mijn kookprogramma omdat te zeggen 'extra vergine olijfolie' over en was langdradig, en ik ben een ongeduldig meisje - dat is waarom ik 30 minuten maaltijden!
415	impatient	Rachael Ray	\N	pl	EVOO jest extra-virgin oliwy z oliwek. I pierwszy użył &quot;EVOO 'na moim show gotowania, ponieważ mówiąc&quot; oliwą z oliwek &quot;w kółko był wygadany, a ja jestem niecierpliwy girl - dlatego robię 30 minut posiłki!
416	impatient	Rachael Ray	\N	pt-PT	EVOO é o azeite extra-virgem. Eu cunhado 'EVOO' no meu programa de culinária, porque dizer &quot;azeite virgem extra&quot; mais e mais era prolixo, e eu sou uma garota impaciente - é por isso que eu faço refeições de 30 minutos!
417	impatient	Rachael Ray	\N	pt-PT	EVOO é o azeite extra-virgem. Eu cunhado 'EVOO' no meu programa de culinária, porque dizer &quot;azeite virgem extra&quot; mais e mais era prolixo, e eu sou uma garota impaciente - é por isso que eu faço refeições de 30 minutos!
418	impatient	Rachael Ray	\N	ro	EVOO este de ulei de măsline extra-virgin. Am inventat primul &quot;EVOO&quot; la show-ul meu de gatit pentru a spune &quot;ulei de măsline extravirgin&quot; de peste si peste a fost prolix, și eu sunt o fată nerăbdător - de aceea fac mese de 30 de minute!
419	impatient	Rachael Ray	\N	ru	EVOO является оливковое масло. Я впервые ввел термин «EVOO 'на моей кулинарное шоу, потому что говоря:&quot; оливковое масло &quot;снова и снова был многословным, и я нетерпеливо девушки - вот почему я делаю 30-минутный блюд!
420	impatient	Rachael Ray	\N	sk	EVOO je extra panenský olivový olej. Prvýkrát som vymyslel &quot;EVOO 'na mojej varenie show, pretože slovami&quot; extra panenský olivový olej &quot;znovu a znovu bol rozvláčny, a ja som netrpezlivá dievča - to je dôvod, prečo som robiť 30-minútové jedla!
421	impatient	Rachael Ray	\N	sv	EVOO är extra virgin olivolja. Jag myntade först &quot;EVOO&quot; på min matlagning show eftersom att säga &quot;extra jungfruolja&quot; om och om igen var ordrik, och jag är en otålig flicka - det är därför jag gör 30-minuters måltider!
462	anxious	Henry David Thoreau	\N	es	Hay momentos en que toda la ansiedad y la fatiga indicado se calma chicha en el placer infinito y eterno descanso de la naturaleza.
422	impatient	Rachael Ray	\N	th	EVOO เป็นพิเศษน้ำมันมะกอกบริสุทธิ์ ผมประกาศเกียรติคุณแรก EVOO 'การแสดงการปรุงอาหารของฉันเพราะว่า' น้ำมันมะกอกบริสุทธิ์ 'กว่าและมากกว่าเป็นคำฟุ่มเฟือยและฉันสาวใจร้อน - ที่ว่าทำไมฉันทำอาหาร 30 นาที!
423	impatient	Rachael Ray	\N	tr	Evoo sızma zeytinyağıdır. Ben 30 dakika yemek yapmak yüzden - söyleyerek 'sızma zeytinyağı' tekrar tekrar söz oldu, ve ben sabırsız bir kızım çünkü ilk benim yemek gösteri 'evoo' icat!
424	impatient	Rachael Ray	\N	uk	EVOO є оливкова олія. Я вперше ввів термін «EVOO 'на моїй кулінарне шоу, тому що говорячи:&quot; оливкова олія &quot;знову і знову був багатослівним, і я нетерпляче дівчата - ось чому я роблю 30-хвилинний страв!
425	impatient	Rachael Ray	\N	zh-Hant	EVOO是特級初榨橄欖油。我第一次創造了“EVOO'我的烹飪節目，因為說'特級初榨橄欖油”過度以上羅嗦了，我是個急性子的女孩 - 這就是為什麼我做30分鐘的飯菜！
426	anxious	Lucius Annaeus Seneca	\N	ar	السعادة الحقيقية هي ... للاستمتاع الحاضر، دون الاعتماد حريصة على المستقبل.
427	anxious	Lucius Annaeus Seneca	\N	ca	La veritable felicitat és ... a gaudir del present, sense dependre ansiosos sobre el futur.
428	anxious	Lucius Annaeus Seneca	\N	cs	Pravé štěstí je ... se nyní dárek, bez úzkosti závislost na budoucnost.
429	anxious	Lucius Annaeus Seneca	\N	da	Sand lykke er ... at nyde den foreliggende, uden angst afhængighed fremtiden.
430	anxious	Lucius Annaeus Seneca	\N	de	Wahres Glück ist ... die Gegenwart genießen, ohne ängstlich Abhängigkeit von der Zukunft.
431	anxious	Lucius Annaeus Seneca	\N	el	Η αληθινή ευτυχία είναι ... για να απολαύσετε το παρόν, χωρίς άγχος εξάρτηση από το μέλλον.
432	anxious	Lucius Annaeus Seneca	\N	en	True happiness is... to enjoy the present, without anxious dependence upon the future.
433	anxious	Lucius Annaeus Seneca	\N	es	La verdadera felicidad es ... a disfrutar del presente, sin depender ansiosos sobre el futuro.
434	anxious	Lucius Annaeus Seneca	\N	fi	Todellinen onni on ... nauttia hetkellä ilman ahdistunut riippuvuutta tulevaisuudessa.
435	anxious	Lucius Annaeus Seneca	\N	fr	Le vrai bonheur est ... de jouir du présent, sans dépendance inquiète sur l'avenir.
436	anxious	Lucius Annaeus Seneca	\N	he	אושר אמיתי הוא ... כדי ליהנות בהווה, ללא תלות חרדה על העתיד.
437	anxious	Lucius Annaeus Seneca	\N	hr	Prava sreća je ... uživati ​​u sadašnjosti, bez tjeskobne ovisnosti o budućnosti.
438	anxious	Lucius Annaeus Seneca	\N	hu	A valódi boldogság ... hogy élvezze a jelenlegi, nem ideges függés a jövőben.
439	anxious	Lucius Annaeus Seneca	\N	it	La vera felicità è ... di godere il presente, senza dipendenza ansiosa sul futuro.
440	anxious	Lucius Annaeus Seneca	\N	ja	真の幸福は...将来の際不安依存せず、現在を楽しむことができます。
441	anxious	Lucius Annaeus Seneca	\N	ko	진정한 행복은 ... 미래에 따라 불안 의존하지 않고, 현재를 즐길 수 있습니다.
442	anxious	Lucius Annaeus Seneca	\N	nb	Sann lykke er ... å nyte nuet, uten engstelig avhengighet av fremtiden.
443	anxious	Lucius Annaeus Seneca	\N	nl	Het ware geluk is ... om te genieten van het heden, zonder angstig afhankelijkheid van de toekomst.
444	anxious	Lucius Annaeus Seneca	\N	pl	Prawdziwe szczęście jest ... aby cieszyć się z prezentu, bez niepokoju zależność od przyszłości.
445	anxious	Lucius Annaeus Seneca	\N	pt-PT	A verdadeira felicidade é ... para apreciar o presente, sem dependência ansioso sobre o futuro.
446	anxious	Lucius Annaeus Seneca	\N	pt-PT	A verdadeira felicidade é ... para apreciar o presente, sem dependência ansioso sobre o futuro.
447	anxious	Lucius Annaeus Seneca	\N	ro	Adevărata fericire este ... să se bucure de prezent, fără dependența de anxietate pe viitor.
448	anxious	Lucius Annaeus Seneca	\N	ru	Истинное счастье ... наслаждаться настоящим, не стремятся зависимость от будущего.
449	anxious	Lucius Annaeus Seneca	\N	sk	Pravé šťastie je ... sa teraz darček, bez úzkosti závislosť na budúcnosť.
450	anxious	Lucius Annaeus Seneca	\N	sv	Sann lycka är ... att njuta av nuet, utan angelägen beroende framtiden.
451	anxious	Lucius Annaeus Seneca	\N	th	ความสุขที่แท้จริงคือ ... เพลิดเพลินไปกับปัจจุบันโดยไม่ต้องกังวลกับการพึ่งพาอาศัยกันในอนาคต
452	anxious	Lucius Annaeus Seneca	\N	tr	Gerçek mutluluk ... Gelecekte üzerine endişeli bağımlı olmadan, bu zevk.
453	anxious	Lucius Annaeus Seneca	\N	uk	Істинне щастя ... насолоджуватися справжнім, не прагнуть залежність від майбутнього.
454	anxious	Lucius Annaeus Seneca	\N	zh-Hant	真正的幸福......享受現在，沒有未來的焦慮依賴。
455	anxious	Henry David Thoreau	\N	ar	هناك لحظات عندما يتم ساكن كل القلق والكدح المعلنة في أوقات الفراغ لانهائية وراحة من الطبيعة.
456	anxious	Henry David Thoreau	\N	ca	Hi ha moments en què tota l'ansietat i la fatiga indicat es calma chicha en el plaer infinit i etern descans de la natura.
457	anxious	Henry David Thoreau	\N	cs	Jsou chvíle, kdy jsou všechny úzkosti a stanoveným dřina bezvětří v nekonečné rekreační a spočine přírody.
458	anxious	Henry David Thoreau	\N	da	Der er øjeblikke, hvor alle angst og erklærede slid er vindstille i det uendelige fritid og hvile af naturen.
459	anxious	Henry David Thoreau	\N	de	Es gibt Momente, in denen alle Angst und erklärten Mühe in die unendliche Freizeit und Ruhe der Natur sind beruhigt.
460	anxious	Henry David Thoreau	\N	el	Υπάρχουν στιγμές που κάθε ανησυχία και τη δεδηλωμένη μόχθο είναι στριμωγμένη στο άπειρο αναψυχή και ανάπαυση της φύσης.
461	anxious	Henry David Thoreau	\N	en	There are moments when all anxiety and stated toil are becalmed in the infinite leisure and repose of nature.
463	anxious	Henry David Thoreau	\N	fi	On hetkiä, jolloin kaikki ahdistus ja perustelluista puurtaa ovat becalmed vuonna ääretön vapaa ja lepo luonto.
464	anxious	Henry David Thoreau	\N	fr	Il ya des moments où toute inquiétude et de labeur sont indiqués pétole dans les loisirs et le repos infini de la nature.
465	anxious	Henry David Thoreau	\N	he	יש רגעים שכל החרדה והעמל מוצהר הן רגועות בשעתי הפנאי ומנוחה אינסופיות של הטבע.
466	anxious	Henry David Thoreau	\N	hr	Postoje trenuci kad je sve tjeskobe i minimalnoj trud se becalmed u beskrajnom slobodno vrijeme i spokoj prirode.
467	anxious	Henry David Thoreau	\N	hu	Vannak pillanatok, amikor mind a szorongás és általa a fáradozás becalmed a végtelen kikapcsolódásra és pihenésre a természet.
468	anxious	Henry David Thoreau	\N	it	Ci sono momenti in cui tutta l'ansia e la fatica indicate sono bonaccia nell'infinito tempo libero e il riposo della natura.
469	anxious	Henry David Thoreau	\N	ja	すべての不安や規定の労苦が、自然の無限のレジャーと休息で止まっている瞬間があります。
470	anxious	Henry David Thoreau	\N	ko	모든 불안 정해진 수고가 자연의 무한한 레저 및 휴식에 꼼짝되는 순간이 있습니다.
471	anxious	Henry David Thoreau	\N	nb	Det er stunder da alle angst og uttalt slit er vindstille i det uendelige fritid og hvile i naturen.
472	anxious	Henry David Thoreau	\N	nl	Er zijn momenten dat alle angst en verklaarde zwoegen worden gekalmeerd in de oneindige vrije tijd en rust van de natuur.
473	anxious	Henry David Thoreau	\N	pl	Są chwile, kiedy wszystko lęk i stwierdził trud są becalmed w nieskończonej przyjemności i spokój przyrody.
474	anxious	Henry David Thoreau	\N	pt-PT	Há momentos em que toda a ansiedade e fadiga indicados são becalmed no lazer e repouso infinito da natureza.
475	anxious	Henry David Thoreau	\N	pt-PT	Há momentos em que toda a ansiedade e fadiga indicados são becalmed no lazer e repouso infinito da natureza.
476	anxious	Henry David Thoreau	\N	ro	Există momente când toate anxietate și trudă indicate sunt adăpostit în timpul liber infinit și odihnă a naturii.
477	anxious	Henry David Thoreau	\N	ru	Есть моменты, когда все тревоги и труд являются указанные штиль в бесконечном отдыха и покоя природы.
478	anxious	Henry David Thoreau	\N	sk	Sú chvíle, kedy sú všetky úzkosti a stanoveným drina bezvetrí v nekonečnej rekreačné a spočinie prírody.
479	anxious	Henry David Thoreau	\N	sv	Det finns stunder då all ångest och uttalade slit är vindstilla i det oändliga fritid och vila i naturen.
480	anxious	Henry David Thoreau	\N	th	มีช่วงเวลาเมื่อความวิตกกังวลและความเหน็ดเหนื่อยที่ระบุไว้จะถูก becalmed ในการพักผ่อนที่ไม่มีที่สิ้นสุดและความสงบของธรรมชาติ
481	anxious	Henry David Thoreau	\N	tr	Tüm anksiyete ve belirtilen zahmet doğanın sonsuz eğlence ve dinlenme olarak becalmed olan anlar vardır.
482	anxious	Henry David Thoreau	\N	uk	Є моменти, коли всі тривоги і праця є зазначені штиль у нескінченному відпочинку і спокою природи.
483	anxious	Henry David Thoreau	\N	zh-Hant	有些時候，當所有的焦慮和規定的辛勞無風的無限的休閒和自然休止。
484	anxious	Charles Spurgeon	\N	ar	القلق لا غدا فارغة من الحزن، ولكن فقط يفرغ اليوم من قوتها.
485	anxious	Charles Spurgeon	\N	ca	L'ansietat no demà buit de les seves penes, però només avui es buida de la seva força.
486	anxious	Charles Spurgeon	\N	cs	Úzkost není prázdný zítra svých bolestí, ale pouze vyprázdní dnes své síly.
487	anxious	Charles Spurgeon	\N	da	Angst ikke tom i morgen af ​​sine sorger, men kun tømmes i dag af sin styrke.
488	anxious	Charles Spurgeon	\N	de	Angst nicht leer morgen seine Sorgen, aber nur Leergut heute seine Stärke.
489	anxious	Charles Spurgeon	\N	el	Άγχος δεν αδειάζει αύριο από τις λύπες του, αλλά μόνο αδειάζει σήμερα τη δύναμή της.
490	anxious	Charles Spurgeon	\N	en	Anxiety does not empty tomorrow of its sorrows, but only empties today of its strength.
491	anxious	Charles Spurgeon	\N	es	La ansiedad no mañana vacío de sus penas, pero sólo hoy se vacía de su fuerza.
492	anxious	Charles Spurgeon	\N	fi	Ahdistus ei tyhjene huomenna sen murheita, mutta vain tyhjentää tänään sen vahvuus.
493	anxious	Charles Spurgeon	\N	fr	L'anxiété n'est pas demain vide de ses peines, mais seulement vide aujourd'hui de sa force.
494	anxious	Charles Spurgeon	\N	he	חרדה לא מחר ריקים מהצרות שלה, אבל רק היום מתרוקן מעוצמתה.
495	anxious	Charles Spurgeon	\N	hr	Tjeskoba se ne prazne sutra svojih žalosti, ali samo prazni danas svoje snage.
496	anxious	Charles Spurgeon	\N	hu	Szorongás nem üres holnap a bánat, csak kiüríti ma erejét.
497	anxious	Charles Spurgeon	\N	it	L'ansia non si svuota domani dei suoi dolori, ma solo oggi si svuota della sua forza.
498	anxious	Charles Spurgeon	\N	ja	不安ではなく、空のその悲しみの明日だけ、空に、その強さの今日を行います。
499	anxious	Charles Spurgeon	\N	ko	불안은 비워에게 강도의 오늘의 슬픔의 빈 내일을하지 않지만.
500	anxious	Charles Spurgeon	\N	nb	Angst ikke tømmer i morgen av sine sorger, men bare tømmer i dag av sin styrke.
501	anxious	Charles Spurgeon	\N	nl	Angst wordt niet geleegd morgen van zijn smarten, maar alleen leegt vandaag de dag van haar kracht.
502	anxious	Charles Spurgeon	\N	pl	Lęk nie pusty jutro swoich smutków robi, ale tylko wpada dzisiaj jej wytrzymałości.
503	anxious	Charles Spurgeon	\N	pt-PT	A ansiedade não esvazia o amanhã de suas tristezas, mas apenas esvazia hoje de sua força.
504	anxious	Charles Spurgeon	\N	pt-PT	A ansiedade não esvazia o amanhã de suas tristezas, mas apenas esvazia hoje de sua força.
505	anxious	Charles Spurgeon	\N	ro	Anxietatea nu mâine gol al durerii sale, dar numai golește astăzi de puterea sa.
506	anxious	Charles Spurgeon	\N	ru	Тревога не пустые завтра своих горестях, но только сегодня впадает в своих силах.
507	anxious	Charles Spurgeon	\N	sk	Úzkosť nie je prázdny zajtra svojich bolestí, ale iba vyprázdni dnes svoje sily.
876	tired	Alysha Speer	\N	ko	수면 그것의 존재와 나를 공경하지 않았다.
508	anxious	Charles Spurgeon	\N	sv	Ångest töms inte i morgon sina sorger, men bara tömmer i dag av dess styrka.
509	anxious	Charles Spurgeon	\N	th	ความวิตกกังวลไม่ได้ในวันพรุ่งนี้ว่างของความเศร้าโศกของตน แต่เพียงเปล่าวันนี้ของความแข็งแรง
510	anxious	Charles Spurgeon	\N	tr	Kaygı sadece boşaltır gücünü bugün kendi acılarını boş yarın değil, ama.
511	anxious	Charles Spurgeon	\N	uk	Тривога не порожні завтра свої жалі, але тільки сьогодні впадає в своїх силах.
512	anxious	Charles Spurgeon	\N	zh-Hant	焦慮不空明天它的哀愁，但今天只有清空其強度。
513	anxious	Plato	\N	ar	لا شيء في شؤون الرجال يستحق قلق كبير.
514	anxious	Plato	\N	ca	Res en els assumptes dels homes és digne de gran ansietat.
515	anxious	Plato	\N	cs	Nic v záležitostech mužů je hoden velké úzkosti.
516	anxious	Plato	\N	da	Intet i anliggender af mænd er værdig stor angst.
517	anxious	Plato	\N	de	Nichts in den Angelegenheiten der Menschen ist von der großen Angst.
518	anxious	Plato	\N	el	Τίποτα στις υποθέσεις των ανδρών είναι αντάξια της μεγάλης ανησυχίας.
519	anxious	Plato	\N	en	Nothing in the affairs of men is worthy of great anxiety.
520	anxious	Plato	\N	es	Nada en los asuntos de los hombres es digno de gran ansiedad.
521	anxious	Plato	\N	fi	Mikään asioihin miesten ansaitsee suurta ahdistusta.
522	anxious	Plato	\N	fr	Rien dans les affaires des hommes est digne d'une grande anxiété.
523	anxious	Plato	\N	he	שום דבר לא בענייני גברים הוא ראוי לחרדה גדולה.
524	anxious	Plato	\N	hr	Ništa u poslove ljudi je vrijedan velike tjeskobe.
525	anxious	Plato	\N	hu	Semmi sem az ügyek a férfiak méltó a nagy szorongás.
526	anxious	Plato	\N	it	Nulla negli affari degli uomini è degno di grande ansia.
527	anxious	Plato	\N	ja	男性の問題で何も大きな不安の価値ではありません。
528	anxious	Plato	\N	ko	사람의 업무에 아무것도 큰 불안의 가치입니다.
529	anxious	Plato	\N	nb	Ingenting i saker av menn er verdig stor angst.
530	anxious	Plato	\N	nl	Niets in de zaken van mensen is waardig van grote angst.
531	anxious	Plato	\N	pl	Nic w sprawy ludzi jest godna wielkiego niepokoju.
532	anxious	Plato	\N	pt-PT	Nada nos casos dos homens é digno de grande ansiedade.
533	anxious	Plato	\N	pt-PT	Nada nos casos dos homens é digno de grande ansiedade.
534	anxious	Plato	\N	ro	Nimic în afacerile oamenilor este demn de anxietate mare.
535	anxious	Plato	\N	ru	Ничто в дела людей не достоин большого беспокойства.
536	anxious	Plato	\N	sk	Nič v záležitostiach mužov je hoden veľkej úzkosti.
537	anxious	Plato	\N	sv	Ingenting i angelägenheterna av män är värda stor oro.
538	anxious	Plato	\N	th	ไม่มีสิ่งใดในกิจการของผู้ชายที่มีคุณค่าของความวิตกกังวลที่ดี
539	anxious	Plato	\N	tr	Erkeklerin işlerine hiçbir şey büyük bir endişe layık.
540	anxious	Plato	\N	uk	Ніщо у справи людей не гідний великого занепокоєння.
541	anxious	Plato	\N	zh-Hant	在任何人的事務是值得極大的焦慮。
542	anxious	Chanakya	\N	ar	لا ينبغي لنا أن تأكل ما هو الماضي، ولا ينبغي لنا أن تكون حريصة حول المستقبل؛ الرجال من الفطنة صفقة فقط مع اللحظة الراهنة.
543	anxious	Chanakya	\N	ca	No hem preocupem pel que és passat, ni hem d'estar preocupats pel futur, els homes de discerniment acord només amb el moment present.
544	anxious	Chanakya	\N	cs	Neměli bychom si starosti o to, co je minulost, ani bychom si měli obavy z budoucnosti, muži rozlišování se zabývají pouze přítomný okamžik.
545	anxious	Chanakya	\N	da	Vi bør ikke ærgre for hvad er fortid, heller bør vi være bekymrede for fremtiden, mænd af dømmekraft deal kun nuet.
546	anxious	Chanakya	\N	de	Wir sollten uns nicht für das, was ist vorbei ärgern, noch sollten wir besorgt über die Zukunft; Männer von Einsicht befassen sich nur mit der Gegenwart.
547	anxious	Chanakya	\N	el	Εμείς δεν πρέπει να ενοχλείται για το τι είναι παρελθόν, ούτε και θα πρέπει να είμαστε ανήσυχοι για το μέλλον? Άνδρες της διάκρισης ασχολούνται μόνο με την παρούσα στιγμή.
548	anxious	Chanakya	\N	en	We should not fret for what is past, nor should we be anxious about the future; men of discernment deal only with the present moment.
549	anxious	Chanakya	\N	es	No debemos preocupamos por lo que es pasado, ni debemos estar preocupados por el futuro, los hombres de discernimiento acuerdo sólo con el momento presente.
550	anxious	Chanakya	\N	fi	Meidän ei pitäisi pelätä, mitä on ohi, eikä meidän pitäisi olla huolissaan tulevaisuudesta, miesten arvostelukykyä käsitellä vain nykyhetkeä.
551	anxious	Chanakya	\N	fr	Nous devrions vous inquiétez pas pour ce qui est passé, nous ne devrions pas être inquiet pour l'avenir, les hommes de discernement ne traitent que de l'instant présent.
552	anxious	Chanakya	\N	he	אנחנו לא צריכים לדאוג למה שהוא עבר, וגם אנחנו צריכים להיות מודאגים לגבי העתיד; עסקת גברים של הבחנה רק ברגע הנוכחי.
553	anxious	Chanakya	\N	hr	Mi ne bi trebali uzrujavati za ono što je prošlo, niti bismo trebali biti zabrinuti o budućnosti, ljudi iz razlučivanja bave samo s sadašnjem trenutku.
554	anxious	Chanakya	\N	hu	Ne izgulj, mi a múlt, és nem kellene aggódjatok a jövőben férfiakat tisztánlátás foglalkozik csak a jelen pillanatban.
555	anxious	Chanakya	\N	it	Noi non dovrebbe preoccupare di ciò che è passato, né dovremmo essere in ansia per il futuro, gli uomini di discernimento accordo solo con il momento presente.
556	anxious	Chanakya	\N	ja	我々は、過去とは何かのためにフレットはありません、また我々は、将来の不安でなければなりません。現時点で唯一の識別の男性が契約。
557	anxious	Chanakya	\N	ko	우리는 과거의 무엇에 대해 초조해하지 안되며, 우리는 미래에 대한 염려한다 현재의 순간 만 분별의 남자 거래.
558	anxious	Chanakya	\N	nb	Vi bør ikke bekymre deg for hva som er forbi, eller bør vi være bekymret for fremtiden, mennesker med dømmekraft avtale bare med det nåværende tidspunkt.
559	anxious	Chanakya	\N	nl	We moeten niet bang voor wat voorbij is, noch zouden we zijn bezorgd over de toekomst, mannen van onderscheiding alleen bezighouden met het huidige moment.
560	anxious	Chanakya	\N	pl	Nie należy niepokoić się o to, co należy do przeszłości, ani też nie powinniśmy się niepokoić o przyszłość, ludzie z rozeznania czynienia tylko z obecnej chwili.
561	anxious	Chanakya	\N	pt-PT	Nós não devem se preocupar pois o que é passado, nem deveríamos estar muito preocupados com o futuro, os homens de discernimento lidar apenas com o momento presente.
562	anxious	Chanakya	\N	pt-PT	Nós não devem se preocupar pois o que é passado, nem deveríamos estar muito preocupados com o futuro, os homens de discernimento lidar apenas com o momento presente.
563	anxious	Chanakya	\N	ro	Noi nu ar trebui să se agita pentru ceea ce este trecut, nici nu ar trebui să fie îngrijorați cu privire la viitor, oamenii de discernământ se referă numai la momentul prezent.
564	anxious	Chanakya	\N	ru	Мы не должны беспокоиться за то, что в прошлом, мы не должны беспокоиться о будущем, люди проницательности дело только с настоящим моментом.
565	anxious	Chanakya	\N	sk	Nemali by sme si starosti o to, čo je minulosť, ani by sme si mali obavy z budúcnosti, muži rozlišovanie sa zaoberajú iba prítomný okamih.
566	anxious	Chanakya	\N	sv	Vi ska inte gräma om vad som är förbi, inte heller bör vi vara oroliga för framtiden, män med urskiljning affären endast med nuet.
567	anxious	Chanakya	\N	th	เราไม่ควรทำให้ไม่สบายใจสำหรับสิ่งที่ผ่านมาและเราควรจะกังวลเกี่ยวกับอนาคต; ข้อตกลงของคนฉลาดเท่านั้นที่มีในขณะปัจจุบัน
568	anxious	Chanakya	\N	tr	Biz geçmişte ne için üzülmek gerekir, ne de gelecek hakkında endişeli olmalıdır, şu anda sadece idrak erkekler anlaşma.
569	anxious	Chanakya	\N	uk	Ми не повинні турбуватися за те, що в минулому, ми не повинні турбуватися про майбутнє, люди проникливості справу тільки з цим моментом.
570	anxious	Chanakya	\N	zh-Hant	我們不應該煩惱什麼是過去，我們也不應該擔心未來;男人的法眼目前只處理。
571	lonely	Bette Davis	\N	ar	لتحقيق حلمها، ليسمح للعرق على العمل وحيدا، ليتم إعطاء الفرصة للخلق، هو اللحم والبطاطا من الحياة. المال هو المرق.
572	lonely	Bette Davis	\N	ca	Per al compliment d'un somni, que li permeti a suar sobre el treball sol, per tenir l'oportunitat de crear, és la carn i les patates de la vida. Els diners és la salsa.
573	lonely	Bette Davis	\N	cs	Ke splnění snu, aby se mohl potit na osamělé práci, aby jim byla poskytnuta možnost vytvořit, je maso a brambory života. Peníze je omáčka.
574	lonely	Bette Davis	\N	da	For at opfylde en drøm, at få lov til at svede i løbet ensomme arbejdskraft, gives en chance for at skabe, er kød og kartofler af livet. Pengene er sovs.
575	lonely	Bette Davis	\N	de	Um einen Traum, um die Erlaubnis, über einsame Arbeit schwitzen, um eine Chance zu schaffen werden, zu erfüllen, ist das Fleisch und Kartoffeln des Lebens. Das Geld ist die Soße.
576	lonely	Bette Davis	\N	el	Για να εκπληρώσει ένα όνειρο, να του επιτραπεί να ιδρώνουν πάνω μοναχική εργασία, να δοθεί μια ευκαιρία για τη δημιουργία, είναι το κρέας και πατάτες της ζωής. Τα χρήματα είναι η σάλτσα.
577	lonely	Bette Davis	\N	en	To fulfill a dream, to be allowed to sweat over lonely labor, to be given a chance to create, is the meat and potatoes of life. The money is the gravy.
578	lonely	Bette Davis	\N	es	Para el cumplimiento de un sueño, que se le permita a sudar sobre el trabajo solo, para tener la oportunidad de crear, es la carne y las patatas de la vida. El dinero es la salsa.
579	lonely	Bette Davis	\N	fi	Täyttääkseen unelma, saa hikoilla yli yksinäinen työ, annetaan mahdollisuus luoda, on lihaa ja perunoita elämän. Rahaa on kastike.
580	lonely	Bette Davis	\N	fr	Pour réaliser un rêve, pour être autorisé à transpirer sur le travail solitaire, à donner une chance de créer, est la viande et les pommes de terre de la vie. L'argent est la sauce.
581	lonely	Bette Davis	\N	he	כדי להגשים חלום, להיות מותר להזיע על עבודה בודדה, כדי לתת הזדמנות ליצירה, הוא הבשר ותפוחי אדמה של חיים. הכסף הוא הרוטב.
582	lonely	Bette Davis	\N	hr	Da bi ispunila svoj san, kako bi se omogućilo da se znoje nad usamljenog rada, treba dati priliku za stvaranje, je meso i krumpir života. Novac je sos.
583	lonely	Bette Davis	\N	hu	Teljesítéséhez egy álom, hogy lehetővé kell tenni, hogy izzad mint magányos munka, meg kell adni a lehetőséget, hogy hozzon létre, a hús és a burgonya az élet. A pénz a mártást.
584	lonely	Bette Davis	\N	it	Per realizzare un sogno, per essere autorizzati a sudare sul lavoro solitario, deve essere data la possibilità di creare, è la carne e le patate di vita. Il denaro è il sugo.
585	lonely	Bette Davis	\N	ja	作成する機会を与えられることに、孤独な労働にわたって汗を許可するように夢を果たすため、人生の肉とジャガイモです。お金はグレービーです。
586	lonely	Bette Davis	\N	ko	만들 수있는 기회를 부여하기 위해, 외로운 노동을 통해 땀을 허용 할 꿈을, 성취하려면 삶의 고기와 감자입니다. 돈은 국물이다.
587	lonely	Bette Davis	\N	nb	Å oppfylle en drøm, å få lov til å svette i løpet ensom arbeidskraft, for å bli gitt en sjanse til å skape, er kjøtt og poteter av livet. Pengene er saus.
588	lonely	Bette Davis	\N	nl	Om een ​​droom, om te mogen zweten dan eenzame arbeid, een kans om te maken te krijgen, te vervullen is het vlees en aardappelen van het leven. Het geld is de jus.
589	lonely	Bette Davis	\N	pl	Aby spełnić marzenie, aby mieć prawo do potu na samotnej pracy, aby mieć szansę na stworzenie, jest mięso i ziemniaki życia. Pieniędzy jest sos.
590	lonely	Bette Davis	\N	pt-PT	Para realizar um sonho, para ser autorizado a suar sobre o trabalho solitário, a ser dada a oportunidade de criar, é a carne e as batatas da vida. O dinheiro é o molho.
881	tired	Alysha Speer	\N	pt-PT	O sono não me honrar com a sua presença.
591	lonely	Bette Davis	\N	pt-PT	Para realizar um sonho, para ser autorizado a suar sobre o trabalho solitário, a ser dada a oportunidade de criar, é a carne e as batatas da vida. O dinheiro é o molho.
592	lonely	Bette Davis	\N	ro	Pentru a îndeplini un vis, să li se permită să transpire mai mult de muncă singur, să se acorde o șansă de a crea, este carne și cartofi de viață. Banii este sos.
593	lonely	Bette Davis	\N	ru	Чтобы осуществить мечту, чтобы иметь возможность потеть над одиноким труд, чтобы ему дали возможность создать, является мясо и картофель жизни. Деньги соус.
594	lonely	Bette Davis	\N	sk	K splneniu sna, aby sa mohol potiť na osamelé prácu, aby im bola poskytnutá možnosť vytvoriť, je mäso a zemiaky života. Peniaze je omáčka.
595	lonely	Bette Davis	\N	sv	För att uppfylla en dröm, att få svettas över lonely arbetskraft, att få en chans att skapa, är kött och potatis i livet. Pengarna är såsen.
596	lonely	Bette Davis	\N	th	เพื่อเติมเต็มความฝันที่จะได้รับอนุญาตให้เหงื่อแรงงานกว่าเหงาที่จะได้รับโอกาสที่จะสร้างเป็นเนื้อและมันฝรั่งของชีวิต เงินเป็นน้ำเกรวี่
597	lonely	Bette Davis	\N	tr	Oluşturmak için bir şans verilecek, yalnız emek üzerindeki ter izin verilmesi için bir rüya,, yerine getirmek için yaşamın et ve patates olduğunu. Para sos olduğunu.
598	lonely	Bette Davis	\N	uk	Щоб здійснити мрію, щоб мати можливість потіти над самотнім працю, щоб йому дали можливість створити, є м'ясо і картоплю життя. Гроші соус.
599	lonely	Bette Davis	\N	zh-Hant	為了滿足出汗過寂寞勞動，得到一個機會，創造一個夢想，是生活的香餑餑。錢是肉汁。
600	lonely	Bill Murray	\N	ar	لا أحد يريد حقا أن نعترف أنها وحيدا، ويتم أبدا حقا موجهة ذلك كثيرا جدا بين الأهل والأصدقاء. ولكن لقد شعرت وحيدا عدة مرات في حياتي.
601	lonely	Bill Murray	\N	ca	En realitat, ningú vol admetre que se senten sols, i mai s'aborda realment molt entre amics i familiars. Però m'he sentit sol moltes vegades en la meva vida.
602	lonely	Bill Murray	\N	cs	Nikdo ve skutečnosti nechce přiznat, že jsou osamělí, a to je nikdy řešit moc mezi přáteli a rodinou. Ale já jsem se cítil osamělý mnohokrát v mém životě.
603	lonely	Bill Murray	\N	da	Ingen virkelig ønsker at indrømme, at de er ensomme, og det er aldrig rigtig behandlet meget mellem venner og familie. Men jeg har følt ensomme mange gange i mit liv.
604	lonely	Bill Murray	\N	de	Niemand will wirklich zugeben, dass sie einsam sind, und es wird nie wirklich sehr viel zwischen Freunden und Familie angesprochen. Aber ich habe einsam viele Male in meinem Leben gefühlt.
605	lonely	Bill Murray	\N	el	Κανείς δεν θέλει να παραδεχτεί ότι είναι μόνοι, και ποτέ δεν είναι πραγματικά απευθύνεται σε μεγάλο βαθμό μεταξύ των φίλων και της οικογένειας. Αλλά έχω νιώσει μοναξιά πολλές φορές στη ζωή μου.
606	lonely	Bill Murray	\N	en	No one really wants to admit they are lonely, and it is never really addressed very much between friends and family. But I have felt lonely many times in my life.
607	lonely	Bill Murray	\N	es	En realidad, nadie quiere admitir que se sienten solos, y nunca se aborda realmente mucho entre amigos y familiares. Pero me he sentido solo muchas veces en mi vida.
608	lonely	Bill Murray	\N	fi	Kukaan ei todella haluaa myöntää, että he ovat yksinäisiä, ja se ei ole koskaan todella käsitelty paljon ystävien ja perheen kanssa. Mutta olen tuntenut yksinäinen monta kertaa elämässäni.
609	lonely	Bill Murray	\N	fr	Personne ne veut vraiment admettre qu'ils sont seuls, et il n'est jamais vraiment abordé très bien entre amis et famille. Mais je me suis senti seul à plusieurs reprises dans ma vie.
610	lonely	Bill Murray	\N	he	אף אחד לא באמת רוצה להודות שהם בודדים, וזה אף פעם לא באמת התייחס מאוד בין חברים ובני משפחה. אבל אני מרגיש הרבה פעמים בודדות בחיים שלי.
611	lonely	Bill Murray	\N	hr	Nitko ne želi priznati da su usamljeni, i nikada se zapravo obratio itekako između prijatelja i obitelji. Ali ja sam osjećao osamljenim mnogo puta u mom životu.
612	lonely	Bill Murray	\N	hu	Senki sem akarja beismerni, hogy magányos vagy, és ez nem igazán foglalkozik nagyon a barátok és a család. De én éreztem magányosnak sokszor az életemben.
613	lonely	Bill Murray	\N	it	Nessuno vuole davvero ammettere che sono solo, e non è mai realmente affrontato molto tra amici e familiari. Ma io ho sentito solo molte volte nella mia vita.
614	lonely	Bill Murray	\N	ja	誰も本当に彼らが孤独である認めざるを望んでいない、それは本当に友人や家族の間で非常に扱われることはありません。しかし、私は私の人生の中で孤独な何度も感じた。
615	lonely	Bill Murray	\N	ko	아무도 정말 그들이 외로운 인정하고 싶어하지, 그것은 정말 친구와 가족 사이에 매우 해결되지 않습니다. 하지만 난 내 인생에서 외로운 여러 번 느꼈다.
616	lonely	Bill Murray	\N	nb	Ingen ønsker egentlig å innrømme at de er ensomme, og det er egentlig aldri adressert veldig mye mellom venner og familie. Men jeg har følt meg ensom mange ganger i mitt liv.
617	lonely	Bill Murray	\N	nl	Niemand wil echt toegeven dat ze eenzaam zijn, en het is nooit echt heel erg gericht tussen vrienden en familie. Maar ik heb eenzaam vaak gevoeld in mijn leven.
618	lonely	Bill Murray	\N	pl	Nikt tak naprawdę nie chce się przyznać, że są samotni, a to nigdy nie jest tak naprawdę zająć bardzo dużo między przyjaciółmi i rodziną. Ale czułem się samotny wiele razy w moim życiu.
619	lonely	Bill Murray	\N	pt-PT	Ninguém quer admitir que eles são solitários, e ele nunca é realmente abordado muito entre amigos e familiares. Mas eu me senti solitário muitas vezes na minha vida.
620	lonely	Bill Murray	\N	pt-PT	Ninguém quer admitir que eles são solitários, e ele nunca é realmente abordado muito entre amigos e familiares. Mas eu me senti solitário muitas vezes na minha vida.
621	lonely	Bill Murray	\N	ro	Nimeni nu vrea să recunoască că sunt singuri, și niciodată nu se adresează într-adevăr foarte mult între prieteni și familie. Dar am simțit singur de multe ori în viața mea.
882	tired	Alysha Speer	\N	ro	Somnul nu ma onoreze cu prezența lui.
622	lonely	Bill Murray	\N	ru	Никто не хочет признать, что они одиноки, и он действительно никогда не обратился очень между друзьями и семьей. Но я чувствовал себя одиноким много раз в моей жизни.
623	lonely	Bill Murray	\N	sk	Nikto v skutočnosti nechce priznať, že sú osamelí, a to je nikdy riešiť moc medzi priateľmi a rodinou. Ale ja som sa cítil osamelý mnohokrát v mojom živote.
624	lonely	Bill Murray	\N	sv	Ingen vill riktigt erkänna att de är ensamma, och det är aldrig riktigt upp väldigt mycket mellan vänner och familj. Men jag har känt mig ensam många gånger i mitt liv.
625	lonely	Bill Murray	\N	th	ไม่มีใครอยากที่จะยอมรับว่าพวกเขามีความเหงาและมันก็ไม่เคยที่จริงเป็นอย่างมากระหว่างเพื่อนและครอบครัว แต่ผมมีความรู้สึกโดดเดี่ยวหลายครั้งในชีวิตของฉัน
626	lonely	Bill Murray	\N	tr	Hiç kimse gerçekten yalnız kabul etmek istiyor, ve gerçekten arkadaşlar ve aile arasında çok ele asla. Ama hayatımda yalnız birçok kez hissettim.
627	lonely	Bill Murray	\N	uk	Ніхто не хоче визнати, що вони самотні, і він дійсно ніколи не звернувся дуже між друзями та родиною. Але я відчував себе самотнім багато раз в моєму житті.
628	lonely	Bill Murray	\N	zh-Hant	沒有人真正願意承認他們是孤獨的，它從來沒有真正解決了非常多的朋友和家人之間。但我已經多次在我的生活中感到孤獨。
629	lonely	Robert Plant	\N	ar	أنا أحب فكرة أن تكون وحدها. أنا أحب فكرة أن تكون في كثير من الأحيان وحدها في كل جوانب حياتي. أحب أن يشعر بالوحدة. أود أن حاجة الأشياء.
630	lonely	Robert Plant	\N	ca	M'agrada la idea d'estar sol. M'agrada la idea d'estar sola amb freqüència en tots els aspectes de la meva vida. M'agrada sentir-me sol. M'agrada les coses que necessiti.
631	lonely	Robert Plant	\N	cs	Líbí se mi představa, že sám. Líbí se mi myšlenka často sama ve všech aspektech svého života. Rád cítím osamělý. Rád potřebovat věci.
632	lonely	Robert Plant	\N	da	Jeg kan godt lide tanken om at være alene. Jeg kan godt lide tanken om ofte at være alene i alle aspekter af mit liv. Jeg kan lide at føle sig ensom. Jeg kan lide at brug ting.
633	lonely	Robert Plant	\N	de	Ich mag die Idee, allein zu sein. Ich mag die Idee von oft allein in allen Aspekten meines Lebens. Ich mag das Gefühl, einsam. Ich mag die Dinge brauchen.
634	lonely	Robert Plant	\N	el	Μου αρέσει η ιδέα του να είσαι μόνος. Μου αρέσει η ιδέα του να είναι συχνά μόνο σε όλες τις πτυχές της ζωής μου. Μου αρέσει να αισθάνονται μοναξιά. Μου αρέσει να χρειαστεί πράγματα.
635	lonely	Robert Plant	\N	en	I like the idea of being alone. I like the idea of often being alone in all aspects of my life. I like to feel lonely. I like to need things.
636	lonely	Robert Plant	\N	es	Me gusta la idea de estar solo. Me gusta la idea de estar sola con frecuencia en todos los aspectos de mi vida. Me gusta sentirme solo. Me gusta las cosas que necesite.
637	lonely	Robert Plant	\N	fi	Pidän ajatuksesta yksin. Pidän ajatuksesta usein yksin kaikilla elämäni. Haluan tuntea olonsa yksinäiseksi. Tykkään tarvitsevat asioita.
638	lonely	Robert Plant	\N	fr	J'aime l'idée d'être seul. J'aime l'idée d'être souvent seul dans tous les aspects de ma vie. J'aime me sentir seul. J'aime avoir besoin de choses.
639	lonely	Robert Plant	\N	he	אני אוהב את הרעיון של להיות לבד. אני אוהב את הרעיון של להיות לבד לעתים קרובות בכל ההיבטים של החיים שלי. אני רוצה להרגיש בודד. אני אוהב דברים שצריך.
640	lonely	Robert Plant	\N	hr	Sviđa mi se ideja od samoće. Sviđa mi se ideja često samoće u svim aspektima života. Volim se osjećati usamljeno. Volim potrebno stvari.
641	lonely	Robert Plant	\N	hu	Tetszik az ötlet, hogy egyedül. Tetszik az ötlet, a gyakran egyedül minden szempontból az életem. Szeretem érezni magányos. Szeretek kell a dolgokat.
642	lonely	Robert Plant	\N	it	Mi piace l'idea di essere soli. Mi piace l'idea di essere spesso da solo in tutti gli aspetti della mia vita. Mi piace sentire solo. Mi piace bisogno di cose.
643	lonely	Robert Plant	\N	ja	私は一人でいるという考え方が好きです。私は頻繁に私の人生のすべての面で一人でいるという考え方が好きです。私は孤独を感じるのが好きです。私は物事を必要とするのが好きです。
644	lonely	Robert Plant	\N	ko	나는 혼자의 아이디어를 좋아한다. 나는 종종 내 인생의 모든 측면에서 혼자의 아이디어를 좋아한다. 나는 외로운 느낌을 좋아합니다. 내가 일을해야하는 것.
645	lonely	Robert Plant	\N	nb	Jeg liker tanken på å være alene. Jeg liker tanken på å ofte være alene i alle aspekter av livet mitt. Jeg liker å føle seg ensom. Jeg liker å trenge ting.
646	lonely	Robert Plant	\N	nl	Ik hou van het idee van het alleen zijn. Ik hou van het idee van het vaak om alleen te zijn in alle aspecten van mijn leven. Ik wil eenzaam te voelen. Ik houd ervan om dingen nodig.
647	lonely	Robert Plant	\N	pl	Podoba mi się pomysł, że jest sam. I podoba mi się pomysł często jest sam we wszystkich aspektach mojego życia. Lubię czuć się samotny. Chciałbym potrzebują rzeczy.
648	lonely	Robert Plant	\N	pt-PT	Eu gosto da idéia de estar sozinho. Eu gosto da idéia de muitas vezes estar sozinho em todos os aspectos da minha vida. Gosto de me sentir solitário. Eu gosto de coisas que precisa.
649	lonely	Robert Plant	\N	pt-PT	Eu gosto da idéia de estar sozinho. Eu gosto da idéia de muitas vezes estar sozinho em todos os aspectos da minha vida. Gosto de me sentir solitário. Eu gosto de coisas que precisa.
650	lonely	Robert Plant	\N	ro	Îmi place ideea de a fi singur. Îmi place ideea de a fi de multe ori singur în toate aspectele vieții mele. Îmi place să se simtă singur. Îmi place să nevoie de lucruri.
651	lonely	Robert Plant	\N	ru	Мне нравится идея одиночества. Мне нравится идея часто в одиночестве во всех аспектах моей жизни. Мне нравится чувствовать себя одиноким. Мне нравится нужны вещи.
877	tired	Alysha Speer	\N	nb	Sleep ikke respektere meg med sin tilstedeværelse.
652	lonely	Robert Plant	\N	sk	Páči sa mi predstava, že sám. Páči sa mi myšlienka často sama vo všetkých aspektoch svojho života. Rád cítim osamelý. Rád potrebovať veci.
653	lonely	Robert Plant	\N	sv	Jag gillar tanken på att vara ensam. Jag gillar tanken på att ofta vara ensam i alla aspekter av mitt liv. Jag gillar att känna sig ensam. Jag tycker om att behöva saker.
654	lonely	Robert Plant	\N	th	ผมชอบความคิดของการอยู่คนเดียว ผมชอบความคิดของมักจะอยู่คนเดียวในทุกด้านของชีวิตของฉัน ผมชอบที่จะรู้สึกโดดเดี่ยว ผมชอบที่จะต้องการสิ่ง
655	lonely	Robert Plant	\N	tr	Yalnız olma fikri gibi. Sık sık hayatımın her alanında yalnız olma fikri gibi. Ben yalnız hissetmek ister. Ben şeyler gerekir gibi.
656	lonely	Robert Plant	\N	uk	Мені подобається ідея самотності. Мені подобається ідея часто на самоті у всіх аспектах мого життя. Мені подобається відчувати себе самотнім. Мені подобається потрібні речі.
657	lonely	Robert Plant	\N	zh-Hant	我喜歡這個主意的孤獨。我喜歡這個主意，往往是獨自一人在我的生活的各個方面。我喜歡感到孤獨。我喜歡需要的東西。
658	lonely	Judy Garland	\N	ar	إذا أنا مثل أسطورة، ثم لماذا أنا وحيدا جدا؟ اسمحوا لي ان اقول لكم والأساطير كلها بشكل جيد للغاية إذا كنت قد حصلت على شخص ما حول الذي يحبك.
659	lonely	Judy Garland	\N	ca	Si sóc tota una llegenda, per què estic tan sola? Déjame que t'expliqui, les llegendes són molt bé si tens algú al teu costat que t'estimi.
660	lonely	Judy Garland	\N	cs	Pokud jsem jako legenda, proč jsem tak sama? Řeknu vám, legendy jsou velmi dobře, pokud máte někoho v okolí, kdo tě miluje.
661	lonely	Judy Garland	\N	da	Hvis jeg er sådan en legende, så hvorfor er jeg så ensom? Lad mig fortælle dig, legender er alle meget godt, hvis du har fået nogen omkring, der elsker dig.
662	lonely	Judy Garland	\N	de	Wenn ich so eine Legende bin, warum bin ich so einsam? Lassen Sie mich Ihnen sagen, sind Legenden alle sehr gut, wenn du jemanden um, der liebt dich habe.
663	lonely	Judy Garland	\N	el	Αν είμαι ένα τέτοιο μύθο, τότε γιατί είμαι τόσο μόνος; Επιτρέψτε μου να σας πω, μύθοι είναι όλα πολύ καλά, αν έχετε κάποιον γύρω που σας αγαπά.
664	lonely	Judy Garland	\N	en	If I'm such a legend, then why am I so lonely? Let me tell you, legends are all very well if you've got somebody around who loves you.
665	lonely	Judy Garland	\N	es	Si soy toda una leyenda, ¿por qué estoy tan sola? Déjame que te cuente, las leyendas son muy bien si tienes a alguien a tu lado que te ame.
666	lonely	Judy Garland	\N	fi	Jos olen niin legenda, niin miksi olen niin yksinäinen? Minäpä kerron teille, legendat ovat kaikki erittäin hyvin, jos sinulla joku noin joka rakastaa sinua.
667	lonely	Judy Garland	\N	fr	Si je suis une légende, alors pourquoi suis-je si seul? Permettez-moi de vous dire, les légendes sont tous très bien si vous avez quelqu'un autour de qui vous aime.
668	lonely	Judy Garland	\N	he	אם אני אגדה כזה, אז למה אני כל כך בודד? תן לי להגיד לך, כל אגדות הן טובים מאוד אם יש לך מישהו בסביבה שאוהבת אותך.
669	lonely	Judy Garland	\N	hr	Ako sam takva legenda, onda zašto sam tako usamljen? Dopustite mi da vam kažem, legende su svi jako dobro ako imaš nekoga, tko te voli.
670	lonely	Judy Garland	\N	hu	Ha én vagyok egy ilyen legenda, akkor miért vagyok olyan magányos? Hadd mondjam el, legendák mind nagyon jól, ha van valaki, aki szeret.
671	lonely	Judy Garland	\N	it	Se io sono una leggenda, allora perché sono così sola? Lasciate che vi dica, le leggende sono tutte molto bene, se hai qualcuno in giro che ti ama.
672	lonely	Judy Garland	\N	ja	私はそのような伝説だなら、なぜ私はとても寂しいのですか？あなたを愛する人の周りに誰かを持っているなら、私はあなたを教えてみましょう、伝説は、すべては非常によくある。
673	lonely	Judy Garland	\N	ko	그런 전설이야 있다면, 왜 그렇게 외롭지? 당신을 사랑하는 주변 사람을 가지고 있다면 말해 드리죠, 전설은 모두 잘 있습니다.
674	lonely	Judy Garland	\N	nb	Hvis jeg er en slik legende, så hvorfor er jeg så ensom? La meg fortelle deg, legender er vel og bra hvis du har noen rundt som elsker deg.
675	lonely	Judy Garland	\N	nl	Als ik zo'n legende, waarom ben ik zo eenzaam? Laat me je vertellen, legendes zijn allemaal goed en wel als je hebt iemand in de buurt die van je houdt.
676	lonely	Judy Garland	\N	pl	Jeśli jestem taka legenda, to dlaczego jestem tak samotny? Powiem ci, legendy są bardzo dobrze, jeśli masz kogoś wokół kto cię kocha.
677	lonely	Judy Garland	\N	pt-PT	Se eu sou uma lenda, então por que estou tão sozinho? Deixe-me dizer-lhe, lendas são todos muito bem, se você tem alguém por aí que você ama.
678	lonely	Judy Garland	\N	pt-PT	Se eu sou uma lenda, então por que estou tão sozinho? Deixe-me dizer-lhe, lendas são todos muito bem, se você tem alguém por aí que você ama.
679	lonely	Judy Garland	\N	ro	Dacă eu sunt o astfel de legendă, atunci de ce sunt atât de singur? Permiteți-mi să vă spun, legendele sunt toate foarte bine, dacă ai pe cineva în jurul care te iubește.
680	lonely	Judy Garland	\N	ru	Если я такая легенда, то почему я так одинока? Позвольте мне рассказать вам, легенды все очень хорошо, если у вас есть кто-то вокруг, кто тебя любит.
681	lonely	Judy Garland	\N	sk	Ak som ako legenda, prečo som tak sama? Poviem vám, legendy sú veľmi dobre, ak máte niekoho v okolí, kto ťa miluje.
682	lonely	Judy Garland	\N	sv	Om jag är en sådan legend, så varför är jag så ensam? Låt mig berätta, legender är alla mycket bra om du har någon runt som älskar dig.
683	lonely	Judy Garland	\N	th	ถ้าฉันเช่นตำนานแล้วทำไมฉันเหงาเหรอ? ให้ฉันบอกคุณตำนานทั้งหมดจะดีมากถ้าคุณมีใครสักคนที่อยู่รอบ ๆ ที่รักคุณ
684	lonely	Judy Garland	\N	tr	Böyle bir efsane değilim, o zaman neden bu kadar yalnızım? Eğer seven etrafında birileri var ise bana söyleyeyim, efsane hepsi çok iyi bulunmaktadır.
685	lonely	Judy Garland	\N	uk	Якщо я така легенда, то чому я так самотня? Дозвольте мені розповісти вам, легенди все дуже добре, якщо у вас є хтось навколо, хто тебе любить.
686	lonely	Judy Garland	\N	zh-Hant	如果我是這樣一個傳說，那麼我為什麼如此孤獨？讓我告訴你，傳說都非常好，如果你已經有了身邊的人愛你的人。
687	lonely	Charlie Sheen	\N	ar	الآن، أنا مجرد الذهاب الى شنق مع هذه hotties اثنين من التدخين ويطير من القطاع الخاص في جميع أنحاء العالم. قد يكون وحيدا هنا، ولكن أنا متأكد من مثل طريقة العرض.
688	lonely	Charlie Sheen	\N	ca	Per ara, només sortiré amb aquestes dues belleses fumar i volar en privat al voltant del món. Podria estar sol aquí, però estic segur que com la vista.
689	lonely	Charlie Sheen	\N	cs	Pro tuto chvíli jsem jen tak poflakovat s těmito dvěma hotties kouření a létat soukromě po celém světě. Mohlo by to být osamělý tady, ale já určitě jako pohled.
690	lonely	Charlie Sheen	\N	da	For nu, jeg bare at hænge ud med disse to rygning hotties og flyve privat rundt omkring i verden. Det kan være ensomt heroppe, men jeg sikker lide udsigten.
691	lonely	Charlie Sheen	\N	de	Denn jetzt, ich werde einfach zu hängen mit diesen beiden Schönheiten Rauchen und fliegen privat auf der ganzen Welt. Es könnte sein, einsam hier oben, aber ich bin sicher, wie die Aussicht.
692	lonely	Charlie Sheen	\N	el	Προς το παρόν, είμαι απλώς πρόκειται να κρεμάσει έξω με αυτά τα δύο hotties το κάπνισμα και να πετάξει σε ιδιώτες σε όλο τον κόσμο. Θα μπορούσε να είναι μοναχικά εδώ, αλλά είμαι σίγουρος, όπως την άποψη.
693	lonely	Charlie Sheen	\N	en	For now, I'm just going to hang out with these two smoking hotties and fly privately around the world. It might be lonely up here, but I sure like the view.
694	lonely	Charlie Sheen	\N	es	Por ahora, sólo voy a salir con estas dos bellezas fumar y volar en privado alrededor del mundo. Podría estar solo aquí, pero estoy seguro que como la vista.
695	lonely	Charlie Sheen	\N	fi	Nyt olen juuri menossa hengailla nämä kaksi tupakoinnin namupalojen ja lentää yksityisesti ympäri maailmaa. Se voi olla yksinäistä täällä, mutta olen varma, kuten mieltä.
696	lonely	Charlie Sheen	\N	fr	Pour l'instant, je vais juste passer du temps avec ces deux chaudasses de fumer et voler en privé à travers le monde. Il pourrait être seul ici, mais je sûr que la vue.
697	lonely	Charlie Sheen	\N	he	לעת עתה, אני רק הולך להסתובב עם שתי כוסיות עישון האלה ולטוס באופן פרטי ברחבי העולם. זה יכול להיות בודד עד לכאן, אבל אני בטוח שאהבתי את הנוף.
698	lonely	Charlie Sheen	\N	hr	Za sada, samo ću se družiti s ove dvije hotties pušiti i letjeti u privatnom cijelog svijeta. To bi moglo biti usamljeni ovdje, ali sam siguran kao more.
699	lonely	Charlie Sheen	\N	hu	Egyelőre én csak fog lógni a két dohányzást hotties és repülni magántulajdonban világszerte. Lehet, hogy magányos itt, de biztos vagyok benne, mint a kilátás.
700	lonely	Charlie Sheen	\N	it	Per ora, sto solo andando a uscire con queste due bellezze fumare e volare privatamente in tutto il mondo. Potrebbe essere solo qui, ma sono sicuro che come la vista.
701	lonely	Charlie Sheen	\N	ja	今のところ、私はちょうどこの二つの喫煙ギャルズと一緒にたむろして、世界中の個人的に飛行するつもりです。これは、ここまで寂しいかもしれませんが、ビューのような、私は確信して。
702	lonely	Charlie Sheen	\N	ko	지금은 그냥 두 흡연 꽃미남과 어울리고 세계 사적으로 비행하는거야. 그것은 여기까지 외로울 수 있지만, 뷰와 같은 내가 확인하십시오.
703	lonely	Charlie Sheen	\N	nb	For nå er jeg bare kommer til å henge med disse to røyking hotties og fly privat rundt om i verden. Det kan være ensomt her oppe, men jeg er sikker som visningen.
704	lonely	Charlie Sheen	\N	nl	Voor nu, ik ben gewoon gaan om te hangen met deze twee hotties roken en vliegen particulier over de hele wereld. Het zou hier eenzaam zijn, maar ik weet zeker als het uitzicht.
705	lonely	Charlie Sheen	\N	pl	Na razie mam zamiar spędzać czas z tych dwóch gorących palenia i latać prywatnie na całym świecie. To może być samotny tutaj, ale na pewno, jak widok.
706	lonely	Charlie Sheen	\N	pt-PT	Por agora, eu só vou sair com essas duas gatas fumar e voar privada em todo o mundo. Pode ser só aqui, mas tenho certeza que como a vista.
707	lonely	Charlie Sheen	\N	pt-PT	Por agora, eu só vou sair com essas duas gatas fumar e voar privada em todo o mundo. Pode ser só aqui, mas tenho certeza que como a vista.
708	lonely	Charlie Sheen	\N	ro	Pentru moment, eu sunt doar de gând să stea cu aceste două hotties fumat și zbura privat din întreaga lume. Acesta ar putea fi singur aici, dar eu sigur ca vizualizare.
709	lonely	Charlie Sheen	\N	ru	На данный момент, я просто хочу, чтобы болтаться с этих двух красоток курить и летать частным всему миру. Это может быть одиноко здесь, но я уверен, как вид.
710	lonely	Charlie Sheen	\N	sk	Pre túto chvíľu som len tak poflakovať s týmito dvoma Hotties fajčenia a lietať súkromne po celom svete. Mohlo by to byť osamelý tu, ale ja určite ako pohľad.
711	lonely	Charlie Sheen	\N	sv	För nu kommer jag bara att umgås med dessa två rökning hetingar och flyga privat runt om i världen. Det kan vara ensamt här uppe, men jag verkligen vilja vyn.
712	lonely	Charlie Sheen	\N	th	สำหรับตอนนี้ฉันแค่จะออกไปเที่ยวกับสองคนนี้ Hotties การสูบบุหรี่และการบินเอกชนทั่วโลก มันอาจจะเหงาขึ้นที่นี่ แต่ฉันแน่ใจเหมือนมุมมองของ
713	lonely	Charlie Sheen	\N	tr	Şimdilik, sadece bu iki sigara ateşli takıl ve dünya çapında özel uçmak için gidiyorum. Bu kadar burada yalnız olabilir, ancak görünüm gibi emin.
714	lonely	Charlie Sheen	\N	uk	На даний момент, я просто хочу, щоб бовтатися з цих двох красунь курити і літати приватним всьому світу. Це може бути самотньо тут, але я впевнений, як вид.
715	lonely	Charlie Sheen	\N	zh-Hant	現在，我只是掛出與這兩個吸煙辣妹和世界各地的私人飛行。這可能是寂寞了這裡，但我敢肯定的觀點一樣，。
716	depressed	Jeanette Winterson	\N	ar	الفن أنقذني، بل حصل لي من خلال بلدي الاكتئاب وكراهية الذات، والعودة إلى مكان البراءة.
717	depressed	Jeanette Winterson	\N	ca	L'art em va salvar, sinó que em va arribar a través del meu depressió i odi a si mateix, a un lloc d'innocència.
718	depressed	Jeanette Winterson	\N	cs	Umění mě zachránil, ale mě přes mé deprese a self-ošklivit, zpět na místo neviny.
719	depressed	Jeanette Winterson	\N	da	Art reddede mig, det fik mig gennem min depression og selvhad, tilbage til et sted for uskyld.
720	depressed	Jeanette Winterson	\N	de	Kunst hat mich gerettet, er hat mich durch meine Depressionen und Selbsthass, wieder zu einem Ort der Unschuld.
721	depressed	Jeanette Winterson	\N	el	Τέχνη με έσωσε? Μου πήρε από κατάθλιψη μου και αυτο-απέχθεια, πίσω σε μια θέση της αθωότητας.
722	depressed	Jeanette Winterson	\N	en	Art saved me; it got me through my depression and self-loathing, back to a place of innocence.
723	depressed	Jeanette Winterson	\N	es	El arte me salvó, sino que me llegó a través de mi depresión y odio a sí mismo, a un lugar de inocencia.
724	depressed	Jeanette Winterson	\N	fi	Taide pelasti minut, se sai minut läpi minun masennus ja itse inho, takaisin paikka viattomuutta.
725	depressed	Jeanette Winterson	\N	fr	Art m'a sauvé, il m'a aidé à traverser ma dépression et le dégoût de soi, vers un lieu d'innocence.
726	depressed	Jeanette Winterson	\N	he	האמנות הצילה אותי, זה עזר לי לעבור את הדיכאון שלי ותיעוב עצמי, חזרה למקום של תמימות.
727	depressed	Jeanette Winterson	\N	hr	Umjetnost je spasio mene, to mi je dobio kroz moje depresije i self-gađenje, vratio na mjesto nevinosti.
728	depressed	Jeanette Winterson	\N	hu	Art mentett meg, ez átsegített a depresszió és az öngyűlölet, vissza egy olyan helyre az ártatlanság.
729	depressed	Jeanette Winterson	\N	it	L'arte mi ha salvato, ma mi ha fatto attraverso la mia depressione e disgusto di sé, di nuovo ad un posto di innocenza.
730	depressed	Jeanette Winterson	\N	ja	アートは私を救った、それは戻って無罪の代わりに、私のうつ病と自己嫌悪を通して私を得た。
731	depressed	Jeanette Winterson	\N	ko	예술은 나를 구원, 그것은 다시 무죄 곳으로, 나의 우울증과 자기 혐오 통해 저를 얻었다.
732	depressed	Jeanette Winterson	\N	nb	Art reddet meg, det fikk meg gjennom min depresjon og selvforakt, tilbake til et sted for uskyld.
733	depressed	Jeanette Winterson	\N	nl	Kunst heeft me gered, het heeft me door mijn depressie en zelfhaat, terug naar een plaats van onschuld.
734	depressed	Jeanette Winterson	\N	pl	Art uratował mnie, to ma mnie przez moją depresję i wstrętu do siebie, z powrotem do miejsca, niewinności.
735	depressed	Jeanette Winterson	\N	pt-PT	Art me salvou, que me levou até a minha depressão e auto-aversão, de volta a um lugar de inocência.
736	depressed	Jeanette Winterson	\N	pt-PT	Art me salvou, que me levou até a minha depressão e auto-aversão, de volta a um lugar de inocência.
737	depressed	Jeanette Winterson	\N	ro	Arta ma salvat, mi-a luat prin depresia mea și ura de sine, înapoi la un loc de nevinovăție.
738	depressed	Jeanette Winterson	\N	ru	Искусство спас меня, он меня через мои депрессии и ненависти к себе, возвращается на место невиновности.
739	depressed	Jeanette Winterson	\N	sk	Umenie ma zachránil, ale ma cez moje depresie a self-ošklivit, späť na miesto neviny.
740	depressed	Jeanette Winterson	\N	sv	Art räddade mig, det fick mig genom min depression och självförakt, tillbaka till en plats för oskuld.
741	depressed	Jeanette Winterson	\N	th	ศิลปะบันทึกฉันมันทำให้ฉันผ่านภาวะซึมเศร้าและเกลียดชังตัวเองของฉันกลับไปยังสถานที่แห่งความบริสุทธิ์
742	depressed	Jeanette Winterson	\N	tr	Sanat beni kurtardı, geri masumiyet bir yere, benim depresyon ve kendinden nefret ile beni.
743	depressed	Jeanette Winterson	\N	uk	Мистецтво врятував мене, він мене через мої депресії і ненависті до себе, повертається на місце невинності.
744	depressed	Jeanette Winterson	\N	zh-Hant	藝術救了我，它讓我通過我的抑鬱症和自我厭惡，回到純真的地方。
745	depressed	Bo Bennett	\N	ar	مفهوم 'حسن رأ' أيام 'يجب أن يكون واحدا من أكبر الأوهام مجتمعنا، أسباب الأعلى لعلاج الاكتئاب، وكذلك غالبا ما تستخدم ذريعة لعدم النجاح.
746	depressed	Bo Bennett	\N	ca	El concepte dels &quot;bons vells dies&quot; ha de ser un dels majors enganys de la nostra societat, els principals motius de la depressió, així com la majoria de les vegades s'utilitza excusa per la manca d'èxit.
747	depressed	Bo Bennett	\N	cs	Pojem &quot;dobré ol 'dní&quot; musí být jedním z naší společnosti největších bludů, top důvody pro deprese, stejně jako nejčastěji používá výmluvu pro neúspěch.
748	depressed	Bo Bennett	\N	da	Begrebet de 'gode gamle dage' skal være en af ​​vores samfunds største vrangforestillinger, top grunde til depression, såvel som de fleste ofte brugt undskyldning for manglende succes.
749	depressed	Bo Bennett	\N	de	Das Konzept der &quot;guten alten Tage&quot; muss man in unserer Gesellschaft die größte Wahnvorstellungen, Top-Gründe für Depressionen, sowie am häufigsten verwendeten Entschuldigung für mangelnden Erfolg sein.
750	depressed	Bo Bennett	\N	el	Η έννοια των «παλιών καλών ημερών» θα πρέπει να είναι μία από τις μεγαλύτερες αυταπάτες της κοινωνίας μας, κορυφαίους λόγους για την κατάθλιψη, καθώς και πιο συχνά χρησιμοποιείται δικαιολογία για την έλλειψη επιτυχίας.
751	depressed	Bo Bennett	\N	en	The concept of the 'good ol' days' must be one of our society's biggest delusions, top reasons for depression, as well as most often used excuse for lack of success.
752	depressed	Bo Bennett	\N	es	El concepto de los &quot;buenos viejos días&quot; debe ser uno de los mayores engaños de nuestra sociedad, los principales motivos de la depresión, así como la mayoría de las veces se utiliza excusa para la falta de éxito.
753	depressed	Bo Bennett	\N	fi	Käsite &quot;hyvinä päivinä&quot; on yksi yhteiskuntamme suurimmista harhaluuloja, Top Syitä masennuksen sekä useimmiten käytetään tekosyynä epäonnistumisen.
754	depressed	Bo Bennett	\N	fr	Le concept des «bonnes journées d'Ol 'doit être l'un des plus grands délires de notre société, principales raisons de la dépression, ainsi que le plus souvent utilisé excuse pour le manque de réussite.
755	depressed	Bo Bennett	\N	he	הרעיון של ימי ol 'הטובים' &quot;חייב להיות אחד מהאשליות הגדולות ביותר של החברה שלנו, סיבות עיקריות לדיכאון, כמו גם משמש לרוב תירוץ לחוסר הצלחה.
756	depressed	Bo Bennett	\N	hr	Pojam &quot;dobar ol 'dana' mora biti jedan od našem društvu najvećih zabluda, kao glavne razloge za depresiju, kao i najčešće se koriste izgovor za nedostatak uspjeha.
757	depressed	Bo Bennett	\N	hu	A koncepció a &quot;jó öreg&quot; nap &quot;kell, hogy legyen az egyik a társadalom legnagyobb téveszmék, felső oka a depresszió, valamint a leggyakrabban használt mentség sikertelenség.
758	depressed	Bo Bennett	\N	it	Il concetto di 'bei vecchi tempi' deve essere una delle più grandi delusioni della nostra società, migliori ragioni per la depressione, così come più spesso utilizzato scusa per la mancanza di successo.
759	depressed	Bo Bennett	\N	ja	古き良き '日'の概念は、我々の社会の最大の妄想、うつのための上の理由だけでなく、成功の欠如のために最も頻繁に使用される言い訳のいずれかでなければなりません。
760	depressed	Bo Bennett	\N	ko	'좋은 똑똑한'일 '​​의 개념은 우리 사회의 가장 큰 망상 중 하나 우울증에 대한 가장 큰 이유뿐만 아니라, 성공의 부족에 대한 가장 자주 사용되는 변명해야합니다.
761	depressed	Bo Bennett	\N	nb	Konseptet med de &quot;gode gamle dager&quot; må være en av vår tids største vrangforestillinger, viktigste årsakene til depresjon, samt oftest brukt unnskyldning for manglende suksess.
762	depressed	Bo Bennett	\N	nl	Het concept van de 'good ol' dagen 'moet een van de grootste waanideeën onze samenleving, belangrijkste redenen voor depressie, maar ook het meest gebruikt excuus voor het gebrek aan succes.
763	depressed	Bo Bennett	\N	pl	Pojęcie &quot;Good Ol 'dzień' musi być jednym z największych nasze społeczeństwo złudzeń, top przyczyny depresji, a także najczęściej stosowane usprawiedliwienia dla braku sukcesu.
764	depressed	Bo Bennett	\N	pt-PT	O conceito dos &quot;bons e velhos dias&quot; deve ser uma das maiores ilusões da nossa sociedade, os principais motivos para a depressão, assim como na maioria das vezes usado desculpa para a falta de sucesso.
765	depressed	Bo Bennett	\N	pt-PT	O conceito dos &quot;bons e velhos dias&quot; deve ser uma das maiores ilusões da nossa sociedade, os principais motivos para a depressão, assim como na maioria das vezes usado desculpa para a falta de sucesso.
766	depressed	Bo Bennett	\N	ro	Conceptul de &quot;bun ol 'zile trebuie să fie una dintre cele mai mari iluzii societății noastre, motivele de top pentru depresie, precum și cel mai des folosit scuza pentru lipsa de succes.
767	depressed	Bo Bennett	\N	ru	Концепция &quot;старые добрые времена&quot; должно быть одной из самых больших заблуждений нашего общества, основных причин для депрессии, а также наиболее часто используется для оправдания отсутствия успеха.
768	depressed	Bo Bennett	\N	sk	Pojem &quot;dobré ol 'dní&quot; musí byť jedným z našej spoločnosti najväčších bludov, top dôvody pre depresie, rovnako ako najčastejšie používa výhovorku pre neúspech.
769	depressed	Bo Bennett	\N	sv	Begreppet &quot;goda ol 'days' måste vara ett av vårt samhälles största vanföreställningar, främsta anledningarna till depression, liksom oftast ursäkt för bristen på framgång.
770	depressed	Bo Bennett	\N	th	แนวคิดของ 'ol ดี' วัน 'ต้องเป็นหนึ่งในอาการหลงผิดที่ใหญ่ที่สุดในสังคมของเราด้วยเหตุผลด้านบนสำหรับภาวะซึมเศร้าเช่นเดียวกับข้ออ้างที่ส่วนใหญ่มักจะใช้สำหรับการขาดของความสำเร็จ
771	depressed	Bo Bennett	\N	tr	'Iyi ol' gün 'kavramı bizim toplumun en büyük sanrılar biri, depresyon için en önemli sebepleri, hem de başarı eksikliği için en sık kullanılan bahane olmalıdır.
772	depressed	Bo Bennett	\N	uk	Концепція &quot;старі добрі часи&quot; повинно бути однією з найбільших помилок нашого суспільства, основних причин для депресії, а також найбільш часто використовується для виправдання відсутності успіху.
773	depressed	Bo Bennett	\N	zh-Hant	“好醇'天'的概念，必須有一個社會的最大的妄想，抑鬱症的首要原因，以及缺乏成功的最常用的藉口。
774	depressed	Ernest Hemingway	\N	ar	أن مزاج رهيب من الاكتئاب النظر عما إذا كانت أي جيدة أم لا هو ما يعرف باسم مكافأة الفنان.
775	depressed	Ernest Hemingway	\N	ca	Aquesta terrible estat d'ànim de la depressió de si és bo o no és el que es coneix com la recompensa de l'artista.
776	depressed	Ernest Hemingway	\N	cs	To hrozné nálada deprese, jestli je to dobrý nebo ne, je to, co je známé jako umělec odplatu.
777	depressed	Ernest Hemingway	\N	da	Denne frygtelige stemning af depression om det er nogen god eller ej, er, hvad der er kendt som The Artist Løn.
778	depressed	Ernest Hemingway	\N	de	Diese schreckliche Stimmung der Depression davon, ob es etwas Gutes oder nicht ist, was als Belohnung des Künstlers bekannt.
779	depressed	Ernest Hemingway	\N	el	Αυτή η τρομερή διάθεση της κατάθλιψης από το αν είναι καθόλου καλό ή δεν είναι αυτό που είναι γνωστό ως ανταμοιβή του καλλιτέχνη.
780	depressed	Ernest Hemingway	\N	en	That terrible mood of depression of whether it's any good or not is what is known as The Artist's Reward.
781	depressed	Ernest Hemingway	\N	es	Esa terrible estado de ánimo de la depresión de si es bueno o no es lo que se conoce como la recompensa del artista.
782	depressed	Ernest Hemingway	\N	fi	Tämä kauhea tunnelma masennus onko se mitään hyvää tai ei, on niin sanottu Artist palkan.
783	depressed	Ernest Hemingway	\N	fr	Ce terrible humeur de la dépression de savoir si c'est un bien ou pas, c'est ce qui est connu comme la récompense de l'artiste.
784	depressed	Ernest Hemingway	\N	he	כי מצב הרוח נוראה של דיכאון של בין אם זה טוב או לא היא מה שמכונה זכה של האמן.
785	depressed	Ernest Hemingway	\N	hr	Ta strašna raspoloženje depresije li to bilo dobro ili ne je ono što je poznato kao umjetnik plaću.
786	depressed	Ernest Hemingway	\N	hu	Ez a szörnyű hangulat a depresszió attól, hogy ez olyan jó, vagy sem, az úgynevezett A művész jutalmat.
787	depressed	Ernest Hemingway	\N	it	Quella terribile stato d'animo di depressione dal fatto che sia buono o no è quello che è conosciuto come ricompensa dell'artista.
788	depressed	Ernest Hemingway	\N	ja	それが良いかどうか、任意であるかどうかのうつ病のそのひどいムードは、アーティストの報酬として知られているものです。
789	depressed	Ernest Hemingway	\N	ko	그것은 좋은 또는 어떤의 여부 우울증의 끔찍한 기분이 아티스트의 보상으로 알려진 것입니다.
790	depressed	Ernest Hemingway	\N	nb	At forferdelig humør av depresjon om det er noe bra eller ikke er det som er kjent som The Artist er Reward.
791	depressed	Ernest Hemingway	\N	nl	Die verschrikkelijke stemming van depressie of het goed is of niet is wat bekend staat als Beloning The Artist's.
792	depressed	Ernest Hemingway	\N	pl	To fatalny nastrój depresji, czy to jakieś dobre, czy nie jest to, co jest znane jako artysty nagrodę.
793	depressed	Ernest Hemingway	\N	pt-PT	Que o humor terrível de depressão de saber se é bom ou não é o que é conhecido como recompensa do artista.
794	depressed	Ernest Hemingway	\N	pt-PT	Que o humor terrível de depressão de saber se é bom ou não é o que é conhecido como recompensa do artista.
795	depressed	Ernest Hemingway	\N	ro	Că starea de spirit teribil de depresie, de faptul dacă este orice bun sau nu este ceea ce este cunoscut sub numele de recompensa artistului.
796	depressed	Ernest Hemingway	\N	ru	Это ужасное настроение депрессии от того, что это ничего доброго или не то, что известно в качестве награды художника.
797	depressed	Ernest Hemingway	\N	sk	To hrozné nálada depresia, či je to dobrý alebo nie, je to, čo je známe ako umelec odplatu.
798	depressed	Ernest Hemingway	\N	sv	Denna fruktansvärda humör av depression om det är något bra eller inte är vad som kallas The Artist belöning.
799	depressed	Ernest Hemingway	\N	th	อารมณ์ที่น่ากลัวของภาวะซึมเศร้าของไม่ว่าจะเป็นดีใด ๆ หรือไม่คือสิ่งที่เป็นที่รู้จักกันเป็นรางวัลของศิลปิน
800	depressed	Ernest Hemingway	\N	tr	Iyi ya da herhangi bir olsun depresyon bu korkunç ruh Sanatçının Ödül olarak bilinir.
801	depressed	Ernest Hemingway	\N	uk	Це жахливий настрій депресії від того, що це нічого доброго чи не те, що відомо в якості нагороди художника.
802	depressed	Ernest Hemingway	\N	zh-Hant	情緒抑鬱，無論是任何好還是不好那可怕的是被稱為藝術家的獎勵。
803	depressed	Bob Geldof	\N	ar	بالتأكيد، وأعتقد أن الاكتئاب هو تماما جزء من حالة الإنسان، فإنه يجب أن يكون، إذا كان هناك فرح هناك نقيضه، وهذا شيء أنت تركب إذا يمكن لكم ربما.
804	depressed	Bob Geldof	\N	ca	Per cert, crec que està deprimit és absolutament part de la condició humana, que ha de ser, si no hi ha alegria no el seu contrari, i és una cosa que caminar si pots.
805	depressed	Bob Geldof	\N	cs	Rozhodně si myslím, že je naprosto depresivní součástí lidské existence, to musí být, je-li to štěstí, že je jeho opak, a to je něco, co jezdíš, pokud můžete.
806	depressed	Bob Geldof	\N	da	Bestemt, jeg tror bliver deprimeret er absolut en del af den menneskelige tilstand, det er at være, hvis der er glæde der er det modsatte, og det er noget, du rider, hvis du overhovedet kan.
807	depressed	Bob Geldof	\N	de	Sicher, ich denke, die niedergedrückt ist absolut Teil der conditio humana, muss es sein, wenn es Freude gibt es das Gegenteil, und es ist etwas, das Sie fahren, wenn Sie können möglicherweise.
808	depressed	Bob Geldof	\N	el	Βέβαια, νομίζω ότι είναι σε ύφεση είναι απολύτως μέρος της ανθρώπινης κατάστασης, θα πρέπει να είναι, αν υπάρχει χαρά, υπάρχει το αντίθετό του, και αυτό είναι κάτι που οδηγούν, αν μπορείτε ενδεχομένως.
809	depressed	Bob Geldof	\N	en	Certainly, I think being depressed is absolutely part of the human condition, it has to be, if there's joy there's its opposite, and it's something you ride if you possibly can.
810	depressed	Bob Geldof	\N	es	Por cierto, creo que está deprimido es absolutamente parte de la condición humana, que tiene que ser, si no hay alegría no su contrario, y es algo que andar si puedes.
811	depressed	Bob Geldof	\N	fi	Varmasti, mielestäni masentunut on ehdottomasti osa ihmisen kunnossa, sen on oltava, jos on iloa siellä sen vastakohta, ja se on jotain ajaa, jos mahdollista.
812	depressed	Bob Geldof	\N	fr	Certes, je pense être déprimé est absolument partie de la condition humaine, il doit être, si il ya la joie, il ya son contraire, et c'est quelque chose que vous rouler si vous le pouvez.
813	depressed	Bob Geldof	\N	he	אין ספק, אני חושב שלהיות בדיכאון הוא חלק לחלוטין של המצב האנושי, זה חייב להיות, אם יש שמחה יש היפוכו, וזה משהו שאתה רוכב, אם אתה יכול.
814	depressed	Bob Geldof	\N	hr	Dakako, mislim da se depresivno je apsolutno dio ljudskog stanja, ona mora biti, ako postoji radost postoji njegova suprotnost, a to je nešto što vožnja ako je moguće.
815	depressed	Bob Geldof	\N	hu	Természetesen úgy gondolom, hogy depressziós teljesen része az emberi létnek, azt, hogy, ha van öröm, van ellentétes, és ez valami, lovagolni, ha lehetséges.
816	depressed	Bob Geldof	\N	it	Certo, credo di essere depresso è assolutamente parte della condizione umana, deve essere, se c'è la gioia c'è il suo opposto, ed è qualcosa che cavalcare se è possibile.
817	depressed	Bob Geldof	\N	ja	確かに、私が落ち込んでていると、人間の条件の絶対的部分であると思う、それは喜びがあり、その反対だし、あなたはおそらくできる場合が乗るそれは何かがあれば、しなければならない。
818	depressed	Bob Geldof	\N	ko	물론, 내가 우울되는 것은 인간 조건의 절대적 부분이라고 생각, 그것은 기쁨이의 반대, 그리고 당신이 할 수있는 경우가 타고 그것의 무언가가 있다면, 수있다.
878	tired	Alysha Speer	\N	nl	Sleep me niet te eren met zijn aanwezigheid.
819	depressed	Bob Geldof	\N	nb	Riktignok tror jeg blir deprimert er absolutt en del av den menneskelige tilstand, må det være, hvis det er glede det er det motsatte, og det er noe du rir hvis du muligens kan.
820	depressed	Bob Geldof	\N	nl	Zeker, ik denk dat depressief is absoluut onderdeel van de menselijke conditie, het moet, als er vreugde is er het tegenovergestelde, en het is iets wat je rijden als je kan.
821	depressed	Bob Geldof	\N	pl	Oczywiście, myślę, że jest w depresji jest absolutnie częścią ludzkiej kondycji, to ma być, czy jest radość jest jego przeciwieństwem, a to jest coś, jeździć, jeśli to możliwe.
822	depressed	Bob Geldof	\N	pt-PT	Certamente, eu acho que estar deprimido é absolutamente parte da condição humana, que tem que ser, se há alegria, há o seu oposto, e isso é algo que você monta, se você puder.
823	depressed	Bob Geldof	\N	pt-PT	Certamente, eu acho que estar deprimido é absolutamente parte da condição humana, que tem que ser, se há alegria, há o seu oposto, e isso é algo que você monta, se você puder.
824	depressed	Bob Geldof	\N	ro	Desigur, cred că a fi deprimat este absolut parte din condiția umană, trebuie să fie, în cazul în care nu există bucurie nu e opusul său, și este ceva ce merge, dacă, eventual, pot.
825	depressed	Bob Geldof	\N	ru	Конечно, я думаю, быть подавленным абсолютно часть человеческого состояния, он должен быть, если есть радость есть ее противоположность и это то, что вы едете, если это возможно.
826	depressed	Bob Geldof	\N	sk	Rozhodne si myslím, že je absolútne depresívne súčasťou ľudskej existencie, to musí byť, ak je to šťastie, že je jeho opak, a to je niečo, čo jazdíš, ak môžete.
827	depressed	Bob Geldof	\N	sv	Visst, jag tror att vara deprimerad är absolut en del av människans villkor, måste det vara, om det finns glädje där är dess motsats, och det är något du rida om du eventuellt kan.
828	depressed	Bob Geldof	\N	th	แน่นอนผมคิดว่าการมีความสุขอย่างยิ่งที่เป็นส่วนหนึ่งของมวลมนุษย์มันจะต้องมีถ้ามีความสุขมีตรงข้ามของตนและเป็นสิ่งที่คุณนั่งถ้าคุณอาจจะสามารถ
829	depressed	Bob Geldof	\N	tr	Kesinlikle, ben depresyonda olan insan durumun kesinlikle bir parçası olduğunu düşünüyorum, bu sevinç var onun karşısında, ve belki olabilir eğer binmek bir şey varsa, olması gerekir.
830	depressed	Bob Geldof	\N	uk	Звичайно, я думаю, бути пригніченим абсолютно частина людського стану, він повинен бути, якщо є радість є її протилежність і це те, що ви їдете, якщо це можливо.
831	depressed	Bob Geldof	\N	zh-Hant	當然，我覺得沮喪，絕對是人類生存條件的一部分，它必須是，如果有喜悅，有它的反面，它的東西，你騎你所能。
832	depressed	Nate Ruess	\N	ar	أنا نوع من مثل يجري من الاكتئاب.
833	depressed	Nate Ruess	\N	ca	A mi m'agrada estar deprimit.
834	depressed	Nate Ruess	\N	cs	I něco jako depresivní.
835	depressed	Nate Ruess	\N	da	Jeg slags lide at blive deprimeret.
836	depressed	Nate Ruess	\N	de	Irgendwie mag ich die niedergedrückt.
837	depressed	Nate Ruess	\N	el	Μου αρέσει να πιέζεται.
838	depressed	Nate Ruess	\N	en	I kind of like being depressed.
839	depressed	Nate Ruess	\N	es	A mí me gusta estar deprimido.
840	depressed	Nate Ruess	\N	fi	Olen sellainen kuin olisi masentunut.
841	depressed	Nate Ruess	\N	fr	J'ai un peu l'impression d'être déprimé.
842	depressed	Nate Ruess	\N	he	אני די אוהב להיות בדיכאון.
843	depressed	Nate Ruess	\N	hr	Sviđa mi se depresivno.
844	depressed	Nate Ruess	\N	hu	Nekem tetszik, hogy depressziós.
845	depressed	Nate Ruess	\N	it	Ho un po 'come essere depresso.
846	depressed	Nate Ruess	\N	ja	押されているようなの私は一種。
847	depressed	Nate Ruess	\N	ko	우울하고 나을 것 같은데.
848	depressed	Nate Ruess	\N	nb	Jeg slags liker å være deprimert.
849	depressed	Nate Ruess	\N	nl	Ik soort van depressief.
850	depressed	Nate Ruess	\N	pl	I coś w rodzaju depresji jest.
851	depressed	Nate Ruess	\N	pt-PT	Eu meio que gosto de ser deprimido.
852	depressed	Nate Ruess	\N	pt-PT	Eu meio que gosto de ser deprimido.
853	depressed	Nate Ruess	\N	ro	Am un fel de a fi deprimat.
854	depressed	Nate Ruess	\N	ru	Я вроде как быть депрессия.
855	depressed	Nate Ruess	\N	sk	Aj niečo ako depresívne.
856	depressed	Nate Ruess	\N	sv	Jag gillar att vara deprimerad.
857	depressed	Nate Ruess	\N	th	ชนิดของฉันเหมือนถูกกดดัน
858	depressed	Nate Ruess	\N	tr	Depresif olmak gibi ben tür.
859	depressed	Nate Ruess	\N	uk	Я ніби як бути депресія.
860	depressed	Nate Ruess	\N	zh-Hant	我有點像被鬱悶。
861	tired	Alysha Speer	\N	ar	لم النوم ليس لي الشرف مع انها حضور.
862	tired	Alysha Speer	\N	ca	El somni no em va honrar amb la seva presència.
863	tired	Alysha Speer	\N	cs	Sleep ani mě ctí s jeho přítomností.
864	tired	Alysha Speer	\N	da	Sleep ikke ære mig med det tilstedeværelse.
865	tired	Alysha Speer	\N	de	Schlaf nicht ehrt mich mit seiner Anwesenheit.
866	tired	Alysha Speer	\N	el	Ύπνος δεν με τιμήσει με την παρουσία του.
867	tired	Alysha Speer	\N	en	Sleep did not honor me with it’s presence.
868	tired	Alysha Speer	\N	es	El sueño no me honró con su presencia.
869	tired	Alysha Speer	\N	fi	Uni ei kunnioittaa minua se läsnäolo.
870	tired	Alysha Speer	\N	fr	Sommeil ne m'honorer de sa présence.
871	tired	Alysha Speer	\N	he	השינה לא כבדה בנוכחותו של לי.
872	tired	Alysha Speer	\N	hr	Spavanje nije me počastiti svojim prisustvom.
873	tired	Alysha Speer	\N	hu	Sleep nem tisztel engem, hogy jelenléte.
874	tired	Alysha Speer	\N	it	Il sonno non mi ha onorato con la sua presenza.
875	tired	Alysha Speer	\N	ja	睡眠はそれの存在で私を尊重しませんでした。
883	tired	Alysha Speer	\N	ru	Сна не прославили меня с его присутствием.
884	tired	Alysha Speer	\N	sk	Sleep ani mňa cťou s jeho prítomnosťou.
885	tired	Alysha Speer	\N	sv	Sömn inte hedra mig med sin närvaro.
886	tired	Alysha Speer	\N	th	นอนหลับไม่ได้ให้เกียรติเราด้วยการแสดงตนของมัน
887	tired	Alysha Speer	\N	tr	Uyku bu varlığı ile bana onur vermedi.
888	tired	Alysha Speer	\N	uk	Сну не прославляли мене з його присутністю.
889	tired	Alysha Speer	\N	zh-Hant	睡眠沒有兌現我與它的存在。
890	tired	Kate Moss	\N	ar	أنا تعبت من شعور مثل دراكولا. أردت أن أرى بعض ضوء النهار، وليس فقط في 6:00 في الصباح.
891	tired	Kate Moss	\N	ca	Em vaig cansar de sentir-me com Dràcula. Volia veure la llum del dia, i no només a les sis del matí.
892	tired	Kate Moss	\N	cs	Dostal jsem unavený pocit, jako Dracula. Chtěl jsem se podívat na nějaké denní světlo, a to nejen v šest hodin ráno.
893	tired	Kate Moss	\N	da	Jeg blev træt af at føle sig som Dracula. Jeg ønskede at se nogle dagslys, og ikke blot klokken seks om morgenen.
894	tired	Kate Moss	\N	de	Ich habe das Gefühl, wie müde von Dracula. Ich wollte etwas Tageslicht zu sehen, und nicht nur um sechs Uhr in der Früh.
895	tired	Kate Moss	\N	el	Έχω κουραστεί να αισθάνονται σαν Δράκουλα. Ήθελα να δω κάποιο φως της ημέρας, και όχι μόνο στις έξι η ώρα το πρωί.
896	tired	Kate Moss	\N	en	I got tired of feeling like Dracula. I wanted to see some daylight, and not just at six o’clock in the morning.
897	tired	Kate Moss	\N	es	Me cansé de sentirme como Drácula. Quería ver la luz del día, y no sólo a las seis de la mañana.
898	tired	Kate Moss	\N	fi	Kyllästyin tunne kuin Dracula. Halusin nähdä päivänvaloa, eikä vain kuusi aamulla.
899	tired	Kate Moss	\N	fr	Je suis fatigué de se sentir comme Dracula. Je voulais voir la lumière du jour, et pas seulement à six heures du matin.
900	tired	Kate Moss	\N	he	נמאס לי להרגיש כמו דרקולה. רציתי לראות קצת אור יום, ולא רק בשעה שש בבוקר.
901	tired	Kate Moss	\N	hr	Dobio sam umorna od osjećaja kao Drakula. Htio sam vidjeti neke svjetlo dana, i to ne samo u šest sati ujutro.
902	tired	Kate Moss	\N	hu	Belefáradtam az érzés, mint Drakula. Szerettem volna, hogy néhány nappal, és nem csak hat órakor.
903	tired	Kate Moss	\N	it	Mi sono stancato di sentirsi come Dracula. Volevo vedere un po 'di luce del giorno, e non solo alle sei del mattino.
904	tired	Kate Moss	\N	ja	私はドラキュラのような感じの疲れた。私はいくつかの日光を見たかっただけではなく、朝の6時に。
905	tired	Kate Moss	\N	ko	나는 드라큘라 같은 느낌이 지쳐있어. 좀 일광보고 싶어하고, 아침 여섯시 방향뿐만 아니라.
906	tired	Kate Moss	\N	nb	Jeg ble lei av følelsen som Dracula. Jeg ønsket å se litt dagslys, og ikke bare på seks om morgenen.
907	tired	Kate Moss	\N	nl	Ik werd moe van het gevoel als Dracula. Ik wilde wat daglicht te zien, en niet alleen om zes uur in de ochtend.
908	tired	Kate Moss	\N	pl	I znudziło uczucie jak Dracula. Chciałem zobaczyć trochę światła dziennego, a nie tylko o szóstej rano.
909	tired	Kate Moss	\N	pt-PT	Eu cansei de sentir como Drácula. Eu queria ver alguma luz do dia, e não apenas às seis horas da manhã.
910	tired	Kate Moss	\N	pt-PT	Eu cansei de sentir como Drácula. Eu queria ver alguma luz do dia, e não apenas às seis horas da manhã.
911	tired	Kate Moss	\N	ro	M-am saturat de a se simți ca Dracula. Am vrut să văd unele lumina zilei, și nu doar de la ora șase dimineața.
912	tired	Kate Moss	\N	ru	Я устал чувство, как Дракула. Я хотел увидеть некоторых дневном свете, и не только в 6:00 утра.
913	tired	Kate Moss	\N	sk	Dostal som unavený pocit, ako Dracula. Chcel som sa pozrieť na nejaké denné svetlo, a to nielen v šesť hodín ráno.
914	tired	Kate Moss	\N	sv	Jag tröttnade på att känna sig som Dracula. Jag ville se några dagsljuset, och inte bara klockan sex på morgonen.
915	tired	Kate Moss	\N	th	ผมเหนื่อยกับความรู้สึกเหมือนแดรกคิวลา ผมอยากจะเห็นแสงบางส่วนและไม่ได้เป็นเพียงที่ 06:00 ในตอนเช้า
916	tired	Kate Moss	\N	tr	Ben Dracula gibi duygu yorgun var. Bazı gün ışığı görmek istedim, ve sabah altı o'clock sadece.
917	tired	Kate Moss	\N	uk	Я втомився почуття, як Дракула. Я хотів побачити деяких денному світлі, і не тільки в 6:00 ранку.
918	tired	Kate Moss	\N	zh-Hant	我已經厭倦了像吸血鬼的感覺。我想看到一些日光，而不是只在早上六點鐘。
919	tired	George Orwell	\N	ar	وكان ونستون هلامي مع التعب.
920	tired	George Orwell	\N	ca	Winston era gelatinosa amb la fatiga.
921	tired	George Orwell	\N	cs	Winston byl želatinové únavou.
922	tired	George Orwell	\N	da	Winston var gelatinøse med træthed.
923	tired	George Orwell	\N	de	Winston war gallertartige mit Müdigkeit.
924	tired	George Orwell	\N	el	Winston ήταν ζελατινώδες με την κούραση.
925	tired	George Orwell	\N	en	Winston was gelatinous with fatigue.
926	tired	George Orwell	\N	es	Winston era gelatinosa con la fatiga.
927	tired	George Orwell	\N	fi	Winston oli hyytelömäinen väsymys.
928	tired	George Orwell	\N	fr	Winston était gélatineux de fatigue.
929	tired	George Orwell	\N	he	וינסטון היה דביק עם עייפות.
930	tired	George Orwell	\N	hr	Winston je želatinast od umora.
931	tired	George Orwell	\N	hu	Winston volt kocsonyás a kimerültségtől.
932	tired	George Orwell	\N	it	Winston era gelatinosa con fatica.
933	tired	George Orwell	\N	ja	ウィンストンは、疲労とゼラチン状であった。
934	tired	George Orwell	\N	ko	윈스턴 피로 젤라틴했다.
935	tired	George Orwell	\N	nb	Winston var geléaktig med trøtthet.
936	tired	George Orwell	\N	nl	Winston was gelatineachtige met vermoeidheid.
937	tired	George Orwell	\N	pl	Winston był galaretowaty ze zmęczenia.
938	tired	George Orwell	\N	pt-PT	Winston foi gelatinoso com fadiga.
939	tired	George Orwell	\N	pt-PT	Winston foi gelatinoso com fadiga.
940	tired	George Orwell	\N	ro	Winston a fost gelatinos cu oboseala.
941	tired	George Orwell	\N	ru	Уинстон был желатиновых от усталости.
942	tired	George Orwell	\N	sk	Winston bol želatínové únavou.
943	tired	George Orwell	\N	sv	Winston var geléform med trötthet.
944	tired	George Orwell	\N	th	วินสตันเป็นน้ำมูกด้วยความเหนื่อยล้า
945	tired	George Orwell	\N	tr	Winston yorgunluk ile jelatinimsi oldu.
946	tired	George Orwell	\N	uk	Уїнстон був желатинових від втоми.
947	tired	George Orwell	\N	zh-Hant	溫斯頓呈凝膠狀與疲勞。
948	tired	Mae West	\N	ar	عشرة رجال في انتظاري عند الباب؟ إرسال واحد منهم المنزل، وأنا متعب.
949	tired	Mae West	\N	ca	Deu homes esperant-me a la porta? Enviar a un d'ells a casa, estic cansat.
950	tired	Mae West	\N	cs	Deset mužů na mě čekal u dveří? Vyšlete jednoho z nich domácí, jsem unavený.
951	tired	Mae West	\N	da	Ti mænd venter på mig ved døren? Sende en af ​​dem hjem, jeg er træt.
952	tired	Mae West	\N	de	Zehn Männer auf mich wartet an der Tür? Senden Sie eine von ihnen nach Hause, ich bin müde.
953	tired	Mae West	\N	el	Δέκα άνδρες με περιμένει στην πόρτα; Στείλτε μία από αυτές στο σπίτι, είμαι κουρασμένος.
954	tired	Mae West	\N	en	Ten men waiting for me at the door? Send one of them home, I'm tired.
955	tired	Mae West	\N	es	Diez hombres esperándome en la puerta? Enviar a uno de ellos en casa, estoy cansado.
956	tired	Mae West	\N	fi	Kymmenen miestä odottamassa minua ovella? Lähetä yksi niistä kotiin, olen väsynyt.
957	tired	Mae West	\N	fr	Dix hommes qui m'attend à la porte? Envoyer un d'eux à la maison, je suis fatigué.
958	tired	Mae West	\N	he	עשרה גברים מחכים לי בדלת? שלח אחד מהם בבית, אני עייף.
959	tired	Mae West	\N	hr	Deset ljudi me čeka na vratima? Pošalji jedan od njih doma, umoran sam.
960	tired	Mae West	\N	hu	Tíz ember várt rám az ajtót? Küldj egy haza, fáradt vagyok.
961	tired	Mae West	\N	it	Dieci uomini che mi aspetta alla porta? Invia uno di loro casa, sono stanco.
962	tired	Mae West	\N	ja	十人の男がドアで私を待って？自宅それらのいずれかを送信、私は疲れている。
963	tired	Mae West	\N	ko	열명의 문에서 나를 기다리고? 홈 중 하나를 보내, 내가 피곤 해요.
964	tired	Mae West	\N	nb	Ti menn venter på meg på døren? Send en av dem hjem, jeg er trøtt.
965	tired	Mae West	\N	nl	Tien mannen op me te wachten bij de deur? Stuur een van hen naar huis, ik ben moe.
966	tired	Mae West	\N	pl	Dziesięciu ludzi czeka na mnie przy drzwiach? Wyślij jednego z nich w domu, jestem zmęczony.
967	tired	Mae West	\N	pt-PT	Dez homens me esperando na porta? Enviar um deles para casa, eu estou cansado.
968	tired	Mae West	\N	pt-PT	Dez homens me esperando na porta? Enviar um deles para casa, eu estou cansado.
969	tired	Mae West	\N	ro	Zece oameni de așteptare pentru mine la ușă? Trimite-una din ele acasă, sunt obosit.
970	tired	Mae West	\N	ru	Десять человек ждал меня у дверей? Отправить одному из них домой, я устал.
971	tired	Mae West	\N	sk	Desať mužov na mňa čakal pri dverách? Pošlite jedného z nich domáci, som unavený.
972	tired	Mae West	\N	sv	Tio män som väntar på mig vid dörren? Skicka en av dem hem, jag är trött.
973	tired	Mae West	\N	th	สิบคนรอผมอยู่ที่ประตู? ส่งหนึ่งของพวกเขาที่บ้านฉันเหนื่อย
974	tired	Mae West	\N	tr	On adam kapıda beni bekliyordu? Ev bunlardan biri gönder, ben yoruldum.
975	tired	Mae West	\N	uk	Десять людей чекав мене біля дверей? Надіслати одного з них додому, я втомився.
976	tired	Mae West	\N	zh-Hant	十名男子在門口等著我呢？送他們回家，我累了。
977	tired	Jules Renard	\N	ar	الكسل ليس أكثر من العادة من الراحة قبل ان تحصل متعب.
978	tired	Jules Renard	\N	ca	La mandra no és més que l'hàbit de descansar abans d'arribar cansat.
979	tired	Jules Renard	\N	cs	Lenost není nic jiného než zvyk odpočinku, než se dostanete unavený.
980	tired	Jules Renard	\N	da	Dovenskab er intet mere end for vane at hvile, før du bliver træt.
981	tired	Jules Renard	\N	de	Faulheit ist nichts anderes als die Gewohnheit ruht, bevor Sie müde.
982	tired	Jules Renard	\N	el	Τεμπελιά δεν είναι τίποτα περισσότερο από τη συνήθεια της ανάπαυσης προτού να πάρετε κουρασμένοι.
983	tired	Jules Renard	\N	en	Laziness is nothing more than the habit of resting before you get tired.
984	tired	Jules Renard	\N	es	La pereza no es más que el hábito de descansar antes de llegar cansado.
985	tired	Jules Renard	\N	fi	Laiskuus ei ole mitään muuta kuin tapana lepää ennen kuin saat väsynyt.
986	tired	Jules Renard	\N	fr	La paresse est rien de plus que l'habitude de se reposer avant d'arriver fatigué.
987	tired	Jules Renard	\N	he	עצלות היא לא יותר מאשר הרגל של מנוחה לפני שאתה מתעייף.
988	tired	Jules Renard	\N	hr	Lijenost je ništa više nego naviku odmara prije nego što ste se umorili.
989	tired	Jules Renard	\N	hu	Lustaság nem más, mint a szokás nyugalmi mielőtt fáradt.
990	tired	Jules Renard	\N	it	La pigrizia non è altro che l'abitudine di riposarsi prima di arrivare stanco.
991	tired	Jules Renard	\N	ja	怠惰は、あなたが疲れて得る前に休んでいるの癖以外の何ものでもありません。
992	tired	Jules Renard	\N	ko	게으름은 당신이 피곤하기 전에 쉬는 습관보다 더 아무것도 없다.
993	tired	Jules Renard	\N	nb	Latskap er ingenting mer enn en vane å hvile før du blir lei.
994	tired	Jules Renard	\N	nl	Luiheid is niets meer dan de gewoonte van het rusten voordat je moe.
995	tired	Jules Renard	\N	pl	Lenistwo jest niczym więcej niż zwyczaj odpoczynku, zanim pojawi się zmęczony.
996	tired	Jules Renard	\N	pt-PT	Preguiça não é nada mais do que o hábito de descansar antes de ficar cansado.
997	tired	Jules Renard	\N	pt-PT	Preguiça não é nada mais do que o hábito de descansar antes de ficar cansado.
998	tired	Jules Renard	\N	ro	Lenea nu este nimic mai mult decât obiceiul de odihnă înainte de a ajunge obosit.
999	tired	Jules Renard	\N	ru	Лень это не более, чем привычка отдыхать прежде чем вы устали.
1000	tired	Jules Renard	\N	sk	Lenivosť nie je nič iné ako zvyk odpočinku, než sa dostanete unavený.
1001	tired	Jules Renard	\N	sv	Lättja är inget annat än en vana att vila innan du blir trött.
1002	tired	Jules Renard	\N	th	ความเกียจคร้านคืออะไรมากกว่านิสัยของการพักผ่อนก่อนที่คุณจะเหนื่อย
1003	tired	Jules Renard	\N	tr	Tembellik yorgun olsun önce dinlenme alışkanlığı başka bir şey değildir.
1004	tired	Jules Renard	\N	uk	Лень це не більше, ніж звичка відпочивати перш ніж ви втомилися.
1005	tired	Jules Renard	\N	zh-Hant	懶惰是沒有超過之前，你累了休息的習慣。
1006	sad	Helen Keller	\N	ar	أنا نادرا ما نفكر في حدود بلدي، وانهم لم تجعلني حزينا. ربما هناك فقط لمسة من الحنين في بعض الأحيان، ولكنها غامضة، مثل نسيم بين الزهور.
1007	sad	Helen Keller	\N	ca	Jo poques vegades penso en les meves limitacions, i mai em fan trist. Potser hi ha un toc de nostàlgia de vegades, però és vague, com una brisa entre les flors.
1008	sad	Helen Keller	\N	cs	Málokdy si o svých omezení, a nikdy mi z toho smutno. Možná, že je to jen náznak touhy v době, ale je nejasné, jako vánek mezi květinami.
1009	sad	Helen Keller	\N	da	Jeg tænker sjældent om mine begrænsninger, og de aldrig gør mig ked af det. Måske er der blot et strejf af længsel til tider, men det er uklart, ligesom en leg blandt blomster.
1010	sad	Helen Keller	\N	de	Ich denken selten über meine Grenzen, und sie nie machen mich traurig. Vielleicht gibt es nur ein Hauch von Sehnsucht in Zeiten, aber es ist unklar, wie eine Brise unter den Blumen.
1011	sad	Helen Keller	\N	el	I σπάνια σκέφτομαι τους περιορισμούς μου, και ποτέ δεν με κάνει να λυπημένος. Ίσως υπάρχει μόνο ένα άγγιγμα της λαχτάρα κατά καιρούς? Αλλά είναι ασαφής, σαν ένα αεράκι ανάμεσα σε λουλούδια.
1012	sad	Helen Keller	\N	en	I seldom think about my limitations, and they never make me sad. Perhaps there is just a touch of yearning at times; but it is vague, like a breeze among flowers.
1013	sad	Helen Keller	\N	es	Yo rara vez pienso en mis limitaciones, y nunca me hacen triste. Tal vez hay un toque de nostalgia a veces, pero es vago, como una brisa entre las flores.
1014	sad	Helen Keller	\N	fi	Olen harvoin ajattelen rajoituksia, ja he eivät koskaan tee minut surulliseksi. Ehkä siellä on vain ripaus kaipuu ajoittain, mutta se on epämääräinen, kuin tuulahdus keskuudessa kukkia.
1015	sad	Helen Keller	\N	fr	Je pense que rarement sur mes limites, et ils ne me font triste. Peut-être il ya juste une touche de nostalgie à certains moments, mais c'est vague, comme une brise parmi les fleurs.
1016	sad	Helen Keller	\N	he	רק לעתים רחוקות אני חושב על המגבלות שלי, והם אף פעם לא יעשו אותי עצובים. אולי יש מגע רק של כמיהה בזמנים, אבל זה הוא מעורפל, כמו משב רוח בין פרחים.
1017	sad	Helen Keller	\N	hr	Rijetko sam razmišljati o svojim ograničenjima, a oni nikad ne bi me tužna. Možda postoji samo jedan dodir čežnje s vremena na vrijeme, ali je nejasno, kao povjetarac među cvijećem.
1018	sad	Helen Keller	\N	hu	Azt ritkán gondolok korlátozások, és soha nem leszek szomorú. Lehet, hogy csak egy kis vágy időnként, de ez bizonytalan, mint a szél a virágok közt.
1019	sad	Helen Keller	\N	it	Io raramente penso a miei limiti, e non hanno mai mi fanno tristezza. Forse c'è solo un tocco di nostalgia, a volte, ma è vago, come una brezza tra i fiori.
1020	sad	Helen Keller	\N	ja	私はめったに私の限界について考えていない、と彼らは私を悲しくすることはありません。おそらく、そこに時々憧れのタッチだけであり、それが花の間で風のように、曖昧である。
1021	sad	Helen Keller	\N	ko	나는 거의 내 한계에 대해 생각하지, 그들은 나를 슬프게하지 마십시오. 아마이 시간에 동경의 접촉은 있습니다 만, 그것은 꽃들 바람처럼 애매이다.
1022	sad	Helen Keller	\N	nb	Jeg tenker sjelden om mine begrensninger, og de aldri gjør meg trist. Kanskje er det bare et snev av lengsel til tider, men det er noe uklart, som en vind blant blomster.
1023	sad	Helen Keller	\N	nl	Ik zelden na te denken over mijn beperkingen, en ze nooit maken me verdrietig. Misschien is er slechts een aanraking van verlangen in tijden, maar het is vaag, als een briesje onder bloemen.
1024	sad	Helen Keller	\N	pl	I rzadko myślę o moich ograniczeń i nigdy mnie smutne. Być może to jest właśnie dotyk tęsknoty w czasach, ale jest niejasne, jak wiatr wśród kwiatów.
1025	sad	Helen Keller	\N	pt-PT	Eu raramente pensam sobre minhas limitações, e eles nunca me deixam triste. Talvez haja apenas um toque de nostalgia, às vezes, mas é vago, como uma brisa entre as flores.
1026	sad	Helen Keller	\N	pt-PT	Eu raramente pensam sobre minhas limitações, e eles nunca me deixam triste. Talvez haja apenas um toque de nostalgia, às vezes, mas é vago, como uma brisa entre as flores.
1027	sad	Helen Keller	\N	ro	Am rareori gândesc limitele mele, și niciodată nu mă face trist. Poate că este doar o atingere de dor uneori, dar este vag, ca o briza printre flori.
1028	sad	Helen Keller	\N	ru	Я редко думаю о моих ограничений, и они никогда не делают меня грустным. Может быть, есть только легкую тоску порой, но он является расплывчатым, как ветер среди цветов.
1029	sad	Helen Keller	\N	sk	Málokedy si o svojich obmedzení, a nikdy mi z toho smutno. Možno, že je to len náznak túžby v dobe, ale je nejasné, ako vánok medzi kvetinami.
1030	sad	Helen Keller	\N	sv	Jag tycker sällan om mina begränsningar, och de aldrig gör mig ledsen. Kanske finns det bara en touch av längtan ibland, men det är vagt, som en vind bland blommor.
1065	sad	Dr. Seuss	\N	ca	No ploris perquè ja s'ha acabat, somriu perquè va succeir.
1066	sad	Dr. Seuss	\N	cs	Neplač, protože to je konec, úsměv, protože se to stalo.
1031	sad	Helen Keller	\N	th	ผมแทบจะไม่คิดเกี่ยวกับข้อ จำกัด ของฉันและพวกเขาไม่เคยทำให้ฉันเศร้า บางทีอาจจะมีเพียงสัมผัสของการโหยหาตลอดเวลา แต่มันเป็นสิ่งที่คลุมเครือเหมือนสายลมในหมู่ดอกไม้
1032	sad	Helen Keller	\N	tr	Ben nadiren benim sınırlamalar düşünmek ve beni üzgün asla. Belki arada sırada özlemin bir dokunuş sadece, ama çiçekler arasında bir meltem gibi, belirsiz.
1033	sad	Helen Keller	\N	uk	Я рідко думаю про моїх обмежень, і вони ніколи не роблять мене сумним. Може бути, є тільки легку тугу часом, але він є розпливчастим, як вітер серед квітів.
1034	sad	Helen Keller	\N	zh-Hant	我很少去想自己的局限性，他們從來沒有讓我傷心。或許只是淡淡的嚮往倍;但它是模糊的，像微風花間。
1035	sad	Stephen Chbosky	\N	ar	لذلك، هذه هي حياتي. وأنا أريد منك أن تعرف أن أنا على حد سواء سعيدة وحزينة، وأنا لا تزال تحاول معرفة كيف يمكن أن يكون.
1036	sad	Stephen Chbosky	\N	ca	Per tant, aquesta és la meva vida. I vull que sàpigues que estic feliç i trist i encara estic intentant esbrinar com podia ser.
1037	sad	Stephen Chbosky	\N	cs	Tak tohle je můj život. A chci, abyste věděli, že jsem tak šťastný a smutný a já se stále snaží přijít na to, jak je to možné.
1038	sad	Stephen Chbosky	\N	da	Så dette er mit liv. Og jeg vil have dig til at vide, at jeg er både glad og trist, og jeg forsøger stadig at regne ud, hvordan det kunne være.
1039	sad	Stephen Chbosky	\N	de	So, das ist mein Leben. Und ich möchte, dass du weißt, dass ich glücklich und traurig bin, und ich bin immer noch versuchen, herauszufinden, wie das sein könnte.
1040	sad	Stephen Chbosky	\N	el	Έτσι, αυτή είναι η ζωή μου. Και θέλω να ξέρεις ότι είμαι τόσο χαρούμενος και λυπημένος και είμαι ακόμα προσπαθώ να καταλάβω πώς αυτό θα μπορούσε να είναι.
1041	sad	Stephen Chbosky	\N	en	So, this is my life. And I want you to know that I am both happy and sad and I'm still trying to figure out how that could be.
1042	sad	Stephen Chbosky	\N	es	Por lo tanto, esta es mi vida. Y quiero que sepas que estoy feliz y triste y todavía estoy tratando de averiguar cómo podía ser.
1043	sad	Stephen Chbosky	\N	fi	Niin, tämä on elämäni. Ja haluan sinun tietävän, että olen niin onnellinen ja surullinen ja olen edelleen yrittää selvittää, miten se voisi olla.
1044	sad	Stephen Chbosky	\N	fr	Donc, c'est ma vie. Et je veux que vous sachiez que je suis à la fois heureux et triste et je suis encore à essayer de comprendre comment cela pourrait être.
1045	sad	Stephen Chbosky	\N	he	אז, זה החיים שלי. ואני רוצה שתדע שאני גם שמח וגם עצוב, ואני עדיין מנסה להבין איך זה יכול להיות.
1046	sad	Stephen Chbosky	\N	hr	Dakle, ovo je moj život. I želim da znaš da sam i sretan i tužan, a ja sam još uvijek pokušavaju shvatiti kako bi to moglo biti.
1047	sad	Stephen Chbosky	\N	hu	Szóval, ez az életem. És azt akarom, hogy tudd, hogy én vagyok a két boldog és szomorú, és én még mindig, hogy kitaláljam, hogyan lehet.
1048	sad	Stephen Chbosky	\N	it	Quindi, questa è la mia vita. E voglio che tu sappia che io sono sia felice e triste e sto ancora cercando di capire come potesse essere.
1049	sad	Stephen Chbosky	\N	ja	だから、これは私の人生です。そして、私はあなたは私が幸せと悲しい両方と私はまだそれが可能性がどのように把握しようとしていることを知ってほしい。
1050	sad	Stephen Chbosky	\N	ko	그래서,이 내 인생이다. 그리고 나는 당신이 행복하고 슬픈 모두 그리고 난 아직도 그 수 방법을 알아 내려고 노력하고있어 알고 싶어요.
1051	sad	Stephen Chbosky	\N	nb	Så, dette er mitt liv. Og jeg vil du skal vite at jeg er både glad og trist, og jeg prøver fortsatt å finne ut hvordan det kunne være.
1052	sad	Stephen Chbosky	\N	nl	Dus, dit is mijn leven. En ik wil dat je weet dat ik ben zowel blij en verdrietig en ik ben nog steeds aan het uitzoeken hoe dat zou kunnen zijn.
1053	sad	Stephen Chbosky	\N	pl	Tak, to jest moje życie. I chcę, żebyś wiedział, że jestem zarówno szczęśliwy i smutny i jestem nadal próbuje dowiedzieć się, jak to może być.
1054	sad	Stephen Chbosky	\N	pt-PT	Então, essa é a minha vida. E eu quero que você saiba que estou feliz e triste e eu ainda estou tentando descobrir como isso poderia ser.
1055	sad	Stephen Chbosky	\N	pt-PT	Então, essa é a minha vida. E eu quero que você saiba que estou feliz e triste e eu ainda estou tentando descobrir como isso poderia ser.
1056	sad	Stephen Chbosky	\N	ro	Deci, aceasta este viața mea. Și vreau să știi că eu sunt atât de fericit și trist și eu sunt încă încearcă să dau seama cum ar putea fi.
1057	sad	Stephen Chbosky	\N	ru	Итак, это моя жизнь. И я хочу, чтобы вы знали, что я веселая и одновременно грустная и я все еще пытаюсь выяснить, как это могло быть.
1058	sad	Stephen Chbosky	\N	sk	Tak toto je môj život. A chcem, aby ste vedeli, že som tak šťastný a smutný a ja sa stále snažia prísť na to, ako je to možné.
1059	sad	Stephen Chbosky	\N	sv	Så detta är mitt liv. Och jag vill att du ska veta att jag är både glad och ledsen och jag försöker fortfarande lista ut hur det skulle kunna vara.
1060	sad	Stephen Chbosky	\N	th	ดังนั้นนี้เป็นชีวิตของฉัน และฉันต้องการให้คุณรู้ว่าเราทั้งสองมีความสุขและเศร้าและฉันยังคงพยายามที่จะคิดออกวิธีการที่อาจจะมี
1061	sad	Stephen Chbosky	\N	tr	Yani, bu benim hayatım. Ve seni mutlu ve hüzünlü hem de ve ben hala nasıl olabileceğini anlamaya çalışıyorum bilmek istiyorum.
1062	sad	Stephen Chbosky	\N	uk	Отже, це моє життя. І я хочу, щоб ви знали, що я весела і водночас сумна і я все ще намагаюся з'ясувати, як це могло бути.
1063	sad	Stephen Chbosky	\N	zh-Hant	所以，這是我的生活。我想讓你知道，我既高興又難過，我仍然試圖找出如何可以。
1064	sad	Dr. Seuss	\N	ar	لا تبكي لأنها انتهت، ابتسامة لأنه حدث.
1067	sad	Dr. Seuss	\N	da	Græd ikke fordi det er over, smiler, fordi det skete.
1068	sad	Dr. Seuss	\N	de	Weine nicht, weil es vorbei ist, lächle, weil es passiert ist.
1069	sad	Dr. Seuss	\N	el	Μην κλαις επειδή τελείωσε, χαμόγελο γιατί συνέβη.
1070	sad	Dr. Seuss	\N	en	Don't cry because it's over, smile because it happened.
1071	sad	Dr. Seuss	\N	es	No llores porque ya se acabó, sonríe porque sucedió.
1072	sad	Dr. Seuss	\N	fi	Älä itke koska se on ohi, hymyile koska se tapahtui.
1073	sad	Dr. Seuss	\N	fr	Ne pleure pas parce que c'est fini, le sourire parce que c'est arrivé.
1074	sad	Dr. Seuss	\N	he	אל תבכו בגלל שזה נגמר, יחייך כי זה קרה.
1075	sad	Dr. Seuss	\N	hr	Ne plači zato što je gotovo, osmijeh, jer se to dogodilo.
1076	sad	Dr. Seuss	\N	hu	Ne sírj, mert vége, mosolyogj, mert megtörtént.
1077	sad	Dr. Seuss	\N	it	Non piangere perché è finita, sorriso perché è successo.
1078	sad	Dr. Seuss	\N	ja	それはオーバーだから泣いてはいけない、それが起こったので、笑顔。
1079	sad	Dr. Seuss	\N	ko	그것은 이상 때​​문에 울지 마세요, 그것은 일이 있기 때문에 미소.
1080	sad	Dr. Seuss	\N	nb	Ikke gråt fordi det er over, smil fordi det skjedde.
1081	sad	Dr. Seuss	\N	nl	Huil niet omdat het voorbij is, lachen omdat het gebeurde.
1082	sad	Dr. Seuss	\N	pl	Nie płacz, bo to się skończy, uśmiech, bo to się stało.
1083	sad	Dr. Seuss	\N	pt-PT	Não chore porque acabou, sorria porque aconteceu.
1084	sad	Dr. Seuss	\N	pt-PT	Não chore porque acabou, sorria porque aconteceu.
1085	sad	Dr. Seuss	\N	ro	Nu plânge că sa terminat, zambeste pentru ca sa intamplat.
1086	sad	Dr. Seuss	\N	ru	Не плачь, потому что это более, улыбаться, потому что это случилось.
1087	sad	Dr. Seuss	\N	sk	Neplač, pretože to je koniec, úsmev, pretože sa to stalo.
1088	sad	Dr. Seuss	\N	sv	Gråt inte för att det är över, le för att det hände.
1089	sad	Dr. Seuss	\N	th	อย่าร้องไห้เพราะมันเป็นมากกว่ายิ้มเพราะมันเกิดขึ้น
1090	sad	Dr. Seuss	\N	tr	Bitti çünkü Ağlama, bu oldu, çünkü gülümseme.
1091	sad	Dr. Seuss	\N	uk	Не плач, тому що це більш, посміхатися, тому що це трапилося.
1092	sad	Dr. Seuss	\N	zh-Hant	不要因為它的結束而哭泣，微笑吧，因為它發生。
1093	sad	W.P. Kinsella	\N	ar	النجاح هو الحصول على ما تريد، والسعادة هو يريد ما تحصل عليه.
1094	sad	W.P. Kinsella	\N	ca	L'èxit és aconseguir el que vols, la felicitat és voler el que obtens.
1095	sad	W.P. Kinsella	\N	cs	Úspěch je dostat to, co chceš, štěstí je chtít to, co dostanete.
1096	sad	W.P. Kinsella	\N	da	Succes er at få hvad du ønsker, lykke er ønsker, hvad du får.
1097	sad	W.P. Kinsella	\N	de	Erfolg ist immer, was du willst, Glück fehlt, was man bekommt.
1098	sad	W.P. Kinsella	\N	el	Η επιτυχία είναι να πάρει ό, τι θέλετε, η ευτυχία είναι που θέλουν αυτό που παίρνετε.
1099	sad	W.P. Kinsella	\N	en	Success is getting what you want, happiness is wanting what you get.
1100	sad	W.P. Kinsella	\N	es	El éxito es conseguir lo que quieres, la felicidad es querer lo que obtienes.
1101	sad	W.P. Kinsella	\N	fi	Menestys on mitä haluat, onnellisuus valitti mitä saat.
1102	sad	W.P. Kinsella	\N	fr	Le succès est d'obtenir ce que vous voulez, le bonheur veut ce que vous obtenez.
1103	sad	W.P. Kinsella	\N	he	הצלחה הוא מקבל את מה שאתה רוצה, אושר הוא לרצות את מה שאתה מקבל.
1104	sad	W.P. Kinsella	\N	hr	Uspjeh je dobiti ono što želite, sreća je, pod utjecajem onoga što ste dobili.
1105	sad	W.P. Kinsella	\N	hu	A siker kezd, amit akar, a boldogság akarja, amit kapsz.
1106	sad	W.P. Kinsella	\N	it	Il successo è ottenere ciò che si vuole, la felicità è volere ciò che si ottiene.
1107	sad	W.P. Kinsella	\N	ja	成功とは、あなたが欲しいものを得ている幸せは、あなたが得るもの欠けている。
1108	sad	W.P. Kinsella	\N	ko	성공은 당신이 원하는 무엇을 받고 행복은 당신이 얻는 무슨하고자합니다.
1109	sad	W.P. Kinsella	\N	nb	Suksess er å få det du ønsker, lykke er å ville det du får.
1110	sad	W.P. Kinsella	\N	nl	Succes is krijgen wat je wilt, geluk is willen wat je krijgt.
1111	sad	W.P. Kinsella	\N	pl	Sukces staje się to, co chcesz, szczęście chce to, co dostajesz.
1112	sad	W.P. Kinsella	\N	pt-PT	Sucesso é conseguir o que quer, felicidade é querer o que você ganha.
1113	sad	W.P. Kinsella	\N	pt-PT	Sucesso é conseguir o que quer, felicidade é querer o que você ganha.
1114	sad	W.P. Kinsella	\N	ro	Succesul este a obține ceea ce vrei, fericirea este doresc ceea ce ai.
1115	sad	W.P. Kinsella	\N	ru	Успех, чего вы хотите, счастья желает что вы получаете.
1116	sad	W.P. Kinsella	\N	sk	Úspech je dostať to, čo chceš, šťastie je chcieť to, čo dostanete.
1117	sad	W.P. Kinsella	\N	sv	Framgång är att få vad du vill ha, lycka är att vilja vad du får.
1118	sad	W.P. Kinsella	\N	th	ความสำเร็จคือการได้รับสิ่งที่คุณต้องการคือความสุขที่ต้องการสิ่งที่คุณได้รับ
1119	sad	W.P. Kinsella	\N	tr	Başarı, ne istediğinizi oluyor mutluluk ne olsun isteyen bir.
1120	sad	W.P. Kinsella	\N	uk	Успіх, чого ви хочете, щастя бажає що ви отримуєте.
1121	sad	W.P. Kinsella	\N	zh-Hant	成功就是得到你想要什麼，幸福就是你會得到什麼。
1122	sad	L.M. Montgomery	\N	ar	انها كانت تجربتي التي يمكنك أن تستمتع دائما ما يقرب من الأشياء إذا كنت تجعل عقلك بحزم بأنكم.
1123	sad	L.M. Montgomery	\N	ca	Ha estat la meva experiència que gairebé sempre es pot gaudir de les coses si vostè es decideixi fermament que ho faràs.
1124	sad	L.M. Montgomery	\N	cs	Je to moje zkušenost, že můžete téměř vždy si věci, pokud si uděláte svůj názor pevně, že budete.
1125	sad	L.M. Montgomery	\N	da	Det har været min erfaring, at du kan næsten altid nyde ting, hvis du gøre op dit sind fast, at du vil.
1126	sad	L.M. Montgomery	\N	de	Es ist meine Erfahrung, dass man fast immer genießen Dinge, wenn Sie Ihren Verstand machen fest, dass man so will.
1127	sad	L.M. Montgomery	\N	el	Είναι η εμπειρία μου ότι μπορείτε σχεδόν πάντα να απολαύσετε τα πράγματα αν έχετε κάνει μέχρι το μυαλό σας ακράδαντα ότι θα.
1128	sad	L.M. Montgomery	\N	en	It's been my experience that you can nearly always enjoy things if you make up your mind firmly that you will.
1129	sad	L.M. Montgomery	\N	es	Ha sido mi experiencia que casi siempre se puede disfrutar de las cosas si usted se decida firmemente que lo harás.
1130	sad	L.M. Montgomery	\N	fi	Se on ollut minun kokemus, että voit lähes aina nauttia asioista, jos teet jopa mieltäsi tiukasti, että tulet.
1131	sad	L.M. Montgomery	\N	fr	Il a été mon expérience que vous pouvez presque toujours profiter des choses si vous vous faire une idée fermement que vous voulez.
1132	sad	L.M. Montgomery	\N	he	זה היה הניסיון שלי, כי אתה יכול כמעט תמיד נהנה מדברים אם אתה עושה את דעתך בתקיפות שתרצה.
1133	sad	L.M. Montgomery	\N	hr	Prošlo je moje iskustvo koje gotovo uvijek možete uživati ​​u stvari ako make up your mind čvrsto da ćete.
1134	sad	L.M. Montgomery	\N	hu	Ez volt a tapasztalatom, hogy akkor szinte mindig élvezni a dolgokat, ha döntsd határozottan, hogy lesz.
1135	sad	L.M. Montgomery	\N	it	E 'stata la mia esperienza che si può quasi sempre godere di cose se la vostra mente con fermezza che si vuole.
1136	sad	L.M. Montgomery	\N	ja	それは、あなたがすることをしっかりとあなたの心を構成する場合は、ほぼ常に物事を楽しむことができるというのが私の経験をされています。
1137	sad	L.M. Montgomery	\N	ko	그것은 당신이 당신 의지 확고하게 마음을 만드는 경우 거의 항상 일을 즐길 수있는 내 경험이었다.
1138	sad	L.M. Montgomery	\N	nb	Det har vært min erfaring at du kan nesten alltid få ting hvis du gjør opp tankene fast at du vil.
1139	sad	L.M. Montgomery	\N	nl	Het is mijn ervaring dat je vrijwel altijd kunt genieten van dingen als je make-up je geest stevig dat je wil.
1140	sad	L.M. Montgomery	\N	pl	To było moje doświadczenie, że można prawie zawsze cieszyć się rzeczy, jeśli się zdecydować pewnie, że tak będzie.
1141	sad	L.M. Montgomery	\N	pt-PT	Tem sido minha experiência que você pode quase sempre apreciar as coisas se você fizer a sua mente firmemente que você quiser.
1142	sad	L.M. Montgomery	\N	pt-PT	Tem sido minha experiência que você pode quase sempre apreciar as coisas se você fizer a sua mente firmemente que você quiser.
1143	sad	L.M. Montgomery	\N	ro	A fost experienta mea pe care vă puteți bucura de aproape mereu lucruri dacă vă face până mintea ta cu tărie că o vei face.
1144	sad	L.M. Montgomery	\N	ru	Это был мой опыт, что вы можете почти всегда пользуются вещи, если вы сделаете свой ум твердо, что вы будете.
1145	sad	L.M. Montgomery	\N	sk	Je to moja skúsenosť, že môžete takmer vždy si veci, ak si urobíte svoj názor pevne, že budete.
1146	sad	L.M. Montgomery	\N	sv	Det har varit min erfarenhet att du kan nästan alltid njuta av saker om du gör upp ditt sinne bestämt att du kommer.
1147	sad	L.M. Montgomery	\N	th	มันเป็นประสบการณ์ของผมที่คุณเกือบจะสามารถเพลิดเพลินไปกับสิ่งที่ถ้าคุณให้ขึ้นใจของคุณมั่นว่าคุณจะ
1148	sad	L.M. Montgomery	\N	tr	Bu o olacak sıkıca karar vermek ise neredeyse her zaman şeyler keyfini benim deneyim oldu.
1149	sad	L.M. Montgomery	\N	uk	Це був мій досвід, що ви можете майже завжди користуються речі, якщо ви зробите свій розум твердо, що ви будете.
1150	sad	L.M. Montgomery	\N	zh-Hant	這是我的經驗，你幾乎總是可以享受的東西，如果你讓你的心，你將堅決。
1151	nostalgic	Salvador Plascencia	\N	ar	أنا لا أعرف ما يطلق عليها، المسافات بين ثانية، ولكنني كنت أفكر دائما في تلك الفترات.
1152	nostalgic	Salvador Plascencia	\N	ca	No sé com es diuen, els espais entre els segons-, però crec que de vosaltres sempre en aquests intervals.
1153	nostalgic	Salvador Plascencia	\N	cs	Já nevím, co se jim říká, mezery mezi sekund, ale myslím, že na tebe vždy v těchto intervalech.
1154	nostalgic	Salvador Plascencia	\N	da	Jeg ved ikke, hvad de hedder, mellemrummene mellem sekunder-men jeg tænker på dig altid i disse intervaller.
1155	nostalgic	Salvador Plascencia	\N	de	Ich weiß nicht, was sie genannt werden, die Räume zwischen Sekunden-aber ich denke immer an Dich in diesen Intervallen.
1156	nostalgic	Salvador Plascencia	\N	el	Δεν ξέρω τι τους λένε, τα διαστήματα μεταξύ των δευτερολέπτων-αλλά νομίζω ότι από πάντα σε αυτά τα διαστήματα.
1157	nostalgic	Salvador Plascencia	\N	en	I don't know what they are called, the spaces between seconds– but I think of you always in those intervals.
1158	nostalgic	Salvador Plascencia	\N	es	No sé cómo se llaman, los espacios entre los segundos-, pero creo que de vosotros siempre en esos intervalos.
1159	nostalgic	Salvador Plascencia	\N	fi	En tiedä, miksi niitä kutsutaan, välit sekuntia-mutta ajattelen aina niissä välein.
1160	nostalgic	Salvador Plascencia	\N	fr	Je ne sais pas ce qu'ils sont appelés, les espaces entre les secondes, mais je pense toujours à vous dans ces intervalles.
1161	nostalgic	Salvador Plascencia	\N	he	אני לא יודע מה שהם נקראים, את הרווחים בין שניות, אבל אני חושב עליך תמיד במרווחים אלה.
1162	nostalgic	Salvador Plascencia	\N	hr	Ne znam što oni nazivaju, razmaci među sekundi, ali mislim da od vas uvijek u tim intervalima.
1163	nostalgic	Salvador Plascencia	\N	hu	Nem tudom, hogyan hívják őket, a terek között, másodperc, de azt hiszem, az, hogy mindig az időközönként.
1164	nostalgic	Salvador Plascencia	\N	it	Io non so come si chiamano, gli spazi tra secondi-ma ti penso sempre in quegli intervalli.
1165	nostalgic	Salvador Plascencia	\N	ja	私は、彼らが呼び出されるかわからない、間のスペース秒 - しかし、私はそれらの間隔で常にあなたのことを考える。
1166	nostalgic	Salvador Plascencia	\N	ko	나는 그들이이라고 모르는 사이에 공백 초 -하지만 난 그 간격으로 항상 생각합니다.
1167	nostalgic	Salvador Plascencia	\N	nb	Jeg vet ikke hva de heter, mellomrommene mellom sekunder, men jeg tenker på deg alltid i disse intervallene.
1168	nostalgic	Salvador Plascencia	\N	nl	Ik weet niet wat ze genoemd worden, de ruimtes tussen seconden, maar ik denk aan je altijd in die intervallen.
1169	nostalgic	Salvador Plascencia	\N	pl	Nie wiem, jak się nazywają, przestrzenie między sekund, ale myślę, że z wami w tych przedziałach.
1170	nostalgic	Salvador Plascencia	\N	pt-PT	Eu não sei o que eles são chamados, os espaços entre os segundos, mas eu penso em você sempre nesses intervalos.
1171	nostalgic	Salvador Plascencia	\N	pt-PT	Eu não sei o que eles são chamados, os espaços entre os segundos, mas eu penso em você sempre nesses intervalos.
1172	nostalgic	Salvador Plascencia	\N	ro	Nu știu ce se numesc, spațiile dintre secunde, dar mă gândesc la tine mereu in aceste intervale.
1173	nostalgic	Salvador Plascencia	\N	ru	Я не знаю, как они называются, пространство между ними секунд, но я думаю о тебе всегда в этих интервалах.
1174	nostalgic	Salvador Plascencia	\N	sk	Ja neviem, čo sa im hovorí, medzery medzi sekúnd, ale myslím, že na teba vždy v týchto intervaloch.
1175	nostalgic	Salvador Plascencia	\N	sv	Jag vet inte vad de kallas, mellanrummen mellan sekunder-men jag tänker på dig alltid i dessa intervaller.
1176	nostalgic	Salvador Plascencia	\N	th	ผมไม่ทราบว่าสิ่งที่พวกเขาเรียกว่าช่องว่างระหว่างวินาที แต่ผมคิดว่าคุณมักจะอยู่ในช่วงเวลาเหล่านั้น
1177	nostalgic	Salvador Plascencia	\N	tr	Ben onlar denir bilmiyorum, arasındaki boşlukları saniye-ama o aralıklarla her zaman seni düşünüyorum.
1178	nostalgic	Salvador Plascencia	\N	uk	Я не знаю, як вони називаються, простір між ними секунд, але я думаю про тебе завжди в цих інтервалах.
1179	nostalgic	Salvador Plascencia	\N	zh-Hant	我不知道他們被稱為什麼，秒之間的空間，但我覺得你總是在這些間隔。
1180	nostalgic	Bo Bennett	\N	ar	مفهوم 'حسن رأ' أيام 'يجب أن يكون واحدا من أكبر الأوهام مجتمعنا، أسباب الأعلى لعلاج الاكتئاب، وكذلك غالبا ما تستخدم ذريعة لعدم النجاح.
1181	nostalgic	Bo Bennett	\N	ca	El concepte dels &quot;bons vells dies&quot; ha de ser un dels majors enganys de la nostra societat, els principals motius de la depressió, així com la majoria de les vegades s'utilitza excusa per la manca d'èxit.
1182	nostalgic	Bo Bennett	\N	cs	Pojem &quot;dobré ol 'dní&quot; musí být jedním z naší společnosti největších bludů, top důvody pro deprese, stejně jako nejčastěji používá výmluvu pro neúspěch.
1183	nostalgic	Bo Bennett	\N	da	Begrebet de 'gode gamle dage' skal være en af ​​vores samfunds største vrangforestillinger, top grunde til depression, såvel som de fleste ofte brugt undskyldning for manglende succes.
1184	nostalgic	Bo Bennett	\N	de	Das Konzept der &quot;guten alten Tage&quot; muss man in unserer Gesellschaft die größte Wahnvorstellungen, Top-Gründe für Depressionen, sowie am häufigsten verwendeten Entschuldigung für mangelnden Erfolg sein.
1185	nostalgic	Bo Bennett	\N	el	Η έννοια των «παλιών καλών ημερών» θα πρέπει να είναι μία από τις μεγαλύτερες αυταπάτες της κοινωνίας μας, κορυφαίους λόγους για την κατάθλιψη, καθώς και πιο συχνά χρησιμοποιείται δικαιολογία για την έλλειψη επιτυχίας.
1186	nostalgic	Bo Bennett	\N	en	The concept of the 'good ol' days' must be one of our society's biggest delusions, top reasons for depression, as well as most often used excuse for lack of success.
1187	nostalgic	Bo Bennett	\N	es	El concepto de los &quot;buenos viejos días&quot; debe ser uno de los mayores engaños de nuestra sociedad, los principales motivos de la depresión, así como la mayoría de las veces se utiliza excusa para la falta de éxito.
1188	nostalgic	Bo Bennett	\N	fi	Käsite &quot;hyvinä päivinä&quot; on yksi yhteiskuntamme suurimmista harhaluuloja, Top Syitä masennuksen sekä useimmiten käytetään tekosyynä epäonnistumisen.
1189	nostalgic	Bo Bennett	\N	fr	Le concept des «bonnes journées d'Ol 'doit être l'un des plus grands délires de notre société, principales raisons de la dépression, ainsi que le plus souvent utilisé excuse pour le manque de réussite.
1190	nostalgic	Bo Bennett	\N	he	הרעיון של ימי ol 'הטובים' &quot;חייב להיות אחד מהאשליות הגדולות ביותר של החברה שלנו, סיבות עיקריות לדיכאון, כמו גם משמש לרוב תירוץ לחוסר הצלחה.
1191	nostalgic	Bo Bennett	\N	hr	Pojam &quot;dobar ol 'dana' mora biti jedan od našem društvu najvećih zabluda, kao glavne razloge za depresiju, kao i najčešće se koriste izgovor za nedostatak uspjeha.
1192	nostalgic	Bo Bennett	\N	hu	A koncepció a &quot;jó öreg&quot; nap &quot;kell, hogy legyen az egyik a társadalom legnagyobb téveszmék, felső oka a depresszió, valamint a leggyakrabban használt mentség sikertelenség.
1193	nostalgic	Bo Bennett	\N	it	Il concetto di 'bei vecchi tempi' deve essere una delle più grandi delusioni della nostra società, migliori ragioni per la depressione, così come più spesso utilizzato scusa per la mancanza di successo.
1194	nostalgic	Bo Bennett	\N	ja	古き良き '日'の概念は、我々の社会の最大の妄想、うつのための上の理由だけでなく、成功の欠如のために最も頻繁に使用される言い訳のいずれかでなければなりません。
1195	nostalgic	Bo Bennett	\N	ko	'좋은 똑똑한'일 '​​의 개념은 우리 사회의 가장 큰 망상 중 하나 우울증에 대한 가장 큰 이유뿐만 아니라, 성공의 부족에 대한 가장 자주 사용되는 변명해야합니다.
1196	nostalgic	Bo Bennett	\N	nb	Konseptet med de &quot;gode gamle dager&quot; må være en av vår tids største vrangforestillinger, viktigste årsakene til depresjon, samt oftest brukt unnskyldning for manglende suksess.
1197	nostalgic	Bo Bennett	\N	nl	Het concept van de 'good ol' dagen 'moet een van de grootste waanideeën onze samenleving, belangrijkste redenen voor depressie, maar ook het meest gebruikt excuus voor het gebrek aan succes.
1198	nostalgic	Bo Bennett	\N	pl	Pojęcie &quot;Good Ol 'dzień' musi być jednym z największych nasze społeczeństwo złudzeń, top przyczyny depresji, a także najczęściej stosowane usprawiedliwienia dla braku sukcesu.
1240	nostalgic	Carson McCullers	\N	cs	Jsme největší stesk po místech, které jsme nikdy nepoznaly.
1622	guilty	Chinese proverb	\N	es	Bajan abajo siete veces, levántate ocho.
1199	nostalgic	Bo Bennett	\N	pt-PT	O conceito dos &quot;bons e velhos dias&quot; deve ser uma das maiores ilusões da nossa sociedade, os principais motivos para a depressão, assim como na maioria das vezes usado desculpa para a falta de sucesso.
1200	nostalgic	Bo Bennett	\N	pt-PT	O conceito dos &quot;bons e velhos dias&quot; deve ser uma das maiores ilusões da nossa sociedade, os principais motivos para a depressão, assim como na maioria das vezes usado desculpa para a falta de sucesso.
1201	nostalgic	Bo Bennett	\N	ro	Conceptul de &quot;bun ol 'zile trebuie să fie una dintre cele mai mari iluzii societății noastre, motivele de top pentru depresie, precum și cel mai des folosit scuza pentru lipsa de succes.
1202	nostalgic	Bo Bennett	\N	ru	Концепция &quot;старые добрые времена&quot; должно быть одной из самых больших заблуждений нашего общества, основных причин для депрессии, а также наиболее часто используется для оправдания отсутствия успеха.
1203	nostalgic	Bo Bennett	\N	sk	Pojem &quot;dobré ol 'dní&quot; musí byť jedným z našej spoločnosti najväčších bludov, top dôvody pre depresie, rovnako ako najčastejšie používa výhovorku pre neúspech.
1204	nostalgic	Bo Bennett	\N	sv	Begreppet &quot;goda ol 'days' måste vara ett av vårt samhälles största vanföreställningar, främsta anledningarna till depression, liksom oftast ursäkt för bristen på framgång.
1205	nostalgic	Bo Bennett	\N	th	แนวคิดของ 'ol ดี' วัน 'ต้องเป็นหนึ่งในอาการหลงผิดที่ใหญ่ที่สุดในสังคมของเราด้วยเหตุผลด้านบนสำหรับภาวะซึมเศร้าเช่นเดียวกับข้ออ้างที่ส่วนใหญ่มักจะใช้สำหรับการขาดของความสำเร็จ
1206	nostalgic	Bo Bennett	\N	tr	'Iyi ol' gün 'kavramı bizim toplumun en büyük sanrılar biri, depresyon için en önemli sebepleri, hem de başarı eksikliği için en sık kullanılan bahane olmalıdır.
1207	nostalgic	Bo Bennett	\N	uk	Концепція &quot;старі добрі часи&quot; повинно бути однією з найбільших помилок нашого суспільства, основних причин для депресії, а також найбільш часто використовується для виправдання відсутності успіху.
1208	nostalgic	Bo Bennett	\N	zh-Hant	“好醇'天'的概念，必須有一個社會的最大的妄想，抑鬱症的首要原因，以及缺乏成功的最常用的藉口。
1209	nostalgic	Marcel Proust	\N	ar	ذكرى من الأشياء الماضي ليست بالضرورة بذكر الامور على ما هي.
1210	nostalgic	Marcel Proust	\N	ca	Records del passat no és necessàriament el record de les coses com estaven.
1211	nostalgic	Marcel Proust	\N	cs	Vzpomínka věcí minulosti není nutně vzpomínku na věci jako oni.
1212	nostalgic	Marcel Proust	\N	da	Remembrance af ting fortiden er ikke nødvendigvis erindringen om tingene, som de var.
1213	nostalgic	Marcel Proust	\N	de	Remembrance of Things Past ist nicht unbedingt die Erinnerung an Dinge, wie sie waren.
1214	nostalgic	Marcel Proust	\N	el	Μνήμη των πραγμάτων παρελθόν δεν είναι κατ 'ανάγκη την ανάμνηση των πραγμάτων όπως ήταν.
1215	nostalgic	Marcel Proust	\N	en	Remembrance of things past is not necessarily the remembrance of things as they were.
1216	nostalgic	Marcel Proust	\N	es	Recuerdos del pasado no es necesariamente el recuerdo de las cosas como estaban.
1217	nostalgic	Marcel Proust	\N	fi	Muistoa menneisyyteen ei välttämättä ole muistoa kuin ne olivat.
1218	nostalgic	Marcel Proust	\N	fr	Remembrance of things passé n'est pas nécessairement le souvenir des choses telles qu'elles étaient.
1219	nostalgic	Marcel Proust	\N	he	הזיכרון של הדברים שהעבר אינו מהווה בהכרח הזיכרון של דברים כפי שהם היו.
1220	nostalgic	Marcel Proust	\N	hr	Sjećanje stvari prošlosti nije nužno sjećanje na stvari kao što su bili.
1221	nostalgic	Marcel Proust	\N	hu	Az eltűnt idő nyomában nem feltétlenül az emlékezés a dolgok, mint volt.
1222	nostalgic	Marcel Proust	\N	it	Ricordo delle cose passate non è necessariamente il ricordo delle cose come erano.
1223	nostalgic	Marcel Proust	\N	ja	彼らがいたとして、過去の事の記憶は、物事の記憶とは限りません。
1224	nostalgic	Marcel Proust	\N	ko	그들은 자기들 같은 것들을 과거의 기억은 사물의 기억을 필요는 없습니다.
1225	nostalgic	Marcel Proust	\N	nb	Remembrance of Things Past er ikke nødvendigvis minne om ting som de var.
1226	nostalgic	Marcel Proust	\N	nl	Herinnering aan dingen verleden is niet noodzakelijk de herinnering aan de dingen zoals ze waren.
1227	nostalgic	Marcel Proust	\N	pl	Pamięć o przeszłości rzeczy niekoniecznie jest pamięć o rzeczach, jak były.
1228	nostalgic	Marcel Proust	\N	pt-PT	Remembrance of Things Past não é necessariamente a lembrança das coisas como elas eram.
1229	nostalgic	Marcel Proust	\N	pt-PT	Remembrance of Things Past não é necessariamente a lembrança das coisas como elas eram.
1230	nostalgic	Marcel Proust	\N	ro	Amintire de lucruri din trecut nu este neapărat aminte de lucrurile așa cum erau.
1231	nostalgic	Marcel Proust	\N	ru	Память о прошлых вещах не обязательно воспоминание о вещах, как они были.
1232	nostalgic	Marcel Proust	\N	sk	Spomienka vecou minulosti nie je nevyhnutne spomienku na veci ako oni.
1233	nostalgic	Marcel Proust	\N	sv	Remembrance saker förflutna är inte nödvändigtvis minnet av saker som de var.
1234	nostalgic	Marcel Proust	\N	th	ความทรงจำของอดีตที่ผ่านมาสิ่งที่ไม่จำเป็นต้องระลึกถึงสิ่งที่พวกเขา
1235	nostalgic	Marcel Proust	\N	tr	Onlar gibi şeyler geçmişte Anma şeylerin anmak zorunda değildir.
1236	nostalgic	Marcel Proust	\N	uk	Пам'ять про минулі речах не обов'язково спогад про речі, як вони були.
1237	nostalgic	Marcel Proust	\N	zh-Hant	追憶過去的事情不一定是紀念的東西，因為他們是。
1238	nostalgic	Carson McCullers	\N	ar	نحن بالحنين إلى الوطن لمعظم الأماكن التي لم يعرف.
1239	nostalgic	Carson McCullers	\N	ca	Som més nostàlgia dels llocs que mai hem conegut.
1241	nostalgic	Carson McCullers	\N	da	Vi er hjemve fleste af de steder, vi aldrig har kendt.
1242	nostalgic	Carson McCullers	\N	de	Wir sind Heimweh meisten für die Orte, die wir nie gekannt haben.
1243	nostalgic	Carson McCullers	\N	el	Είμαστε νοσταλγία περισσότερα για τα μέρη που δεν έχουν γνωρίσει ποτέ.
1244	nostalgic	Carson McCullers	\N	en	We are homesick most for the places we have never known.
1245	nostalgic	Carson McCullers	\N	es	Somos más nostalgia de los lugares que nunca hemos conocido.
1246	nostalgic	Carson McCullers	\N	fi	Olemme koti-ikävä eniten paikkoja emme ole koskaan tiedossa.
1247	nostalgic	Carson McCullers	\N	fr	Nous sommes très nostalgique pour les endroits que nous n'avons jamais connus.
1248	nostalgic	Carson McCullers	\N	he	אנחנו הכי מתגעגעים למקומות שמעולם לא הכירו.
1249	nostalgic	Carson McCullers	\N	hr	Mi smo nostalgičan za većinu mjesta koje nikada nisu poznate.
1250	nostalgic	Carson McCullers	\N	hu	Vagyunk honvágya legtöbbet helyen még soha nem ismert.
1251	nostalgic	Carson McCullers	\N	it	Siamo nostalgia per la maggior parte dei posti che abbiamo mai conosciuto.
1252	nostalgic	Carson McCullers	\N	ja	我々は知らなかった場所のための最もホームシックです。
1253	nostalgic	Carson McCullers	\N	ko	우리는 우리가 알고 적이없는 장소에 향수병 대부분입니다.
1254	nostalgic	Carson McCullers	\N	nb	Vi er hjemlengsel mest for de steder vi aldri har kjent.
1255	nostalgic	Carson McCullers	\N	nl	Wij zijn heimwee meest voor de plaatsen die we nooit gekend.
1256	nostalgic	Carson McCullers	\N	pl	Jesteśmy tęskni najbardziej na miejscu nigdy nie wiadomo.
1257	nostalgic	Carson McCullers	\N	pt-PT	Estamos mais saudades dos lugares que nunca conheceram.
1258	nostalgic	Carson McCullers	\N	pt-PT	Estamos mais saudades dos lugares que nunca conheceram.
1259	nostalgic	Carson McCullers	\N	ro	Suntem cel mai dor de locurile în care nu au cunoscut niciodată.
1260	nostalgic	Carson McCullers	\N	ru	Мы тоскующим по дому для самых местах, которые мы никогда не знали.
1261	nostalgic	Carson McCullers	\N	sk	Sme najväčší túžbu po miestach, ktoré sme nikdy nepoznali.
1262	nostalgic	Carson McCullers	\N	sv	Vi är homesick mest för de platser vi har aldrig känt.
1263	nostalgic	Carson McCullers	\N	th	เรามีความคิดถึงบ้านมากที่สุดสำหรับสถานที่ที่เราไม่เคยรู้จักกัน
1264	nostalgic	Carson McCullers	\N	tr	Biz bilinen hiç yerler için yurdunu çoğu vardır.
1265	nostalgic	Carson McCullers	\N	uk	Ми тужним по будинку для самих місцях, які ми ніколи не знали.
1266	nostalgic	Carson McCullers	\N	zh-Hant	我們是最想家的，我們從來不知道的地方。
1267	nostalgic	Groucho Marx	\N	ar	أنا لم يكن لديك صورة، ولكن هل يمكن أن يكون آثار أقدام بلدي. انهم الطابق العلوي في بلدي الجوارب.
1268	nostalgic	Groucho Marx	\N	ca	No tinc una fotografia, però vostè pot tenir les meves petjades. Estan dalt en els meus mitjons.
1269	nostalgic	Groucho Marx	\N	cs	Nemám fotografii, ale můžete mít své stopy. Jsou nahoře v ponožkách.
1270	nostalgic	Groucho Marx	\N	da	Jeg har ikke et fotografi, men du kan have mine fodspor. De er ovenpå i mine sokker.
1271	nostalgic	Groucho Marx	\N	de	Ich habe ein Foto, aber Sie können meine Fußabdrücke haben. Sie sind oben in meinem Socken.
1272	nostalgic	Groucho Marx	\N	el	Δεν έχω μια φωτογραφία, αλλά μπορείτε να έχετε τα ίχνη μου. Είναι πάνω στις κάλτσες μου.
1273	nostalgic	Groucho Marx	\N	en	I don’t have a photograph, but you can have my footprints. They’re upstairs in my socks.
1274	nostalgic	Groucho Marx	\N	es	No tengo una fotografía, pero usted puede tener mis huellas. Están arriba en mis calcetines.
1275	nostalgic	Groucho Marx	\N	fi	Minulla ei ole valokuva, mutta voit minun jalanjälkiä. He yläkerrassa sukat.
1276	nostalgic	Groucho Marx	\N	fr	Je n'ai pas de photo, mais vous pouvez avoir mes empreintes. Ils sont en haut dans mes chaussettes.
1277	nostalgic	Groucho Marx	\N	he	אין לי תמונה, אבל אתה יכול לקבל טביעות הרגליים שלי. הם למעלה, בגרביים שלי.
1278	nostalgic	Groucho Marx	\N	hr	Nemam fotografiju, ali mogu imati svoje otiske. Oni su gore u mojim čarapama.
1279	nostalgic	Groucho Marx	\N	hu	Nincs egy fénykép, de az én lábnyomokat. Az emeleten az én zokni.
1280	nostalgic	Groucho Marx	\N	it	Non ho una foto, ma è possibile avere le mie impronte. Sono di sopra nei calzini.
1281	nostalgic	Groucho Marx	\N	ja	私は写真を持っていませんが、あなたは私の足跡を持つことができます。彼らは私の靴下の中に二階です。
1282	nostalgic	Groucho Marx	\N	ko	내가 사진을 가지고 있지 않습니다,하지만 당신은 내 발자국을 가질 수 있습니다. 그들은 내 양말 위층에 있어요.
1283	nostalgic	Groucho Marx	\N	nb	Jeg har ikke et bilde, men du kan ha mine fotspor. De er oppe i sokkene mine.
1284	nostalgic	Groucho Marx	\N	nl	Ik heb geen foto, maar je kunt mijn voetafdrukken hebben. Ze zitten boven in mijn sokken.
1285	nostalgic	Groucho Marx	\N	pl	Nie mam fotografię, ale można mieć moje ślady. Oni są na górze w moich skarpetkach.
1286	nostalgic	Groucho Marx	\N	pt-PT	Eu não tenho uma foto, mas você pode ter as minhas pegadas. Eles estão lá em cima nas minhas meias.
1287	nostalgic	Groucho Marx	\N	pt-PT	Eu não tenho uma foto, mas você pode ter as minhas pegadas. Eles estão lá em cima nas minhas meias.
1288	nostalgic	Groucho Marx	\N	ro	Nu am o fotografie, dar puteți avea urme mele. Sunt sus in sosete.
1289	nostalgic	Groucho Marx	\N	ru	У меня нет фотографий, но вы можете иметь мои следы. Они наверху в моих носках.
1290	nostalgic	Groucho Marx	\N	sk	Nemám fotografiu, ale môžete mať svoje stopy. Sú hore v ponožkách.
1291	nostalgic	Groucho Marx	\N	sv	Jag har inte ett fotografi, men du kan få mina fotspår. De är på övervåningen i mina strumpor.
1292	nostalgic	Groucho Marx	\N	th	ฉันไม่ได้มีการถ่ายภาพ แต่คุณสามารถมีรอยเท้าของฉัน พวกเขากำลังชั้นในถุงเท้าของฉัน
1293	nostalgic	Groucho Marx	\N	tr	Ben bir fotoğraf yok, ama sen benim ayak izleri olabilir. Onlar benim çorap üst katta konum.
1294	nostalgic	Groucho Marx	\N	uk	У мене немає фотографій, але ви можете мати мої сліди. Вони нагорі в моїх шкарпетках.
1295	nostalgic	Groucho Marx	\N	zh-Hant	我沒有照片，但你可以有我的足跡。他們在我的襪子的樓上。
1296	jealous	Jarod Kintz	\N	ar	إذا كان لي استنساخ، وقال انه سيكون من الأفضل لي على قدم المساواة، وليس لي أفضل. يمكنك أن تتخيل كيف كنت تشعر غيرة على نفسي؟
1297	jealous	Jarod Kintz	\N	ca	Si jo tingués un clon, serà millor que sigui el meu igual, i no és el meu millor. Pot vostè imaginar com em sentiria gelosa de mi mateix?
1298	jealous	Jarod Kintz	\N	cs	Kdybych měl klon, musel lépe se mi nevyrovná, a ne moje lepší. Dokážete si představit, jak bych se cítil, že žárlí na sebe?
1299	jealous	Jarod Kintz	\N	da	Hvis jeg havde en klon, ville han hellere være min lige, og ikke min bedre. Kan du forestille dig, hvordan jeg ville føle at være jaloux på mig selv?
1300	jealous	Jarod Kintz	\N	de	Wenn ich einen Klon hätte, würde er besser gleich meinen, und nicht meine besser. Können Sie sich vorstellen, wie ich mich fühlen würde, weil sie eifersüchtig auf mich?
1301	jealous	Jarod Kintz	\N	el	Αν είχα ένα κλώνο, είχε καλύτερα να είναι ίσες μου, και δεν μου καλύτερα. Μπορείτε να φανταστείτε πώς θα ένιωθα να ζηλέψει από τον εαυτό μου;
1302	jealous	Jarod Kintz	\N	en	If I had a clone, he’d better be my equal, and not my better. Can you imagine how I’d feel being jealous of myself?
1303	jealous	Jarod Kintz	\N	es	Si yo tuviera un clon, será mejor que sea mi igual, y no es mi mejor. ¿Puede usted imaginar cómo me sentiría celosa de mí mismo?
1304	jealous	Jarod Kintz	\N	fi	Jos minulla olisi klooni, hän on parasta olla minun sama, eikä minun parempi. Voitteko kuvitella, miltä minusta tuntuisi olla mustasukkainen itsestäni?
1305	jealous	Jarod Kintz	\N	fr	Si j'avais un clone, il ferait mieux-être mon égal, et non mon mieux. Pouvez-vous imaginer comment je me sentirais être jaloux de moi?
1306	jealous	Jarod Kintz	\N	he	אם היה לי כפיל, שמוטב לו להיות שווה שלי, ולא יותר טוב שלי. אתם יכולים לדמיין איך הייתי מרגיש שקנאו בעצמי?
1307	jealous	Jarod Kintz	\N	hr	Ako sam imao klona, ​​bolje da bude moj jednaki, a ne moja bolja. Možete li zamisliti kako bih se osjećao kao ljubomoran na mene?
1308	jealous	Jarod Kintz	\N	hu	Ha lenne egy klón, akkor jobb, ha az egyenlő, és nem az én jobb. El tudod képzelni, hogy mit éreznék, hogy féltékeny magamra?
1309	jealous	Jarod Kintz	\N	it	Se avessi un clone, avrebbe fatto meglio a essere mio pari, e non il mio meglio. Potete immaginare come mi sentirei di essere geloso di me stesso?
1310	jealous	Jarod Kintz	\N	ja	私はクローンを持っていた場合、彼はよりよい私の良い私の平等ではなくなるだろう。あなたは私が自分自身の嫉妬という感じだろうか想像できますか？
1311	jealous	Jarod Kintz	\N	ko	난 클론이 있다면, 그는 더 나은 내 더 내 평등, 그리고있을 것입니다. 당신은 내가 자신을 질투 느낄 것 상상할 수 있는가?
1312	jealous	Jarod Kintz	\N	nb	Hvis jeg hadde en klone, ville han bedre være min like, og ikke min bedre. Kan du forestille deg hvordan jeg ville føle seg å være sjalu på meg selv?
1313	jealous	Jarod Kintz	\N	nl	Als ik een kloon, zou hij beter mijn gelijk, en niet mijn betere. Kun je je voorstellen hoe ik me zou voelen jaloers op mezelf?
1314	jealous	Jarod Kintz	\N	pl	Gdybym miał klona, ​​że ​​lepiej być moim równe, a nie my lepiej. Czy można sobie wyobrazić, jak ja czuję będąc zazdrosny o mnie?
1315	jealous	Jarod Kintz	\N	pt-PT	Se eu tivesse um clone, é melhor ser igual a mim, e não o meu melhor. Você pode imaginar como eu me sentiria estar com ciúmes de mim?
1316	jealous	Jarod Kintz	\N	pt-PT	Se eu tivesse um clone, é melhor ser igual a mim, e não o meu melhor. Você pode imaginar como eu me sentiria estar com ciúmes de mim?
1317	jealous	Jarod Kintz	\N	ro	Dacă aș avea o clona, ​​ar fi mai bine egal mea, și nu-mi mai bine. Vă puteți imagina cum m-as simti gelos de mine?
1318	jealous	Jarod Kintz	\N	ru	Если у меня был клон, ему лучше быть равным мне, а не моим лучше. Можете ли вы себе представить, как я буду чувствовать себя ревнуя о себе?
1319	jealous	Jarod Kintz	\N	sk	Keby som mal klon, musel lepšie sa mi nevyrovná, a nie moja lepšia. Dokážete si predstaviť, ako by som sa cítil, že žiarli na seba?
1320	jealous	Jarod Kintz	\N	sv	Om jag hade en klon, skulle han vara bättre min lika, och inte min bättre. Kan ni föreställa er hur jag skulle känna att vara svartsjuk på mig själv?
1321	jealous	Jarod Kintz	\N	th	ถ้าฉันมีโคลนเขาควรที่จะได้รับเท่ากันของฉันและฉันไม่ได้ดีกว่า คุณสามารถจินตนาการว่าฉันจะรู้สึกอิจฉาของตัวเอง?
1322	jealous	Jarod Kintz	\N	tr	Ben bir klon olsaydı, o daha iyi benim daha iyi benim eşit değil, olurdu. Eğer kendimi kıskanç olmak hissederdim nasıl hayal edebiliyor musunuz?
1323	jealous	Jarod Kintz	\N	uk	Якщо у мене був клон, йому краще бути рівним мені, а не моїм кращим. Чи можете ви собі уявити, як я буду відчувати себе ревнуючи про себе?
1324	jealous	Jarod Kintz	\N	zh-Hant	如果我有一個克隆，他更是我的平等，而不是我的更好。你能想像，我怎麼會覺得嫉妒自己？
1325	jealous	Mary Schmich	\N	ar	لا تضيعوا الوقت على الغيرة. أحيانا كنت قبل، وأحيانا كنت وراء.
1326	jealous	Mary Schmich	\N	ca	No perdis el temps sentint gelosia. A vegades es guanya ia vegades es perd.
1327	jealous	Mary Schmich	\N	cs	Neztrácejte čas na žárlivost. Někdy jste dopředu, někdy jsi pozadu.
1328	jealous	Mary Schmich	\N	da	Må ikke spilde tid på jalousi. Nogle gange er du foran, nogle gange er du bagud.
1329	jealous	Mary Schmich	\N	de	Verschwenden Sie keine Zeit auf Eifersucht. Manchmal sind Sie vorne, manchmal sind Sie hinten.
1330	jealous	Mary Schmich	\N	el	Μην χάνετε χρόνο σε ζήλια. Μερικές φορές είσαι μπροστά, μερικές φορές είστε πίσω.
1331	jealous	Mary Schmich	\N	en	Don't waste time on jealousy. Sometimes you're ahead, sometimes you're behind.
1332	jealous	Mary Schmich	\N	es	No pierdas el tiempo sintiendo celos. A veces se gana ya veces se pierde.
1333	jealous	Mary Schmich	\N	fi	Älä tuhlaa aikaa mustasukkaisuutta. Joskus olet voitolla, joskus olet jäljessä.
1334	jealous	Mary Schmich	\N	fr	Ne perdez pas de temps sur la jalousie. Parfois, vous êtes en avance, parfois vous êtes derrière.
1335	jealous	Mary Schmich	\N	he	אל תבזבז זמן על קנאה. לפעמים אתם בהתחלה, לפעמים אתה מאחור.
1336	jealous	Mary Schmich	\N	hr	Nemojte gubiti vrijeme na ljubomoru. Ponekad si unaprijed, ponekad si iza.
1337	jealous	Mary Schmich	\N	hu	Ne vesztegesse az idejét féltékenység. Néha már előre, néha maga mögött.
1338	jealous	Mary Schmich	\N	it	Non perdere tempo con l'invidia. A volte sei in testa, a volte resti indietro.
1339	jealous	Mary Schmich	\N	ja	嫉妬に時間を無駄にしないでください。時には、あなたが先にしている時々、後ろにしている。
1340	jealous	Mary Schmich	\N	ko	질투에 시간을 낭비하지 마십시오. 때때로 당신은, 앞서있어 때때로 당신은 뒤에있어.
1341	jealous	Mary Schmich	\N	nb	Ikke kast bort tid på sjalusi. Noen ganger du er foran, noen ganger du er bak.
1342	jealous	Mary Schmich	\N	nl	Verspil geen tijd op jaloezie. Soms ben je vooruit, soms je achter.
1343	jealous	Mary Schmich	\N	pl	Nie trać czasu na zazdrość. Czasami jesteś do przodu, czasem jesteś za.
1344	jealous	Mary Schmich	\N	pt-PT	Não perca tempo com a inveja. Às vezes você ganha, às vezes você perde.
1345	jealous	Mary Schmich	\N	pt-PT	Não perca tempo com a inveja. Às vezes você ganha, às vezes você perde.
1346	jealous	Mary Schmich	\N	ro	Nu pierde timpul pe gelozie. Uneori ești în frunte, uneori vă aflați în spatele.
1347	jealous	Mary Schmich	\N	ru	Не тратьте время на зависть. Иногда вы впереди, иногда ты позади.
1348	jealous	Mary Schmich	\N	sk	Nestrácajte čas na žiarlivosť. Niekedy ste dopredu, niekedy si pozadu.
1349	jealous	Mary Schmich	\N	sv	Slösa inte tid på avundsjuka. Ibland är du framåt, ibland är du bakom.
1350	jealous	Mary Schmich	\N	th	อย่าเสียเวลากับความหึงหวง บางครั้งคุณไปข้างหน้าบางครั้งคุณอยู่เบื้องหลัง
1351	jealous	Mary Schmich	\N	tr	Kıskançlık üzerinde zaman kaybetmeyin. Bazen, önde konum bazen geride.
1352	jealous	Mary Schmich	\N	uk	Не витрачайте час на заздрість. Іноді ви попереду, іноді ти позаду.
1353	jealous	Mary Schmich	\N	zh-Hant	不要把時間浪費在嫉妒。有時你未來，有時你落後。
1354	jealous	Summer Altice	\N	ar	يتم أخذ الناس فوجئ بصدور ثقة، فتاة جميلة الذي يعرف ما تريد في الحياة ولن تدع أي شخص يحصل في طريقها. وأنت تعرف ما يدور حول كل شيء؟ الغيرة.
1355	jealous	Summer Altice	\N	ca	Les persones se sorprenen per una noia confiança, força que sap el que vol a la vida i no deixarà que ningú s'interposi en el seu camí. I saps què és tot això? Gelosia.
1356	jealous	Summer Altice	\N	cs	Lidé jsou zaskočeni tím jistý, hezká holka, která ví, co chce v životě a nedovolí, aby někdo se jí postaví do cesty. A víš, co je to všechno o? Žárlivost.
1357	jealous	Summer Altice	\N	da	Folk er overraskede over en selvsikker, smuk pige, der ved hvad hun vil i livet og vil ikke lade nogen komme i vejen for hende. Og du ved, hvad det hele handler om? Jalousi.
1358	jealous	Summer Altice	\N	de	Die Menschen sind überrascht von einer selbstbewussten, hübsches Mädchen, was sie im Leben will und wird nicht zulassen, dass irgendjemand in den Weg bekommen weiß gemacht. Und Sie wissen, was es überhaupt geht? Eifersucht.
1359	jealous	Summer Altice	\N	el	Οι άνθρωποι αιφνιδιάστηκαν από μια σίγουρη, όμορφη κοπέλα που ξέρει τι θέλει στη ζωή και δεν πρόκειται να αφήσει κανέναν να πάρει το δρόμο της. Και ξέρετε τι είναι όλα αυτά; Ζήλια.
1360	jealous	Summer Altice	\N	en	People are taken aback by a confident, pretty girl who knows what she wants in life and isn't going to let anyone get in her way. And you know what it's all about? Jealousy.
1361	jealous	Summer Altice	\N	es	Las personas se sorprenden por una chica confianza, bastante que sabe lo que quiere en la vida y no va a dejar que nadie se interponga en su camino. ¿Y sabes qué es todo esto? Celos.
1362	jealous	Summer Altice	\N	fi	Ihmiset ovat häkeltynyt luottavainen, kaunis tyttö, joka tietää mitä haluaa elämässä ja ei aio antaa kenenkään saada hänen tavalla. Ja tiedät mitä se on? Mustasukkaisuus.
1363	jealous	Summer Altice	\N	fr	Les gens sont pris au dépourvu par une confiance, jolie fille qui sait ce qu'elle veut dans la vie et ne va pas laisser n'importe qui entrer en son chemin. Et vous savez ce que c'est au juste? Jalousie.
1364	jealous	Summer Altice	\N	he	אנשים נדהמו מילדה בטוחה, יפה שיודעת מה היא רוצה בחיים, והוא לא מתכוון לתת לאף אחד להפריע לה. ואתם יודעים מה זה כל העניין? קנאה.
1365	jealous	Summer Altice	\N	hr	Ljudi su zabezeknut uvjeren, lijepa djevojka koja zna što želi u životu i ne ide na to da bilo tko dobiti na svoj način. I znate što je to sve o? Ljubomora.
1366	jealous	Summer Altice	\N	hu	Az emberek meghökkent egy magabiztos, csinos lány, aki tudja, mit akar az életben, és nem hagyom, hogy bárki, hogy a maga módján. És tudod, mi ez az egész? Féltékenység.
1367	jealous	Summer Altice	\N	it	Le persone sono prese alla sprovvista da un fiducioso, bella ragazza che sa quello che vuole nella vita e non ha intenzione di permettere a nessuno di avere a suo modo. E si sa che cosa si tratta? Gelosia.
1368	jealous	Summer Altice	\N	ja	人々は彼女が人生で何を望んでいるか知っていて、誰もが彼女の方法で取得できるようにするつもりはない自信を持って、かわいい女の子にびっくりされています。そして、あなたはそれがすべてについて何を知っている？嫉妬。
1369	jealous	Summer Altice	\N	ko	사람들은 그녀가 생활에서 원하고 누군가가 그녀의 방법으로 얻을 수 있도록 않을 것을 알고 자신감, 예쁜 여자가 당황하고 있습니다. 그리고 당신은 모든에 대해 무엇을 알아? 질투.
1620	guilty	Chinese proverb	\N	el	Πέφτουν κάτω επτά φορές, να σηκώνεται οκτώ.
1370	jealous	Summer Altice	\N	nb	Folk blir overrasket av en selvsikker, pen jente som vet hva hun vil i livet, og kommer ikke til å la noen komme i veien for henne. Og du vet hva det handler om? Sjalusi.
1371	jealous	Summer Altice	\N	nl	Mensen worden verrast door een zelfverzekerde, mooie meid die weet wat ze wil in het leven en is niet van plan om laat niemand in haar zin te krijgen. En weet je wat het allemaal over? Jaloezie.
1372	jealous	Summer Altice	\N	pl	Ludzie są zaskoczeni pewność, ładna dziewczyna, która wie, czego chce w życiu i nie pozwolę, żeby ktoś się na jej drodze. I wiesz co w tym wszystkim chodzi? Zazdrość.
1373	jealous	Summer Altice	\N	pt-PT	As pessoas são surpreendidos por uma garota confiante, bonita que sabe o que quer na vida e não vai deixar ninguém ficar em seu caminho. E você sabe o que é tudo isso? Ciúme.
1374	jealous	Summer Altice	\N	pt-PT	As pessoas são surpreendidos por uma garota confiante, bonita que sabe o que quer na vida e não vai deixar ninguém ficar em seu caminho. E você sabe o que é tudo isso? Ciúme.
1375	jealous	Summer Altice	\N	ro	Oamenii sunt luate prin surprindere de o fată încrezător, destul de cine știe ce vrea în viață și nu va lăsa pe nimeni îi stau în cale. Și știi ce e vorba? Gelozie.
1376	jealous	Summer Altice	\N	ru	Люди озадачены уверенно, красивая девушка, которая знает, чего хочет в жизни, и не собирается позволять никому получить на ее пути. И вы знаете, что это все о? Ревность.
1377	jealous	Summer Altice	\N	sk	Ľudia sú zaskočení tým istý, pekná holka, ktorá vie, čo chce v živote a nedovolí, aby niekto sa jej postaví do cesty. A vieš, čo je to všetko o? Žiarlivosť.
1378	jealous	Summer Altice	\N	sv	Människor är förbluffad av en självsäker, söt tjej som vet vad hon vill i livet och kommer inte att låta någon komma i hennes väg. Och du vet vad det handlar om? Svartsjuka.
1379	jealous	Summer Altice	\N	th	คนจะผงะหงายโดยมั่นใจสาวสวยใครจะรู้ว่าเธอต้องการอะไรในชีวิตและจะไม่ให้ใครได้รับในทางของเธอ และคุณรู้ว่าสิ่งที่มันทั้งหมดเกี่ยวกับ? ความหึงหวง
1380	jealous	Summer Altice	\N	tr	İnsanlar o hayatta istediği ve herkes onu bir şekilde izin için gitmiyor bilir kendine güvenen, güzel bir kız tarafından şaşırmış. Ve bu tüm hakkında ne biliyor musun? Kıskançlık.
1381	jealous	Summer Altice	\N	uk	Люди спантеличені впевнено, красива дівчина, яка знає, чого хоче в житті, і не збирається дозволяти нікому отримати на її шляху. І ви знаєте, що це все про? Ревнощі.
1382	jealous	Summer Altice	\N	zh-Hant	一個自信，漂亮的女孩，誰知道她希望在生活中，是不會讓任何人在她的方式，人們吃了一驚。你知道它是所有關於什麼？嫉妒。
1383	jealous	Saint Augustine	\N	ar	إنه يشعر بالغيرة ليس في الحب.
1384	jealous	Saint Augustine	\N	ca	El que és gelós no està enamorat.
1385	jealous	Saint Augustine	\N	cs	Ten, který je žárlivý není v lásce.
1386	jealous	Saint Augustine	\N	da	Han, der er jaloux, er ikke forelsket.
1387	jealous	Saint Augustine	\N	de	Wer eifersüchtig ist, ist nicht in der Liebe.
1388	jealous	Saint Augustine	\N	el	Αυτός που ζηλεύει δεν είναι ερωτευμένος.
1389	jealous	Saint Augustine	\N	en	He that is jealous is not in love.
1390	jealous	Saint Augustine	\N	es	El que es celoso no está enamorado.
1391	jealous	Saint Augustine	\N	fi	Se, joka on mustasukkainen ei ole rakastunut.
1392	jealous	Saint Augustine	\N	fr	Celui qui est jaloux n'est pas dans l'amour.
1393	jealous	Saint Augustine	\N	he	הוא, כי הוא מקנא לא באהבה.
1394	jealous	Saint Augustine	\N	hr	On da je ljubomoran nije u ljubavi.
1395	jealous	Saint Augustine	\N	hu	Aki féltékeny, nem szerelmes.
1396	jealous	Saint Augustine	\N	it	Lui che è geloso non è innamorato.
1397	jealous	Saint Augustine	\N	ja	嫉妬である彼は、愛ではありません。
1398	jealous	Saint Augustine	\N	ko	질투 그가 사랑하지 않습니다.
1399	jealous	Saint Augustine	\N	nb	Den som er sjalu er ikke forelsket.
1400	jealous	Saint Augustine	\N	nl	Hij die jaloers is niet verliefd.
1401	jealous	Saint Augustine	\N	pl	On, który jest zazdrosny, nie jest zakochany.
1402	jealous	Saint Augustine	\N	pt-PT	Aquele que está com ciúmes não está no amor.
1403	jealous	Saint Augustine	\N	pt-PT	Aquele que está com ciúmes não está no amor.
1404	jealous	Saint Augustine	\N	ro	El este gelos că nu este în dragoste.
1405	jealous	Saint Augustine	\N	ru	Он ревнует, что не любит.
1406	jealous	Saint Augustine	\N	sk	Ten, ktorý je žiarlivý nie je v láske.
1407	jealous	Saint Augustine	\N	sv	Han som är svartsjuk är inte kär.
1408	jealous	Saint Augustine	\N	th	เขาว่าอิจฉาไม่ได้อยู่ในความรัก
1409	jealous	Saint Augustine	\N	tr	Kıskanç O aşık değil.
1410	jealous	Saint Augustine	\N	uk	Він ревнує, що не любить.
1411	jealous	Saint Augustine	\N	zh-Hant	他是嫉妒是不愛。
1412	jealous	Rodney Dangerfield	\N	ar	الغيرة زوجتي هو الحصول على سخيفة. في اليوم الآخر قالت إنها تتطلع في التقويم الخاص بي وأراد أن يعرف من يقف ومايو.
1413	jealous	Rodney Dangerfield	\N	ca	La gelosia de la meva dona s'està posant ridícul. L'altre dia mirava al meu calendari i volia saber que era maig.
1414	jealous	Rodney Dangerfield	\N	cs	Moje žena žárlivost je to směšné. Na druhý den se podívala na mého kalendáře a chtěl vědět, kdo byl květen.
1415	jealous	Rodney Dangerfield	\N	da	Min kones jalousi bliver latterligt. Den anden dag hun kiggede på min kalender, og ønskede at vide, hvem Maj var.
1416	jealous	Rodney Dangerfield	\N	de	Meine Frau Eifersucht wird immer lächerlich. Neulich sah sie meinen Kalender und wollte wissen, wer Mai war.
1417	jealous	Rodney Dangerfield	\N	el	Ζήλια της γυναίκας μου είναι να πάρει γελοίο. Τις προάλλες κοίταξε το ημερολόγιό μου και ήθελε να μάθει ποιος Μαΐου ήταν.
1418	jealous	Rodney Dangerfield	\N	en	My wife's jealousy is getting ridiculous. The other day she looked at my calendar and wanted to know who May was.
1419	jealous	Rodney Dangerfield	\N	es	Los celos de mi esposa se está poniendo ridículo. El otro día miraba a mi calendario y quería saber que era mayo.
1420	jealous	Rodney Dangerfield	\N	fi	Vaimoni mustasukkaisuus on naurettavan. Toinen päivä hän katsoi minun kalenteri ja halusi tietää, kuka oli toukokuussa.
1421	jealous	Rodney Dangerfield	\N	fr	La jalousie de ma femme devient ridicule. L'autre jour, elle a regardé mon calendrier et voulait savoir qui était mai.
1422	jealous	Rodney Dangerfield	\N	he	הקנאה של אשתי הוא מקבל מגוחכת. יום האחר היא הסתכלה על לוח השנה שלי ורצתה לדעת מי היה במאי.
1423	jealous	Rodney Dangerfield	\N	hr	Moja supruga je ljubomora postaje smiješno. Neki dan je pogledao moj kalendar i želio znati tko je bio svibanj.
1424	jealous	Rodney Dangerfield	\N	hu	A feleségem féltékenysége már nevetséges. A minap néztem naptár, és azt akarta tudni, hogy ki májusban.
1425	jealous	Rodney Dangerfield	\N	it	La gelosia di mia moglie sta diventando ridicolo. L'altro giorno ha guardato il mio calendario e voleva sapere chi era maggio.
1426	jealous	Rodney Dangerfield	\N	ja	私の妻の嫉妬はばかげてきている。先日彼女が私のカレンダーを見て、月が誰を知りたいと思った。
1427	jealous	Rodney Dangerfield	\N	ko	내 아내의 질투 말도지고 있습니다. 다른 날 그녀가 내 캘린더를 바라 보았다 월 누군지 알고 싶어.
1428	jealous	Rodney Dangerfield	\N	nb	Min kones sjalusi blir latterlig. Den andre dagen hun så på kalenderen min og ville vite hvem mai var.
1429	jealous	Rodney Dangerfield	\N	nl	Jaloezie van mijn vrouw wordt steeds belachelijk. De andere dag keek ze naar mijn agenda en wilde weten wie mei was.
1430	jealous	Rodney Dangerfield	\N	pl	Moja żona jest zazdrość staje się śmieszne. Na drugi dzień ona spojrzała na mojego kalendarza i chciał wiedzieć, kto maja było.
1431	jealous	Rodney Dangerfield	\N	pt-PT	Ciúme da minha mulher está ficando ridículo. No outro dia ela olhou para o meu calendário e queria saber quem era maio.
1432	jealous	Rodney Dangerfield	\N	pt-PT	Ciúme da minha mulher está ficando ridículo. No outro dia ela olhou para o meu calendário e queria saber quem era maio.
1433	jealous	Rodney Dangerfield	\N	ro	Gelozia sotiei mele devine ridicol. A doua zi sa uitat la calendarul meu și a vrut să știe cine a fost mai.
1434	jealous	Rodney Dangerfield	\N	ru	Ревность моей жены становится смешно. На днях она смотрела на моем календаре, и хотел знать, кто был мая.
1435	jealous	Rodney Dangerfield	\N	sk	Moja žena žiarlivosť je to smiešne. Na druhý deň sa pozrela na môjho kalendára a chcel vedieť, kto bol máj.
1436	jealous	Rodney Dangerfield	\N	sv	Min fru avundsjuka blir löjligt. Häromdagen tittade hon på min kalender och ville veta vem maj var.
1437	jealous	Rodney Dangerfield	\N	th	ความหึงหวงภรรยาของฉันจะได้รับไร้สาระ วันอื่น ๆ ที่เธอมองไปที่ปฏิทินของฉันและอยากจะรู้ว่าใครเป็นพฤษภาคม
1438	jealous	Rodney Dangerfield	\N	tr	Eşimin kıskançlık saçma oluyor. Geçen gün o benim takvim baktı ve Mayıs kim olduğunu bilmek istedim.
1439	jealous	Rodney Dangerfield	\N	uk	Ревнощі моєї дружини стає смішно. Днями вона дивилася на моєму календарі, і хотів знати, хто був травня.
1440	jealous	Rodney Dangerfield	\N	zh-Hant	我妻子的嫉妒越來越荒謬的。一天，她看著我的日曆上，並想知道五月是誰。
1441	guilty	Meredith Sapp	\N	ar	الأخطاء هي جزء من الحياة، والجميع يجعل منهم، الجميع تأسف لهم. ولكن، بعض نتعلم منها وبعض في نهاية المطاف مما يجعلها مرة أخرى. والامر متروك لكم لتقرر ما إذا كنت سوف تستخدم أخطائك لصالحك.
1442	guilty	Meredith Sapp	\N	ca	Els errors són part de la vida, tothom els fa, tothom els lamenta. No obstant això, alguns aprenen d'ells i alguns acaben fent de nou. Depèn de vostè decidir si va a utilitzar els seus errors al seu avantatge.
1443	guilty	Meredith Sapp	\N	cs	Chyby jsou součástí života, každý z nich dělá, každý lituje, že je. Ale někteří z nich poučit a některé skončit dělat znovu. Záleží jen na vás, zda budete používat své chyby ke svému prospěchu.
1444	guilty	Meredith Sapp	\N	da	Fejltagelser er en del af livet, alle gør dem alle beklager dem. Men nogle lærer fra dem, og nogle ender med at gøre dem igen. Det er op til dig at beslutte, om du vil bruge dine fejl til din fordel.
1445	guilty	Meredith Sapp	\N	de	Fehler sind Teil des Lebens, jeder macht sie, bedauert sie jeder. Aber einige von ihnen und einem Ende lernen up macht sie wieder. Es liegt an Ihnen zu entscheiden, ob Sie Ihre Fehler zu Ihrem Vorteil nutzen kannst.
1446	guilty	Meredith Sapp	\N	el	Τα λάθη είναι μέρος της ζωής, ο καθένας τους κάνει, ο καθένας τους εκφράζει. Όμως, ορισμένοι να μάθουν από αυτά και κάποια καταλήγουν να κάνουν ξανά. Είναι στο χέρι σας να αποφασίσετε αν θα χρησιμοποιήσετε τα λάθη σας προς όφελός σας.
1447	guilty	Meredith Sapp	\N	en	Mistakes are part of life, everyone makes them, everyone regrets them. But, some learn from them and some end up making them again. It's up to you to decide if you'll use your mistakes to your advantage.
1448	guilty	Meredith Sapp	\N	es	Los errores son parte de la vida, todo el mundo los hace, todo el mundo les lamenta. Sin embargo, algunos aprenden de ellos y algunos terminan haciendo de nuevo. Depende de usted decidir si va a utilizar sus errores a su ventaja.
1449	guilty	Meredith Sapp	\N	fi	Virheet ovat osa elämää, jokainen tekee ne kaikki pahoittelee niitä. Mutta jotkut oppia niistä ja osa päätyy tekemään ne uudelleen. Se on jopa voit päättää, jos voit käyttää virheitä eduksesi.
1450	guilty	Meredith Sapp	\N	fr	Les erreurs font partie de la vie, tout le monde en fait, tout le monde les regrette. Mais, certains apprennent d'eux et certains finissent par faire à nouveau. C'est à vous de décider si vous allez utiliser vos erreurs à votre avantage.
1451	guilty	Meredith Sapp	\N	he	טעויות הן חלק מהחיים, כולם עושה אותם, כולם מתחרט עליהם. אבל, כמה ללמוד מהם וכמה בסופו של דבר עושה אותם שוב. זה תלוי בך כדי להחליט אם אתה תשתמש בטעויות שלך לטובתך.
1452	guilty	Meredith Sapp	\N	hr	Pogreške su dio života, svatko ih ima, svatko ih žali. No, neki učiti od njih i neke završiti čineći ih ponovno. To je na vama da odlučite da li ćete koristiti svoje pogreške u svoju korist.
1453	guilty	Meredith Sapp	\N	hu	Hibák az élet része, mindenki teszi, mindenki sajnálja őket. De néhány tanulni tőlük, és néhány a végén, hogy újra. Ez rajtad múlik, hogy eldöntse, akkor használja a hibákat az előnyt.
1454	guilty	Meredith Sapp	\N	it	Gli errori fanno parte della vita, ognuno di loro fa, ognuno di loro si rammarica. Ma, un po 'di imparare da loro e alcuni finiscono per fare di nuovo. Sta a voi decidere se userete i vostri errori a vostro vantaggio.
1455	guilty	Meredith Sapp	\N	ja	間違いは人生の一部であり、誰もがそれらを行い、誰もがそれを後悔。しかし、一部は再びそれらを作るアップ彼らと一部のエンドから学ぶ。それはあなたがあなたの利点にあなたの過ちを使用しますかどうかを判断するのはあなた次第です。
1456	guilty	Meredith Sapp	\N	ko	실수는 생활의 일부이며, 모두가 그들을 만드는, 모두가 그들을 후회. 하지만, 일부는 다시 제작까지 그들과 몇 가지 끝에서 배울 수 있습니다. 당신은 당신의 이점에 실수를 사용합니다 경우 결정하는 당신까지이다.
1457	guilty	Meredith Sapp	\N	nb	Feil er en del av livet, alle gjør dem, beklager alle dem. Men, noen lærer av dem og noen ender opp med å gjøre dem igjen. Det er opp til deg å bestemme om du vil bruke dine feil til din fordel.
1458	guilty	Meredith Sapp	\N	nl	Fouten maken deel uit van het leven, iedereen maakt ze, iedereen betreurt ze. Maar, sommigen van hen leren en wat uiteindelijk het maken van hen opnieuw. Het is aan jou om te beslissen als je je fouten zult gebruiken om uw voordeel.
1459	guilty	Meredith Sapp	\N	pl	Błędy są częścią życia, każdy popełnia je każdy żałuje ich. Ale niektóre uczyć się od nich, a niektóre w końcu co ich ponownie. To do ciebie, aby zdecydować, czy będziesz używać swoje błędy na swoją korzyść.
1460	guilty	Meredith Sapp	\N	pt-PT	Os erros fazem parte da vida, todo mundo faz, todo mundo lamenta-los. Mas, alguns aprender com eles e alguns acabam tornando-os novamente. Cabe a você decidir se você vai usar seus erros para a sua vantagem.
1461	guilty	Meredith Sapp	\N	pt-PT	Os erros fazem parte da vida, todo mundo faz, todo mundo lamenta-los. Mas, alguns aprender com eles e alguns acabam tornando-os novamente. Cabe a você decidir se você vai usar seus erros para a sua vantagem.
1462	guilty	Meredith Sapp	\N	ro	Greselile sunt parte a vieții, toată lumea le face, toată lumea le regretă. Dar, unii invata de la ei și unii sfârșesc prin a le face din nou. Este până la tine pentru a decide dacă vei folosi greșelile in avantajul tau.
1463	guilty	Meredith Sapp	\N	ru	Ошибки являются частью жизни, каждый делает их, каждый сожалеет них. Но, некоторые учиться у них, а некоторые в конечном итоге сделать их снова. Это до вас, чтобы решить, если вы будете использовать ваши ошибки в ваших интересах.
1464	guilty	Meredith Sapp	\N	sk	Chyby sú súčasťou života, každý z nich robí, každý ľutuje, že je. Ale niektorí z nich poučiť a niektoré skončiť robiť znova. Záleží len na vás, či budete používať svoje chyby k svojmu prospechu.
1465	guilty	Meredith Sapp	\N	sv	Misstag är en del av livet, alla gör dem, beklagar alla dem. Men, vissa lära av dem och en del hamnar att göra dem igen. Det är upp till dig att avgöra om du ska använda dina misstag till din fördel.
1466	guilty	Meredith Sapp	\N	th	ข้อผิดพลาดเป็นส่วนหนึ่งของชีวิตของทุกคนที่ทำให้พวกเขาทุกคนรู้สึกเสียใจที่พวกเขา แต่บางคนเรียนรู้จากพวกเขาและปลายบางขึ้นทำให้พวกเขาอีกครั้ง มันขึ้นอยู่กับคุณที่จะตัดสินใจว่าคุณจะใช้ความผิดพลาดของคุณเพื่อประโยชน์ของคุณ
1467	guilty	Meredith Sapp	\N	tr	Hatalar yaşamın bir parçasıdır, herkes bunları yapar, herkes onları pişman. Ancak, bazı tekrar yapmak kadar onları ve bazı son öğrenirler. Sizin yararınıza hatalarınızı kullanacağız eğer karar vermek size kalmış.
1468	guilty	Meredith Sapp	\N	uk	Помилки є частиною життя, кожен робить їх, кожен шкодує них. Але, деякі вчитися у них, а деякі в кінцевому підсумку зробити їх знову. Це до вас, щоб вирішити, якщо ви будете використовувати ваші помилки у ваших інтересах.
1469	guilty	Meredith Sapp	\N	zh-Hant	錯誤是生活的一部分，每個人都讓他們每個人都感到遺憾。但是，一些再次使他們了解他們和一些最終漲。它是由你來決定，如果你會使用你的錯誤，你的優勢。
1470	guilty	Unknown	\N	ar	بدلا من امتعض التي يجب أن تفعل ذلك، أو الشعور بالذنب حول حقيقة أن عليك أن تفعل ذلك، ببساطة اختيار للقيام بذلك.
1471	guilty	Unknown	\N	ca	En lloc d'ressentir que ha de fer, o sentir-se culpable pel fet que ha de fer, només ha d'optar per fer-ho.
1472	guilty	Unknown	\N	cs	Spíše než protiví, že musíte dělat to, nebo pocit viny z toho, že byste měli udělat, stačí si vybrat na to.
1473	guilty	Unknown	\N	da	Snarere end resenting at du skal gøre det, eller føle sig skyldig over det faktum, at du bør gøre det, skal du vælge blot at gøre det.
1474	guilty	Unknown	\N	de	Anstatt übel, dass Sie es zu tun, oder ein schlechtes Gewissen wegen der Tatsache, dass Sie es tun sollten, wählen Sie einfach, es zu tun.
1475	guilty	Unknown	\N	el	Αντί να δυσφορούν ότι θα πρέπει να το κάνετε, ή αίσθημα ενοχής για το γεγονός ότι θα πρέπει να το κάνετε, απλά να επιλέξετε να το κάνει.
1476	guilty	Unknown	\N	en	Rather than resenting that you must do it, or feeling guilty about the fact that you should do it, simply choose to do it.
1477	guilty	Unknown	\N	es	En lugar de resentir que debe hacerlo, o sentirse culpable por el hecho de que debe hacerlo, sólo tiene que optar por hacerlo.
1478	guilty	Unknown	\N	fi	Sen sijaan resenting, että sinun täytyy tehdä se, tai tunne syyllisyyttä siitä, että sinun pitäisi tehdä se yksinkertaisesti valita tehdä se.
1479	guilty	Unknown	\N	fr	Plutôt que de ressentiment que vous devez faire, ou se sentir coupable au sujet du fait que vous devez faire, il suffit de choisir de le faire.
1480	guilty	Unknown	\N	he	במקום לכעוס על שאתה חייב לעשות את זה, או מרגיש אשם על העובדה שאתה צריך לעשות את זה, פשוט בוחר לעשות את זה.
1481	guilty	Unknown	\N	hr	Umjesto zamjerivši da morate to učiniti, ili osjećaj krivnje zbog činjenice da bi trebao to učiniti, jednostavno odlučite da to učinite.
1482	guilty	Unknown	\N	hu	Ahelyett neheztelt, hogy meg kell csinálni, vagy bűntudata amiatt, hogy meg kell csinálni, egyszerűen úgy dönt, hogy csinálni.
1483	guilty	Unknown	\N	it	Invece di risentirsi che si deve fare, o sentirsi in colpa per il fatto che si dovrebbe fare, è sufficiente scegliere di farlo.
1484	guilty	Unknown	\N	ja	むしろ、あなたがそれを行う必要があることをresenting、またはあなたがそれを行うべきであるという事実について罪悪感よりも、単にそれを行うことを選択。
1485	guilty	Unknown	\N	ko	오히려 당신이 그것을해야한다는 것을 원망하거나 당신이 그것을해야한다는 사실에 대해 죄책감을 느끼는 것보다 간단하게 할 선택합니다.
1486	guilty	Unknown	\N	nb	Snarere enn å mislike at du må gjøre det, eller ha dårlig samvittighet om det faktum at du bør gjøre det, rett og slett velger å gjøre det.
1487	guilty	Unknown	\N	nl	Eerder dan resenting dat je moet doen, of zich schuldig voelen over het feit dat je het moet doen, gewoon voor kiezen om het te doen.
1488	guilty	Unknown	\N	pl	Zamiast niechęci, że musi to zrobić, lub poczucie winy, że należy to zrobić, wystarczy wybrać, aby to zrobić.
1489	guilty	Unknown	\N	pt-PT	Ao invés de se ressentir de que você deve fazê-lo, ou se sentir culpado sobre o fato de que você deve fazê-lo, basta escolher a fazê-lo.
1490	guilty	Unknown	\N	pt-PT	Ao invés de se ressentir de que você deve fazê-lo, ou se sentir culpado sobre o fato de que você deve fazê-lo, basta escolher a fazê-lo.
1491	guilty	Unknown	\N	ro	Mai degrabă decât resenting că trebuie să-l faci, sau te simti vinovat cu privire la faptul că ar trebui să o faci, alege pur și simplu să o facă.
1492	guilty	Unknown	\N	ru	Вместо того, чтобы возмущаться, что вы должны сделать это, или чувство вины за то, что вы должны сделать это, просто выбрать, чтобы сделать это.
1493	guilty	Unknown	\N	sk	Skôr než protiví, že musíte robiť to, alebo pocit viny z toho, že by ste mali urobiť, stačí si vybrať na to.
1494	guilty	Unknown	\N	sv	Snarare än motstått att du måste göra det, eller känna skuld över det faktum att du ska göra det, helt enkelt välja att göra det.
1495	guilty	Unknown	\N	th	แทนที่จะ resenting ที่คุณต้องทำมันหรือรู้สึกผิดเกี่ยวกับความจริงที่ว่าคุณควรจะทำมันเพียงแค่เลือกที่จะทำมัน
1496	guilty	Unknown	\N	tr	Aksine bunu yapmak gerektiğini resenting, ya da bunu yapması gerektiğini gerçeği suçluluk hissi daha, sadece bunu yapmak için seçin.
1497	guilty	Unknown	\N	uk	Замість того, щоб обурюватися, що ви повинні зробити це, або почуття провини за те, що ви повинні зробити це, просто вибрати, щоб зробити це.
1498	guilty	Unknown	\N	zh-Hant	而不是怨恨，你必須這樣做，還是感覺內疚的事實，你應該這樣做，只需選擇這樣做。
1499	guilty	Jane Austen	\N	ar	اسمحوا أقلام أخرى أسهب في الحديث عن الشعور بالذنب والبؤس.
1500	guilty	Jane Austen	\N	ca	Deixi altres plomes habitar en culpabilitat i la misèria.
1501	guilty	Jane Austen	\N	cs	Nechte ostatní pera bydlí o vině a neštěstí.
1502	guilty	Jane Austen	\N	da	Lad andre penne dvæle ved skyld og elendighed.
1503	guilty	Jane Austen	\N	de	Lassen Sie andere Füllhalter wohnen über Schuld und Elend.
1504	guilty	Jane Austen	\N	el	Αφήστε τους άλλους στυλό σταθώ στην ενοχή και τη δυστυχία.
1505	guilty	Jane Austen	\N	en	Let other pens dwell on guilt and misery.
1506	guilty	Jane Austen	\N	es	Deje otras plumas morar en culpabilidad y la miseria.
1507	guilty	Jane Austen	\N	fi	Anna muiden kynät vatvoa syyllisyyttä ja kurjuutta.
1508	guilty	Jane Austen	\N	fr	Laissez d'autres stylos insister sur la culpabilité et la misère.
1509	guilty	Jane Austen	\N	he	בואו עטים אחרים להתעכב על אשמה ואומללות.
1510	guilty	Jane Austen	\N	hr	Neka druga olovke boraviti na krivnje i jada.
1511	guilty	Jane Austen	\N	hu	Hadd egyéb toll laknak bűntudat és a nyomorúság.
1512	guilty	Jane Austen	\N	it	Lasciate che le altre penne soffermano sul senso di colpa e la miseria.
1513	guilty	Jane Austen	\N	ja	他のペンは罪悪感と惨めさにこだわるましょう。
1514	guilty	Jane Austen	\N	ko	다른 펜은 죄책감과 고통에 연연 할 수 있습니다.
1515	guilty	Jane Austen	\N	nb	La andre penner dvele ved skyld og elendighet.
1516	guilty	Jane Austen	\N	nl	Laat andere pennen stilstaan ​​bij schuld en ellende.
1517	guilty	Jane Austen	\N	pl	Niech inne pióra rozpamiętywać winy i nędzy.
1518	guilty	Jane Austen	\N	pt-PT	Deixe outras canetas debruçar sobre culpa e miséria.
1519	guilty	Jane Austen	\N	pt-PT	Deixe outras canetas debruçar sobre culpa e miséria.
1520	guilty	Jane Austen	\N	ro	Să alte stilouri locui pe vinovăție și mizerie.
1521	guilty	Jane Austen	\N	ru	Пусть другие ручки остановимся на вина, отчаяние.
1522	guilty	Jane Austen	\N	sk	Nechajte ostatné perá býva o vine a nešťastie.
1523	guilty	Jane Austen	\N	sv	Låt andra pennor älta skuld och misär.
1524	guilty	Jane Austen	\N	th	ให้ปากกาอื่น ๆ อาศัยอยู่บนความรู้สึกผิดและความทุกข์ยาก
1525	guilty	Jane Austen	\N	tr	Diğer kalem suçluluk ve sefalet üzerinde durmak istiyorum.
1526	guilty	Jane Austen	\N	uk	Нехай інші ручки зупинимося на вина, відчай.
1527	guilty	Jane Austen	\N	zh-Hant	讓其他鋼筆住在內疚和痛苦。
1528	guilty	Alexander McQueen	\N	ar	بالطبع أنا ارتكاب الأخطاء. أنا الإنسان. إذا لم أكن يخطئ، كنت لا يتعلمون أبدا. يمكن أن تذهب فقط إلى الأمام من قبل الوقوع في الخطأ.
1529	guilty	Alexander McQueen	\N	ca	Per descomptat que m'equivoco. Sóc humà. Si no m'equivoco, jo mai anava a aprendre. Només es pot anar cap endavant per cometre errors.
1530	guilty	Alexander McQueen	\N	cs	Samozřejmě, že dělat chyby. Jsem člověk. Kdybych neměl dělat chyby, tak bych se nikdy nepoučí. Můžete jít jen dopředu dělat chyby.
1531	guilty	Alexander McQueen	\N	da	Jeg selvfølgelig lave fejl. Jeg er et menneske. Hvis jeg ikke laver fejl, ville jeg aldrig lære. Du kan kun gå fremad ved at lave fejl.
1532	guilty	Alexander McQueen	\N	de	Natürlich habe ich Fehler machen. Ich bin menschlich. Wenn ich es nicht machen Fehler, würde ich es nie lernen. Sie können nur vorwärts gehen, indem sie Fehler.
1533	guilty	Alexander McQueen	\N	el	Φυσικά και κάνω λάθη. Είμαι άνθρωπος. Αν δεν είχα κάνει λάθη, εγώ ποτέ δεν είχα μάθει. Μπορείτε μπορεί να πάει μόνο προς τα εμπρός, κάνοντας λάθη.
1534	guilty	Alexander McQueen	\N	en	Of course I make mistakes. I'm human. If I didn't make mistakes, I'd never learn. You can only go forward by making mistakes.
1535	guilty	Alexander McQueen	\N	es	Por supuesto que me equivoco. Soy humano. Si no me equivoco, yo nunca iba a aprender. Sólo se puede ir hacia adelante por cometer errores.
1536	guilty	Alexander McQueen	\N	fi	Tietysti teen virheitä. Olen ihminen. Jos en tee virheitä, etten koskaan opi. Et voi vain mennä eteenpäin tekemällä virheitä.
1537	guilty	Alexander McQueen	\N	fr	Bien sûr, je fais des erreurs. Je suis humain. Si je ne fais pas d'erreur, je n'aurais jamais appris. Vous ne pouvez aller de l'avant en faisant des erreurs.
1538	guilty	Alexander McQueen	\N	he	כמובן שאני עושה טעויות. אני אנושי. אם אני לא עושה טעויות, לא הייתי לומד. אתה יכול ללכת רק קדימה על ידי ביצוע טעויות.
1539	guilty	Alexander McQueen	\N	hr	Naravno da griješe. Ja sam čovjek. Ako nisam griješe, ja nikada ne bih naučiti. Vi samo može ići naprijed čineći pogreške.
1540	guilty	Alexander McQueen	\N	hu	Persze hibáznak. Én ember vagyok. Ha nem hibáznak, én soha nem tanulnak. Csak akkor megy előre a hibákat.
1541	guilty	Alexander McQueen	\N	it	Naturalmente faccio degli errori. Sono un essere umano. Se non ho fatto errori, che non avevo mai imparato. Si può solo andare avanti facendo errori.
1542	guilty	Alexander McQueen	\N	ja	もちろん、私は間違いを犯す。私は人間だ。私はミスをしなかった場合、私は学ぶことがなかった。あなたが唯一のミスをすることによって前方に行くことができます。
1543	guilty	Alexander McQueen	\N	ko	물론 실수를합니다. 난 인간이야. 내가 실수를하지 않은 경우, 나는 결코 배울 것입니다. 당신은 실수로 앞으로 이동할 수 있습니다.
1544	guilty	Alexander McQueen	\N	nb	Selvfølgelig gjør jeg feil. Jeg er menneskelig. Hvis jeg ikke gjør feil, jeg lærer aldri. Du kan bare gå fremover ved å gjøre feil.
1545	guilty	Alexander McQueen	\N	nl	Natuurlijk heb ik fouten maak. Ik ben menselijk. Als ik geen fouten maakte, zou ik nooit leren. U kunt alleen vooruit gaan door het maken van fouten.
1546	guilty	Alexander McQueen	\N	pl	Oczywiście, że popełniamy błędy. Jestem człowiekiem. Gdybym nie popełniać błędów, nigdy nie dowiedzieć. Można tylko iść do przodu przez popełnianie błędów.
1547	guilty	Alexander McQueen	\N	pt-PT	Claro que cometemos erros. Eu sou humano. Se eu não cometer erros, eu nunca aprender. Você só pode ir para a frente, fazendo erros.
1548	guilty	Alexander McQueen	\N	pt-PT	Claro que cometemos erros. Eu sou humano. Se eu não cometer erros, eu nunca aprender. Você só pode ir para a frente, fazendo erros.
1549	guilty	Alexander McQueen	\N	ro	Desigur, eu fac greșeli. Sunt om. Dacă nu am face greșeli, nu aș învăța. Puteți merge doar înainte de a face greșeli.
1550	guilty	Alexander McQueen	\N	ru	Конечно, я делаю ошибки. Я человек. Если бы я не ошибаться, я бы никогда не узнать. Вы можете только идти вперед, делая ошибки.
1551	guilty	Alexander McQueen	\N	sk	Samozrejme, že robiť chyby. Som človek. Keby som nemal robiť chyby, tak by som sa nikdy nepoučia. Môžete ísť len dopredu robiť chyby.
1552	guilty	Alexander McQueen	\N	sv	Visst gör jag misstag. Jag är människa. Om jag inte göra misstag, jag lär aldrig. Du kan bara gå framåt genom att göra misstag.
1553	guilty	Alexander McQueen	\N	th	แน่นอนฉันทำผิดพลาด ฉันมนุษย์ ถ้าฉันไม่ได้ทำผิดพลาดฉันไม่เคยเรียนรู้ คุณสามารถก้าวไปข้างหน้าโดยการทำผิดพลาด
1554	guilty	Alexander McQueen	\N	tr	Tabii ki hata yaparlar. Ben insanım. Ben hata yapmadıysanız, Öğreniyorum asla. Sadece hata yaparak ileri gidebilirsiniz.
1555	guilty	Alexander McQueen	\N	uk	Звичайно, я роблю помилки. Я людина. Якби я не помилятися, я б ніколи не дізнатися. Ви можете тільки йти вперед, роблячи помилки.
1556	guilty	Alexander McQueen	\N	zh-Hant	當然，我犯錯誤。我是人類。如果我沒有犯錯，我從來沒有學習。你只能去犯錯誤。
1557	guilty	Leo Burnett	\N	ar	لأقسم قبالة الوقوع في الخطأ أمر سهل جدا. كل ما عليك القيام به هو أقسم قبالة جود الأفكار.
1558	guilty	Leo Burnett	\N	ca	Per jurar de cometre errors és molt fàcil. Tot el que has de fer és jurar de tenir idees.
1559	guilty	Leo Burnett	\N	cs	Přísahat off dělat chyby je velmi snadné. Jediné, co musíte udělat, je přísahat off s nápady.
1560	guilty	Leo Burnett	\N	da	At sværge off lave fejl er meget let. Alt du skal gøre er at sværge ud at have idéer.
1561	guilty	Leo Burnett	\N	de	Um abschwören, Fehler zu machen ist sehr einfach. Alles, was Sie tun müssen ist, schwören off mit Ideen.
1562	guilty	Leo Burnett	\N	el	Για να ορκίζονται από τα λάθη είναι πολύ εύκολη. Το μόνο που έχετε να κάνετε είναι να ορκιστεί off έχει ιδέες.
1563	guilty	Leo Burnett	\N	en	To swear off making mistakes is very easy. All you have to do is swear off having ideas.
1564	guilty	Leo Burnett	\N	es	Para jurar de cometer errores es muy fácil. Todo lo que tienes que hacer es jurar de tener ideas.
1565	guilty	Leo Burnett	\N	fi	Vannomaan pois virheitä on erittäin helppoa. Kaikki mitä sinun tarvitsee tehdä on vannovat pois ottaa ideoita.
1621	guilty	Chinese proverb	\N	en	Fall down seven times, stand up eight.
1566	guilty	Leo Burnett	\N	fr	Pour jurer hors de faire des erreurs est très facile. Tout ce que vous avez à faire est de jure hors avoir des idées.
1567	guilty	Leo Burnett	\N	he	לקלל את עשיית טעויות הוא קל מאוד. כל מה שאתה צריך לעשות זה לקלל את בעל רעיונות.
1568	guilty	Leo Burnett	\N	hr	Za odreći griješiti je vrlo jednostavno. Sve što morate učiniti je da odreći ideje.
1569	guilty	Leo Burnett	\N	hu	Hogy esküszöm, hogy hibát követnek el nagyon egyszerű. Mindössze annyit kell tenned, hogy esküszöm ki, amelyek ötleteket.
1570	guilty	Leo Burnett	\N	it	Per giurare fuori commettere errori è molto facile. Tutto quello che dovete fare è giurano fuori avere idee.
1571	guilty	Leo Burnett	\N	ja	ミスを誓うためには非常に簡単です。あなたがしなければならないすべてはアイデアを持ってオフ誓うです。
1572	guilty	Leo Burnett	\N	ko	실수를 해제 맹세하는 것은 매우 간단합니다. 당신이해야 할 모든 아이디어를 가지고 떨어져 맹세합니다.
1573	guilty	Leo Burnett	\N	nb	Å sverge av å gjøre feil er veldig enkelt. Alt du trenger å gjøre er å sverge av å ha ideer.
1574	guilty	Leo Burnett	\N	nl	Af te zweren om fouten te maken is zeer eenvoudig. Het enige wat je hoeft te doen is zweren met ideeën.
1575	guilty	Leo Burnett	\N	pl	Przysięgać off błędów jest bardzo proste. Wszystko co musisz zrobić, to przysięgam off o pomysły.
1576	guilty	Leo Burnett	\N	pt-PT	Para jurar fora errar é muito fácil. Tudo que você tem a fazer é jurar fora ter idéias.
1577	guilty	Leo Burnett	\N	pt-PT	Para jurar fora errar é muito fácil. Tudo que você tem a fazer é jurar fora ter idéias.
1578	guilty	Leo Burnett	\N	ro	Pentru a jura off face greseli este foarte ușor. Tot ce trebuie să faceți este să jure pe are idei.
1579	guilty	Leo Burnett	\N	ru	Давать зарок делать ошибки очень легко. Все, что вам нужно сделать, это дать зарок имеющих идеи.
1580	guilty	Leo Burnett	\N	sk	Prisahať off robiť chyby je veľmi jednoduché. Jediné, čo musíte urobiť, je prisahať off s nápadmi.
1581	guilty	Leo Burnett	\N	sv	Att svära av att göra misstag är mycket enkelt. Allt du behöver göra är att svära bort med idéer.
1582	guilty	Leo Burnett	\N	th	สาบานว่าจะปิดการทำผิดพลาดเป็นเรื่องง่ายมาก สิ่งที่คุณต้องทำคือการสาบานออกที่มีความคิด
1583	guilty	Leo Burnett	\N	tr	Hata yapmaktan tövbe etmek çok kolaydır. Yapmanız gereken tek şey fikir sahibi olmak yemin edilir.
1584	guilty	Leo Burnett	\N	uk	Давати зарік робити помилки дуже легко. Все, що вам потрібно зробити, це дати зарік мають ідеї.
1585	guilty	Leo Burnett	\N	zh-Hant	發誓犯錯是很容易的。所有你必須做的就是發誓有想法。
1586	guilty	Sophia Loren	\N	ar	الأخطاء هي جزء من واحد يدفع مستحقات لحياة كاملة.
1587	guilty	Sophia Loren	\N	ca	Els errors són part dels sous 1 quotes per viure.
1588	guilty	Sophia Loren	\N	cs	Chyby jsou součástí jednoho dávek zaplatí za celý život.
1589	guilty	Sophia Loren	\N	da	Fejltagelser er en del af de afgifter man betaler for et fuldt liv.
1590	guilty	Sophia Loren	\N	de	Fehler sind Teil der Gebühren zahlt man für ein erfülltes Leben.
1591	guilty	Sophia Loren	\N	el	Τα λάθη είναι μέρος των τελών που πληρώνει κανείς για μια πλήρη ζωή.
1592	guilty	Sophia Loren	\N	en	Mistakes are part of the dues one pays for a full life.
1593	guilty	Sophia Loren	\N	es	Los errores son parte de los sueldos uno cuotas para una vida plena.
1594	guilty	Sophia Loren	\N	fi	Virheet ovat osa jäsenmaksuista joutuu maksamaan täyttä elämää.
1595	guilty	Sophia Loren	\N	fr	Les erreurs font partie de l'un s'acquitte de sa cotisation pour une vie pleine.
1596	guilty	Sophia Loren	\N	he	טעויות הן חלק מאת משלם דמי חבר אחד לחיים מלא.
1597	guilty	Sophia Loren	\N	hr	Pogreške su dio članarine jedna plaća za puni života.
1598	guilty	Sophia Loren	\N	hu	Hibák része a díjak az egyik fizet a teljes életet.
1599	guilty	Sophia Loren	\N	it	Gli errori fanno parte del Pays uno canoni per una vita piena.
1600	guilty	Sophia Loren	\N	ja	ミスは完全生命の会費1を支払いますの一部です。
1601	guilty	Sophia Loren	\N	ko	실수는 전체 삶에 대한 회비 하나를 위해 간호사의 일부입니다.
1602	guilty	Sophia Loren	\N	nb	Feil er en del av kontingent en betaler for et fullverdig liv.
1603	guilty	Sophia Loren	\N	nl	Fouten maken deel uit van de contributie betaalt men voor een vol leven.
1604	guilty	Sophia Loren	\N	pl	Błędy są częścią należności odpraw jeden dla pełnego życia.
1605	guilty	Sophia Loren	\N	pt-PT	Os erros são parte do Pays uma dívidas para uma vida plena.
1606	guilty	Sophia Loren	\N	pt-PT	Os erros são parte do Pays uma dívidas para uma vida plena.
1607	guilty	Sophia Loren	\N	ro	Greșelile sunt o parte din Pays unul taxele pentru o viață plină.
1608	guilty	Sophia Loren	\N	ru	Ошибки являются частью сборов платит одну для полноценной жизни.
1609	guilty	Sophia Loren	\N	sk	Chyby sú súčasťou jedného dávok zaplatí za celý život.
1610	guilty	Sophia Loren	\N	sv	Misstag är en del av de avgifter man betalar för ett fullvärdigt liv.
1611	guilty	Sophia Loren	\N	th	ข้อผิดพลาดเป็นส่วนหนึ่งของหนึ่งจ่ายค่าธรรมเนียมสำหรับชีวิตเต็มรูปแบบ
1612	guilty	Sophia Loren	\N	tr	Hatalar tam bir yaşam için aidat öder bir parçasıdır.
1613	guilty	Sophia Loren	\N	uk	Помилки є частиною зборів платить одну для повноцінного життя.
1614	guilty	Sophia Loren	\N	zh-Hant	誤區會費支付一個完整的生命的一部分。
1615	guilty	Chinese proverb	\N	ar	تسقط سبع مرات، والوقوف ثمانية.
1616	guilty	Chinese proverb	\N	ca	Baixen baix set vegades, aixeca't 08:00.
1617	guilty	Chinese proverb	\N	cs	Padají sedmkrát, postavit osm.
1618	guilty	Chinese proverb	\N	da	Falde ned syv gange, stå op otte.
1619	guilty	Chinese proverb	\N	de	Unten fallen siebenmal, aufstehen acht.
1623	guilty	Chinese proverb	\N	fi	Kaatua seitsemän kertaa, stand up kahdeksan.
1624	guilty	Chinese proverb	\N	fr	Tomber sept fois, tiennent huit.
1625	guilty	Chinese proverb	\N	he	לנפול שבע פעמים, לקום שמונה.
1626	guilty	Chinese proverb	\N	hr	Padaj sedam puta, ustani osam.
1627	guilty	Chinese proverb	\N	hu	Leesik hétszer, állj fel nyolc.
1628	guilty	Chinese proverb	\N	it	Cadere sette volte, alzati otto.
1629	guilty	Chinese proverb	\N	ja	7回倒れ、8を立ち上がる。
1630	guilty	Chinese proverb	\N	ko	일곱 번 넘어, 팔을 서있다.
1631	guilty	Chinese proverb	\N	nb	Falle ned sju ganger, stå opp åtte.
1632	guilty	Chinese proverb	\N	nl	Val door zeven keer, staat acht.
1633	guilty	Chinese proverb	\N	pl	Upaść siedem razy, stanąć osiem.
1634	guilty	Chinese proverb	\N	pt-PT	Cair sete vezes, levante-se oito.
1635	guilty	Chinese proverb	\N	pt-PT	Cair sete vezes, levante-se oito.
1636	guilty	Chinese proverb	\N	ro	Se încadrează în jos de șapte ori, ridica opt.
1637	guilty	Chinese proverb	\N	ru	Падают семь раз, встать восемь.
1638	guilty	Chinese proverb	\N	sk	Padajú sedemkrát, postaviť osem.
1639	guilty	Chinese proverb	\N	sv	Fall ner sju gånger, stå upp åtta.
1640	guilty	Chinese proverb	\N	th	ล้มลงเจ็ดครั้งยืนขึ้นแปด
1641	guilty	Chinese proverb	\N	tr	Yedi kez düşmek, sekiz ayağa.
1642	guilty	Chinese proverb	\N	uk	Падають сім разів, встати вісім.
1643	guilty	Chinese proverb	\N	zh-Hant	七次倒下，站起來8。
1644	dull	Mason Cooley	\N	ar	قلق حول كونه زميل مملة؟ كنت قد تتطور موهبتك لكونها مزعجة.
1645	dull	Mason Cooley	\N	ca	Preocupat sobre ser un company avorrit? Vostè pot desenvolupar el seu talent per ser irritant.
1646	dull	Mason Cooley	\N	cs	Obáváte se, že je nudný chlapík? Ty by mohly rozvíjet svůj talent za to, že dráždí.
1647	dull	Mason Cooley	\N	da	Bekymret for at blive en kedelig fyr? Du kan udvikle dit talent for at være irriterende.
1648	dull	Mason Cooley	\N	de	Besorgt über ein stumpf Kerl? Sie könnten Ihr Talent für Sein reizend zu entwickeln.
1649	dull	Mason Cooley	\N	el	Ανησυχείτε για την ύπαρξη θαμπό συναδέλφους; Μπορείτε να αναπτύξετε το ταλέντο σας για να είναι ερεθιστικό.
1650	dull	Mason Cooley	\N	en	Worried about being a dull fellow? You might develop your talent for being irritating.
1651	dull	Mason Cooley	\N	es	Preocupado acerca de ser un compañero aburrido? Usted puede desarrollar su talento por ser irritante.
1652	dull	Mason Cooley	\N	fi	Huolissaan on tylsä ​​kaveri? Saatat kehittää lahjakkuutta on ärsyttävää.
1653	dull	Mason Cooley	\N	fr	Inquiet d'être un homme bien terne? Vous pouvez développer votre talent pour être irritant.
1654	dull	Mason Cooley	\N	he	דואג להיות בחור משעמם? אתה יכול לפתח את הכשרון שלך בשביל להיות מעצבן.
1655	dull	Mason Cooley	\N	hr	Zabrinuti biti glup momak? Možda razvijati svoj talent za biti iritantan.
1656	dull	Mason Cooley	\N	hu	Aggódik, hogy egy unalmas fickó? Lehet fejleszteni a tehetséget, hogy irritáló.
1657	dull	Mason Cooley	\N	it	Preoccupato di essere un compagno noioso? Si potrebbe sviluppare il tuo talento per essere irritante.
1658	dull	Mason Cooley	\N	ja	退屈な仲間であることが心配？あなたは、刺激性のあることのためにあなたの才能を開発することがあります。
1659	dull	Mason Cooley	\N	ko	지루한 동료 것에 대해 걱정? 당신은 자극적 인에 대한 당신의 재능을 개발할 수 있습니다.
1660	dull	Mason Cooley	\N	nb	Bekymret for å være en kjedelig fyr? Du kan utvikle ditt talent for å være irriterende.
1661	dull	Mason Cooley	\N	nl	Bezorgd over het feit dat een saaie kerel? Je zou je talent te ontwikkelen voor zijn irritant.
1662	dull	Mason Cooley	\N	pl	Martwisz się, że jest nudny facet? Możecie rozwijać swój talent do bycia irytujące.
1663	dull	Mason Cooley	\N	pt-PT	Preocupado em ser um sujeito maçante? Você pode desenvolver o seu talento para ser irritante.
1664	dull	Mason Cooley	\N	pt-PT	Preocupado em ser um sujeito maçante? Você pode desenvolver o seu talento para ser irritante.
1665	dull	Mason Cooley	\N	ro	Îngrijorat de a fi un om plictisitor? S-ar putea dezvolta talentul pentru a fi iritant.
1666	dull	Mason Cooley	\N	ru	Беспокоится о том, тупой парень? Вы могли бы развивать свой талант за то, что раздражает.
1667	dull	Mason Cooley	\N	sk	Obávate sa, že je nudný chlapík? Tie by mohli rozvíjať svoj talent za to, že dráždi.
1668	dull	Mason Cooley	\N	sv	Orolig att vara en tråkig karl? Du kan utveckla din talang för att vara irriterande.
1669	dull	Mason Cooley	\N	th	กังวลเกี่ยวกับการเป็นเพื่อนที่น่าเบื่อ? คุณอาจจะพัฒนาความสามารถของคุณสำหรับการระคายเคือง
1670	dull	Mason Cooley	\N	tr	Sıkıcı bir adam olmak endişeleniyorsunuz? Rahatsız edici olmak için yetenek gelişebilir.
1671	dull	Mason Cooley	\N	uk	Турбується про те, тупий хлопець? Ви могли б розвивати свій талант за те, що дратує.
1672	dull	Mason Cooley	\N	zh-Hant	擔心是一個沉悶的傢伙嗎？你可能會開發你的天賦的刺激性。
1673	dull	Steve Jobs	\N	ar	وقتك محدود، حتى لا تضيعوا وأنها تعيش حياة شخص آخر.
1674	dull	Steve Jobs	\N	ca	El seu temps és limitat, així que no ho desaprofitin vivint la vida d'una altra persona.
1675	dull	Steve Jobs	\N	cs	Váš čas je omezený, takže se nemusíte plýtvat žijí život někoho jiného.
1676	dull	Steve Jobs	\N	da	Din tid er begrænset, så du skal ikke spilde den lever en andens liv.
1677	dull	Steve Jobs	\N	de	Ihre Zeit ist begrenzt, so vergeuden Sie nicht das Leben eines anderen Lebens.
1678	dull	Steve Jobs	\N	el	Ο χρόνος σας είναι περιορισμένος, έτσι δεν απόβλητα που ζουν τη ζωή κάποιου άλλου.
1679	dull	Steve Jobs	\N	en	Your time is limited, so don't waste it living someone else's life.
1680	dull	Steve Jobs	\N	es	Su tiempo es limitado, así que no lo desperdicien viviendo la vida de otra persona.
1681	dull	Steve Jobs	\N	fi	Sinun aikasi on rajallinen, joten älä hukkaa sitä elää jonkun toisen elämää.
1682	dull	Steve Jobs	\N	fr	Votre temps est limité, alors ne perdez pas la vivre la vie de quelqu'un d'autre.
1683	dull	Steve Jobs	\N	he	הזמן שלך מוגבל, אז אל תבזבז אותו חי החיים של מישהו אחר.
1684	dull	Steve Jobs	\N	hr	Vaše vrijeme je ograničeno, tako da ne otpada ga živi netko drugi život.
1685	dull	Steve Jobs	\N	hu	Az idő korlátozott, ezért ne pazaroljuk el él valaki másnak az életét.
1686	dull	Steve Jobs	\N	it	Il vostro tempo è limitato, per cui non lo sprecate vivendo la vita di qualcun altro.
1687	dull	Steve Jobs	\N	ja	あなたの時間は限られているので、他の誰かの人生を生きて無駄にしないでください。
1688	dull	Steve Jobs	\N	ko	당신의 시간은 한정되어 있으므로 다른 사람의 생활을 낭비하지 마십시오.
1689	dull	Steve Jobs	\N	nb	Din tid er begrenset, så ikke kast bort det å leve noen andres liv.
1690	dull	Steve Jobs	\N	nl	Uw tijd is beperkt, dus verspil het niet iemand anders zijn leven wonen.
1691	dull	Steve Jobs	\N	pl	Twój czas jest ograniczony, więc nie marnuj go życia cudzego życia.
1692	dull	Steve Jobs	\N	pt-PT	Seu tempo é limitado, então não o gaste vivendo a vida de outra pessoa.
1693	dull	Steve Jobs	\N	pt-PT	Seu tempo é limitado, então não o gaste vivendo a vida de outra pessoa.
1694	dull	Steve Jobs	\N	ro	Timpul tau este limitat, asa ca nu-l deșeuri trăiesc viața altcuiva.
1695	dull	Steve Jobs	\N	ru	Ваше время ограничено, поэтому не тратьте его на жизнь чей-то чужой жизнью.
1696	dull	Steve Jobs	\N	sk	Váš čas je obmedzený, takže sa nemusíte plytvať žijú život niekoho iného.
1697	dull	Steve Jobs	\N	sv	Din tid är begränsad, så slösa inte bort den som lever någon annans liv.
1698	dull	Steve Jobs	\N	th	เวลาของคุณมี จำกัด จึงไม่เสียมันใช้ชีวิตของคนอื่น
1699	dull	Steve Jobs	\N	tr	Zaman sınırlı, bu nedenle başkasının yaşam harcamayın.
1700	dull	Steve Jobs	\N	uk	Ваш час обмежений, тому не витрачайте його на життя чийсь чужим життям.
1701	dull	Steve Jobs	\N	zh-Hant	你的時間是有限的，所以不要浪費時間活在別人的生活裡。
1702	dull	Billy Graham	\N	ar	فقط أولئك الذين يريدون كل ما فعلت لبالملل منها.
1703	dull	Billy Graham	\N	ca	Només aquells que ho volen tot fet per ells s'avorreixen.
1704	dull	Billy Graham	\N	cs	Pouze ti, kteří chtějí všechno pro ně udělal se nudí.
1705	dull	Billy Graham	\N	da	Kun dem, der vil have alt gjort for dem keder.
1706	dull	Billy Graham	\N	de	Nur diejenigen, die alles getan für sie langweilen wollen.
1707	dull	Billy Graham	\N	el	Μόνο εκείνοι που θέλουν όλα να γίνονται γι 'αυτούς που βαριούνται.
1708	dull	Billy Graham	\N	en	Only those who want everything done for them are bored.
1709	dull	Billy Graham	\N	es	Sólo aquellos que lo quieren todo hecho por ellos se aburren.
1710	dull	Billy Graham	\N	fi	Vain ne, jotka haluavat kaiken tehnyt heille on tylsää.
1711	dull	Billy Graham	\N	fr	Seuls ceux qui veulent tout faire pour eux s'ennuient.
1712	dull	Billy Graham	\N	he	רק מי שרוצה כל מה שנעשה עבורם משועממים.
1713	dull	Billy Graham	\N	hr	Samo oni koji žele sve što je učinio za njih su dosadno.
1714	dull	Billy Graham	\N	hu	Csak azok, akik mindent tett értük unatkozik.
1715	dull	Billy Graham	\N	it	Solo quelli che vogliono tutto fatto per loro sono annoiati.
1716	dull	Billy Graham	\N	ja	だけ彼らのために行ってすべてをしたい人は退屈している。
1717	dull	Billy Graham	\N	ko	단지 그들을 지루 위해 모든 짓을 할 사람.
1718	dull	Billy Graham	\N	nb	Bare de som vil ha alt gjort for dem er lei.
1719	dull	Billy Graham	\N	nl	Alleen degenen die willen dat alles voor hen gedaan zich vervelen.
1720	dull	Billy Graham	\N	pl	Tylko ci, którzy chcą wszystko zrobić dla nich są znudzeni.
1721	dull	Billy Graham	\N	pt-PT	Somente aqueles que querem tudo feito por eles estão entediados.
1722	dull	Billy Graham	\N	pt-PT	Somente aqueles que querem tudo feito por eles estão entediados.
1723	dull	Billy Graham	\N	ro	Numai cei care doresc tot ce sa făcut pentru ei sunt plictisit.
1724	dull	Billy Graham	\N	ru	Только те, кто хотят, чтобы все сделали для них скучно.
1725	dull	Billy Graham	\N	sk	Iba tí, ktorí chcú všetko pre nich urobil sa nudí.
1726	dull	Billy Graham	\N	sv	Bara de som vill ha allt gjort för dem är uttråkad.
1727	dull	Billy Graham	\N	th	เฉพาะผู้ที่ต้องการทำทุกอย่างสำหรับพวกเขากำลังเบื่อ
1728	dull	Billy Graham	\N	tr	Sadece onlar sıkıldı için her şeyi yaptım isteyenler.
1729	dull	Billy Graham	\N	uk	Тільки ті, хто хочуть, щоб все зробили для них нудно.
1730	dull	Billy Graham	\N	zh-Hant	只有那些誰想要為他們所做的一切感到厭煩。
1731	dull	Louis CK	\N	ar	&quot;أنا أشعر بالملل&quot; هو شيء عديم الفائدة أن أقول. أعني، كنت تعيش في، العالم، كبيرها واسعة العظيمة التي كنت قد رأيت أحدا في المئة من. حتى داخل عقلك لا نهاية لها، بل يذهب إلى الأبد، داخليا، هل تفهم؟ حقيقة أنك ما زلت حيا هو مدهش، لذلك كنت لا تحصل على القول &quot;أنا أشعر بالملل&quot;.
1732	dull	Louis CK	\N	ca	&quot;Estic avorrit&quot; és una cosa inútil dir. Vull dir, vostè viu en una gran, gran món gran que has vist cap per cent. Fins i tot l'interior de la seva pròpia ment és infinita, sinó que és per sempre, per dins, m'entens? El fet que ets viu és increïble, així que no arriben a dir &quot;estic avorrit&quot;.
1778	scared	George Burns	\N	pl	Szczerze mówiąc myślę, że lepiej jest być awaria na coś kochasz, niż być sukces w coś, czego nienawidzę.
1779	scared	George Burns	\N	pt-PT	Sinceramente, acho que é melhor ser um fracasso em algo que você gosta de ser um sucesso em algo que você odeia.
1733	dull	Louis CK	\N	cs	&quot;Já se nudím&quot; je k ničemu, co na to říct. Myslím, že žijete ve velkém, velký, rozsáhlý svět, když jste viděli none procent. Dokonce i uvnitř své vlastní mysli je nekonečný, to jde do nekonečna, v duchu, chápeš? Skutečnost, že jste naživu, je úžasné, takže se nemusíte dostat říkat &quot;já se nudím.&quot;
1734	dull	Louis CK	\N	da	&quot;Jeg keder 'er en ubrugelig ting at sige. Jeg mener, du bor i en stor, stor, store verden, at du har set nogen procent af. Selv inde i dit eget sind, er endeløs, og det går på evigt, indadtil, forstår du? Det faktum, at du er i live, er forbløffende, så du ikke kommer til at sige &quot;Jeg keder mig.&quot;
1735	dull	Louis CK	\N	de	&quot;Mir ist langweilig&quot; ist eine nutzlose Sache zu sagen. Ich meine, Sie leben in einem großen, großen, weiten Welt, dass du keine Prozent gesehen. Auch das Innere des eigenen Geistes ist endlos, es geht immer nach innen, verstehst du? Die Tatsache, dass du lebst, ist erstaunlich, so bekommt man nicht zu sagen: &quot;Mir ist langweilig.&quot;
1736	dull	Louis CK	\N	el	«Βαριέμαι» είναι ένα άχρηστο πράγμα να πω. Θέλω να πω, ζείτε σε μια μεγάλη, μεγάλη, τεράστιο κόσμο που έχετε δει τοις εκατό κανένας. Ακόμα και το εσωτερικό του μυαλού σας είναι ατελείωτες? Συνεχίζεται για πάντα, προς τα μέσα, καταλαβαίνεις; Το γεγονός ότι είσαι ζωντανός είναι καταπληκτικό, έτσι ώστε να μην έχετε να πείτε «βαριέμαι».
1737	dull	Louis CK	\N	en	“I’m bored’ is a useless thing to say. I mean, you live in a great, big, vast world that you’ve seen none percent of. Even the inside of your own mind is endless; it goes on forever, inwardly, do you understand? The fact that you’re alive is amazing, so you don’t get to say ‘I’m bored.” 
1738	dull	Louis CK	\N	es	&quot;Estoy aburrido&quot; es una cosa inútil decir. Quiero decir, usted vive en una gran, gran mundo grande que has visto ninguna por ciento de. Incluso el interior de su propia mente es infinita, sino que es para siempre, por dentro, ¿me entiendes? El hecho de que estás vivo es increíble, así que no llegan a decir &quot;estoy aburrido&quot;.
1739	dull	Louis CK	\N	fi	&quot;Olen kyllästynyt&quot; on turha asia sanoa. Tarkoitan, asut suuri, iso, laaja maailma, että olet nähnyt yhtään prosenttia. Jopa sisällä oman mielesi on loputon, se jatkuu ikuisesti, sisäänpäin, ymmärrätkö? Se, että olet elossa on hämmästyttävä, niin et saa sanoa &quot;olen kyllästynyt.&quot;
1740	dull	Louis CK	\N	fr	«Je m'ennuie» est une chose inutile de dire. Je veux dire, vous vivez dans une grande grande, vaste monde, que vous avez vu rien pour cent des. Même à l'intérieur de votre propre esprit est sans fin, il va à l'infini, intérieurement, vous comprenez? Le fait que vous êtes vivant, c'est étonnant, si vous ne recevez pas de dire «je m'ennuie».
1741	dull	Louis CK	\N	he	&quot;משעמם לי&quot; היא אמירה חסרה טעם. אני מתכוון, אתה חי בעולם גדול, גדול, גדול, כי אתה כבר ראית אחוזים אף אחד. אפילו את החלק הפנימי של המוח שלך הוא אינסופי, זה נמשך לנצח, בתוך תוכו, אתה מבין? העובדה שאתה חי היא מדהימה, כך שלא יוצא לי להגיד &quot;משעמם לי&quot;.
1742	dull	Louis CK	\N	hr	&quot;Ja sam dosadno&quot; je beskorisna stvar za reći. Mislim, ako živite u velikom, velikom, velikom svijetu kada ste vidjeli nijedan posto. Čak i unutar vašeg vlastitog uma je beskrajan, to ide na zauvijek, iznutra, razumijete li? Činjenica da si živ je nevjerojatna, tako da ne bi rekao &quot;Ja sam dosadno.&quot;
1743	dull	Louis CK	\N	hu	&quot;Én vagyok unatkozni&quot; egy haszontalan dolog, hogy mondjuk. Úgy értem, él egy nagy, nagy, nagy világ, hogy láttad sem százalékát. Még a belsejét a saját elme végtelen, hanem örökké tart, befelé, érted? Az a tény, hogy élsz lenyűgöző, így nem értem, hogy azt mondják &quot;unatkozom.&quot;
1744	dull	Louis CK	\N	it	&quot;Mi annoio 'è una cosa inutile da dire. Voglio dire, si vive in una grande grande, vasto mondo, che si è visto nessuno per cento del. Anche l'interno della vostra stessa mente è infinita, ma va avanti per sempre, dentro di sé, lo capisci? Il fatto che tu sia vivo è incredibile, in modo da non arrivare a dire 'mi annoio. &quot;
1745	dull	Louis CK	\N	ja	&quot;私は '退屈だと言っても役に立たないものです。私が意味する、あなたはいずれパーセントを見てきたという大きな、大きな、広大な世界に住んでいます。でも、自分の心の内側には無限であり、それは永遠に行く、内側に、あなたは理解していますか？あなたが生きているという事実は驚くべきことですので、あなたは私が退屈だ 'と言って得ることはありません。 &quot;
1746	dull	Louis CK	\N	ko	&quot;나는 '지루하다고 말하고 쓸모없는 것입니다. 내 말은, 당신은 당신의 아무도 퍼센트를 본 적이 큰, 큰, 광대 한 세계에 살고 있습니다. 자신의 마음도 안쪽은 무한이며 그것은 영원히 간다, 내적, 당신은 이해합니까? 당신이 살아 있다는 사실이 놀랍습니다, 그래서 당신은 내가 지겨워 '말을하지 않는다. &quot;
1747	dull	Louis CK	\N	nb	&quot;Jeg er lei&quot; er en ubrukelig ting å si. Jeg mener, du bor i en stor, stor, stor verden som du har sett none prosent av. Selv inne i ditt eget hode er uendelig, det går på evig, innvendig, forstår du? Det faktum at du er i live er fantastisk, så du ikke får til å si &quot;jeg er lei&quot;.
1748	dull	Louis CK	\N	nl	&quot;Ik verveel me 'is een nutteloos ding te zeggen. Ik bedoel, je woont in een grote, grote, uitgestrekte wereld die je niemand procent van hebt gezien. Zelfs de binnenkant van je eigen geest is eindeloos, het gaat op voor altijd, innerlijk, begrijp je? Het feit dat je leeft is geweldig, dus je hoeft niet te zeggen: 'Ik ben verveeld. &quot;
1749	dull	Louis CK	\N	pl	&quot;Jestem znudzony&quot; jest bezużyteczna rzecz do powiedzenia. To znaczy, że żyjesz w wielkim, wielkim, świat szeroki, że widziałeś procent żaden z. Nawet wewnątrz własnego umysłu jest nieskończona, to już na zawsze, do wewnątrz, rozumiesz? Fakt, że żyjesz jest niesamowity, więc nie dostać się powiedzieć &quot;Jestem znudzony&quot;.
1750	dull	Louis CK	\N	pt-PT	&quot;Estou entediada&quot; é uma coisa inútil dizer. Quero dizer, você vive em um grande vasto mundo grande, que você já viu nenhum por cento de. Mesmo dentro de sua própria mente é interminável, que vai durar para sempre, por dentro, você entende? O fato de que você está vivo é incrível, então você não consegue dizer &quot;estou entediado&quot;.
1780	scared	George Burns	\N	pt-PT	Sinceramente, acho que é melhor ser um fracasso em algo que você gosta de ser um sucesso em algo que você odeia.
1781	scared	George Burns	\N	ro	Sincer, cred că este mai bine să fie un eșec la ceva ce iti place decât să fie un succes la ceva ce urăsc.
1751	dull	Louis CK	\N	pt-PT	&quot;Estou entediada&quot; é uma coisa inútil dizer. Quero dizer, você vive em um grande vasto mundo grande, que você já viu nenhum por cento de. Mesmo dentro de sua própria mente é interminável, que vai durar para sempre, por dentro, você entende? O fato de que você está vivo é incrível, então você não consegue dizer &quot;estou entediado&quot;.
1752	dull	Louis CK	\N	ro	&quot;Sunt plictisit&quot; este un lucru inutil de spus. Adică, locuiți într-o lume mare, mare, mare, care le-ați văzut nici unul la sută din. Chiar în interiorul mintea ta este fără sfârșit, merge la nesfârșit, în interior, înțelegi? Faptul că ești în viață este uimitor, astfel încât să nu ajung să spună &quot;eu sunt plictisit.&quot;
1753	dull	Louis CK	\N	ru	&quot;Мне скучно&quot; это бесполезная вещь сказать. Я имею в виду, вы живете в большой, большой, огромный мир, что вы видели ни процентов. Даже внутри вашего собственного ума бесконечен, она продолжается вечно, внутренне, вы понимаете? Тот факт, что ты жив является удивительным, так что вы не можете сказать: &quot;Мне скучно&quot;.
1754	dull	Louis CK	\N	sk	&quot;Ja sa nudím&quot; je k ničomu, čo na to povedať. Myslím, že žijete vo veľkom, veľký, rozsiahly svet, keď ste videli none percent. Dokonca aj vo vnútri svojej vlastnej mysle je nekonečný, to ide do nekonečna, v duchu, chápeš? Skutočnosť, že ste nažive, je úžasné, takže sa nemusíte dostať hovoriť &quot;ja sa nudím.&quot;
1755	dull	Louis CK	\N	sv	&quot;Jag är uttråkad&quot; är en värdelös sak att säga. Jag menar, du bor i en stor, stor, stor värld att du har sett ingen procent. Även insidan av ditt eget sinne är oändlig, den går på för evigt, inåt, förstår du? Det faktum att du lever är fantastiskt, så att du inte får säga &quot;jag är uttråkad.&quot;
1756	dull	Louis CK	\N	th	&quot;ฉันเบื่อ 'เป็นสิ่งที่ไร้ประโยชน์ที่จะพูด ฉันหมายความว่าคุณอาศัยอยู่ในที่ยิ่งใหญ่ในโลกที่กว้างใหญ่ขนาดใหญ่ที่คุณเคยเห็นร้อยละไม่มี แม้ภายในใจของคุณเองเป็นที่สิ้นสุดนั้นมันจะไปอยู่กับคุณตลอด, ในใจคุณไม่เข้าใจ? ความจริงที่ว่าคุณยังมีชีวิตอยู่เป็นที่น่าตื่นตาตื่นใจเพื่อให้คุณไม่ได้รับที่จะพูดว่า 'ฉันเบื่อ. &quot;
1757	dull	Louis CK	\N	tr	&quot;Ben sıkıldım söylemek işe yaramaz bir şeydir. Yani, size hiçbiri yüzde gördüm ki büyük, büyük, büyük bir dünyada yaşıyoruz. Kendi zihin bile içinde sonsuz değil, sonsuza kadar devam eder, içsel, anlıyor musun? Hayattayken olması şaşırtıcı, bu nedenle ben sıkıldım 'demek için alamadım. &quot;
1758	dull	Louis CK	\N	uk	&quot;Мені нудно&quot; це марна річ сказати. Я маю на увазі, ви живете в великий, великий, величезний світ, що ви бачили ні відсотків. Навіть всередині вашого власного розуму нескінченний, вона триває вічно, внутрішньо, ви розумієте? Той факт, що ти живий є дивним, так що ви не можете сказати: &quot;Мені нудно&quot;.
1759	dull	Louis CK	\N	zh-Hant	“我很無聊”是一個無用的東西說。我的意思是，你生活在一個偉大的，大的，廣袤的世界，你見過沒有％。即使自己的頭腦裡面的是無止境的，它永遠，內心，你明白嗎？你還活著的事實，是驚人的，所以你不要說'我很無聊。“
1760	scared	George Burns	\N	ar	وأعتقد بصدق أنه من الأفضل أن يكون الفشل في شيء تحب من أن يكون النجاح في شيء تكرهه.
1761	scared	George Burns	\N	ca	Sincerament, crec que és millor ser un fracàs en alguna cosa que t'agrada que sigui un èxit en alguna cosa que odies.
1762	scared	George Burns	\N	cs	Upřímně si myslím, že je lepší být porucha na něco, co máte rádi, než být úspěšný v něčem, co nenávidí.
1763	scared	George Burns	\N	da	Jeg tror helt ærligt, det er bedre at være en fiasko på noget, du elsker, end at være en succes på noget, du hader.
1764	scared	George Burns	\N	de	Ich denke ehrlich, es ist besser, ein Misserfolg an etwas, das Sie lieben, als ein Erfolg auf etwas, das Sie hassen.
1765	scared	George Burns	\N	el	Ειλικρινά πιστεύω ότι είναι καλύτερα να είναι μια αποτυχία σε κάτι που αγαπάς παρά να είναι μια επιτυχία σε κάτι που σας μισούν.
1766	scared	George Burns	\N	en	I honestly think it is better to be a failure at something you love than to be a success at something you hate.
1767	scared	George Burns	\N	es	Sinceramente, creo que es mejor ser un fracaso en algo que te gusta que sea un éxito en algo que odias.
1768	scared	George Burns	\N	fi	Olen rehellisesti sitä mieltä, että on parempi olla vika jotain rakastat kuin olla menestys jotain vihaat.
1769	scared	George Burns	\N	fr	Honnêtement, je pense qu'il vaut mieux être un échec à quelque chose que vous aimez que d'être un succès à quelque chose que vous détestez.
1770	scared	George Burns	\N	he	אני באמת חושב שעדיף להיות כישלון במשהו שאתה אוהב יותר מלהיות הצלחה במשהו שאתה שונא.
1771	scared	George Burns	\N	hr	Ja iskreno mislim da je bolje da se neuspjeh na nešto što volite, nego da se uspjeh na nešto što mrziš.
1772	scared	George Burns	\N	hu	Őszintén hiszem, hogy jobb, hogy egy kudarc, amit szeretsz, mint hogy a siker, amit utál.
1773	scared	George Burns	\N	it	Onestamente penso che sia meglio essere un fallimento a qualcosa che ami che essere un successo a qualcosa che odi.
1774	scared	George Burns	\N	ja	私は正直にそれはあなたが嫌い​​なもので成功するよりも、好きなことでの障害であることが優れていると思います。
1775	scared	George Burns	\N	ko	솔직히 당신이 당신이 싫어 뭔가 성공하는 것보다 사랑하는 게에 실패 할 더 나은 생각합니다.
1776	scared	George Burns	\N	nb	Jeg ærlig tror det er bedre å være en fiasko på noe du elsker enn å være en suksess på noe du hater.
1777	scared	George Burns	\N	nl	Ik denk eerlijk gezegd dat het beter is om een ​​mislukking te zijn op iets wat je liefde dan om een ​​succes op iets wat je haat zijn.
1839	scared	Vincent van Gogh	\N	ro	Cum ar fi viața dacă nu am avut curajul să încerce ceva?
1782	scared	George Burns	\N	ru	Я честно думаю, что лучше быть неудачи на то, что вы любите, чем быть успеха на то, что вы ненавидите.
1783	scared	George Burns	\N	sk	Úprimne si myslím, že je lepšie byť porucha na niečo, čo máte radi, ako byť úspešný v niečom, čo nenávidia.
1784	scared	George Burns	\N	sv	Jag tror ärligt talat att det är bättre att vara ett misslyckande på något du älskar än att vara en succé på något du hatar.
1785	scared	George Burns	\N	th	ฉันสุจริตคิดว่ามันเป็นดีกว่าที่จะเป็นความล้มเหลวที่บางสิ่งบางอย่างที่คุณรักมากกว่าจะประสบความสำเร็จในสิ่งที่คุณเกลียด
1786	scared	George Burns	\N	tr	Ben dürüst size nefret bir şey başarılı olmak için daha aşk bir şey bir başarısızlık olarak daha iyi olduğunu düşünüyorum.
1787	scared	George Burns	\N	uk	Я чесно думаю, що краще бути невдачі на те, що ви любите, ніж бути успіху на те, що ви ненавидите.
1788	scared	George Burns	\N	zh-Hant	老實說，我認為最好是在你所愛的東西，而不是成為一個成功在你所憎惡的事情上是失敗的。
1789	scared	Wayne Gretzky	\N	ar	ضيعت دائما 100٪ من الطلقات كنت لا تأخذ.
1790	scared	Wayne Gretzky	\N	ca	Vostè sempre es perd el 100% dels tirs que no pren.
1791	scared	Wayne Gretzky	\N	cs	Vždy budete chybět 100% snímků, které neberou.
1792	scared	Wayne Gretzky	\N	da	Du vil altid savne 100% af de skud du ikke tager.
1793	scared	Wayne Gretzky	\N	de	Du wirst immer vermissen 100% der Aufnahmen, die Sie nicht nehmen.
1794	scared	Wayne Gretzky	\N	el	Θα χάσετε πάντα το 100% των λήψεων που δεν λαμβάνουν.
1795	scared	Wayne Gretzky	\N	en	You’ll always miss 100% of the shots you don’t take.
1796	scared	Wayne Gretzky	\N	es	Usted siempre se pierde el 100% de los tiros que no toma.
1797	scared	Wayne Gretzky	\N	fi	Tulet aina kaipaamaan 100% kaikista laukausta et ota.
1798	scared	Wayne Gretzky	\N	fr	Vous oubliez toujours 100% des photos que vous ne prenez pas.
1799	scared	Wayne Gretzky	\N	he	אתה תמיד תתגעגע 100% מהזריקות שאתה לא לוקח.
1800	scared	Wayne Gretzky	\N	hr	Uvijek ćeš propustiti 100% od metak ne poduzeti.
1801	scared	Wayne Gretzky	\N	hu	Majd mindig hiányzik 100%-át a lövések nem veszi.
1802	scared	Wayne Gretzky	\N	it	Sarai sempre manca il 100% dei colpi che non fai.
1803	scared	Wayne Gretzky	\N	ja	あなたはいつも取らないショットの100％を逃してしまう。
1804	scared	Wayne Gretzky	\N	ko	당신은 항상 당신이하지 않는 탄의 100 %를 놓칠 수 있습니다.
1805	scared	Wayne Gretzky	\N	nb	Du vil alltid savne 100% av bildene du ikke ta.
1806	scared	Wayne Gretzky	\N	nl	Je zult altijd missen 100% van de opnamen die u niet te nemen.
1807	scared	Wayne Gretzky	\N	pl	Będziesz zawsze przegap 100% strzałów nie biorą.
1808	scared	Wayne Gretzky	\N	pt-PT	Você sempre perde 100% dos tiros que você não tomar.
1809	scared	Wayne Gretzky	\N	pt-PT	Você sempre perde 100% dos tiros que você não tomar.
1810	scared	Wayne Gretzky	\N	ro	Veți pierde întotdeauna de 100% din fotografii nu luați.
1811	scared	Wayne Gretzky	\N	ru	Вы всегда скучаю 100% снимков вы не принимаете.
1812	scared	Wayne Gretzky	\N	sk	Vždy budete chýbať 100% snímok, ktoré neberú.
1813	scared	Wayne Gretzky	\N	sv	Du kommer alltid att sakna 100% av de skott du inte tar.
1814	scared	Wayne Gretzky	\N	th	คุณมักจะพลาด 100% ของภาพที่คุณไม่ได้ใช้
1815	scared	Wayne Gretzky	\N	tr	Her zaman yapmayız çekim% 100 özleyeceğim.
1816	scared	Wayne Gretzky	\N	uk	Ви завжди сумую 100% знімків ви не приймаєте.
1817	scared	Wayne Gretzky	\N	zh-Hant	你永遠錯過的鏡頭，你不採取100％。
1818	scared	Vincent van Gogh	\N	ar	كيف ستكون حياتنا لو لم يكن لدينا الشجاعة لمحاولة أي شيء؟
1819	scared	Vincent van Gogh	\N	ca	Què seria la vida si no tinguéssim el valor d'intentar alguna cosa?
1820	scared	Vincent van Gogh	\N	cs	Jaký by byl život, kdybychom neměli odvahu pokusit se o něco?
1821	scared	Vincent van Gogh	\N	da	Hvad ville livet være, hvis vi ikke havde modet til at forsøge noget?
1822	scared	Vincent van Gogh	\N	de	Was wäre das Leben, wenn wir nicht den Mut, etwas zu versuchen, hatte?
1823	scared	Vincent van Gogh	\N	el	Ποια θα ήταν η ζωή αν δεν είχαμε το θάρρος να επιχειρήσει κάτι;
1824	scared	Vincent van Gogh	\N	en	What would life be if we had no courage to attempt anything?
1825	scared	Vincent van Gogh	\N	es	¿Qué sería la vida si no tuviéramos el valor de intentar algo?
1826	scared	Vincent van Gogh	\N	fi	Mitä elämä olisi, jos meillä ei ollut rohkeutta yrittää mitään?
1827	scared	Vincent van Gogh	\N	fr	Que serait la vie si nous n'avions pas le courage de tenter quoi que ce soit?
1828	scared	Vincent van Gogh	\N	he	מה יהיו חיים אם לא היו לנו אומץ לנסות משהו?
1829	scared	Vincent van Gogh	\N	hr	Što bi život biti ako smo imali hrabrosti pokušati nešto?
1830	scared	Vincent van Gogh	\N	hu	Milyen lenne az élet, ha nem volt bátorsága, hogy megpróbálja valamit?
1831	scared	Vincent van Gogh	\N	it	Che cosa sarebbe la vita se non avessimo il coraggio di tentare qualcosa?
1832	scared	Vincent van Gogh	\N	ja	我々は何をしようとする勇気がなかった場合はどう人生がでしょうか？
1833	scared	Vincent van Gogh	\N	ko	우리가 무엇을 시도 할 용기가없는 경우 어떻게 인생은 될 것이라고?
1834	scared	Vincent van Gogh	\N	nb	Hva ville livet vært hvis vi ikke hadde mot til å prøve noe?
1835	scared	Vincent van Gogh	\N	nl	Wat zou het leven zijn als we hadden geen moed om iets te proberen?
1836	scared	Vincent van Gogh	\N	pl	Czym byłoby życie, gdybyśmy nie mieli odwagi, by próbować coś?
1837	scared	Vincent van Gogh	\N	pt-PT	O que seria da vida se não tivéssemos coragem de tentar alguma coisa?
1838	scared	Vincent van Gogh	\N	pt-PT	O que seria da vida se não tivéssemos coragem de tentar alguma coisa?
1840	scared	Vincent van Gogh	\N	ru	Какой была бы жизнь, если бы у нас не было мужества, чтобы попытаться что-нибудь?
1841	scared	Vincent van Gogh	\N	sk	Aký by bol život, keby sme nemali odvahu pokúsiť sa o niečo?
1842	scared	Vincent van Gogh	\N	sv	Hur skulle livet vara om vi hade ingen mod att försöka någonting?
1843	scared	Vincent van Gogh	\N	th	สิ่งที่ชีวิตจะเป็นถ้าเรามีความกล้าหาญที่จะพยายามไม่มีอะไร?
1844	scared	Vincent van Gogh	\N	tr	Biz bir şey denemek için hiçbir cesaret olsaydı ne hayat olurdu?
1845	scared	Vincent van Gogh	\N	uk	Якою була б життя, якби у нас не було мужності, щоб спробувати що-небудь?
1846	scared	Vincent van Gogh	\N	zh-Hant	生活會是什麼，如果我們有沒有勇於嘗試任何事情嗎？
1847	scared	Michael Jordan	\N	ar	أنا لا يمكن أن يقبل الفشل، فشل الجميع في شيء. ولكن أنا لا يمكن أن تقبل لا تحاول.
1848	scared	Michael Jordan	\N	ca	Puc acceptar el fracàs, tothom falla en alguna cosa. Però no puc acceptar no intentar-ho.
1849	scared	Michael Jordan	\N	cs	Jsem schopen akceptovat neúspěch, každý na něco selže. Ale nemohu přijmout nesnaží.
1850	scared	Michael Jordan	\N	da	Jeg kan acceptere fiasko, alle fejler på noget. Men jeg kan ikke acceptere ikke at prøve.
1851	scared	Michael Jordan	\N	de	Ich kann Scheitern zu akzeptieren, nicht jeder auf etwas. Aber ich kann nicht akzeptieren, nicht versuchen.
1852	scared	Michael Jordan	\N	el	Μπορώ να δεχτώ αποτυχία, ο καθένας αποτυγχάνει σε κάτι. Αλλά δεν μπορώ να δεχτώ να μην προσπαθεί.
1853	scared	Michael Jordan	\N	en	I can accept failure, everyone fails at something. But I can’t accept not trying.
1854	scared	Michael Jordan	\N	es	Puedo aceptar el fracaso, todo el mundo falla en algo. Pero no puedo aceptar no intentarlo.
1855	scared	Michael Jordan	\N	fi	Voin hyväksyä epäonnistuminen, kaikki epäonnistuu jotain. Mutta en voi hyväksyä ei yritä.
1856	scared	Michael Jordan	\N	fr	Je ne peux accepter l'échec, tout le monde ne parvient pas à quelque chose. Mais je ne peux pas accepter de ne pas essayer.
1857	scared	Michael Jordan	\N	he	אני יכול לקבל כישלון, כל אחד נכשל במשהו. אבל אני לא יכול לקבל שלא מנסה.
1858	scared	Michael Jordan	\N	hr	Ja mogu prihvatiti neuspjeh, svatko u nečemu ne uspije. Ali ja ne mogu prihvatiti ne pokušava.
1859	scared	Michael Jordan	\N	hu	El tudom fogadni hiba, mindenki hibázik valami. De nem fogadja el sem próbálta.
1860	scared	Michael Jordan	\N	it	Posso accettare il fallimento, tutti non riesce a qualcosa. Ma non posso accettare di non tentare.
1861	scared	Michael Jordan	\N	ja	私は失敗を受け入れることができ、誰もが何かで失敗します。しかし、私はしようとしていない受け入れることができません。
1862	scared	Michael Jordan	\N	ko	나는 실패를 받아 들일 수, 모두가 뭔가를 실패합니다. 하지만 노력하지 받아 들일 수 없습니다.
1863	scared	Michael Jordan	\N	nb	Jeg kan akseptere feil, mislykkes alle på noe. Men jeg kan ikke akseptere ikke å prøve.
1864	scared	Michael Jordan	\N	nl	Ik kan het niet accepteren, iedereen faalt op iets. Maar ik kan niet aanvaarden niet proberen.
1865	scared	Michael Jordan	\N	pl	Mogę akceptować niepowodzenia, wszyscy nie na coś. Ale nie mogę zgodzić się nie stara.
1866	scared	Michael Jordan	\N	pt-PT	Eu posso aceitar a falha, todos falham em alguma coisa. Mas eu não posso aceitar não tentar.
1867	scared	Michael Jordan	\N	pt-PT	Eu posso aceitar a falha, todos falham em alguma coisa. Mas eu não posso aceitar não tentar.
1868	scared	Michael Jordan	\N	ro	Nu pot accepta eșec, toată lumea nu la ceva. Dar eu nu pot accepta să nu încerc.
1869	scared	Michael Jordan	\N	ru	Я могу принять неудачу, все не может на что-то. Но я не могу принять не пытается.
1870	scared	Michael Jordan	\N	sk	Som schopný akceptovať neúspech, každý na niečo zlyhá. Ale nemôžem prijať nesnaží.
1871	scared	Michael Jordan	\N	sv	Jag kan acceptera misslyckande, misslyckas alla på något. Men jag kan inte acceptera att inte försöka.
1872	scared	Michael Jordan	\N	th	ฉันสามารถยอมรับความล้มเหลวทุกคนล้มเหลวในบางสิ่งบางอย่าง แต่ฉันไม่สามารถยอมรับไม่พยายาม
1873	scared	Michael Jordan	\N	tr	Ben başarısızlık kabul edebilir, herkes bir şey başarısız olur. Ama çalışmıyorum kabul edemez.
1874	scared	Michael Jordan	\N	uk	Я можу прийняти невдачу, все не може на щось. Але я не можу прийняти не намагається.
1875	scared	Michael Jordan	\N	zh-Hant	我可以接受失敗，每個人都失敗的東西。但我不能接受不付出努力。
1876	scared	Simon Holt, The Devouring	\N	ar	اذا كنت لا تعرف تتعلم كيف تكون خائفا، فلن تعلم حقا كيف يكون شجاعا.
1877	scared	Simon Holt, The Devouring	\N	ca	Si no sap aprendre a tenir por, mai realment aprendre a ser valent.
1878	scared	Simon Holt, The Devouring	\N	cs	Pokud nevíte, naučit se bát, budete nikdy naučit, jak být statečný.
1879	scared	Simon Holt, The Devouring	\N	da	Hvis du ikke kender lære at være bange, vil du aldrig rigtig lære at være modig.
1880	scared	Simon Holt, The Devouring	\N	de	Wenn Sie nicht wissen, lernen, wie man Angst haben, werden Sie nie wirklich lernen, wie tapfer zu sein.
1881	scared	Simon Holt, The Devouring	\N	el	Αν δεν ξέρετε να μάθετε πώς να φοβάται, δεν πρόκειται ποτέ πραγματικά να μάθουν πώς να είναι γενναίος.
1882	scared	Simon Holt, The Devouring	\N	en	If you dont know learn how to be scared, you'll never really learn how to be brave.
1883	scared	Simon Holt, The Devouring	\N	es	Si usted no sabe aprender a tener miedo, nunca realmente aprender a ser valiente.
1884	scared	Simon Holt, The Devouring	\N	fi	Jos et tiedä opetella pelkää, et koskaan todella oppia olemaan rohkea.
1885	scared	Simon Holt, The Devouring	\N	fr	Si vous ne savez pas apprendre à avoir peur, vous ne serez jamais vraiment apprendre à être courageux.
1886	scared	Simon Holt, The Devouring	\N	he	אם אתה לא יודע איך ללמוד לפחד, אתה אף פעם לא באמת ללמוד איך להיות אמיץ.
1887	scared	Simon Holt, The Devouring	\N	hr	Ako ne znate naučiti kako se bojati, nikada zapravo ćete naučiti kako biti hrabar.
1888	scared	Simon Holt, The Devouring	\N	hu	Ha nem tudod, megtanulják, hogyan kell, hogy félek, soha nem igazán megtanulják, hogyan lehet bátor.
1889	scared	Simon Holt, The Devouring	\N	it	Se non sai imparare a essere spaventato, non sarai mai veramente imparare a essere coraggioso.
1890	scared	Simon Holt, The Devouring	\N	ja	あなたが怖がっする方法を学ぶ知らない場合は、本当に勇敢になる方法を学ぶことは決してないだろう。
1891	scared	Simon Holt, The Devouring	\N	ko	당신이 두려워하는 방법에 대한 자세한 내용을 모르는 경우, 당신은 정말 용감 방법을 배울 수 없을거야.
1892	scared	Simon Holt, The Devouring	\N	nb	Hvis du ikke vet lære å være redd, vil du aldri virkelig lære å være modig.
1893	scared	Simon Holt, The Devouring	\N	nl	Als je niet weet leren hoe om bang te zijn, zul je nooit echt leren om dapper te zijn.
1894	scared	Simon Holt, The Devouring	\N	pl	Jeśli nie wiesz, nauczyć się bać, nigdy nie będziesz naprawdę nauczyć się, jak być odważnym.
1895	scared	Simon Holt, The Devouring	\N	pt-PT	Se você não sabe aprender a ter medo, você nunca vai realmente aprender a ser corajoso.
1896	scared	Simon Holt, The Devouring	\N	pt-PT	Se você não sabe aprender a ter medo, você nunca vai realmente aprender a ser corajoso.
1897	scared	Simon Holt, The Devouring	\N	ro	Dacă nu știți să învețe cum să fie speriat, nu veți învăța cu adevărat cum să fie curajos.
1898	scared	Simon Holt, The Devouring	\N	ru	Если вы не знаете научиться бояться, вы никогда не будете действительно научиться быть храбрым.
1899	scared	Simon Holt, The Devouring	\N	sk	Ak neviete, naučiť sa báť, budete nikdy naučiť, ako byť statočný.
1900	scared	Simon Holt, The Devouring	\N	sv	Om du inte vet lära sig att vara rädd, kommer du aldrig riktigt lära sig att vara modig.
1901	scared	Simon Holt, The Devouring	\N	th	หากคุณไม่ทราบว่าเรียนรู้วิธีการต้องกลัวคุณจะไม่เคยเรียนรู้วิธีการที่จะกล้าหาญ
1902	scared	Simon Holt, The Devouring	\N	tr	Eğer korkmak öğrenmek bilmiyorum, gerçekten cesur olmak öğrenmek asla.
1903	scared	Simon Holt, The Devouring	\N	uk	Якщо ви не знаєте навчитися боятися, ви ніколи не будете дійсно навчитися бути хоробрим.
1904	scared	Simon Holt, The Devouring	\N	zh-Hant	如果你不知道學習如何害怕，你永遠不會真正了解如何勇敢。
\.


--
-- Data for Name: quotes_quote_translated_quotes; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.quotes_quote_translated_quotes (id, from_quote_id, to_quote_id) FROM stdin;
65	6	107
67	6	108
69	6	109
71	6	110
73	6	111
75	6	112
77	6	113
79	6	114
81	6	115
83	6	116
85	6	117
87	6	118
89	6	119
91	6	120
93	6	121
95	6	122
97	6	123
99	6	124
101	6	125
103	6	126
105	6	127
107	6	128
109	6	129
111	6	130
113	6	131
115	6	132
117	6	133
119	6	134
121	6	135
123	7	136
125	7	137
127	7	138
129	7	139
131	7	140
133	7	141
135	7	142
137	7	143
139	7	144
141	7	145
143	7	146
145	7	147
147	7	148
149	7	149
151	7	150
153	7	151
155	7	152
157	7	153
159	7	154
161	7	155
163	7	156
165	7	157
167	7	158
169	7	159
171	7	160
173	7	161
175	7	162
177	7	163
179	7	164
181	8	165
183	8	166
185	8	167
187	8	168
189	8	169
191	8	170
193	8	171
195	8	172
197	8	173
199	8	174
201	8	175
203	8	176
205	8	177
207	8	178
209	8	179
211	8	180
213	8	181
215	8	182
217	8	183
219	8	184
221	8	185
223	8	186
225	8	187
227	8	188
229	8	189
231	8	190
233	8	191
235	8	192
237	8	193
239	9	194
241	9	195
243	9	196
245	9	197
247	9	198
249	9	199
251	9	200
253	9	201
255	9	202
257	9	203
259	9	204
261	9	205
263	9	206
265	9	207
267	9	208
269	9	209
271	9	210
273	9	211
275	9	212
277	9	213
279	9	214
281	9	215
283	9	216
285	9	217
287	9	218
289	9	219
291	9	220
293	9	221
295	9	222
297	10	223
299	10	224
301	10	225
303	10	226
305	10	227
307	10	228
309	10	229
311	10	230
313	10	231
315	10	232
317	10	233
319	10	234
321	10	235
323	10	236
325	10	237
327	10	238
329	10	239
331	10	240
333	10	241
335	10	242
337	10	243
339	10	244
341	10	245
343	10	246
345	10	247
347	10	248
349	10	249
351	10	250
353	10	251
355	11	252
357	11	253
359	11	254
361	11	255
363	11	256
365	11	257
367	11	258
369	11	259
371	11	260
373	11	261
375	11	262
377	11	263
379	11	264
381	11	265
383	11	266
385	11	267
387	11	268
389	11	269
391	11	270
393	11	271
395	11	272
397	11	273
399	11	274
401	11	275
403	11	276
405	11	277
407	11	278
409	11	279
411	11	280
413	12	281
415	12	282
417	12	283
419	12	284
421	12	285
423	12	286
425	12	287
427	12	288
429	12	289
431	12	290
433	12	291
435	12	292
437	12	293
439	12	294
441	12	295
443	12	296
445	12	297
447	12	298
449	12	299
451	12	300
453	12	301
455	12	302
457	12	303
459	12	304
461	12	305
463	12	306
465	12	307
467	12	308
469	12	309
471	13	310
473	13	311
475	13	312
477	13	313
479	13	314
481	13	315
483	13	316
485	13	317
487	13	318
489	13	319
491	13	320
493	13	321
495	13	322
497	13	323
499	13	324
501	13	325
503	13	326
505	13	327
507	13	328
509	13	329
511	13	330
513	13	331
515	13	332
517	13	333
519	13	334
521	13	335
523	13	336
525	13	337
527	13	338
529	14	339
531	14	340
533	14	341
535	14	342
537	14	343
539	14	344
541	14	345
543	14	346
545	14	347
547	14	348
549	14	349
551	14	350
553	14	351
555	14	352
557	14	353
559	14	354
561	14	355
563	14	356
565	14	357
567	14	358
569	14	359
571	14	360
573	14	361
575	14	362
577	14	363
579	14	364
581	14	365
583	14	366
585	14	367
587	15	368
589	15	369
591	15	370
593	15	371
595	15	372
597	15	373
599	15	374
601	15	375
603	15	376
605	15	377
607	15	378
609	15	379
611	15	380
613	15	381
615	15	382
617	15	383
619	15	384
621	15	385
623	15	386
625	15	387
627	15	388
629	15	389
631	15	390
633	15	391
635	15	392
637	15	393
639	15	394
641	15	395
643	15	396
645	16	397
647	16	398
649	16	399
651	16	400
653	16	401
655	16	402
657	16	403
659	16	404
661	16	405
663	16	406
665	16	407
667	16	408
669	16	409
671	16	410
673	16	411
675	16	412
677	16	413
679	16	414
681	16	415
683	16	416
685	16	417
687	16	418
689	16	419
691	16	420
693	16	421
695	16	422
697	16	423
699	16	424
701	16	425
703	17	426
705	17	427
707	17	428
709	17	429
711	17	430
713	17	431
715	17	432
717	17	433
719	17	434
721	17	435
723	17	436
725	17	437
727	17	438
729	17	439
731	17	440
733	17	441
735	17	442
737	17	443
739	17	444
741	17	445
743	17	446
745	17	447
747	17	448
749	17	449
751	17	450
753	17	451
755	17	452
757	17	453
759	17	454
761	18	455
763	18	456
765	18	457
767	18	458
769	18	459
771	18	460
773	18	461
775	18	462
777	18	463
779	18	464
781	18	465
783	18	466
785	18	467
787	18	468
789	18	469
791	18	470
793	18	471
795	18	472
797	18	473
799	18	474
801	18	475
803	18	476
805	18	477
807	18	478
809	18	479
811	18	480
813	18	481
815	18	482
817	18	483
819	19	484
821	19	485
823	19	486
825	19	487
827	19	488
829	19	489
831	19	490
833	19	491
835	19	492
837	19	493
839	19	494
841	19	495
843	19	496
845	19	497
847	19	498
849	19	499
851	19	500
853	19	501
855	19	502
857	19	503
859	19	504
861	19	505
863	19	506
865	19	507
867	19	508
869	19	509
871	19	510
873	19	511
875	19	512
877	20	513
879	20	514
881	20	515
883	20	516
885	20	517
887	20	518
889	20	519
891	20	520
893	20	521
895	20	522
897	20	523
899	20	524
901	20	525
903	20	526
905	20	527
907	20	528
909	20	529
911	20	530
913	20	531
915	20	532
917	20	533
919	20	534
921	20	535
923	20	536
925	20	537
927	20	538
929	20	539
931	20	540
933	20	541
935	21	542
937	21	543
939	21	544
941	21	545
943	21	546
945	21	547
947	21	548
949	21	549
951	21	550
953	21	551
955	21	552
957	21	553
959	21	554
961	21	555
963	21	556
965	21	557
967	21	558
969	21	559
971	21	560
973	21	561
975	21	562
977	21	563
979	21	564
981	21	565
983	21	566
985	21	567
987	21	568
989	21	569
991	21	570
993	22	571
995	22	572
997	22	573
999	22	574
1001	22	575
1003	22	576
1005	22	577
1007	22	578
1009	22	579
1011	22	580
1013	22	581
1015	22	582
1017	22	583
1019	22	584
1021	22	585
1023	22	586
1025	22	587
1027	22	588
1029	22	589
1031	22	590
1033	22	591
1035	22	592
1037	22	593
1039	22	594
1041	22	595
1043	22	596
1045	22	597
1047	22	598
1049	22	599
1051	23	600
1053	23	601
1055	23	602
1057	23	603
1059	23	604
1061	23	605
1063	23	606
1065	23	607
1067	23	608
1069	23	609
1071	23	610
1073	23	611
1075	23	612
1077	23	613
1079	23	614
1081	23	615
1083	23	616
1085	23	617
1087	23	618
1089	23	619
1091	23	620
1093	23	621
1095	23	622
1097	23	623
1099	23	624
1101	23	625
1103	23	626
1105	23	627
1107	23	628
1109	24	629
1111	24	630
1113	24	631
1115	24	632
1117	24	633
1119	24	634
1121	24	635
1123	24	636
1125	24	637
1127	24	638
1129	24	639
1131	24	640
1133	24	641
1135	24	642
1137	24	643
1139	24	644
1141	24	645
1143	24	646
1145	24	647
1147	24	648
1149	24	649
1151	24	650
1153	24	651
1155	24	652
1157	24	653
1159	24	654
1161	24	655
1163	24	656
1165	24	657
1167	25	658
1169	25	659
1171	25	660
1173	25	661
1175	25	662
1177	25	663
1179	25	664
1181	25	665
1183	25	666
1185	25	667
1187	25	668
1189	25	669
1191	25	670
1193	25	671
1195	25	672
1197	25	673
1199	25	674
1201	25	675
1203	25	676
1205	25	677
1207	25	678
1209	25	679
1211	25	680
1213	25	681
1215	25	682
1217	25	683
1219	25	684
1221	25	685
1223	25	686
1225	26	687
1227	26	688
1229	26	689
1231	26	690
1233	26	691
1235	26	692
1237	26	693
1239	26	694
1241	26	695
1243	26	696
1245	26	697
1247	26	698
1249	26	699
1251	26	700
1253	26	701
1255	26	702
1257	26	703
1259	26	704
1261	26	705
1263	26	706
1265	26	707
1267	26	708
1269	26	709
1271	26	710
1273	26	711
1275	26	712
1277	26	713
1279	26	714
1281	26	715
1283	27	716
1285	27	717
1287	27	718
1289	27	719
1291	27	720
1293	27	721
1295	27	722
1297	27	723
1299	27	724
1301	27	725
1303	27	726
1305	27	727
1307	27	728
1309	27	729
1311	27	730
1313	27	731
1315	27	732
1317	27	733
1319	27	734
1321	27	735
1323	27	736
1325	27	737
1327	27	738
1329	27	739
1331	27	740
1333	27	741
1335	27	742
1337	27	743
1339	27	744
1341	28	745
1343	28	746
1345	28	747
1347	28	748
1349	28	749
1351	28	750
1353	28	751
1355	28	752
1357	28	753
1359	28	754
1361	28	755
1363	28	756
1365	28	757
1367	28	758
1369	28	759
1371	28	760
1373	28	761
1375	28	762
1377	28	763
1379	28	764
1381	28	765
1383	28	766
1385	28	767
1387	28	768
1389	28	769
1391	28	770
1393	28	771
1395	28	772
1397	28	773
1399	29	774
1401	29	775
1403	29	776
1405	29	777
1407	29	778
1409	29	779
1411	29	780
1413	29	781
1415	29	782
1417	29	783
1419	29	784
1421	29	785
1423	29	786
1425	29	787
1427	29	788
1429	29	789
1431	29	790
1433	29	791
1435	29	792
1437	29	793
1439	29	794
1441	29	795
1443	29	796
1445	29	797
1447	29	798
1449	29	799
1451	29	800
1453	29	801
1455	29	802
1457	30	803
1459	30	804
1461	30	805
1463	30	806
1465	30	807
1467	30	808
1469	30	809
1471	30	810
1473	30	811
1475	30	812
1477	30	813
1479	30	814
1481	30	815
1483	30	816
1485	30	817
1487	30	818
1489	30	819
1491	30	820
1493	30	821
1495	30	822
1497	30	823
1499	30	824
1501	30	825
1503	30	826
1505	30	827
1507	30	828
1509	30	829
1511	30	830
1513	30	831
1515	31	832
1517	31	833
1519	31	834
1521	31	835
1523	31	836
1525	31	837
1527	31	838
1529	31	839
1531	31	840
1533	31	841
1535	31	842
1537	31	843
1539	31	844
1541	31	845
1543	31	846
1545	31	847
1547	31	848
1549	31	849
1551	31	850
1553	31	851
1555	31	852
1557	31	853
1559	31	854
1561	31	855
1563	31	856
1565	31	857
1567	31	858
1569	31	859
1571	31	860
1573	32	861
1575	32	862
1577	32	863
1579	32	864
1581	32	865
1583	32	866
1585	32	867
1587	32	868
1589	32	869
1591	32	870
1593	32	871
1595	32	872
1597	32	873
1599	32	874
1601	32	875
1603	32	876
1605	32	877
1607	32	878
1609	32	879
1611	32	880
1613	32	881
1615	32	882
1617	32	883
1619	32	884
1621	32	885
1623	32	886
1625	32	887
1627	32	888
1629	32	889
1631	33	890
1633	33	891
1635	33	892
1637	33	893
1639	33	894
1641	33	895
1643	33	896
1645	33	897
1647	33	898
1649	33	899
1651	33	900
1653	33	901
1655	33	902
1657	33	903
1659	33	904
1661	33	905
1663	33	906
1665	33	907
1667	33	908
1669	33	909
1671	33	910
1673	33	911
1675	33	912
1677	33	913
1679	33	914
1681	33	915
1683	33	916
1685	33	917
1687	33	918
1689	34	919
1691	34	920
1693	34	921
1695	34	922
1697	34	923
1699	34	924
1701	34	925
1703	34	926
1705	34	927
1707	34	928
1709	34	929
1711	34	930
1713	34	931
1715	34	932
1717	34	933
1719	34	934
1721	34	935
1723	34	936
1725	34	937
1727	34	938
1729	34	939
1731	34	940
1733	34	941
1735	34	942
1737	34	943
1739	34	944
1741	34	945
1743	34	946
1745	34	947
1747	35	948
1749	35	949
1751	35	950
1753	35	951
1755	35	952
1757	35	953
1759	35	954
1761	35	955
1763	35	956
1765	35	957
1767	35	958
1769	35	959
1771	35	960
1773	35	961
1775	35	962
1777	35	963
1779	35	964
1781	35	965
1783	35	966
1785	35	967
1787	35	968
1789	35	969
1791	35	970
1793	35	971
1795	35	972
1797	35	973
1799	35	974
1801	35	975
1803	35	976
1805	36	977
1807	36	978
1809	36	979
1811	36	980
1813	36	981
1815	36	982
1817	36	983
1819	36	984
1821	36	985
1823	36	986
1825	36	987
1827	36	988
1829	36	989
1831	36	990
1833	36	991
1835	36	992
1837	36	993
1839	36	994
1841	36	995
1843	36	996
1845	36	997
1847	36	998
1849	36	999
1851	36	1000
1853	36	1001
1855	36	1002
1857	36	1003
1859	36	1004
1861	36	1005
1863	37	1006
1865	37	1007
1867	37	1008
1869	37	1009
1871	37	1010
1873	37	1011
1875	37	1012
1877	37	1013
1879	37	1014
1881	37	1015
1883	37	1016
1885	37	1017
1887	37	1018
1889	37	1019
1891	37	1020
1893	37	1021
1895	37	1022
1897	37	1023
1899	37	1024
1901	37	1025
1903	37	1026
1905	37	1027
1907	37	1028
1909	37	1029
1911	37	1030
1913	37	1031
1915	37	1032
1917	37	1033
1919	37	1034
1921	38	1035
1923	38	1036
1925	38	1037
1927	38	1038
1929	38	1039
1931	38	1040
1933	38	1041
1935	38	1042
1937	38	1043
1939	38	1044
1941	38	1045
1943	38	1046
1945	38	1047
1947	38	1048
1949	38	1049
1951	38	1050
1953	38	1051
1955	38	1052
1957	38	1053
1959	38	1054
1961	38	1055
1963	38	1056
1965	38	1057
1967	38	1058
1969	38	1059
1971	38	1060
1973	38	1061
1975	38	1062
1977	38	1063
1979	39	1064
1981	39	1065
1983	39	1066
1985	39	1067
1987	39	1068
1989	39	1069
1991	39	1070
1993	39	1071
1995	39	1072
1997	39	1073
1999	39	1074
2001	39	1075
2003	39	1076
2005	39	1077
2007	39	1078
2009	39	1079
2011	39	1080
2013	39	1081
2015	39	1082
2017	39	1083
2019	39	1084
2021	39	1085
2023	39	1086
2025	39	1087
2027	39	1088
2029	39	1089
2031	39	1090
2033	39	1091
2035	39	1092
2037	40	1093
2039	40	1094
2041	40	1095
2043	40	1096
2045	40	1097
2047	40	1098
2049	40	1099
2051	40	1100
2053	40	1101
2055	40	1102
2057	40	1103
2059	40	1104
2061	40	1105
2063	40	1106
2065	40	1107
2067	40	1108
2069	40	1109
2071	40	1110
2073	40	1111
2075	40	1112
2077	40	1113
2079	40	1114
2081	40	1115
2083	40	1116
2085	40	1117
2087	40	1118
2089	40	1119
2091	40	1120
2093	40	1121
2095	41	1122
2097	41	1123
2099	41	1124
2101	41	1125
2103	41	1126
2105	41	1127
2107	41	1128
2109	41	1129
2111	41	1130
2113	41	1131
2115	41	1132
2117	41	1133
2119	41	1134
2121	41	1135
2123	41	1136
2125	41	1137
2127	41	1138
2129	41	1139
2131	41	1140
2133	41	1141
2135	41	1142
2137	41	1143
2139	41	1144
2141	41	1145
2143	41	1146
2145	41	1147
2147	41	1148
2149	41	1149
2151	41	1150
2153	42	1151
2155	42	1152
2157	42	1153
2159	42	1154
2161	42	1155
2163	42	1156
2165	42	1157
2167	42	1158
2169	42	1159
2171	42	1160
2173	42	1161
2175	42	1162
2177	42	1163
2179	42	1164
2181	42	1165
2183	42	1166
2185	42	1167
2187	42	1168
2189	42	1169
2191	42	1170
2193	42	1171
2195	42	1172
2197	42	1173
2199	42	1174
2201	42	1175
2203	42	1176
2205	42	1177
2207	42	1178
2209	42	1179
2211	43	1180
2213	43	1181
2215	43	1182
2217	43	1183
2219	43	1184
2221	43	1185
2223	43	1186
2225	43	1187
2227	43	1188
2229	43	1189
2231	43	1190
2233	43	1191
2235	43	1192
2237	43	1193
2239	43	1194
2241	43	1195
2243	43	1196
2245	43	1197
2247	43	1198
2249	43	1199
2251	43	1200
2253	43	1201
2255	43	1202
2257	43	1203
2259	43	1204
2261	43	1205
2263	43	1206
2265	43	1207
2267	43	1208
2269	44	1209
2271	44	1210
2273	44	1211
2275	44	1212
2277	44	1213
2279	44	1214
2281	44	1215
2283	44	1216
2285	44	1217
2287	44	1218
2289	44	1219
2291	44	1220
2293	44	1221
2295	44	1222
2297	44	1223
2299	44	1224
2301	44	1225
2303	44	1226
2305	44	1227
2307	44	1228
2309	44	1229
2311	44	1230
2313	44	1231
2315	44	1232
2317	44	1233
2319	44	1234
2321	44	1235
2323	44	1236
2325	44	1237
2327	45	1238
2329	45	1239
2331	45	1240
2333	45	1241
2335	45	1242
2337	45	1243
2339	45	1244
2341	45	1245
2343	45	1246
2345	45	1247
2347	45	1248
2349	45	1249
2351	45	1250
2353	45	1251
2355	45	1252
2357	45	1253
2359	45	1254
2361	45	1255
2363	45	1256
2365	45	1257
2367	45	1258
2369	45	1259
2371	45	1260
2373	45	1261
2375	45	1262
2377	45	1263
2379	45	1264
2381	45	1265
2383	45	1266
2385	46	1267
2387	46	1268
2389	46	1269
2391	46	1270
2393	46	1271
2395	46	1272
2397	46	1273
2399	46	1274
2401	46	1275
2403	46	1276
2405	46	1277
2407	46	1278
2409	46	1279
2411	46	1280
2413	46	1281
2415	46	1282
2417	46	1283
2419	46	1284
2421	46	1285
2423	46	1286
2425	46	1287
2427	46	1288
2429	46	1289
2431	46	1290
2433	46	1291
2435	46	1292
2437	46	1293
2439	46	1294
2441	46	1295
2443	47	1296
2445	47	1297
2447	47	1298
2449	47	1299
2451	47	1300
2453	47	1301
2455	47	1302
2457	47	1303
2459	47	1304
2461	47	1305
2463	47	1306
2465	47	1307
2467	47	1308
2469	47	1309
2471	47	1310
2473	47	1311
2475	47	1312
2477	47	1313
2479	47	1314
2481	47	1315
2483	47	1316
2485	47	1317
2487	47	1318
2489	47	1319
2491	47	1320
2493	47	1321
2495	47	1322
2497	47	1323
2499	47	1324
2501	48	1325
2503	48	1326
2505	48	1327
2507	48	1328
2509	48	1329
2511	48	1330
2513	48	1331
2515	48	1332
2517	48	1333
2519	48	1334
2521	48	1335
2523	48	1336
2525	48	1337
2527	48	1338
2529	48	1339
2531	48	1340
2533	48	1341
2535	48	1342
2537	48	1343
2539	48	1344
2541	48	1345
2543	48	1346
2545	48	1347
2547	48	1348
2549	48	1349
2551	48	1350
2553	48	1351
2555	48	1352
2557	48	1353
2559	49	1354
2561	49	1355
2563	49	1356
2565	49	1357
2567	49	1358
2569	49	1359
2571	49	1360
2573	49	1361
2575	49	1362
2577	49	1363
2579	49	1364
2581	49	1365
2583	49	1366
2585	49	1367
2587	49	1368
2589	49	1369
2591	49	1370
2593	49	1371
2595	49	1372
2597	49	1373
2599	49	1374
2601	49	1375
2603	49	1376
2605	49	1377
2607	49	1378
2609	49	1379
2611	49	1380
2613	49	1381
2615	49	1382
2617	50	1383
2619	50	1384
2621	50	1385
2623	50	1386
2625	50	1387
2627	50	1388
2629	50	1389
2631	50	1390
2633	50	1391
2635	50	1392
2637	50	1393
2639	50	1394
2641	50	1395
2643	50	1396
2645	50	1397
2647	50	1398
2649	50	1399
2651	50	1400
2653	50	1401
2655	50	1402
2657	50	1403
2659	50	1404
2661	50	1405
2663	50	1406
2665	50	1407
2667	50	1408
2669	50	1409
2671	50	1410
2673	50	1411
2675	51	1412
2677	51	1413
2679	51	1414
2681	51	1415
2683	51	1416
2685	51	1417
2687	51	1418
2689	51	1419
2691	51	1420
2693	51	1421
2695	51	1422
2697	51	1423
2699	51	1424
2701	51	1425
2703	51	1426
2705	51	1427
2707	51	1428
2709	51	1429
2711	51	1430
2713	51	1431
2715	51	1432
2717	51	1433
2719	51	1434
2721	51	1435
2723	51	1436
2725	51	1437
2727	51	1438
2729	51	1439
2731	51	1440
2733	52	1441
2735	52	1442
2737	52	1443
2739	52	1444
2741	52	1445
2743	52	1446
2745	52	1447
2747	52	1448
2749	52	1449
2751	52	1450
2753	52	1451
2755	52	1452
2757	52	1453
2759	52	1454
2761	52	1455
2763	52	1456
2765	52	1457
2767	52	1458
2769	52	1459
2771	52	1460
2773	52	1461
2775	52	1462
2777	52	1463
2779	52	1464
2781	52	1465
2783	52	1466
2785	52	1467
2787	52	1468
2789	52	1469
2791	53	1470
2793	53	1471
2795	53	1472
2797	53	1473
2799	53	1474
2801	53	1475
2803	53	1476
2805	53	1477
2807	53	1478
2809	53	1479
2811	53	1480
2813	53	1481
2815	53	1482
2817	53	1483
2819	53	1484
2821	53	1485
2823	53	1486
2825	53	1487
2827	53	1488
2829	53	1489
2831	53	1490
2833	53	1491
2835	53	1492
2837	53	1493
2839	53	1494
2841	53	1495
2843	53	1496
2845	53	1497
2847	53	1498
2849	54	1499
2851	54	1500
2853	54	1501
2855	54	1502
2857	54	1503
2859	54	1504
2861	54	1505
2863	54	1506
2865	54	1507
2867	54	1508
2869	54	1509
2871	54	1510
2873	54	1511
2875	54	1512
2877	54	1513
2879	54	1514
2881	54	1515
2883	54	1516
2885	54	1517
2887	54	1518
2889	54	1519
2891	54	1520
2893	54	1521
2895	54	1522
2897	54	1523
2899	54	1524
2901	54	1525
2903	54	1526
2905	54	1527
2907	55	1528
2909	55	1529
2911	55	1530
2913	55	1531
2915	55	1532
2917	55	1533
2919	55	1534
2921	55	1535
2923	55	1536
2925	55	1537
2927	55	1538
2929	55	1539
2931	55	1540
2933	55	1541
2935	55	1542
2937	55	1543
2939	55	1544
2941	55	1545
2943	55	1546
2945	55	1547
2947	55	1548
2949	55	1549
2951	55	1550
2953	55	1551
2955	55	1552
2957	55	1553
2959	55	1554
2961	55	1555
2963	55	1556
2965	56	1557
2967	56	1558
2969	56	1559
2971	56	1560
2973	56	1561
2975	56	1562
2977	56	1563
2979	56	1564
2981	56	1565
2983	56	1566
2985	56	1567
2987	56	1568
2989	56	1569
2991	56	1570
2993	56	1571
2995	56	1572
2997	56	1573
2999	56	1574
3001	56	1575
3003	56	1576
3005	56	1577
3007	56	1578
3009	56	1579
3011	56	1580
3013	56	1581
3015	56	1582
3017	56	1583
3019	56	1584
3021	56	1585
3023	57	1586
3025	57	1587
3027	57	1588
3029	57	1589
3031	57	1590
3033	57	1591
3035	57	1592
3037	57	1593
3039	57	1594
3041	57	1595
3043	57	1596
3045	57	1597
3047	57	1598
3049	57	1599
3051	57	1600
3053	57	1601
3055	57	1602
3057	57	1603
3059	57	1604
3061	57	1605
3063	57	1606
3065	57	1607
3067	57	1608
3069	57	1609
3071	57	1610
3073	57	1611
3075	57	1612
3077	57	1613
3079	57	1614
3081	58	1615
3083	58	1616
3085	58	1617
3087	58	1618
3089	58	1619
3091	58	1620
3093	58	1621
3095	58	1622
3097	58	1623
3099	58	1624
3101	58	1625
3103	58	1626
3105	58	1627
3107	58	1628
3109	58	1629
3111	58	1630
3113	58	1631
3115	58	1632
3117	58	1633
3119	58	1634
3121	58	1635
3123	58	1636
3125	58	1637
3127	58	1638
3129	58	1639
3131	58	1640
3133	58	1641
3135	58	1642
3137	58	1643
3139	59	1644
3141	59	1645
3143	59	1646
3145	59	1647
3147	59	1648
3149	59	1649
3151	59	1650
3153	59	1651
3155	59	1652
3157	59	1653
3159	59	1654
3161	59	1655
3163	59	1656
3165	59	1657
3167	59	1658
3169	59	1659
3171	59	1660
3173	59	1661
3175	59	1662
3177	59	1663
3179	59	1664
3181	59	1665
3183	59	1666
3185	59	1667
3187	59	1668
3189	59	1669
3191	59	1670
3193	59	1671
3195	59	1672
3197	60	1673
3199	60	1674
3201	60	1675
3203	60	1676
3205	60	1677
3207	60	1678
3209	60	1679
3211	60	1680
3213	60	1681
3215	60	1682
3217	60	1683
3219	60	1684
3221	60	1685
3223	60	1686
3225	60	1687
3227	60	1688
3229	60	1689
3231	60	1690
3233	60	1691
3235	60	1692
3237	60	1693
3239	60	1694
3241	60	1695
3243	60	1696
3245	60	1697
3247	60	1698
3249	60	1699
3251	60	1700
3253	60	1701
3255	61	1702
3257	61	1703
3259	61	1704
3261	61	1705
3263	61	1706
3265	61	1707
3267	61	1708
3269	61	1709
3271	61	1710
3273	61	1711
3275	61	1712
3277	61	1713
3279	61	1714
3281	61	1715
3283	61	1716
3285	61	1717
3287	61	1718
3289	61	1719
3291	61	1720
3293	61	1721
3295	61	1722
3297	61	1723
3299	61	1724
3301	61	1725
3303	61	1726
3305	61	1727
3307	61	1728
3309	61	1729
3311	61	1730
3313	62	1731
3315	62	1732
3317	62	1733
3319	62	1734
3321	62	1735
3323	62	1736
3662	62	1737
3327	62	1738
3329	62	1739
3331	62	1740
3333	62	1741
3335	62	1742
3337	62	1743
3339	62	1744
3341	62	1745
3343	62	1746
3345	62	1747
3347	62	1748
3349	62	1749
3351	62	1750
3353	62	1751
3355	62	1752
3357	62	1753
3359	62	1754
3361	62	1755
3363	62	1756
3365	62	1757
3367	62	1758
3369	62	1759
3371	63	1760
3373	63	1761
3375	63	1762
3377	63	1763
3379	63	1764
3381	63	1765
3383	63	1766
3385	63	1767
3387	63	1768
3389	63	1769
3391	63	1770
3393	63	1771
3395	63	1772
3397	63	1773
3399	63	1774
3401	63	1775
3403	63	1776
3405	63	1777
3407	63	1778
3409	63	1779
3411	63	1780
3413	63	1781
3415	63	1782
3417	63	1783
3419	63	1784
3421	63	1785
3423	63	1786
3425	63	1787
3427	63	1788
3429	64	1789
3431	64	1790
3433	64	1791
3435	64	1792
3437	64	1793
3439	64	1794
3441	64	1795
3443	64	1796
3445	64	1797
3447	64	1798
3449	64	1799
3451	64	1800
3453	64	1801
3455	64	1802
3457	64	1803
3459	64	1804
3461	64	1805
3463	64	1806
3465	64	1807
3467	64	1808
3469	64	1809
3471	64	1810
3473	64	1811
3475	64	1812
3477	64	1813
3479	64	1814
3481	64	1815
3483	64	1816
3485	64	1817
3487	65	1818
3489	65	1819
3491	65	1820
3493	65	1821
3495	65	1822
3497	65	1823
3499	65	1824
3501	65	1825
3503	65	1826
3505	65	1827
3507	65	1828
3509	65	1829
3511	65	1830
3513	65	1831
3515	65	1832
3517	65	1833
3519	65	1834
3521	65	1835
3523	65	1836
3525	65	1837
3527	65	1838
3529	65	1839
3531	65	1840
3533	65	1841
3535	65	1842
3537	65	1843
3539	65	1844
3541	65	1845
3543	65	1846
3545	66	1847
3547	66	1848
3549	66	1849
3551	66	1850
3553	66	1851
3555	66	1852
3557	66	1853
3559	66	1854
3561	66	1855
3563	66	1856
3565	66	1857
3567	66	1858
3569	66	1859
3571	66	1860
3573	66	1861
3575	66	1862
3577	66	1863
3579	66	1864
3581	66	1865
3583	66	1866
3585	66	1867
3587	66	1868
3589	66	1869
3591	66	1870
3593	66	1871
3595	66	1872
3597	66	1873
3599	66	1874
3601	66	1875
3603	67	1876
3605	67	1877
3607	67	1878
3609	67	1879
3611	67	1880
3613	67	1881
3615	67	1882
3617	67	1883
3619	67	1884
3621	67	1885
3623	67	1886
3625	67	1887
3627	67	1888
3629	67	1889
3631	67	1890
3633	67	1891
3635	67	1892
3637	67	1893
3639	67	1894
3641	67	1895
3643	67	1896
3645	67	1897
3647	67	1898
3649	67	1899
3651	67	1900
3653	67	1901
3655	67	1902
3657	67	1903
3659	67	1904
66	107	6
68	108	6
70	109	6
72	110	6
74	111	6
76	112	6
78	113	6
80	114	6
82	115	6
84	116	6
86	117	6
88	118	6
90	119	6
92	120	6
94	121	6
96	122	6
98	123	6
100	124	6
102	125	6
104	126	6
106	127	6
108	128	6
110	129	6
112	130	6
114	131	6
116	132	6
118	133	6
120	134	6
122	135	6
124	136	7
126	137	7
128	138	7
130	139	7
132	140	7
134	141	7
136	142	7
138	143	7
140	144	7
142	145	7
144	146	7
146	147	7
148	148	7
150	149	7
152	150	7
154	151	7
156	152	7
158	153	7
160	154	7
162	155	7
164	156	7
166	157	7
168	158	7
170	159	7
172	160	7
174	161	7
176	162	7
178	163	7
180	164	7
182	165	8
184	166	8
186	167	8
188	168	8
190	169	8
192	170	8
194	171	8
196	172	8
198	173	8
200	174	8
202	175	8
204	176	8
206	177	8
208	178	8
210	179	8
212	180	8
214	181	8
216	182	8
218	183	8
220	184	8
222	185	8
224	186	8
226	187	8
228	188	8
230	189	8
232	190	8
234	191	8
236	192	8
238	193	8
240	194	9
242	195	9
244	196	9
246	197	9
248	198	9
250	199	9
252	200	9
254	201	9
256	202	9
258	203	9
260	204	9
262	205	9
264	206	9
266	207	9
268	208	9
270	209	9
272	210	9
274	211	9
276	212	9
278	213	9
280	214	9
282	215	9
284	216	9
286	217	9
288	218	9
290	219	9
292	220	9
294	221	9
296	222	9
298	223	10
300	224	10
302	225	10
304	226	10
306	227	10
308	228	10
310	229	10
312	230	10
314	231	10
316	232	10
318	233	10
320	234	10
322	235	10
324	236	10
326	237	10
328	238	10
330	239	10
332	240	10
334	241	10
336	242	10
338	243	10
340	244	10
342	245	10
344	246	10
346	247	10
348	248	10
350	249	10
352	250	10
354	251	10
356	252	11
358	253	11
360	254	11
362	255	11
364	256	11
366	257	11
368	258	11
370	259	11
372	260	11
374	261	11
376	262	11
378	263	11
380	264	11
382	265	11
384	266	11
386	267	11
388	268	11
390	269	11
392	270	11
394	271	11
396	272	11
398	273	11
400	274	11
402	275	11
404	276	11
406	277	11
408	278	11
410	279	11
412	280	11
414	281	12
416	282	12
418	283	12
420	284	12
422	285	12
424	286	12
426	287	12
428	288	12
430	289	12
432	290	12
434	291	12
436	292	12
438	293	12
440	294	12
442	295	12
444	296	12
446	297	12
448	298	12
450	299	12
452	300	12
454	301	12
456	302	12
458	303	12
460	304	12
462	305	12
464	306	12
466	307	12
468	308	12
470	309	12
472	310	13
474	311	13
476	312	13
478	313	13
480	314	13
482	315	13
484	316	13
486	317	13
488	318	13
490	319	13
492	320	13
494	321	13
496	322	13
498	323	13
500	324	13
502	325	13
504	326	13
506	327	13
508	328	13
510	329	13
512	330	13
514	331	13
516	332	13
518	333	13
520	334	13
522	335	13
524	336	13
526	337	13
528	338	13
530	339	14
532	340	14
534	341	14
536	342	14
538	343	14
540	344	14
542	345	14
544	346	14
546	347	14
548	348	14
550	349	14
552	350	14
554	351	14
556	352	14
558	353	14
560	354	14
562	355	14
564	356	14
566	357	14
568	358	14
570	359	14
572	360	14
574	361	14
576	362	14
578	363	14
580	364	14
582	365	14
584	366	14
586	367	14
588	368	15
590	369	15
592	370	15
594	371	15
596	372	15
598	373	15
600	374	15
602	375	15
604	376	15
606	377	15
608	378	15
610	379	15
612	380	15
614	381	15
616	382	15
618	383	15
620	384	15
622	385	15
624	386	15
626	387	15
628	388	15
630	389	15
632	390	15
634	391	15
636	392	15
638	393	15
640	394	15
642	395	15
644	396	15
646	397	16
648	398	16
650	399	16
652	400	16
654	401	16
656	402	16
658	403	16
660	404	16
662	405	16
664	406	16
666	407	16
668	408	16
670	409	16
672	410	16
674	411	16
676	412	16
678	413	16
680	414	16
682	415	16
684	416	16
686	417	16
688	418	16
690	419	16
692	420	16
694	421	16
696	422	16
698	423	16
700	424	16
702	425	16
704	426	17
706	427	17
708	428	17
710	429	17
712	430	17
714	431	17
716	432	17
718	433	17
720	434	17
722	435	17
724	436	17
726	437	17
728	438	17
730	439	17
732	440	17
734	441	17
736	442	17
738	443	17
740	444	17
742	445	17
744	446	17
746	447	17
748	448	17
750	449	17
752	450	17
754	451	17
756	452	17
758	453	17
760	454	17
762	455	18
764	456	18
766	457	18
768	458	18
770	459	18
772	460	18
774	461	18
776	462	18
778	463	18
780	464	18
782	465	18
784	466	18
786	467	18
788	468	18
790	469	18
792	470	18
794	471	18
796	472	18
798	473	18
800	474	18
802	475	18
804	476	18
806	477	18
808	478	18
810	479	18
812	480	18
814	481	18
816	482	18
818	483	18
820	484	19
822	485	19
824	486	19
826	487	19
828	488	19
830	489	19
832	490	19
834	491	19
836	492	19
838	493	19
840	494	19
842	495	19
844	496	19
846	497	19
848	498	19
850	499	19
852	500	19
854	501	19
856	502	19
858	503	19
860	504	19
862	505	19
864	506	19
866	507	19
868	508	19
870	509	19
872	510	19
874	511	19
876	512	19
878	513	20
880	514	20
882	515	20
884	516	20
886	517	20
888	518	20
890	519	20
892	520	20
894	521	20
896	522	20
898	523	20
900	524	20
902	525	20
904	526	20
906	527	20
908	528	20
910	529	20
912	530	20
914	531	20
916	532	20
918	533	20
920	534	20
922	535	20
924	536	20
926	537	20
928	538	20
930	539	20
932	540	20
934	541	20
936	542	21
938	543	21
940	544	21
942	545	21
944	546	21
946	547	21
948	548	21
950	549	21
952	550	21
954	551	21
956	552	21
958	553	21
960	554	21
962	555	21
964	556	21
966	557	21
968	558	21
970	559	21
972	560	21
974	561	21
976	562	21
978	563	21
980	564	21
982	565	21
984	566	21
986	567	21
988	568	21
990	569	21
992	570	21
994	571	22
996	572	22
998	573	22
1000	574	22
1002	575	22
1004	576	22
1006	577	22
1008	578	22
1010	579	22
1012	580	22
1014	581	22
1016	582	22
1018	583	22
1020	584	22
1022	585	22
1024	586	22
1026	587	22
1028	588	22
1030	589	22
1032	590	22
1034	591	22
1036	592	22
1038	593	22
1040	594	22
1042	595	22
1044	596	22
1046	597	22
1048	598	22
1050	599	22
1052	600	23
1054	601	23
1056	602	23
1058	603	23
1060	604	23
1062	605	23
1064	606	23
1066	607	23
1068	608	23
1070	609	23
1072	610	23
1074	611	23
1076	612	23
1078	613	23
1080	614	23
1082	615	23
1084	616	23
1086	617	23
1088	618	23
1090	619	23
1092	620	23
1094	621	23
1096	622	23
1098	623	23
1100	624	23
1102	625	23
1104	626	23
1106	627	23
1108	628	23
1110	629	24
1112	630	24
1114	631	24
1116	632	24
1118	633	24
1120	634	24
1122	635	24
1124	636	24
1126	637	24
1128	638	24
1130	639	24
1132	640	24
1134	641	24
1136	642	24
1138	643	24
1140	644	24
1142	645	24
1144	646	24
1146	647	24
1148	648	24
1150	649	24
1152	650	24
1154	651	24
1156	652	24
1158	653	24
1160	654	24
1162	655	24
1164	656	24
1166	657	24
1168	658	25
1170	659	25
1172	660	25
1174	661	25
1176	662	25
1178	663	25
1180	664	25
1182	665	25
1184	666	25
1186	667	25
1188	668	25
1190	669	25
1192	670	25
1194	671	25
1196	672	25
1198	673	25
1200	674	25
1202	675	25
1204	676	25
1206	677	25
1208	678	25
1210	679	25
1212	680	25
1214	681	25
1216	682	25
1218	683	25
1220	684	25
1222	685	25
1224	686	25
1226	687	26
1228	688	26
1230	689	26
1232	690	26
1234	691	26
1236	692	26
1238	693	26
1240	694	26
1242	695	26
1244	696	26
1246	697	26
1248	698	26
1250	699	26
1252	700	26
1254	701	26
1256	702	26
1258	703	26
1260	704	26
1262	705	26
1264	706	26
1266	707	26
1268	708	26
1270	709	26
1272	710	26
1274	711	26
1276	712	26
1278	713	26
1280	714	26
1282	715	26
1284	716	27
1286	717	27
1288	718	27
1290	719	27
1292	720	27
1294	721	27
1296	722	27
1298	723	27
1300	724	27
1302	725	27
1304	726	27
1306	727	27
1308	728	27
1310	729	27
1312	730	27
1314	731	27
1316	732	27
1318	733	27
1320	734	27
1322	735	27
1324	736	27
1326	737	27
1328	738	27
1330	739	27
1332	740	27
1334	741	27
1336	742	27
1338	743	27
1340	744	27
1342	745	28
1344	746	28
1346	747	28
1348	748	28
1350	749	28
1352	750	28
1354	751	28
1356	752	28
1358	753	28
1360	754	28
1362	755	28
1364	756	28
1366	757	28
1368	758	28
1370	759	28
1372	760	28
1374	761	28
1376	762	28
1378	763	28
1380	764	28
1382	765	28
1384	766	28
1386	767	28
1388	768	28
1390	769	28
1392	770	28
1394	771	28
1396	772	28
1398	773	28
1400	774	29
1402	775	29
1404	776	29
1406	777	29
1408	778	29
1410	779	29
1412	780	29
1414	781	29
1416	782	29
1418	783	29
1420	784	29
1422	785	29
1424	786	29
1426	787	29
1428	788	29
1430	789	29
1432	790	29
1434	791	29
1436	792	29
1438	793	29
1440	794	29
1442	795	29
1444	796	29
1446	797	29
1448	798	29
1450	799	29
1452	800	29
1454	801	29
1456	802	29
1458	803	30
1460	804	30
1462	805	30
1464	806	30
1466	807	30
1468	808	30
1470	809	30
1472	810	30
1474	811	30
1476	812	30
1478	813	30
1480	814	30
1482	815	30
1484	816	30
1486	817	30
1488	818	30
1490	819	30
1492	820	30
1494	821	30
1496	822	30
1498	823	30
1500	824	30
1502	825	30
1504	826	30
1506	827	30
1508	828	30
1510	829	30
1512	830	30
1514	831	30
1516	832	31
1518	833	31
1520	834	31
1522	835	31
1524	836	31
1526	837	31
1528	838	31
1530	839	31
1532	840	31
1534	841	31
1536	842	31
1538	843	31
1540	844	31
1542	845	31
1544	846	31
1546	847	31
1548	848	31
1550	849	31
1552	850	31
1554	851	31
1556	852	31
1558	853	31
1560	854	31
1562	855	31
1564	856	31
1566	857	31
1568	858	31
1570	859	31
1572	860	31
1574	861	32
1576	862	32
1578	863	32
1580	864	32
1582	865	32
1584	866	32
1586	867	32
1588	868	32
1590	869	32
1592	870	32
1594	871	32
1596	872	32
1598	873	32
1600	874	32
1602	875	32
1604	876	32
1606	877	32
1608	878	32
1610	879	32
1612	880	32
1614	881	32
1616	882	32
1618	883	32
1620	884	32
1622	885	32
1624	886	32
1626	887	32
1628	888	32
1630	889	32
1632	890	33
1634	891	33
1636	892	33
1638	893	33
1640	894	33
1642	895	33
1644	896	33
1646	897	33
1648	898	33
1650	899	33
1652	900	33
1654	901	33
1656	902	33
1658	903	33
1660	904	33
1662	905	33
1664	906	33
1666	907	33
1668	908	33
1670	909	33
1672	910	33
1674	911	33
1676	912	33
1678	913	33
1680	914	33
1682	915	33
1684	916	33
1686	917	33
1688	918	33
1690	919	34
1692	920	34
1694	921	34
1696	922	34
1698	923	34
1700	924	34
1702	925	34
1704	926	34
1706	927	34
1708	928	34
1710	929	34
1712	930	34
1714	931	34
1716	932	34
1718	933	34
1720	934	34
1722	935	34
1724	936	34
1726	937	34
1728	938	34
1730	939	34
1732	940	34
1734	941	34
1736	942	34
1738	943	34
1740	944	34
1742	945	34
1744	946	34
1746	947	34
1748	948	35
1750	949	35
1752	950	35
1754	951	35
1756	952	35
1758	953	35
1760	954	35
1762	955	35
1764	956	35
1766	957	35
1768	958	35
1770	959	35
1772	960	35
1774	961	35
1776	962	35
1778	963	35
1780	964	35
1782	965	35
1784	966	35
1786	967	35
1788	968	35
1790	969	35
1792	970	35
1794	971	35
1796	972	35
1798	973	35
1800	974	35
1802	975	35
1804	976	35
1806	977	36
1808	978	36
1810	979	36
1812	980	36
1814	981	36
1816	982	36
1818	983	36
1820	984	36
1822	985	36
1824	986	36
1826	987	36
1828	988	36
1830	989	36
1832	990	36
1834	991	36
1836	992	36
1838	993	36
1840	994	36
1842	995	36
1844	996	36
1846	997	36
1848	998	36
1850	999	36
1852	1000	36
1854	1001	36
1856	1002	36
1858	1003	36
1860	1004	36
1862	1005	36
1864	1006	37
1866	1007	37
1868	1008	37
1870	1009	37
1872	1010	37
1874	1011	37
1876	1012	37
1878	1013	37
1880	1014	37
1882	1015	37
1884	1016	37
1886	1017	37
1888	1018	37
1890	1019	37
1892	1020	37
1894	1021	37
1896	1022	37
1898	1023	37
1900	1024	37
1902	1025	37
1904	1026	37
1906	1027	37
1908	1028	37
1910	1029	37
1912	1030	37
1914	1031	37
1916	1032	37
1918	1033	37
1920	1034	37
1922	1035	38
1924	1036	38
1926	1037	38
1928	1038	38
1930	1039	38
1932	1040	38
1934	1041	38
1936	1042	38
1938	1043	38
1940	1044	38
1942	1045	38
1944	1046	38
1946	1047	38
1948	1048	38
1950	1049	38
1952	1050	38
1954	1051	38
1956	1052	38
1958	1053	38
1960	1054	38
1962	1055	38
1964	1056	38
1966	1057	38
1968	1058	38
1970	1059	38
1972	1060	38
1974	1061	38
1976	1062	38
1978	1063	38
1980	1064	39
1982	1065	39
1984	1066	39
1986	1067	39
1988	1068	39
1990	1069	39
1992	1070	39
1994	1071	39
1996	1072	39
1998	1073	39
2000	1074	39
2002	1075	39
2004	1076	39
2006	1077	39
2008	1078	39
2010	1079	39
2012	1080	39
2014	1081	39
2016	1082	39
2018	1083	39
2020	1084	39
2022	1085	39
2024	1086	39
2026	1087	39
2028	1088	39
2030	1089	39
2032	1090	39
2034	1091	39
2036	1092	39
2038	1093	40
2040	1094	40
2042	1095	40
2044	1096	40
2046	1097	40
2048	1098	40
2050	1099	40
2052	1100	40
2054	1101	40
2056	1102	40
2058	1103	40
2060	1104	40
2062	1105	40
2064	1106	40
2066	1107	40
2068	1108	40
2070	1109	40
2072	1110	40
2074	1111	40
2076	1112	40
2078	1113	40
2080	1114	40
2082	1115	40
2084	1116	40
2086	1117	40
2088	1118	40
2090	1119	40
2092	1120	40
2094	1121	40
2096	1122	41
2098	1123	41
2100	1124	41
2102	1125	41
2104	1126	41
2106	1127	41
2108	1128	41
2110	1129	41
2112	1130	41
2114	1131	41
2116	1132	41
2118	1133	41
2120	1134	41
2122	1135	41
2124	1136	41
2126	1137	41
2128	1138	41
2130	1139	41
2132	1140	41
2134	1141	41
2136	1142	41
2138	1143	41
2140	1144	41
2142	1145	41
2144	1146	41
2146	1147	41
2148	1148	41
2150	1149	41
2152	1150	41
2154	1151	42
2156	1152	42
2158	1153	42
2160	1154	42
2162	1155	42
2164	1156	42
2166	1157	42
2168	1158	42
2170	1159	42
2172	1160	42
2174	1161	42
2176	1162	42
2178	1163	42
2180	1164	42
2182	1165	42
2184	1166	42
2186	1167	42
2188	1168	42
2190	1169	42
2192	1170	42
2194	1171	42
2196	1172	42
2198	1173	42
2200	1174	42
2202	1175	42
2204	1176	42
2206	1177	42
2208	1178	42
2210	1179	42
2212	1180	43
2214	1181	43
2216	1182	43
2218	1183	43
2220	1184	43
2222	1185	43
2224	1186	43
2226	1187	43
2228	1188	43
2230	1189	43
2232	1190	43
2234	1191	43
2236	1192	43
2238	1193	43
2240	1194	43
2242	1195	43
2244	1196	43
2246	1197	43
2248	1198	43
2250	1199	43
2252	1200	43
2254	1201	43
2256	1202	43
2258	1203	43
2260	1204	43
2262	1205	43
2264	1206	43
2266	1207	43
2268	1208	43
2270	1209	44
2272	1210	44
2274	1211	44
2276	1212	44
2278	1213	44
2280	1214	44
2282	1215	44
2284	1216	44
2286	1217	44
2288	1218	44
2290	1219	44
2292	1220	44
2294	1221	44
2296	1222	44
2298	1223	44
2300	1224	44
2302	1225	44
2304	1226	44
2306	1227	44
2308	1228	44
2310	1229	44
2312	1230	44
2314	1231	44
2316	1232	44
2318	1233	44
2320	1234	44
2322	1235	44
2324	1236	44
2326	1237	44
2328	1238	45
2330	1239	45
2332	1240	45
2334	1241	45
2336	1242	45
2338	1243	45
2340	1244	45
2342	1245	45
2344	1246	45
2346	1247	45
2348	1248	45
2350	1249	45
2352	1250	45
2354	1251	45
2356	1252	45
2358	1253	45
2360	1254	45
2362	1255	45
2364	1256	45
2366	1257	45
2368	1258	45
2370	1259	45
2372	1260	45
2374	1261	45
2376	1262	45
2378	1263	45
2380	1264	45
2382	1265	45
2384	1266	45
2386	1267	46
2388	1268	46
2390	1269	46
2392	1270	46
2394	1271	46
2396	1272	46
2398	1273	46
2400	1274	46
2402	1275	46
2404	1276	46
2406	1277	46
2408	1278	46
2410	1279	46
2412	1280	46
2414	1281	46
2416	1282	46
2418	1283	46
2420	1284	46
2422	1285	46
2424	1286	46
2426	1287	46
2428	1288	46
2430	1289	46
2432	1290	46
2434	1291	46
2436	1292	46
2438	1293	46
2440	1294	46
2442	1295	46
2444	1296	47
2446	1297	47
2448	1298	47
2450	1299	47
2452	1300	47
2454	1301	47
2456	1302	47
2458	1303	47
2460	1304	47
2462	1305	47
2464	1306	47
2466	1307	47
2468	1308	47
2470	1309	47
2472	1310	47
2474	1311	47
2476	1312	47
2478	1313	47
2480	1314	47
2482	1315	47
2484	1316	47
2486	1317	47
2488	1318	47
2490	1319	47
2492	1320	47
2494	1321	47
2496	1322	47
2498	1323	47
2500	1324	47
2502	1325	48
2504	1326	48
2506	1327	48
2508	1328	48
2510	1329	48
2512	1330	48
2514	1331	48
2516	1332	48
2518	1333	48
2520	1334	48
2522	1335	48
2524	1336	48
2526	1337	48
2528	1338	48
2530	1339	48
2532	1340	48
2534	1341	48
2536	1342	48
2538	1343	48
2540	1344	48
2542	1345	48
2544	1346	48
2546	1347	48
2548	1348	48
2550	1349	48
2552	1350	48
2554	1351	48
2556	1352	48
2558	1353	48
2560	1354	49
2562	1355	49
2564	1356	49
2566	1357	49
2568	1358	49
2570	1359	49
2572	1360	49
2574	1361	49
2576	1362	49
2578	1363	49
2580	1364	49
2582	1365	49
2584	1366	49
2586	1367	49
2588	1368	49
2590	1369	49
2592	1370	49
2594	1371	49
2596	1372	49
2598	1373	49
2600	1374	49
2602	1375	49
2604	1376	49
2606	1377	49
2608	1378	49
2610	1379	49
2612	1380	49
2614	1381	49
2616	1382	49
2618	1383	50
2620	1384	50
2622	1385	50
2624	1386	50
2626	1387	50
2628	1388	50
2630	1389	50
2632	1390	50
2634	1391	50
2636	1392	50
2638	1393	50
2640	1394	50
2642	1395	50
2644	1396	50
2646	1397	50
2648	1398	50
2650	1399	50
2652	1400	50
2654	1401	50
2656	1402	50
2658	1403	50
2660	1404	50
2662	1405	50
2664	1406	50
2666	1407	50
2668	1408	50
2670	1409	50
2672	1410	50
2674	1411	50
2676	1412	51
2678	1413	51
2680	1414	51
2682	1415	51
2684	1416	51
2686	1417	51
2688	1418	51
2690	1419	51
2692	1420	51
2694	1421	51
2696	1422	51
2698	1423	51
2700	1424	51
2702	1425	51
2704	1426	51
2706	1427	51
2708	1428	51
2710	1429	51
2712	1430	51
2714	1431	51
2716	1432	51
2718	1433	51
2720	1434	51
2722	1435	51
2724	1436	51
2726	1437	51
2728	1438	51
2730	1439	51
2732	1440	51
2734	1441	52
2736	1442	52
2738	1443	52
2740	1444	52
2742	1445	52
2744	1446	52
2746	1447	52
2748	1448	52
2750	1449	52
2752	1450	52
2754	1451	52
2756	1452	52
2758	1453	52
2760	1454	52
2762	1455	52
2764	1456	52
2766	1457	52
2768	1458	52
2770	1459	52
2772	1460	52
2774	1461	52
2776	1462	52
2778	1463	52
2780	1464	52
2782	1465	52
2784	1466	52
2786	1467	52
2788	1468	52
2790	1469	52
2792	1470	53
2794	1471	53
2796	1472	53
2798	1473	53
2800	1474	53
2802	1475	53
2804	1476	53
2806	1477	53
2808	1478	53
2810	1479	53
2812	1480	53
2814	1481	53
2816	1482	53
2818	1483	53
2820	1484	53
2822	1485	53
2824	1486	53
2826	1487	53
2828	1488	53
2830	1489	53
2832	1490	53
2834	1491	53
2836	1492	53
2838	1493	53
2840	1494	53
2842	1495	53
2844	1496	53
2846	1497	53
2848	1498	53
2850	1499	54
2852	1500	54
2854	1501	54
2856	1502	54
2858	1503	54
2860	1504	54
2862	1505	54
2864	1506	54
2866	1507	54
2868	1508	54
2870	1509	54
2872	1510	54
2874	1511	54
2876	1512	54
2878	1513	54
2880	1514	54
2882	1515	54
2884	1516	54
2886	1517	54
2888	1518	54
2890	1519	54
2892	1520	54
2894	1521	54
2896	1522	54
2898	1523	54
2900	1524	54
2902	1525	54
2904	1526	54
2906	1527	54
2908	1528	55
2910	1529	55
2912	1530	55
2914	1531	55
2916	1532	55
2918	1533	55
2920	1534	55
2922	1535	55
2924	1536	55
2926	1537	55
2928	1538	55
2930	1539	55
2932	1540	55
2934	1541	55
2936	1542	55
2938	1543	55
2940	1544	55
2942	1545	55
2944	1546	55
2946	1547	55
2948	1548	55
2950	1549	55
2952	1550	55
2954	1551	55
2956	1552	55
2958	1553	55
2960	1554	55
2962	1555	55
2964	1556	55
2966	1557	56
2968	1558	56
2970	1559	56
2972	1560	56
2974	1561	56
2976	1562	56
2978	1563	56
2980	1564	56
2982	1565	56
2984	1566	56
2986	1567	56
2988	1568	56
2990	1569	56
2992	1570	56
2994	1571	56
2996	1572	56
2998	1573	56
3000	1574	56
3002	1575	56
3004	1576	56
3006	1577	56
3008	1578	56
3010	1579	56
3012	1580	56
3014	1581	56
3016	1582	56
3018	1583	56
3020	1584	56
3022	1585	56
3024	1586	57
3026	1587	57
3028	1588	57
3030	1589	57
3032	1590	57
3034	1591	57
3036	1592	57
3038	1593	57
3040	1594	57
3042	1595	57
3044	1596	57
3046	1597	57
3048	1598	57
3050	1599	57
3052	1600	57
3054	1601	57
3056	1602	57
3058	1603	57
3060	1604	57
3062	1605	57
3064	1606	57
3066	1607	57
3068	1608	57
3070	1609	57
3072	1610	57
3074	1611	57
3076	1612	57
3078	1613	57
3080	1614	57
3082	1615	58
3084	1616	58
3086	1617	58
3088	1618	58
3090	1619	58
3092	1620	58
3094	1621	58
3096	1622	58
3098	1623	58
3100	1624	58
3102	1625	58
3104	1626	58
3106	1627	58
3108	1628	58
3110	1629	58
3112	1630	58
3114	1631	58
3116	1632	58
3118	1633	58
3120	1634	58
3122	1635	58
3124	1636	58
3126	1637	58
3128	1638	58
3130	1639	58
3132	1640	58
3134	1641	58
3136	1642	58
3138	1643	58
3140	1644	59
3142	1645	59
3144	1646	59
3146	1647	59
3148	1648	59
3150	1649	59
3152	1650	59
3154	1651	59
3156	1652	59
3158	1653	59
3160	1654	59
3162	1655	59
3164	1656	59
3166	1657	59
3168	1658	59
3170	1659	59
3172	1660	59
3174	1661	59
3176	1662	59
3178	1663	59
3180	1664	59
3182	1665	59
3184	1666	59
3186	1667	59
3188	1668	59
3190	1669	59
3192	1670	59
3194	1671	59
3196	1672	59
3198	1673	60
3200	1674	60
3202	1675	60
3204	1676	60
3206	1677	60
3208	1678	60
3210	1679	60
3212	1680	60
3214	1681	60
3216	1682	60
3218	1683	60
3220	1684	60
3222	1685	60
3224	1686	60
3226	1687	60
3228	1688	60
3230	1689	60
3232	1690	60
3234	1691	60
3236	1692	60
3238	1693	60
3240	1694	60
3242	1695	60
3244	1696	60
3246	1697	60
3248	1698	60
3250	1699	60
3252	1700	60
3254	1701	60
3256	1702	61
3258	1703	61
3260	1704	61
3262	1705	61
3264	1706	61
3266	1707	61
3268	1708	61
3270	1709	61
3272	1710	61
3274	1711	61
3276	1712	61
3278	1713	61
3280	1714	61
3282	1715	61
3284	1716	61
3286	1717	61
3288	1718	61
3290	1719	61
3292	1720	61
3294	1721	61
3296	1722	61
3298	1723	61
3300	1724	61
3302	1725	61
3304	1726	61
3306	1727	61
3308	1728	61
3310	1729	61
3312	1730	61
3314	1731	62
3316	1732	62
3318	1733	62
3320	1734	62
3322	1735	62
3324	1736	62
3661	1737	62
3328	1738	62
3330	1739	62
3332	1740	62
3334	1741	62
3336	1742	62
3338	1743	62
3340	1744	62
3342	1745	62
3344	1746	62
3346	1747	62
3348	1748	62
3350	1749	62
3352	1750	62
3354	1751	62
3356	1752	62
3358	1753	62
3360	1754	62
3362	1755	62
3364	1756	62
3366	1757	62
3368	1758	62
3370	1759	62
3372	1760	63
3374	1761	63
3376	1762	63
3378	1763	63
3380	1764	63
3382	1765	63
3384	1766	63
3386	1767	63
3388	1768	63
3390	1769	63
3392	1770	63
3394	1771	63
3396	1772	63
3398	1773	63
3400	1774	63
3402	1775	63
3404	1776	63
3406	1777	63
3408	1778	63
3410	1779	63
3412	1780	63
3414	1781	63
3416	1782	63
3418	1783	63
3420	1784	63
3422	1785	63
3424	1786	63
3426	1787	63
3428	1788	63
3430	1789	64
3432	1790	64
3434	1791	64
3436	1792	64
3438	1793	64
3440	1794	64
3442	1795	64
3444	1796	64
3446	1797	64
3448	1798	64
3450	1799	64
3452	1800	64
3454	1801	64
3456	1802	64
3458	1803	64
3460	1804	64
3462	1805	64
3464	1806	64
3466	1807	64
3468	1808	64
3470	1809	64
3472	1810	64
3474	1811	64
3476	1812	64
3478	1813	64
3480	1814	64
3482	1815	64
3484	1816	64
3486	1817	64
3488	1818	65
3490	1819	65
3492	1820	65
3494	1821	65
3496	1822	65
3498	1823	65
3500	1824	65
3502	1825	65
3504	1826	65
3506	1827	65
3508	1828	65
3510	1829	65
3512	1830	65
3514	1831	65
3516	1832	65
3518	1833	65
3520	1834	65
3522	1835	65
3524	1836	65
3526	1837	65
3528	1838	65
3530	1839	65
3532	1840	65
3534	1841	65
3536	1842	65
3538	1843	65
3540	1844	65
3542	1845	65
3544	1846	65
3546	1847	66
3548	1848	66
3550	1849	66
3552	1850	66
3554	1851	66
3556	1852	66
3558	1853	66
3560	1854	66
3562	1855	66
3564	1856	66
3566	1857	66
3568	1858	66
3570	1859	66
3572	1860	66
3574	1861	66
3576	1862	66
3578	1863	66
3580	1864	66
3582	1865	66
3584	1866	66
3586	1867	66
3588	1868	66
3590	1869	66
3592	1870	66
3594	1871	66
3596	1872	66
3598	1873	66
3600	1874	66
3602	1875	66
3604	1876	67
3606	1877	67
3608	1878	67
3610	1879	67
3612	1880	67
3614	1881	67
3616	1882	67
3618	1883	67
3620	1884	67
3622	1885	67
3624	1886	67
3626	1887	67
3628	1888	67
3630	1889	67
3632	1890	67
3634	1891	67
3636	1892	67
3638	1893	67
3640	1894	67
3642	1895	67
3644	1896	67
3646	1897	67
3648	1898	67
3650	1899	67
3652	1900	67
3654	1901	67
3656	1902	67
3658	1903	67
3660	1904	67
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: halffullapp; Owner: halffullapp
--

COPY halffullapp.south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	quotes	0001_initial	2013-08-16 05:11:57-07
2	quotes	0002_auto__add_field_quote_attribution__add_field_quote_color	2013-08-16 05:12:25-07
3	quotes	0003_auto__del_field_quote_attribution__del_field_quote_color	2013-08-16 05:13:04-07
4	quotes	0004_auto__add_field_quote_attribution__add_field_quote_color	2013-08-16 05:13:23-07
5	quotes	0005_auto__chg_field_quote_color	2013-08-16 05:15:38-07
6	quotes	0006_auto__add_field_quote_lang	2013-08-16 07:26:30-07
7	quotes	0007_auto__chg_field_quote_quote__add_index_quote_quote	2013-08-19 06:16:29-07
8	quotes	0008_auto__chg_field_quote_quote__del_index_quote_quote	2013-08-19 06:16:44-07
9	quotes	0009_auto__add_field_quote_translated_quote	2013-08-19 06:16:56-07
10	quotes	0010_auto__del_field_quote_translated_quote	2013-08-19 06:17:37-07
11	quotes	0011_auto	2013-08-19 06:18:41-07
12	quotes	0012_auto__del_field_quote_quote	2013-08-19 06:25:33-07
13	quotes	0013_auto__add_field_quote_quote	2013-08-19 06:25:52-07
\.


--
-- Name: auth_group idx_28053_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_group
    ADD CONSTRAINT idx_28053_primary PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_28056_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_group_permissions
    ADD CONSTRAINT idx_28056_primary PRIMARY KEY (id);


--
-- Name: auth_permission idx_28059_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_permission
    ADD CONSTRAINT idx_28059_primary PRIMARY KEY (id);


--
-- Name: auth_user idx_28062_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user
    ADD CONSTRAINT idx_28062_primary PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_28065_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user_groups
    ADD CONSTRAINT idx_28065_primary PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_28068_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user_user_permissions
    ADD CONSTRAINT idx_28068_primary PRIMARY KEY (id);


--
-- Name: django_admin_log idx_28071_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.django_admin_log
    ADD CONSTRAINT idx_28071_primary PRIMARY KEY (id);


--
-- Name: django_content_type idx_28077_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.django_content_type
    ADD CONSTRAINT idx_28077_primary PRIMARY KEY (id);


--
-- Name: django_session idx_28080_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.django_session
    ADD CONSTRAINT idx_28080_primary PRIMARY KEY (session_key);


--
-- Name: django_site idx_28086_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.django_site
    ADD CONSTRAINT idx_28086_primary PRIMARY KEY (id);


--
-- Name: quotes_quote idx_28089_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.quotes_quote
    ADD CONSTRAINT idx_28089_primary PRIMARY KEY (id);


--
-- Name: quotes_quote_translated_quotes idx_28095_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.quotes_quote_translated_quotes
    ADD CONSTRAINT idx_28095_primary PRIMARY KEY (id);


--
-- Name: south_migrationhistory idx_28098_primary; Type: CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.south_migrationhistory
    ADD CONSTRAINT idx_28098_primary PRIMARY KEY (id);


--
-- Name: idx_28053_name; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28053_name ON halffullapp.auth_group USING btree (name);


--
-- Name: idx_28056_auth_group_permissions_5f412f9a; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28056_auth_group_permissions_5f412f9a ON halffullapp.auth_group_permissions USING btree (group_id);


--
-- Name: idx_28056_auth_group_permissions_83d7f98b; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28056_auth_group_permissions_83d7f98b ON halffullapp.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_28056_group_id; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28056_group_id ON halffullapp.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_28059_auth_permission_37ef4eb4; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28059_auth_permission_37ef4eb4 ON halffullapp.auth_permission USING btree (content_type_id);


--
-- Name: idx_28059_content_type_id; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28059_content_type_id ON halffullapp.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_28062_username; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28062_username ON halffullapp.auth_user USING btree (username);


--
-- Name: idx_28065_auth_user_groups_5f412f9a; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28065_auth_user_groups_5f412f9a ON halffullapp.auth_user_groups USING btree (group_id);


--
-- Name: idx_28065_auth_user_groups_6340c63c; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28065_auth_user_groups_6340c63c ON halffullapp.auth_user_groups USING btree (user_id);


--
-- Name: idx_28065_user_id; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28065_user_id ON halffullapp.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_28068_auth_user_user_permissions_6340c63c; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28068_auth_user_user_permissions_6340c63c ON halffullapp.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_28068_auth_user_user_permissions_83d7f98b; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28068_auth_user_user_permissions_83d7f98b ON halffullapp.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_28068_user_id; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28068_user_id ON halffullapp.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_28071_django_admin_log_37ef4eb4; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28071_django_admin_log_37ef4eb4 ON halffullapp.django_admin_log USING btree (content_type_id);


--
-- Name: idx_28071_django_admin_log_6340c63c; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28071_django_admin_log_6340c63c ON halffullapp.django_admin_log USING btree (user_id);


--
-- Name: idx_28077_app_label; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28077_app_label ON halffullapp.django_content_type USING btree (app_label, model);


--
-- Name: idx_28080_django_session_b7b81f0c; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28080_django_session_b7b81f0c ON halffullapp.django_session USING btree (expire_date);


--
-- Name: idx_28095_quotes_quote_translated_quotes_1026b143; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28095_quotes_quote_translated_quotes_1026b143 ON halffullapp.quotes_quote_translated_quotes USING btree (to_quote_id);


--
-- Name: idx_28095_quotes_quote_translated_quotes_2b9366ab; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE INDEX idx_28095_quotes_quote_translated_quotes_2b9366ab ON halffullapp.quotes_quote_translated_quotes USING btree (from_quote_id);


--
-- Name: idx_28095_quotes_quote_translated_quotes_from_quote_id_2e2d56f0; Type: INDEX; Schema: halffullapp; Owner: halffullapp
--

CREATE UNIQUE INDEX idx_28095_quotes_quote_translated_quotes_from_quote_id_2e2d56f0 ON halffullapp.quotes_quote_translated_quotes USING btree (from_quote_id, to_quote_id);


--
-- Name: django_admin_log content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES halffullapp.django_content_type(id);


--
-- Name: auth_permission content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES halffullapp.django_content_type(id);


--
-- Name: quotes_quote_translated_quotes from_quote_id_refs_id_5db4a294; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.quotes_quote_translated_quotes
    ADD CONSTRAINT from_quote_id_refs_id_5db4a294 FOREIGN KEY (from_quote_id) REFERENCES halffullapp.quotes_quote(id);


--
-- Name: auth_user_groups group_id_refs_id_274b862c; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user_groups
    ADD CONSTRAINT group_id_refs_id_274b862c FOREIGN KEY (group_id) REFERENCES halffullapp.auth_group(id);


--
-- Name: auth_group_permissions group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES halffullapp.auth_group(id);


--
-- Name: auth_user_user_permissions permission_id_refs_id_35d9ac25; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user_user_permissions
    ADD CONSTRAINT permission_id_refs_id_35d9ac25 FOREIGN KEY (permission_id) REFERENCES halffullapp.auth_permission(id);


--
-- Name: auth_group_permissions permission_id_refs_id_6ba0f519; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_group_permissions
    ADD CONSTRAINT permission_id_refs_id_6ba0f519 FOREIGN KEY (permission_id) REFERENCES halffullapp.auth_permission(id);


--
-- Name: quotes_quote_translated_quotes to_quote_id_refs_id_5db4a294; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.quotes_quote_translated_quotes
    ADD CONSTRAINT to_quote_id_refs_id_5db4a294 FOREIGN KEY (to_quote_id) REFERENCES halffullapp.quotes_quote(id);


--
-- Name: auth_user_groups user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES halffullapp.auth_user(id);


--
-- Name: auth_user_user_permissions user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES halffullapp.auth_user(id);


--
-- Name: django_admin_log user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: halffullapp; Owner: halffullapp
--

ALTER TABLE ONLY halffullapp.django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES halffullapp.auth_user(id);


--
-- PostgreSQL database dump complete
--

