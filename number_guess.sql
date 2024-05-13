--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 32, 380);
INSERT INTO public.games VALUES (2, 32, 619);
INSERT INTO public.games VALUES (3, 33, 807);
INSERT INTO public.games VALUES (4, 33, 433);
INSERT INTO public.games VALUES (5, 32, 953);
INSERT INTO public.games VALUES (6, 32, 24);
INSERT INTO public.games VALUES (7, 32, 506);
INSERT INTO public.games VALUES (8, 34, 1);
INSERT INTO public.games VALUES (9, 35, 733);
INSERT INTO public.games VALUES (10, 35, 970);
INSERT INTO public.games VALUES (11, 36, 932);
INSERT INTO public.games VALUES (12, 36, 141);
INSERT INTO public.games VALUES (13, 35, 680);
INSERT INTO public.games VALUES (14, 35, 412);
INSERT INTO public.games VALUES (15, 35, 481);
INSERT INTO public.games VALUES (16, 34, 1);
INSERT INTO public.games VALUES (17, 37, 1);
INSERT INTO public.games VALUES (18, 37, 1);
INSERT INTO public.games VALUES (19, 38, 1);
INSERT INTO public.games VALUES (20, 38, 1);
INSERT INTO public.games VALUES (21, 37, 3);
INSERT INTO public.games VALUES (22, 37, 2);
INSERT INTO public.games VALUES (23, 37, 1);
INSERT INTO public.games VALUES (24, 39, 425);
INSERT INTO public.games VALUES (25, 39, 25);
INSERT INTO public.games VALUES (26, 40, 115);
INSERT INTO public.games VALUES (27, 40, 708);
INSERT INTO public.games VALUES (28, 39, 733);
INSERT INTO public.games VALUES (29, 39, 950);
INSERT INTO public.games VALUES (30, 39, 599);
INSERT INTO public.games VALUES (31, 42, 247);
INSERT INTO public.games VALUES (32, 43, 51);
INSERT INTO public.games VALUES (33, 43, 916);
INSERT INTO public.games VALUES (34, 43, 755);
INSERT INTO public.games VALUES (35, 44, 406);
INSERT INTO public.games VALUES (36, 44, 212);
INSERT INTO public.games VALUES (37, 45, 534);
INSERT INTO public.games VALUES (38, 45, 569);
INSERT INTO public.games VALUES (39, 44, 727);
INSERT INTO public.games VALUES (40, 44, 916);
INSERT INTO public.games VALUES (41, 44, 921);
INSERT INTO public.games VALUES (42, 46, 548);
INSERT INTO public.games VALUES (43, 46, 3);
INSERT INTO public.games VALUES (44, 47, 112);
INSERT INTO public.games VALUES (45, 47, 725);
INSERT INTO public.games VALUES (46, 46, 798);
INSERT INTO public.games VALUES (47, 46, 81);
INSERT INTO public.games VALUES (48, 46, 569);
INSERT INTO public.games VALUES (49, 48, 654);
INSERT INTO public.games VALUES (50, 48, 896);
INSERT INTO public.games VALUES (51, 49, 485);
INSERT INTO public.games VALUES (52, 49, 390);
INSERT INTO public.games VALUES (53, 49, 798);
INSERT INTO public.games VALUES (54, 50, 852);
INSERT INTO public.games VALUES (55, 50, 483);
INSERT INTO public.games VALUES (56, 51, 542);
INSERT INTO public.games VALUES (57, 51, 529);
INSERT INTO public.games VALUES (58, 50, 487);
INSERT INTO public.games VALUES (59, 50, 289);
INSERT INTO public.games VALUES (60, 50, 33);
INSERT INTO public.games VALUES (61, 52, 737);
INSERT INTO public.games VALUES (62, 52, 536);
INSERT INTO public.games VALUES (63, 53, 876);
INSERT INTO public.games VALUES (64, 53, 714);
INSERT INTO public.games VALUES (65, 52, 529);
INSERT INTO public.games VALUES (66, 52, 554);
INSERT INTO public.games VALUES (67, 52, 610);
INSERT INTO public.games VALUES (68, 54, 296);
INSERT INTO public.games VALUES (69, 54, 617);
INSERT INTO public.games VALUES (70, 55, 161);
INSERT INTO public.games VALUES (71, 55, 586);
INSERT INTO public.games VALUES (72, 54, 254);
INSERT INTO public.games VALUES (73, 54, 348);
INSERT INTO public.games VALUES (74, 54, 135);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (32, 'user_1715625855942');
INSERT INTO public.users VALUES (33, 'user_1715625855941');
INSERT INTO public.users VALUES (34, 'hx');
INSERT INTO public.users VALUES (35, 'user_1715625966516');
INSERT INTO public.users VALUES (36, 'user_1715625966515');
INSERT INTO public.users VALUES (37, 'user_1715626037993');
INSERT INTO public.users VALUES (38, 'user_1715626037992');
INSERT INTO public.users VALUES (39, 'user_1715626062432');
INSERT INTO public.users VALUES (40, 'user_1715626062431');
INSERT INTO public.users VALUES (41, '');
INSERT INTO public.users VALUES (42, 'user_1715626320710');
INSERT INTO public.users VALUES (43, 'user_1715626320711');
INSERT INTO public.users VALUES (44, 'user_1715626346843');
INSERT INTO public.users VALUES (45, 'user_1715626346842');
INSERT INTO public.users VALUES (46, 'user_1715626409742');
INSERT INTO public.users VALUES (47, 'user_1715626409741');
INSERT INTO public.users VALUES (48, 'user_1715626421566');
INSERT INTO public.users VALUES (49, 'user_1715626421567');
INSERT INTO public.users VALUES (50, 'user_1715626446237');
INSERT INTO public.users VALUES (51, 'user_1715626446236');
INSERT INTO public.users VALUES (52, 'user_1715626512888');
INSERT INTO public.users VALUES (53, 'user_1715626512887');
INSERT INTO public.users VALUES (54, 'user_1715626540086');
INSERT INTO public.users VALUES (55, 'user_1715626540085');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 74, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

