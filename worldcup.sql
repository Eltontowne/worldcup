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
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 1, 4, 2, 2018, 2);
INSERT INTO public.games VALUES (2, 'Third Place', 3, 2, 0, 2018, 4);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2, 2, 1, 2018, 4);
INSERT INTO public.games VALUES (4, 'Semi-Final', 1, 1, 0, 2018, 3);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2, 3, 2, 2018, 5);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 4, 2, 0, 2018, 6);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 3, 2, 1, 2018, 7);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 1, 2, 0, 2018, 8);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 4, 2, 1, 2018, 9);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 6, 1, 0, 2018, 10);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 3, 3, 2, 2018, 11);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 7, 2, 0, 2018, 12);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2, 2, 1, 2018, 13);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 5, 2, 1, 2018, 14);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 8, 2, 1, 2018, 15);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 1, 4, 3, 2018, 16);
INSERT INTO public.games VALUES (17, 'Final', 17, 1, 0, 2014, 16);
INSERT INTO public.games VALUES (18, 'Third Place', 18, 3, 0, 2014, 7);
INSERT INTO public.games VALUES (19, 'Semi-Final', 16, 1, 0, 2014, 18);
INSERT INTO public.games VALUES (20, 'Semi-Final', 17, 7, 1, 2014, 7);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 18, 1, 0, 2014, 19);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 16, 1, 0, 2014, 3);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 7, 2, 1, 2014, 9);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 17, 1, 0, 2014, 1);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 7, 2, 1, 2014, 20);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 9, 2, 0, 2014, 8);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 1, 2, 0, 2014, 21);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 17, 2, 1, 2014, 22);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 18, 2, 1, 2014, 12);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 19, 2, 1, 2014, 23);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 16, 1, 0, 2014, 10);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 3, 2, 1, 2014, 24);
INSERT INTO public.games VALUES (33, 'Final', 1, 4, 2, 2018, 2);
INSERT INTO public.games VALUES (34, 'Third Place', 3, 2, 0, 2018, 4);
INSERT INTO public.games VALUES (35, 'Semi-Final', 2, 2, 1, 2018, 4);
INSERT INTO public.games VALUES (36, 'Semi-Final', 1, 1, 0, 2018, 3);
INSERT INTO public.games VALUES (37, 'Quarter-Final', 2, 3, 2, 2018, 5);
INSERT INTO public.games VALUES (38, 'Quarter-Final', 4, 2, 0, 2018, 6);
INSERT INTO public.games VALUES (39, 'Quarter-Final', 3, 2, 1, 2018, 7);
INSERT INTO public.games VALUES (40, 'Quarter-Final', 1, 2, 0, 2018, 8);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 4, 2, 1, 2018, 9);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 6, 1, 0, 2018, 10);
INSERT INTO public.games VALUES (43, 'Eighth-Final', 3, 3, 2, 2018, 11);
INSERT INTO public.games VALUES (44, 'Eighth-Final', 7, 2, 0, 2018, 12);
INSERT INTO public.games VALUES (45, 'Eighth-Final', 2, 2, 1, 2018, 13);
INSERT INTO public.games VALUES (46, 'Eighth-Final', 5, 2, 1, 2018, 14);
INSERT INTO public.games VALUES (47, 'Eighth-Final', 8, 2, 1, 2018, 15);
INSERT INTO public.games VALUES (48, 'Eighth-Final', 1, 4, 3, 2018, 16);
INSERT INTO public.games VALUES (49, 'Final', 17, 1, 0, 2014, 16);
INSERT INTO public.games VALUES (50, 'Third Place', 18, 3, 0, 2014, 7);
INSERT INTO public.games VALUES (51, 'Semi-Final', 16, 1, 0, 2014, 18);
INSERT INTO public.games VALUES (52, 'Semi-Final', 17, 7, 1, 2014, 7);
INSERT INTO public.games VALUES (53, 'Quarter-Final', 18, 1, 0, 2014, 19);
INSERT INTO public.games VALUES (54, 'Quarter-Final', 16, 1, 0, 2014, 3);
INSERT INTO public.games VALUES (55, 'Quarter-Final', 7, 2, 1, 2014, 9);
INSERT INTO public.games VALUES (56, 'Quarter-Final', 17, 1, 0, 2014, 1);
INSERT INTO public.games VALUES (57, 'Eighth-Final', 7, 2, 1, 2014, 20);
INSERT INTO public.games VALUES (58, 'Eighth-Final', 9, 2, 0, 2014, 8);
INSERT INTO public.games VALUES (59, 'Eighth-Final', 1, 2, 0, 2014, 21);
INSERT INTO public.games VALUES (60, 'Eighth-Final', 17, 2, 1, 2014, 22);
INSERT INTO public.games VALUES (61, 'Eighth-Final', 18, 2, 1, 2014, 12);
INSERT INTO public.games VALUES (62, 'Eighth-Final', 19, 2, 1, 2014, 23);
INSERT INTO public.games VALUES (63, 'Eighth-Final', 16, 1, 0, 2014, 10);
INSERT INTO public.games VALUES (64, 'Eighth-Final', 3, 2, 1, 2014, 24);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Russia');
INSERT INTO public.teams VALUES (6, 'Sweden');
INSERT INTO public.teams VALUES (7, 'Brazil');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Colombia');
INSERT INTO public.teams VALUES (10, 'Switzerland');
INSERT INTO public.teams VALUES (11, 'Japan');
INSERT INTO public.teams VALUES (12, 'Mexico');
INSERT INTO public.teams VALUES (13, 'Denmark');
INSERT INTO public.teams VALUES (14, 'Spain');
INSERT INTO public.teams VALUES (15, 'Portugal');
INSERT INTO public.teams VALUES (16, 'Argentina');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Costa Rica');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');
INSERT INTO public.teams VALUES (25, '');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 25, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

