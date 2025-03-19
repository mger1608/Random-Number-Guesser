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
-- Name: user_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_data (
    username character varying(22) NOT NULL,
    best_game integer NOT NULL,
    games_played integer NOT NULL
);


ALTER TABLE public.user_data OWNER TO freecodecamp;

--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_data VALUES ('user_1742313245571', 500, 2);
INSERT INTO public.user_data VALUES ('user_1742313245572', 267, 5);
INSERT INTO public.user_data VALUES ('user_1742312157655', 979, 2);
INSERT INTO public.user_data VALUES ('user_1742310844028', 43, 2);
INSERT INTO public.user_data VALUES ('user_1742310844029', 284, 5);
INSERT INTO public.user_data VALUES ('user_1742312157656', 14, 5);
INSERT INTO public.user_data VALUES ('user_1742313391694', 193, 2);
INSERT INTO public.user_data VALUES ('user_1742310981960', 734, 2);
INSERT INTO public.user_data VALUES ('user_1742312579676', 724, 2);
INSERT INTO public.user_data VALUES ('user_1742310981961', 563, 5);
INSERT INTO public.user_data VALUES ('user_1742313391695', 92, 5);
INSERT INTO public.user_data VALUES ('user_1742312579677', 291, 5);
INSERT INTO public.user_data VALUES ('user_1742311156738', 712, 2);
INSERT INTO public.user_data VALUES ('user_1742311156739', 435, 5);
INSERT INTO public.user_data VALUES ('user_1742311188879', 702, 2);
INSERT INTO public.user_data VALUES ('user_1742313726705', 381, 2);
INSERT INTO public.user_data VALUES ('user_1742312945866', 198, 2);
INSERT INTO public.user_data VALUES ('user_1742311188880', 263, 5);
INSERT INTO public.user_data VALUES ('user_1742313726706', 289, 5);
INSERT INTO public.user_data VALUES ('user_1742312945867', 373, 5);
INSERT INTO public.user_data VALUES ('user_1742311581637', 674, 2);
INSERT INTO public.user_data VALUES ('user_1742311581638', 92, 5);
INSERT INTO public.user_data VALUES ('user_1742313030782', 186, 2);
INSERT INTO public.user_data VALUES ('user_1742313758585', 365, 2);
INSERT INTO public.user_data VALUES ('user_1742313030783', 213, 5);
INSERT INTO public.user_data VALUES ('user_1742313758586', 137, 5);
INSERT INTO public.user_data VALUES ('user_1742313132385', 989, 2);
INSERT INTO public.user_data VALUES ('user_1742313132386', 10, 5);
INSERT INTO public.user_data VALUES ('user_1742313901755', 977, 2);
INSERT INTO public.user_data VALUES ('user_1742313901756', 159, 5);
INSERT INTO public.user_data VALUES ('user_1742313921221', 67, 2);
INSERT INTO public.user_data VALUES ('user_1742313921222', 469, 5);


--
-- Name: user_data pk_username; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT pk_username PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--
