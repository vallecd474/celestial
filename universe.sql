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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    age numeric,
    description boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    age integer,
    description text
    );


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    age integer,
    description text,
    num_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age integer,
    sat_num integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text,
    age numeric,
    description boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'milky', 'red', 77777, NULL);
INSERT INTO public.galaxy VALUES (5, 'tom', 'green', 33333, NULL);
INSERT INTO public.galaxy VALUES (6, 'harlow', 'purple', 44444, NULL);
INSERT INTO public.galaxy VALUES (7, 'billy', 'blue', 88888, NULL);
INSERT INTO public.galaxy VALUES (8, 'carr', 'yellow', 99999, NULL);
INSERT INTO public.galaxy VALUES (9, 'fred', 'red', 22222, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'milky', 'red', 234, NULL);
INSERT INTO public.moon VALUES (2, 'billy', 'blue', 838, NULL);
INSERT INTO public.moon VALUES (3, 'tom', 'purple', 38, NULL);
INSERT INTO public.moon VALUES (4, 'carr', 'red', 42, NULL);
INSERT INTO public.moon VALUES (5, 'fred', 'red', 380230, NULL);
INSERT INTO public.moon VALUES (11, 'harlow', 'red', 333, NULL);
INSERT INTO public.moon VALUES (12, 'will', 'blue', 999, NULL);
INSERT INTO public.moon VALUES (13, 'gee', 'red', 2233, NULL);
INSERT INTO public.moon VALUES (14, 'tim', 'red', 3939, NULL);
INSERT INTO public.moon VALUES (15, 'reed', 'red', 3939, NULL);
INSERT INTO public.moon VALUES (16, 'uli', 'red', 778, NULL);
INSERT INTO public.moon VALUES (17, 'quin', 'green', 393, NULL);
INSERT INTO public.moon VALUES (18, 'verge', 'purple', 939, NULL);
INSERT INTO public.moon VALUES (19, 'eel', 'yellow', 999, NULL);
INSERT INTO public.moon VALUES (20, 'ben', 'red', 398, NULL);
INSERT INTO public.moon VALUES (21, 'dan', 'red', 888, NULL);
INSERT INTO public.moon VALUES (22, 'yern', 'green', 889, NULL);
INSERT INTO public.moon VALUES (23, 'moo', 'purple', 333, NULL);
INSERT INTO public.moon VALUES (24, 'oopy', 'yellow', 333, NULL);
INSERT INTO public.moon VALUES (25, 'fivio', 'red', 39393, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'milky', 'red', 22, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'harlow', 'blue', 44, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'moo', 'green', 55, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'ben', 'red', 2322, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'yern', 'yellow', 332, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'tom', 'blue', 33, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'carr', 'blue', 444, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'fred', 'green', 234, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'will', 'purple', 1234, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'tim', 'aqua', 978, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'dan', 'red', 387, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'billy', 'red', 98679, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'fivio', 'red', 399, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'oopy', 'green', 3838, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'gee', 'red', 3838, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'quin', 'red', 393, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'verge', 'green', 393, NULL, NULL);
INSERT INTO public.planet VALUES (26, 'eel', 'blue', 393, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'uli', 'red', 393, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'reed', 'red', 3939, NULL, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'hex', NULL, 33, 33);
INSERT INTO public.satellite VALUES (2, 'rex', NULL, 323, 323);
INSERT INTO public.satellite VALUES (3, 'yex', NULL, 44, 444);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'milky', 'white', 13000000000, NULL);
INSERT INTO public.star VALUES (2, 'billy', 'green', 23000000000, NULL);
INSERT INTO public.star VALUES (3, 'tom', 'blue', 42000000000, NULL);
INSERT INTO public.star VALUES (4, 'carr', 'purple', 36000000000, NULL);
INSERT INTO public.star VALUES (5, 'fred', 'black', 66000000000, NULL);
INSERT INTO public.star VALUES (6, 'harlow', 'red', 55000000000, NULL);
INSERT INTO public.star VALUES (7, 'will', 'brown', 22000000000, NULL);
INSERT INTO public.star VALUES (8, 'gee', 'red', 22000000000, NULL);
INSERT INTO public.star VALUES (9, 'tim', 'purple', 11000000000, NULL);
INSERT INTO public.star VALUES (10, 'reed', 'green', 44000000000, NULL);
INSERT INTO public.star VALUES (11, 'uli', 'yellow', 88000000000, NULL);
INSERT INTO public.star VALUES (12, 'quin', 'red', 55000000000, NULL);
INSERT INTO public.star VALUES (13, 'verge', 'brown', 99000000000, NULL);
INSERT INTO public.star VALUES (14, 'eel', 'blue', 33000000000, NULL);
INSERT INTO public.star VALUES (15, 'ben', 'yellow', 99000000000, NULL);
INSERT INTO public.star VALUES (16, 'dan', 'red', 34500000000, NULL);
INSERT INTO public.star VALUES (17, 'yern', 'red', 33000000000, NULL);
INSERT INTO public.star VALUES (18, 'moo', 'blue', 22000000000, NULL);
INSERT INTO public.star VALUES (19, 'oopy', 'green', 77000000000, NULL);
INSERT INTO public.star VALUES (20, 'fivio', 'purple', 11000000000, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- PostgreSQL database dump complete
--

