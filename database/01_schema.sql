--
-- PostgreSQL database dump
--

\restrict bpCK1aENTLEy1WguMgpmzh6qUGxQw025aMTmQ4eRgieSB1MHXEAFDXkyXIJvS48

-- Dumped from database version 17.12 (Debian 17.12-1.pgdg13+1)
-- Dumped by pg_dump version 17.12 (Debian 17.12-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: persona; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.persona (
    id_persona uuid DEFAULT gen_random_uuid() NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) NOT NULL,
    identificacion character varying(20) NOT NULL,
    correo character varying(150) NOT NULL,
    telefono character varying(20),
    estado boolean DEFAULT true NOT NULL
);


--
-- Name: persona persona_identificacion_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_identificacion_key UNIQUE (identificacion);


--
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id_persona);


--
-- PostgreSQL database dump complete
--

\unrestrict bpCK1aENTLEy1WguMgpmzh6qUGxQw025aMTmQ4eRgieSB1MHXEAFDXkyXIJvS48

