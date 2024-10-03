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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (26, 'user_1727958003888', 2, 610);
INSERT INTO public.players VALUES (25, 'user_1727958003889', 5, 270);
INSERT INTO public.players VALUES (40, 'user_1727958307578', 2, 143);
INSERT INTO public.players VALUES (28, 'user_1727958035089', 2, 727);
INSERT INTO public.players VALUES (56, 'user_1727959161777', 2, 837);
INSERT INTO public.players VALUES (27, 'user_1727958035090', 5, 60);
INSERT INTO public.players VALUES (39, 'user_1727958307579', 5, 68);
INSERT INTO public.players VALUES (30, 'user_1727958058590', 2, 627);
INSERT INTO public.players VALUES (74, 'user_1727959753896', 2, 49);
INSERT INTO public.players VALUES (55, 'user_1727959161778', 5, 7);
INSERT INTO public.players VALUES (29, 'user_1727958058591', 5, 24);
INSERT INTO public.players VALUES (42, 'user_1727958394167', 2, 141);
INSERT INTO public.players VALUES (32, 'user_1727958117846', 2, 58);
INSERT INTO public.players VALUES (41, 'user_1727958394168', 5, 99);
INSERT INTO public.players VALUES (31, 'user_1727958117847', 5, 76);
INSERT INTO public.players VALUES (58, 'user_1727959200400', 2, 170);
INSERT INTO public.players VALUES (34, 'user_1727958173285', 2, 152);
INSERT INTO public.players VALUES (44, 'user_1727958572430', 2, 193);
INSERT INTO public.players VALUES (73, 'user_1727959753897', 5, 358);
INSERT INTO public.players VALUES (33, 'user_1727958173286', 5, 72);
INSERT INTO public.players VALUES (43, 'user_1727958572431', 5, 10);
INSERT INTO public.players VALUES (57, 'user_1727959200401', 5, 28);
INSERT INTO public.players VALUES (24, 'David', 2, 7);
INSERT INTO public.players VALUES (36, 'user_1727958197594', 2, 403);
INSERT INTO public.players VALUES (35, 'user_1727958197595', 5, 22);
INSERT INTO public.players VALUES (46, 'user_1727958936633', 2, 222);
INSERT INTO public.players VALUES (38, 'user_1727958267327', 2, 47);
INSERT INTO public.players VALUES (60, 'user_1727959207037', 2, 464);
INSERT INTO public.players VALUES (37, 'user_1727958267328', 5, 260);
INSERT INTO public.players VALUES (45, 'user_1727958936634', 5, 37);
INSERT INTO public.players VALUES (59, 'user_1727959207038', 5, 136);
INSERT INTO public.players VALUES (48, 'user_1727959009600', 2, 121);
INSERT INTO public.players VALUES (76, 'user_1727959794813', 2, 23);
INSERT INTO public.players VALUES (47, 'user_1727959009601', 5, 88);
INSERT INTO public.players VALUES (62, 'user_1727959388588', 2, 398);
INSERT INTO public.players VALUES (50, 'user_1727959107781', 2, 619);
INSERT INTO public.players VALUES (75, 'user_1727959794814', 5, 13);
INSERT INTO public.players VALUES (49, 'user_1727959107782', 5, 281);
INSERT INTO public.players VALUES (61, 'user_1727959388589', 5, 89);
INSERT INTO public.players VALUES (52, 'user_1727959121836', 2, 94);
INSERT INTO public.players VALUES (64, 'user_1727959390799', 2, 442);
INSERT INTO public.players VALUES (51, 'user_1727959121837', 5, 84);
INSERT INTO public.players VALUES (78, 'user_1727959850880', 2, 758);
INSERT INTO public.players VALUES (54, 'user_1727959128707', 2, 171);
INSERT INTO public.players VALUES (63, 'user_1727959390800', 5, 81);
INSERT INTO public.players VALUES (53, 'user_1727959128708', 5, 297);
INSERT INTO public.players VALUES (66, 'user_1727959405159', 2, 499);
INSERT INTO public.players VALUES (77, 'user_1727959850881', 5, 138);
INSERT INTO public.players VALUES (65, 'user_1727959405160', 5, 0);
INSERT INTO public.players VALUES (68, 'user_1727959428338', 2, 13);
INSERT INTO public.players VALUES (80, 'user_1727959929078', 2, 324);
INSERT INTO public.players VALUES (67, 'user_1727959428339', 5, 141);
INSERT INTO public.players VALUES (79, 'user_1727959929079', 5, 13);
INSERT INTO public.players VALUES (70, 'user_1727959573911', 2, 83);
INSERT INTO public.players VALUES (69, 'user_1727959573912', 5, 68);
INSERT INTO public.players VALUES (72, 'user_1727959617049', 2, 205);
INSERT INTO public.players VALUES (71, 'user_1727959617050', 5, 62);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 80, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- PostgreSQL database dump complete
--

