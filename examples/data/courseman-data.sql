--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

--
-- Name: coursemodule; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE coursemodule (
    id integer NOT NULL,
    code character varying(6),
    name character varying(30),
    semester integer,
    credits integer
);

--
-- Name: orientation; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE orientation (
    id integer NOT NULL,
    content character varying(255)
);


--
-- Name: sclass; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE sclass (
    id integer NOT NULL,
    name character varying(20)
);


--
-- Data for Name: coursemodule; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO coursemodule VALUES (1, 'M100', 'IPG', 1, 5);
INSERT INTO coursemodule VALUES (3, 'M300', 'SEG', 3, 5);
INSERT INTO coursemodule VALUES (2, 'M200', 'PPL', 2, 5);


--
-- Data for Name: orientation; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO orientation VALUES (19, 'Welcome To The 
Orientation Program');


--
-- Data for Name: sclass; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO sclass VALUES (1, 'Morning 1');
INSERT INTO sclass VALUES (2, 'Morning 2');
INSERT INTO sclass VALUES (3, 'Afternoon 1');
INSERT INTO sclass VALUES (4, 'Afternoon 2');


--
-- Name: coursemodulepk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY coursemodule
    ADD CONSTRAINT coursemodulepk PRIMARY KEY (id);


--
-- Name: orientationpk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY orientation
    ADD CONSTRAINT orientationpk PRIMARY KEY (id);


--
-- Name: sclasspk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY sclass
    ADD CONSTRAINT sclasspk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

