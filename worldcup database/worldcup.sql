--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 4, 2, 316, 317);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 2, 0, 318, 319);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 2, 1, 317, 319);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1, 0, 316, 318);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 3, 2, 317, 320);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 2, 0, 319, 321);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 2, 1, 318, 322);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 2, 0, 316, 323);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 2, 1, 319, 324);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1, 0, 321, 325);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 3, 2, 318, 326);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 2, 0, 322, 327);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 2, 1, 317, 328);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 2, 1, 320, 329);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 2, 1, 323, 330);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 4, 3, 316, 331);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1, 0, 332, 331);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 3, 0, 333, 322);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1, 0, 331, 333);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 7, 1, 332, 322);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1, 0, 333, 334);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1, 0, 331, 318);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 2, 1, 322, 324);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1, 0, 332, 316);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 2, 1, 322, 335);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 2, 0, 324, 323);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 2, 0, 316, 336);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 2, 1, 332, 337);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 2, 1, 333, 327);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 2, 1, 334, 338);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1, 0, 331, 325);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 2, 1, 318, 339);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (316, 'France');
INSERT INTO public.teams VALUES (317, 'Croatia');
INSERT INTO public.teams VALUES (318, 'Belgium');
INSERT INTO public.teams VALUES (319, 'England');
INSERT INTO public.teams VALUES (320, 'Russia');
INSERT INTO public.teams VALUES (321, 'Sweden');
INSERT INTO public.teams VALUES (322, 'Brazil');
INSERT INTO public.teams VALUES (323, 'Uruguay');
INSERT INTO public.teams VALUES (324, 'Colombia');
INSERT INTO public.teams VALUES (325, 'Switzerland');
INSERT INTO public.teams VALUES (326, 'Japan');
INSERT INTO public.teams VALUES (327, 'Mexico');
INSERT INTO public.teams VALUES (328, 'Denmark');
INSERT INTO public.teams VALUES (329, 'Spain');
INSERT INTO public.teams VALUES (330, 'Portugal');
INSERT INTO public.teams VALUES (331, 'Argentina');
INSERT INTO public.teams VALUES (332, 'Germany');
INSERT INTO public.teams VALUES (333, 'Netherlands');
INSERT INTO public.teams VALUES (334, 'Costa Rica');
INSERT INTO public.teams VALUES (335, 'Chile');
INSERT INTO public.teams VALUES (336, 'Nigeria');
INSERT INTO public.teams VALUES (337, 'Algeria');
INSERT INTO public.teams VALUES (338, 'Greece');
INSERT INTO public.teams VALUES (339, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 96, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 339, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

