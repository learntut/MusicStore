--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2018-03-27 23:10:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2839 (class 0 OID 34940)
-- Dependencies: 202
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY albums (albumid, genreid, artsistid, title, description, price) FROM stdin;
1	1	\N	Felista	Yani felista	90.00
2	1	2	Vandae mataram	Yani felista	90.00
3	\N	\N	\N	\N	\N
\.


--
-- TOC entry 2841 (class 0 OID 34951)
-- Dependencies: 204
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY artists (artistid, artistname) FROM stdin;
\.


--
-- TOC entry 2843 (class 0 OID 34959)
-- Dependencies: 206
-- Data for Name: generes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generes (genreid, genrename, decsription) FROM stdin;
1	pop	pop
2	indi pop	indi pop
3	Dance Pop	Dance Pop
4	Indian Ghazal	Indian Ghazal
5	Karnatic	Karnatic
6	Hindustani	Hindustani
\.


--
-- TOC entry 2845 (class 0 OID 34970)
-- Dependencies: 208
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY orders (orderid, orderno, orderdate, netamount, tax, totalamount) FROM stdin;
\.


--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 196
-- Name: albumid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('albumid_seq', 1, false);


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 201
-- Name: albums_albumid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('albums_albumid_seq', 3, true);


--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 197
-- Name: artistid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('artistid_seq', 1, false);


--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 203
-- Name: artists_artistid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('artists_artistid_seq', 1, false);


--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 198
-- Name: customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customerid_seq', 1, false);


--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 205
-- Name: generes_genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generes_genreid_seq', 6, true);


--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 199
-- Name: genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genreid_seq', 1, false);


--
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 200
-- Name: orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orderid_seq', 1, false);


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 207
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orders_orderid_seq', 1, false);


-- Completed on 2018-03-27 23:10:21

--
-- PostgreSQL database dump complete
--

