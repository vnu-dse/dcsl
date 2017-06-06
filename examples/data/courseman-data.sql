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


ALTER TABLE coursemodule OWNER TO admin;

--
-- Name: orientation; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE orientation (
    id integer NOT NULL,
    content character varying(10000)
);


ALTER TABLE orientation OWNER TO admin;

--
-- Name: sclass; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE sclass (
    id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE sclass OWNER TO admin;

--
-- Data for Name: coursemodule; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO coursemodule VALUES (1, 'M100', 'IPG', 1, 5);
INSERT INTO coursemodule VALUES (3, 'M300', 'SEG', 3, 5);
INSERT INTO coursemodule VALUES (2, 'M200', 'PPL', 2, 5);


--
-- Data for Name: orientation; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO orientation VALUES (1, '
<html>
<head>
  <title>Online Orientation Program</title>
  <style>
    body {
      background-color: powderblue;
      font-family: times new roman;
      font-size: 16;
    }
    h1 {
      color:blue; 
      text-align:center;
      font-size: 20;
    }
    h2 {
      color:green;
      font-size: 18;
    }
    
    table#menu {
      width: 100%;
      border: 1px solid #f0f020;
      margin: 0px auto;
      background-color: #f0f020;
      padding: 0px;
      border-spacing: 1px;
    }    
    table#menu th, td {
      padding: 2px;
      border-spacing: 0px;
      background-color: white;
      vertical-align: center;
      text-align: center;
      font-family: times new roman;
      font-size: 22;
    }
    
    a:link {
      color: green;
      background-color: transparent;
      text-decoration: none;
    }

    a:visited {
      color: green;
      background-color: transparent;
      text-decoration: none;
    }

    a:hover {
      color: pink;
      background-color: transparent;
      text-decoration: underline;
    }

    a:active {
      color: yellow;
      background-color: transparent;
      text-decoration: underline;
    }
  </style>
</head>
<body>
 <hr/>
  <h1>WELCOME TO THE ORIENTATION PROGRAM!</h1>
 <hr/>
 <table id="menu">
  <tbody>
    <tr>
      <td><a href="#intro">Introduction</a></td>
      <td><a href="#programs">Programs</a></td>
      <td><a href="#staff">Our staff</a></td>
      <td><a href="#map">Campus map</a></td>
    </tr>
  </tbody>
 </table>

<a name="intro">&nbsp;</a>
<h2>Introduction</h2>
All incoming students are expected to participate in an orientation program.

Orientation is where you begin to navigate the campus, learn about social and academic resources/programs, receive academic advice, enroll in classes, meet new people and begin to make connections, get your questions answered, and have fun!

<a name="programs">&nbsp;</a>
<h2>Programs</h2>
We have a wide range of academic and vocational programs for students to choose from. 

In addition, we also have programs specifically designed to help international students to settle into the campus life!

So, come and talk to our staff about these programs.

<a name="staff">&nbsp;</a>
<h2>Our staff</h2>
Our staff are always here to help. Please dont hesitate to ask questions.

<a name="map">&nbsp;</a>
<h2>Campus map</h2>
The campus map will be handed out to you by our staff in a separate leaflet.
</body>
</html>
');


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

