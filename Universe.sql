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
    name character varying(40),
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: hello; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hello (
    hello_id integer NOT NULL,
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying(40)
);


ALTER TABLE public.hello OWNER TO freecodecamp;

--
-- Name: hello_hello_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hello_hello_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hello_hello_id_seq OWNER TO freecodecamp;

--
-- Name: hello_hello_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hello_hello_id_seq OWNED BY public.hello.hello_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40),
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: hello hello_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hello ALTER COLUMN hello_id SET DEFAULT nextval('public.hello_hello_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Aries', 123456.12, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (2, 'Libra', 123456.34, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (3, 'Taurus', 123456.45, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (4, 'Gemini', 123456.67, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (5, 'Leo', 123456.89, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (6, 'GA', 456789.12, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (7, 'GB', 456789.34, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (8, 'GC', 456789.45, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (9, 'GD', 456789.67, 1000, 'Hello', true, true);
INSERT INTO public.galaxy VALUES (10, 'GE', 456789.89, 1000, 'Hello', true, true);


--
-- Data for Name: hello; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hello VALUES (1, 123456.12, 1000, 'Hello', true, true, 'HA');
INSERT INTO public.hello VALUES (2, 123456.34, 1000, 'Hello', true, true, 'HB');
INSERT INTO public.hello VALUES (3, 123456.45, 1000, 'Hello', true, true, 'HC');
INSERT INTO public.hello VALUES (4, 123456.67, 1000, 'Hello', true, true, 'HD');
INSERT INTO public.hello VALUES (5, 123456.89, 1000, 'Hello', true, true, 'HE');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MA', 123456.12, 1000, 'Hello', true, true, 1);
INSERT INTO public.moon VALUES (2, 'MB', 123456.34, 1000, 'Hello', true, true, 2);
INSERT INTO public.moon VALUES (3, 'MC', 123456.45, 1000, 'Hello', true, true, 3);
INSERT INTO public.moon VALUES (4, 'MD', 123456.67, 1000, 'Hello', true, true, 4);
INSERT INTO public.moon VALUES (5, 'ME', 123456.89, 1000, 'Hello', true, true, 5);
INSERT INTO public.moon VALUES (6, 'GA', 456789.12, 1000, 'Hello', true, true, 1);
INSERT INTO public.moon VALUES (7, 'GB', 456789.34, 1000, 'Hello', true, true, 2);
INSERT INTO public.moon VALUES (8, 'GC', 456789.45, 1000, 'Hello', true, true, 3);
INSERT INTO public.moon VALUES (9, 'GD', 456789.67, 1000, 'Hello', true, true, 4);
INSERT INTO public.moon VALUES (10, 'GE', 456789.89, 1000, 'Hello', true, true, 5);
INSERT INTO public.moon VALUES (11, 'GD', 456789.11, 1000, 'Hello', true, true, 4);
INSERT INTO public.moon VALUES (12, 'GE', 456789.22, 1000, 'Hello', true, true, 5);
INSERT INTO public.moon VALUES (13, 'GA', 456789.33, 1000, 'Hello', true, true, 1);
INSERT INTO public.moon VALUES (14, 'GB', 456789.44, 1000, 'Hello', true, true, 2);
INSERT INTO public.moon VALUES (15, 'GC', 456789.55, 1000, 'Hello', true, true, 3);
INSERT INTO public.moon VALUES (16, 'GD', 456789.66, 1000, 'Hello', true, true, 4);
INSERT INTO public.moon VALUES (17, 'GE', 456789.77, 1000, 'Hello', true, true, 5);
INSERT INTO public.moon VALUES (18, 'GD', 456789.88, 1000, 'Hello', true, true, 4);
INSERT INTO public.moon VALUES (19, 'GE', 456789.99, 1000, 'Hello', true, true, 5);
INSERT INTO public.moon VALUES (20, 'GE', 456789.39, 1000, 'Hello', true, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PA', 123456.12, 1000, 'Hello', true, true, 1);
INSERT INTO public.planet VALUES (2, 'PB', 123456.34, 1000, 'Hello', true, true, 2);
INSERT INTO public.planet VALUES (3, 'PC', 123456.45, 1000, 'Hello', true, true, 3);
INSERT INTO public.planet VALUES (4, 'PD', 123456.67, 1000, 'Hello', true, true, 4);
INSERT INTO public.planet VALUES (5, 'PE', 123456.89, 1000, 'Hello', true, true, 5);
INSERT INTO public.planet VALUES (6, 'GA', 456789.12, 1000, 'Hello', true, true, 1);
INSERT INTO public.planet VALUES (7, 'GB', 456789.34, 1000, 'Hello', true, true, 2);
INSERT INTO public.planet VALUES (8, 'GC', 456789.45, 1000, 'Hello', true, true, 3);
INSERT INTO public.planet VALUES (9, 'GD', 456789.67, 1000, 'Hello', true, true, 4);
INSERT INTO public.planet VALUES (10, 'GE', 456789.89, 1000, 'Hello', true, true, 5);
INSERT INTO public.planet VALUES (11, 'GD', 456789.11, 1000, 'Hello', true, true, 4);
INSERT INTO public.planet VALUES (12, 'GE', 456789.22, 1000, 'Hello', true, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 123456.12, 1000, 'Hello', true, true, 1);
INSERT INTO public.star VALUES (2, 'B', 123456.34, 1000, 'Hello', true, true, 2);
INSERT INTO public.star VALUES (3, 'C', 123456.45, 1000, 'Hello', true, true, 3);
INSERT INTO public.star VALUES (4, 'D', 123456.67, 1000, 'Hello', true, true, 4);
INSERT INTO public.star VALUES (5, 'E', 123456.89, 1000, 'Hello', true, true, 5);
INSERT INTO public.star VALUES (6, 'GA', 456789.12, 1000, 'Hello', true, true, 1);
INSERT INTO public.star VALUES (7, 'GB', 456789.34, 1000, 'Hello', true, true, 2);
INSERT INTO public.star VALUES (8, 'GC', 456789.45, 1000, 'Hello', true, true, 3);
INSERT INTO public.star VALUES (9, 'GD', 456789.67, 1000, 'Hello', true, true, 4);
INSERT INTO public.star VALUES (10, 'GE', 456789.89, 1000, 'Hello', true, true, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: hello_hello_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hello_hello_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy doc_nhat; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT doc_nhat UNIQUE (distance_from_earth);


--
-- Name: hello doc_nhat_hello; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hello
    ADD CONSTRAINT doc_nhat_hello UNIQUE (distance_from_earth);


--
-- Name: moon doc_nhat_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT doc_nhat_moon UNIQUE (distance_from_earth);


--
-- Name: planet doc_nhat_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT doc_nhat_planet UNIQUE (distance_from_earth);


--
-- Name: star doc_nhat_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT doc_nhat_star UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: hello hello_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hello
    ADD CONSTRAINT hello_pkey PRIMARY KEY (hello_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

