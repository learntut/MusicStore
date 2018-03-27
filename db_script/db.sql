--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2018-03-27 23:12:27

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 196 (class 1259 OID 34928)
-- Name: albumid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE albumid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE albumid_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 202 (class 1259 OID 34940)
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE albums (
    albumid integer NOT NULL,
    genreid numeric(3,0),
    artsistid numeric(3,0),
    title character varying(250),
    description character varying(500),
    price numeric(5,2)
);


ALTER TABLE albums OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 34938)
-- Name: albums_albumid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE albums_albumid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE albums_albumid_seq OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 201
-- Name: albums_albumid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE albums_albumid_seq OWNED BY albums.albumid;


--
-- TOC entry 197 (class 1259 OID 34930)
-- Name: artistid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE artistid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE artistid_seq OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 34951)
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE artists (
    artistid integer NOT NULL,
    artistname character varying(150)
);


ALTER TABLE artists OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 34949)
-- Name: artists_artistid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE artists_artistid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE artists_artistid_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 203
-- Name: artists_artistid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE artists_artistid_seq OWNED BY artists.artistid;


--
-- TOC entry 198 (class 1259 OID 34932)
-- Name: customerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customerid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customerid_seq OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 34959)
-- Name: generes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE generes (
    genreid integer NOT NULL,
    genrename character varying(50),
    decsription character varying
);


ALTER TABLE generes OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 34957)
-- Name: generes_genreid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generes_genreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generes_genreid_seq OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 205
-- Name: generes_genreid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generes_genreid_seq OWNED BY generes.genreid;


--
-- TOC entry 199 (class 1259 OID 34934)
-- Name: genreid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE genreid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genreid_seq OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 34936)
-- Name: orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orderid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orderid_seq OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 34970)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE orders (
    orderid integer NOT NULL,
    orderno character varying(5),
    orderdate date,
    netamount numeric(6,2),
    tax numeric(6,2),
    totalamount numeric(6,2)
);


ALTER TABLE orders OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 34968)
-- Name: orders_orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orders_orderid_seq OWNER TO postgres;

--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 207
-- Name: orders_orderid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orders_orderid_seq OWNED BY orders.orderid;


--
-- TOC entry 2700 (class 2604 OID 34943)
-- Name: albums albumid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY albums ALTER COLUMN albumid SET DEFAULT nextval('albums_albumid_seq'::regclass);


--
-- TOC entry 2701 (class 2604 OID 34954)
-- Name: artists artistid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY artists ALTER COLUMN artistid SET DEFAULT nextval('artists_artistid_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 34962)
-- Name: generes genreid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generes ALTER COLUMN genreid SET DEFAULT nextval('generes_genreid_seq'::regclass);


--
-- TOC entry 2703 (class 2604 OID 34973)
-- Name: orders orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders ALTER COLUMN orderid SET DEFAULT nextval('orders_orderid_seq'::regclass);


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
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 196
-- Name: albumid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('albumid_seq', 1, false);


--
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 201
-- Name: albums_albumid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('albums_albumid_seq', 3, true);


--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 197
-- Name: artistid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('artistid_seq', 1, false);


--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 203
-- Name: artists_artistid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('artists_artistid_seq', 1, false);


--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 198
-- Name: customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customerid_seq', 1, false);


--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 205
-- Name: generes_genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generes_genreid_seq', 6, true);


--
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 199
-- Name: genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('genreid_seq', 1, false);


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 200
-- Name: orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orderid_seq', 1, false);


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 207
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orders_orderid_seq', 1, false);


--
-- TOC entry 2705 (class 2606 OID 34948)
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (albumid);


--
-- TOC entry 2707 (class 2606 OID 34956)
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (artistid);


--
-- TOC entry 2709 (class 2606 OID 34967)
-- Name: generes generes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generes
    ADD CONSTRAINT generes_pkey PRIMARY KEY (genreid);


--
-- TOC entry 2711 (class 2606 OID 34975)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


-- Completed on 2018-03-27 23:12:28

--
-- PostgreSQL database dump complete
--

