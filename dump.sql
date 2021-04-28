--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

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
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: ryujin
--

COPY public.admin (id, username, roles, password) FROM stdin;
1	admin	["ROLE_ADMIN"]	$argon2id$v=19$m=65536,t=4,p=1$fu3nsyFlnX1A/KsLGG1iDQ$nh3HdE5UHE+KYpCJ+Xg6A82sqSPyQrYgB4JXcKAfbQA
\.


--
-- Data for Name: conferencce; Type: TABLE DATA; Schema: public; Owner: ryujin
--

COPY public.conferencce (id, city, year, is_international, slug) FROM stdin;
1	Orlando	2021	t	orlando-2021
2	Marseille	2019	f	marseille-2019
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: ryujin
--

COPY public.comment (id, conferencce_id, author, text, email, created_at, photo_filename, state) FROM stdin;
1	2	Winter	vel turpis. Aliquam adipiscing	euismod.est.arcu@cursus.org	2021-08-08 19:46:48	placeholder.png	published
2	2	Asher	Cras	sociis@dictumeleifendnunc.net	2022-03-25 14:49:57	placeholder.png	published
3	2	Genevieve	arcu. Curabitur ut odio vel est tempor bibendum. Donec felis	eget.dictum@SuspendisseduiFusce.edu	2020-08-05 01:14:18	placeholder.png	published
4	2	Zelenia	nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque	id.sapien@interdum.co.uk	2021-07-15 10:41:48	placeholder.png	published
5	1	Rylee	fringilla purus mauris a nunc. In at pede. Cras	facilisis.magna.tellus@felisNulla.net	2021-08-20 00:33:03	placeholder.png	published
6	2	Gary	Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,	Duis.mi@enimnonnisi.com	2022-01-22 18:48:00	placeholder.png	published
7	1	Mikayla	felis.	nonummy.Fusce@anteNuncmauris.ca	2021-07-22 12:50:46	placeholder.png	published
8	2	Bruno	Curae; Phasellus ornare.	rhoncus@parturientmontesnascetur.co.uk	2022-04-15 20:30:35	placeholder.png	published
9	2	Macaulay	sit	eu.eleifend@faucibusMorbivehicula.edu	2021-10-23 19:13:30	placeholder.png	published
10	2	Melvin	lorem, eget mollis lectus pede et risus. Quisque libero lacus,	dictum.ultricies@Inornaresagittis.edu	2020-08-25 01:15:26	placeholder.png	published
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: ryujin
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20210419214340	2021-04-28 17:33:54	54
DoctrineMigrations\\Version20210422102711	2021-04-28 17:33:54	15
DoctrineMigrations\\Version20210422135950	2021-04-28 17:33:54	10
DoctrineMigrations\\Version20210422140634	2021-04-28 17:33:54	0
DoctrineMigrations\\Version20210422192331	2021-04-28 17:33:54	25
DoctrineMigrations\\Version20210428155503	2021-04-28 17:56:38	16
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: ryujin
--

COPY public.sessions (sess_id, sess_data, sess_lifetime, sess_time) FROM stdin;
3imasopanqvip0e9svbcnedeuq	\\x5f7366325f617474726962757465737c613a383a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32373a22687474703a2f2f6c6f63616c686f73743a383030302f61646d696e223b733a31383a225f637372662f61757468656e746963617465223b733a34333a22364b6c4754686973786b514f514765396e58617149646362625f71594f772d36555355476a677170757063223b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a353a2261646d696e223b733a31343a225f73656375726974795f6d61696e223b733a3438383a224f3a36373a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c47756172645c546f6b656e5c506f737441757468656e7469636174696f6e4775617264546f6b656e223a323a7b693a303b733a343a226d61696e223b693a313b613a353a7b693a303b4f3a31363a224170705c456e746974795c41646d696e223a343a7b733a32303a22004170705c456e746974795c41646d696e006964223b693a313b733a32363a22004170705c456e746974795c41646d696e00757365726e616d65223b733a353a2261646d696e223b733a32333a22004170705c456e746974795c41646d696e00726f6c6573223b613a313a7b693a303b733a31303a22524f4c455f41444d494e223b7d733a32363a22004170705c456e746974795c41646d696e0070617373776f7264223b733a39373a22246172676f6e32696424763d3139246d3d36353533362c743d342c703d31246675336e7379466c6e5831412f4b734c474731694451246e6833486445355548452b4b5970434a2b58673641383273715350795172596742344a58634b4166625141223b7d693a313b623a313b693a323b4e3b693a333b613a303a7b7d693a343b613a323a7b693a303b733a31303a22524f4c455f41444d494e223b693a313b733a393a22524f4c455f55534552223b7d7d7d223b733a31353a225f637372662f65612d64656c657465223b733a34333a2239766c666d4f66786e58514e647a5573336f58637a65574d46565a7734336c78504c3768683863397a7567223b733a31373a225f637372662f436f6e666572656e636365223b733a34333a22615f4e66574a624b3745415645676858554354726134464731706648473057576b613378776f536d785167223b733a31333a225f637372662f436f6d6d656e74223b733a34333a22716978784d366b786a757962473661324763306133365f453859667556322d5370726c5a65544d38306b55223b733a31383a225f637372662f636f6d6d656e745f666f726d223b733a34333a225a4341437a692d63576f3861766e33754a514f6c58626a353433326c65763456705f78656f516a37517649223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313631393632363637353b733a313a2263223b693a313631393632353538313b733a313a226c223b733a313a2230223b7d	1619628115	1619626675
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryujin
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, false);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryujin
--

SELECT pg_catalog.setval('public.comment_id_seq', 1, true);


--
-- Name: conferencce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ryujin
--

SELECT pg_catalog.setval('public.conferencce_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

