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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions integer NOT NULL,
    size_in_km numeric,
    distance_from_earth integer,
    color text,
    is_spiral boolean,
    has_blackhole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    size integer NOT NULL,
    weight integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    star_id integer NOT NULL,
    size integer,
    type text,
    color text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    galaxy_id integer,
    size_in_km integer NOT NULL,
    type text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'A', 1);
INSERT INTO public.asteroid VALUES (2, 'B', 2);
INSERT INTO public.asteroid VALUES (3, 'C', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 300, 400, 500, 'Green', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 976, 458, 547, 'Red', true, false);
INSERT INTO public.galaxy VALUES (3, 'Konoha', 548, 698, 125, 'Blue', false, false);
INSERT INTO public.galaxy VALUES (4, 'Cradle', 1112, 997, 0, 'White', false, false);
INSERT INTO public.galaxy VALUES (5, 'Fathom', 9865, 123, 99554, 'Purple', true, true);
INSERT INTO public.galaxy VALUES (6, 'Iteration 226', 4568, 987, 65, 'Orange', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'B', 1, 1, 1);
INSERT INTO public.moon VALUES (3, 'C', 1, 1, 1);
INSERT INTO public.moon VALUES (4, 'D', 1, 1, 1);
INSERT INTO public.moon VALUES (5, 'E', 1, 1, 1);
INSERT INTO public.moon VALUES (6, 'F', 1, 1, 1);
INSERT INTO public.moon VALUES (7, 'G', 1, 1, 1);
INSERT INTO public.moon VALUES (8, 'H', 1, 1, 1);
INSERT INTO public.moon VALUES (9, 'I', 1, 1, 1);
INSERT INTO public.moon VALUES (10, 'J', 1, 1, 1);
INSERT INTO public.moon VALUES (11, 'L', 1, 1, 1);
INSERT INTO public.moon VALUES (12, 'M', 1, 1, 2);
INSERT INTO public.moon VALUES (13, 'N', 1, 1, 3);
INSERT INTO public.moon VALUES (14, 'O', 1, 1, 3);
INSERT INTO public.moon VALUES (15, 'P', 1, 1, 4);
INSERT INTO public.moon VALUES (16, 'R', 1, 1, 5);
INSERT INTO public.moon VALUES (17, 'O', 1, 1, 5);
INSERT INTO public.moon VALUES (18, 'T', 1, 1, 5);
INSERT INTO public.moon VALUES (19, 'U', 1, 1, 6);
INSERT INTO public.moon VALUES (20, 'V', 1, 1, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'B', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'C', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'D', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'E', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'F', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'G', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'H', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'I', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'J', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'K', 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'L', 5, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Bebi', 4, 4, 'Giant');
INSERT INTO public.star VALUES (2, 'B', 2, 2, 'Dwarf');
INSERT INTO public.star VALUES (3, 'C', 3, 3, 'Neutron');
INSERT INTO public.star VALUES (4, 'D', 4, 4, 'Red Giant');
INSERT INTO public.star VALUES (5, 'E', 4, 4, 'White Dwarf');
INSERT INTO public.star VALUES (6, 'H', 2, 2, 'Dwarf');


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


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
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: asteroid unique_asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_id UNIQUE (asteroid_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

