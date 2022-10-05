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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer NOT NULL,
    service_id integer NOT NULL,
    "time" character varying
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying,
    name character varying
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (62, 49, 2, '11 am');
INSERT INTO public.appointments VALUES (63, 50, 2, '1:00 pm');
INSERT INTO public.appointments VALUES (64, 51, 3, '56');
INSERT INTO public.appointments VALUES (65, 52, 5, '67');
INSERT INTO public.appointments VALUES (66, 53, 1, '33');
INSERT INTO public.appointments VALUES (6, 6, 1, '');
INSERT INTO public.appointments VALUES (7, 7, 1, '1:30');
INSERT INTO public.appointments VALUES (8, 8, 1, '3:30');
INSERT INTO public.appointments VALUES (9, 7, 1, '2:30');
INSERT INTO public.appointments VALUES (10, 8, 1, '7:00');
INSERT INTO public.appointments VALUES (11, 8, 1, '9:20');
INSERT INTO public.appointments VALUES (67, 49, 2, '45');
INSERT INTO public.appointments VALUES (68, 54, 1, '1');
INSERT INTO public.appointments VALUES (69, 55, 1, '23');
INSERT INTO public.appointments VALUES (70, 56, 2, '3:30');
INSERT INTO public.appointments VALUES (71, 57, 3, '2:33');
INSERT INTO public.appointments VALUES (72, 58, 1, '3:45');
INSERT INTO public.appointments VALUES (18, 8, 1, '4:55');
INSERT INTO public.appointments VALUES (73, 52, 1, '23');
INSERT INTO public.appointments VALUES (80, 64, 1, '9:00');
INSERT INTO public.appointments VALUES (81, 65, 1, '1:12');
INSERT INTO public.appointments VALUES (82, 66, 1, '4:56');
INSERT INTO public.appointments VALUES (83, 67, 1, '1:11');
INSERT INTO public.appointments VALUES (84, 7, 4, '1:22');
INSERT INTO public.appointments VALUES (85, 7, 4, '2:33');
INSERT INTO public.appointments VALUES (86, 7, 3, '3:89');
INSERT INTO public.appointments VALUES (87, 7, 5, '34');
INSERT INTO public.appointments VALUES (88, 7, 5, '23');
INSERT INTO public.appointments VALUES (89, 7, 4, '344');
INSERT INTO public.appointments VALUES (90, 7, 5, '23');
INSERT INTO public.appointments VALUES (91, 7, 1, '34');
INSERT INTO public.appointments VALUES (92, 7, 1, '45');
INSERT INTO public.appointments VALUES (93, 7, 3, '3');
INSERT INTO public.appointments VALUES (94, 6, 3, 'exit');
INSERT INTO public.appointments VALUES (95, 52, 3, 'exit');
INSERT INTO public.appointments VALUES (96, 52, 1, '2222');
INSERT INTO public.appointments VALUES (97, 52, 2, '23');
INSERT INTO public.appointments VALUES (98, 52, 2, 'exit');
INSERT INTO public.appointments VALUES (99, 69, 1, '345');
INSERT INTO public.appointments VALUES (55, 8, 1, '9:00');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (64, '33', 'Julia');
INSERT INTO public.customers VALUES (65, '367', 'Lima');
INSERT INTO public.customers VALUES (66, '321', 'lIO');
INSERT INTO public.customers VALUES (67, '121', 'June');
INSERT INTO public.customers VALUES (68, '3455', '12');
INSERT INTO public.customers VALUES (6, '23', 'Lines');
INSERT INTO public.customers VALUES (7, '345', 'Julesa');
INSERT INTO public.customers VALUES (8, '345-6789', 'Rea');
INSERT INTO public.customers VALUES (69, '12', 'Pleo');
INSERT INTO public.customers VALUES (49, '555-555-5555', 'Jordan');
INSERT INTO public.customers VALUES (50, '555-555-3455', 'Wen');
INSERT INTO public.customers VALUES (51, '555-555', 'Jamie');
INSERT INTO public.customers VALUES (52, '34', 'Linus');
INSERT INTO public.customers VALUES (53, '9', 'Red');
INSERT INTO public.customers VALUES (54, '111', '11');
INSERT INTO public.customers VALUES (55, '123', 'A');
INSERT INTO public.customers VALUES (56, '334', 'B');
INSERT INTO public.customers VALUES (57, '56', 'C');
INSERT INTO public.customers VALUES (58, '323-2293', 'Elena');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'cut');
INSERT INTO public.services VALUES (2, 'color');
INSERT INTO public.services VALUES (3, 'perm');
INSERT INTO public.services VALUES (4, 'style');
INSERT INTO public.services VALUES (5, 'trim');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 99, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 69, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 5, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

