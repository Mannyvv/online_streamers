--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-03-13 00:17:31 UTC

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 37575)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    platform text,
    genre text,
    name text NOT NULL,
    release_date date,
    copies_sold integer,
    publisher text
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 37574)
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO postgres;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 211
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- TOC entry 210 (class 1259 OID 37564)
-- Name: streamers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streamers (
    id integer NOT NULL,
    name text NOT NULL,
    start date NOT NULL,
    age integer,
    followers integer,
    stream_days text,
    tiktok_accounts_id integer
);


ALTER TABLE public.streamers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 37607)
-- Name: streamers_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streamers_games (
    streamer_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.streamers_games OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 37563)
-- Name: streamers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.streamers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.streamers_id_seq OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 209
-- Name: streamers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.streamers_id_seq OWNED BY public.streamers.id;


--
-- TOC entry 214 (class 1259 OID 37586)
-- Name: streaming_softwares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streaming_softwares (
    id integer NOT NULL,
    name text NOT NULL,
    release_date date,
    user_count integer,
    streamer_id integer
);


ALTER TABLE public.streaming_softwares OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 37585)
-- Name: streaming_softwares_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.streaming_softwares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.streaming_softwares_id_seq OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 213
-- Name: streaming_softwares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.streaming_softwares_id_seq OWNED BY public.streaming_softwares.id;


--
-- TOC entry 216 (class 1259 OID 37597)
-- Name: tiktok_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiktok_accounts (
    id integer NOT NULL,
    name text NOT NULL,
    followers integer
);


ALTER TABLE public.tiktok_accounts OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 37596)
-- Name: tiktok_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiktok_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiktok_accounts_id_seq OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 215
-- Name: tiktok_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiktok_accounts_id_seq OWNED BY public.tiktok_accounts.id;


--
-- TOC entry 3186 (class 2604 OID 37578)
-- Name: games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 37567)
-- Name: streamers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers ALTER COLUMN id SET DEFAULT nextval('public.streamers_id_seq'::regclass);


--
-- TOC entry 3187 (class 2604 OID 37589)
-- Name: streaming_softwares id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streaming_softwares ALTER COLUMN id SET DEFAULT nextval('public.streaming_softwares_id_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 37600)
-- Name: tiktok_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiktok_accounts ALTER COLUMN id SET DEFAULT nextval('public.tiktok_accounts_id_seq'::regclass);


--
-- TOC entry 3353 (class 0 OID 37575)
-- Dependencies: 212
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, platform, genre, name, release_date, copies_sold, publisher) FROM stdin;
\.


--
-- TOC entry 3351 (class 0 OID 37564)
-- Dependencies: 210
-- Data for Name: streamers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.streamers (id, name, start, age, followers, stream_days, tiktok_accounts_id) FROM stdin;
\.


--
-- TOC entry 3358 (class 0 OID 37607)
-- Dependencies: 217
-- Data for Name: streamers_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.streamers_games (streamer_id, game_id) FROM stdin;
\.


--
-- TOC entry 3355 (class 0 OID 37586)
-- Dependencies: 214
-- Data for Name: streaming_softwares; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.streaming_softwares (id, name, release_date, user_count, streamer_id) FROM stdin;
\.


--
-- TOC entry 3357 (class 0 OID 37597)
-- Dependencies: 216
-- Data for Name: tiktok_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiktok_accounts (id, name, followers) FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 211
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_id_seq', 1, false);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 209
-- Name: streamers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.streamers_id_seq', 1, false);


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 213
-- Name: streaming_softwares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.streaming_softwares_id_seq', 1, false);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 215
-- Name: tiktok_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiktok_accounts_id_seq', 1, false);


--
-- TOC entry 3194 (class 2606 OID 37584)
-- Name: games games_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_key UNIQUE (name);


--
-- TOC entry 3196 (class 2606 OID 37582)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 37611)
-- Name: streamers_games streamers_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers_games
    ADD CONSTRAINT streamers_games_pkey PRIMARY KEY (streamer_id, game_id);


--
-- TOC entry 3190 (class 2606 OID 37571)
-- Name: streamers streamers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers
    ADD CONSTRAINT streamers_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 37573)
-- Name: streamers streamers_tiktok_accounts_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers
    ADD CONSTRAINT streamers_tiktok_accounts_id_key UNIQUE (tiktok_accounts_id);


--
-- TOC entry 3198 (class 2606 OID 37595)
-- Name: streaming_softwares streaming_softwares_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streaming_softwares
    ADD CONSTRAINT streaming_softwares_name_key UNIQUE (name);


--
-- TOC entry 3200 (class 2606 OID 37593)
-- Name: streaming_softwares streaming_softwares_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streaming_softwares
    ADD CONSTRAINT streaming_softwares_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 37606)
-- Name: tiktok_accounts tiktok_accounts_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiktok_accounts
    ADD CONSTRAINT tiktok_accounts_name_key UNIQUE (name);


--
-- TOC entry 3204 (class 2606 OID 37604)
-- Name: tiktok_accounts tiktok_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiktok_accounts
    ADD CONSTRAINT tiktok_accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 37617)
-- Name: streamers_games fk_streamers_games_games; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers_games
    ADD CONSTRAINT fk_streamers_games_games FOREIGN KEY (game_id) REFERENCES public.games(id);


--
-- TOC entry 3209 (class 2606 OID 37612)
-- Name: streamers_games fk_streamers_games_streamers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers_games
    ADD CONSTRAINT fk_streamers_games_streamers FOREIGN KEY (streamer_id) REFERENCES public.streamers(id);


--
-- TOC entry 3207 (class 2606 OID 37627)
-- Name: streamers fk_streamers_tiktok_accounts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streamers
    ADD CONSTRAINT fk_streamers_tiktok_accounts FOREIGN KEY (tiktok_accounts_id) REFERENCES public.tiktok_accounts(id);


--
-- TOC entry 3208 (class 2606 OID 37622)
-- Name: streaming_softwares fk_streaming_softwares_streamers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streaming_softwares
    ADD CONSTRAINT fk_streaming_softwares_streamers FOREIGN KEY (streamer_id) REFERENCES public.streamers(id);


-- Completed on 2022-03-13 00:17:31 UTC

--
-- PostgreSQL database dump complete
--

