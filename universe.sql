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
    name character varying(30),
    column1 integer NOT NULL,
    column2 integer NOT NULL,
    column3 integer,
    column4 numeric,
    column5 text,
    column6 boolean,
    column7 boolean
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(30),
    column1 integer NOT NULL,
    column2 integer NOT NULL,
    column3 numeric,
    column4 text,
    column5 boolean,
    moon_id integer
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    column1 integer NOT NULL,
    column2 integer NOT NULL,
    column3 numeric,
    column4 text,
    column5 boolean,
    planet_id integer
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
    name character varying(30),
    column1 integer NOT NULL,
    column2 integer NOT NULL,
    column3 numeric,
    column4 text,
    column5 boolean,
    star_id integer
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
    name character varying(30),
    column1 integer NOT NULL,
    column2 integer NOT NULL,
    column3 numeric,
    column4 text,
    column5 boolean,
    galaxy_id integer
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
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (33, NULL, 32, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, NULL, 22, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3533, NULL, 1232, 332, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (233, NULL, 222, 232, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (313093, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.life VALUES (2330, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.life VALUES (521064, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.life VALUES (12082, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.life VALUES (55294, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.life VALUES (32173, NULL, 563, 87, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (33254333, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23233, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (523446456, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12342, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (52344, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (324213213, NULL, 563, 87, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (333, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (233, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (52134, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (1232, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5234, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3313, NULL, 563, 87, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3133, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (230, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (52104, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (1202, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5294, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3213, NULL, 563, 87, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (313093, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2330, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (521064, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12082, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (55294, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (32173, NULL, 563, 87, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3533, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (233, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (546456, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (54, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (213213, NULL, 563, 87, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (332533, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23233, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (523446456, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12342, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (52344, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (324213213, NULL, 563, 87, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3533, NULL, 1232, 332, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (233, NULL, 222, 232, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (546456, NULL, 6345, 4535345, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, NULL, 32, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (54, NULL, 87, 54, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (213213, NULL, 563, 87, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 2, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 1, false);


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
-- Name: galaxy galaxy_column3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_column3_key UNIQUE (column3);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_column3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_column3_key UNIQUE (column3);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_column3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_column3_key UNIQUE (column3);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_column3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_column3_key UNIQUE (column3);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_column3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_column3_key UNIQUE (column3);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: life fk_life_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT fk_life_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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