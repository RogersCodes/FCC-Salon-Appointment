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
    customer_id integer,
    service_id integer,
    "time" character varying(200)
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
    phone character varying(200),
    name character varying(200)
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
    name character varying(200)
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

INSERT INTO public.appointments VALUES (1, 6, 2, '10:1');
INSERT INTO public.appointments VALUES (77, 67, 3, '10:40am');
INSERT INTO public.appointments VALUES (16, 17, 4, '5:00ama');
INSERT INTO public.appointments VALUES (17, 17, 4, '');
INSERT INTO public.appointments VALUES (18, 17, 4, '');
INSERT INTO public.appointments VALUES (19, 18, 2, '5:30p');
INSERT INTO public.appointments VALUES (78, 67, 3, 'q');
INSERT INTO public.appointments VALUES (79, 67, 3, '');
INSERT INTO public.appointments VALUES (80, 67, 3, '');
INSERT INTO public.appointments VALUES (81, 67, 3, '');
INSERT INTO public.appointments VALUES (82, 67, 3, '8:45pm');
INSERT INTO public.appointments VALUES (83, 67, 3, '');
INSERT INTO public.appointments VALUES (84, 67, 3, '');
INSERT INTO public.appointments VALUES (85, 67, 3, '');
INSERT INTO public.appointments VALUES (33, 29, 2, '8:00am');
INSERT INTO public.appointments VALUES (34, 30, 1, '9:00am');
INSERT INTO public.appointments VALUES (35, 31, 2, '1:00pm');
INSERT INTO public.appointments VALUES (48, 45, 2, '7:00am');
INSERT INTO public.appointments VALUES (56, 51, 3, '9:00pm');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (1, '', 'Rogers');
INSERT INTO public.customers VALUES (5, '444-555-8888', 'Robin');
INSERT INTO public.customers VALUES (6, '444-000-0000', 'Andre');
INSERT INTO public.customers VALUES (17, '222-555-8888', 'Quentin');
INSERT INTO public.customers VALUES (18, '222-999-5656', 'Rex');
INSERT INTO public.customers VALUES (29, '777-777-7777', 'Dio');
INSERT INTO public.customers VALUES (30, '111-666-5555', 'Rob');
INSERT INTO public.customers VALUES (31, '333-999-5555', 'Ashley');
INSERT INTO public.customers VALUES (37, '555-654-0000', 'Rook');
INSERT INTO public.customers VALUES (38, '333-222-1111', 'Welbeck');
INSERT INTO public.customers VALUES (39, '000-111-8888', 'Reno');
INSERT INTO public.customers VALUES (40, '256-777-88888', 'Tio');
INSERT INTO public.customers VALUES (41, '999-999-9999', 'Sophia');
INSERT INTO public.customers VALUES (42, '120-333-8989', 'Yuno');
INSERT INTO public.customers VALUES (43, 'Test', 'FakeTime');
INSERT INTO public.customers VALUES (44, 'FakeTime', '');
INSERT INTO public.customers VALUES (45, '22-66-888', 'Gunna');
INSERT INTO public.customers VALUES (51, '444-444-77777', 'Quavo');
INSERT INTO public.customers VALUES (67, '555-888-656565', 'Alon');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'Perm');
INSERT INTO public.services VALUES (2, 'Facial');
INSERT INTO public.services VALUES (3, 'Shaving');
INSERT INTO public.services VALUES (4, 'Waxing');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 85, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 67, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 4, true);


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
-- Name: appointments customer_apointment; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT customer_apointment FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments service_appointment; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT service_appointment FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

