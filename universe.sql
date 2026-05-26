--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    age_in_millions integer,
    galaxy_types character varying(52),
    distance_from_earth integer
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
-- Name: meteorite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorite (
    meteorite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer,
    is_spheric boolean
);


ALTER TABLE public.meteorite OWNER TO freecodecamp;

--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorite_meteorite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorite_meteorite_id_seq OWNER TO freecodecamp;

--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorite_meteorite_id_seq OWNED BY public.meteorite.meteorite_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions numeric,
    description text,
    revolution_days integer,
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions integer,
    is_spherical boolean,
    has_life boolean,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions integer,
    is_spherical boolean,
    star_types character varying(50),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: meteorite meteorite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite ALTER COLUMN meteorite_id SET DEFAULT nextval('public.meteorite_meteorite_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 136000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'GN-z11', 134000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'EGS-zs8-1', 1304000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'BRI 1335-0417', 1204000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Messier 66-NGC 3627', 1304000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87 -M87', 1360000, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Andromede', 5, 'Spirale barre', NULL);
INSERT INTO public.galaxy VALUES (8, 'Voie Lacteé', 10000, 'Spirale barré', NULL);
INSERT INTO public.galaxy VALUES (9, 'Triangulum', 300, 'Spirale', NULL);
INSERT INTO public.galaxy VALUES (10, 'Grand Nuage de Magellan', 360, 'Galaxie naine irréguliere', NULL);
INSERT INTO public.galaxy VALUES (11, 'Petit Nuage de Magellan', 350, 'Galaxie naine irrégliere', NULL);
INSERT INTO public.galaxy VALUES (12, 'Galaxie du Tourbillon', 320, 'Spirale en interaction', NULL);
INSERT INTO public.galaxy VALUES (13, 'Sombrero', 320, 'Spirale lenticulaire', NULL);
INSERT INTO public.galaxy VALUES (14, '61 Cygni', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'Epsilon', 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'Sirius', 300, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'Lalande', 360, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'Wolf', 350, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'Barnard', 320, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'ALpha B', 320, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'Alpha ', 47, NULL, NULL);


--
-- Data for Name: meteorite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorite VALUES (1, 'Murchison CM2', 4567, false);
INSERT INTO public.meteorite VALUES (2, 'Hoba', 8, false);
INSERT INTO public.meteorite VALUES (3, 'Murchinson', 2, false);
INSERT INTO public.meteorite VALUES (4, 'Allende', 3, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', 4510, 'Sherique legerement aplatie', NULL, 1);
INSERT INTO public.moon VALUES (2, 'Io', 4500, 'C est le corps le plus volcanique du systeme solaire.', NULL, 2);
INSERT INTO public.moon VALUES (3, 'Europe', 4500, 'Ocean d eau liquide', NULL, 3);
INSERT INTO public.moon VALUES (4, 'Titan', 4500, 'Seule lune avec une atmosphere dense', NULL, 4);
INSERT INTO public.moon VALUES (5, 'Triton', 4500, 'Capture par nepune. Elle orbite a l envers', NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 'La plus grosse lune du systeme solaire', NULL, 6);
INSERT INTO public.moon VALUES (7, 'Iapet', 4500, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Rhéa', 4500, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Dioné', 4500, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'Téthys', 4500, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Mimas', 4500, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Encelade', 4500, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Callisto', 4500, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'Miranda', 4500, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'Ariel', 4500, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'Umbriel', 4500, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'Titania', 4500, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'Obéron', 4500, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, 'Phobos', 4500, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'Déimos', 4500, NULL, NULL, 20);
INSERT INTO public.moon VALUES (21, 'sat', NULL, NULL, NULL, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Venus', 4500, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 3580, true, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 3000, true, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Saturne', 3700, true, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Uranus', 3890, true, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Neeptune', 4520, true, NULL, 6);
INSERT INTO public.planet VALUES (7, 'cérès', 4567, true, NULL, 7);
INSERT INTO public.planet VALUES (8, 'Éris', 5, true, NULL, 8);
INSERT INTO public.planet VALUES (9, 'Haumea', 5, false, NULL, 9);
INSERT INTO public.planet VALUES (10, 'Bennu', 5, false, NULL, 10);
INSERT INTO public.planet VALUES (11, 'Vesta', 4567, false, NULL, 11);
INSERT INTO public.planet VALUES (12, 'Itokowa', 4500, false, NULL, 12);
INSERT INTO public.planet VALUES (13, '67p/Churyumouv-Gerasimenko', 4567, false, NULL, 13);
INSERT INTO public.planet VALUES (14, 'Proxima Centauri', 5, true, NULL, 14);
INSERT INTO public.planet VALUES (15, 'TRAPPISR-1e', 10000, false, NULL, 15);
INSERT INTO public.planet VALUES (16, 'WASP-2b', 300, true, NULL, 16);
INSERT INTO public.planet VALUES (17, 'Pegasi b', 360, true, NULL, 17);
INSERT INTO public.planet VALUES (18, 'Osiris', 350, false, NULL, 18);
INSERT INTO public.planet VALUES (19, 'Kepler-186f', 320, true, NULL, 19);
INSERT INTO public.planet VALUES (20, 'Kepler-22b', 320, false, NULL, 20);
INSERT INTO public.planet VALUES (21, 'GJ 1214 b', 47, true, NULL, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Sun', 4600, true, NULL, 1);
INSERT INTO public.star VALUES (1, 'HD 1754740', 4780, true, NULL, 2);
INSERT INTO public.star VALUES (2, 'HD 161056', 522, true, NULL, 3);
INSERT INTO public.star VALUES (3, 'HD 140283', 14200, true, NULL, 4);
INSERT INTO public.star VALUES (5, 'Hyades star', 625, true, NULL, 5);
INSERT INTO public.star VALUES (6, 'Vega', 455, true, NULL, 6);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 4800, true, NULL, 7);
INSERT INTO public.star VALUES (8, 'Éta Carinae', 6, true, NULL, 8);
INSERT INTO public.star VALUES (9, 'Pollux', 800, false, NULL, 9);
INSERT INTO public.star VALUES (10, 'Procyon A', 2800, false, NULL, 10);
INSERT INTO public.star VALUES (11, 'Vegasa', 455, false, NULL, 11);
INSERT INTO public.star VALUES (12, 'Sirius', 230, false, NULL, 12);
INSERT INTO public.star VALUES (13, 'Betelgeuse', 14, false, NULL, 13);
INSERT INTO public.star VALUES (14, '61 Cygni', 5, true, NULL, 14);
INSERT INTO public.star VALUES (15, 'Epsilon Eridani', 10000, false, NULL, 15);
INSERT INTO public.star VALUES (16, 'Sirius A', 300, true, NULL, 16);
INSERT INTO public.star VALUES (17, 'Lalande 21185', 360, true, NULL, 17);
INSERT INTO public.star VALUES (18, 'Wolf 359', 350, false, NULL, 18);
INSERT INTO public.star VALUES (19, 'Barnard Star', 320, true, NULL, 19);
INSERT INTO public.star VALUES (20, 'ALpha Centauri B', 320, false, NULL, 20);
INSERT INTO public.star VALUES (21, 'Alpha Centauri', 47, true, NULL, 21);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorite_meteorite_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 9, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 37, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 21, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


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
-- Name: meteorite meteorite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_name_key UNIQUE (name);


--
-- Name: meteorite meteorite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_pkey PRIMARY KEY (meteorite_id);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


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
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

