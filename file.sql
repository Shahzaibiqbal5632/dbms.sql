--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-1.pgdg24.04+1)
-- Dumped by pg_dump version 17.2 (Ubuntu 17.2-1.pgdg24.04+1)

-- Started on 2025-01-19 19:44:25 PKT

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
-- TOC entry 219 (class 1259 OID 49715)
-- Name: affiliations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.affiliations (
    firstname character varying(100),
    lastname character varying(100),
    university_shortname character varying(50),
    function character varying(150),
    organization character varying(200),
    id integer NOT NULL,
    professor_id integer
);


ALTER TABLE public.affiliations OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 57785)
-- Name: affiliations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.affiliations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.affiliations_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 221
-- Name: affiliations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.affiliations_id_seq OWNED BY public.affiliations.id;


--
-- TOC entry 218 (class 1259 OID 49710)
-- Name: organizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organizations (
    organization character varying(255),
    function character varying(250),
    organization_sector character varying(100),
    id integer NOT NULL
);


ALTER TABLE public.organizations OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 57775)
-- Name: organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.organizations_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 220
-- Name: organizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;


--
-- TOC entry 217 (class 1259 OID 49707)
-- Name: professors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professors (
    firstname character varying(100),
    lastname character varying(100),
    university character varying(50),
    id integer NOT NULL
);


ALTER TABLE public.professors OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 57847)
-- Name: professors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.professors_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 223
-- Name: professors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professors_id_seq OWNED BY public.professors.id;


--
-- TOC entry 216 (class 1259 OID 49704)
-- Name: universities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.universities (
    university_shortname character varying(50),
    university_city character varying(100),
    id integer NOT NULL,
    university character varying(200)
);


ALTER TABLE public.universities OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 57803)
-- Name: universities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.universities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.universities_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 222
-- Name: universities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.universities_id_seq OWNED BY public.universities.id;


--
-- TOC entry 215 (class 1259 OID 49695)
-- Name: university_professors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.university_professors (
    firstname character varying(100),
    lastname character varying(100),
    university character varying(200),
    university_shortname character varying(50),
    university_city character varying(100),
    function character varying(150),
    organization character varying(200),
    organization_sector character varying(100)
);


ALTER TABLE public.university_professors OWNER TO postgres;

--
-- TOC entry 3305 (class 2604 OID 57786)
-- Name: affiliations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliations ALTER COLUMN id SET DEFAULT nextval('public.affiliations_id_seq'::regclass);


--
-- TOC entry 3304 (class 2604 OID 57776)
-- Name: organizations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations ALTER COLUMN id SET DEFAULT nextval('public.organizations_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 57848)
-- Name: professors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors ALTER COLUMN id SET DEFAULT nextval('public.professors_id_seq'::regclass);


--
-- TOC entry 3302 (class 2604 OID 57804)
-- Name: universities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universities ALTER COLUMN id SET DEFAULT nextval('public.universities_id_seq'::regclass);


--
-- TOC entry 3467 (class 0 OID 49715)
-- Dependencies: 219
-- Data for Name: affiliations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.affiliations (firstname, lastname, university_shortname, function, organization, id, professor_id) FROM stdin;
Hato	Schmeiser	USG	Beratungstätigkeiten für Mitglieder	I.VW-Forschungskreis	223	1115
Marcel	Meili	ETH	VR-Präsidium	Park Book AG	659	828
Martin	Vetterli	EPF	Occasional advisor	DARTFISH	736	1270
Antonio	Loprieno	UBA	Mitglied des Universitätsrates	Universitä della Svizzera Italiana	954	766
Christian	Leumann	UBE	NA	Unitectra	1101	754
Günter	Müller-Stewens	USG	Herausgeber	M&A Review	1102	928
Detlef	Günther	ETH	VR-Mandat	GRS Gemresearch Swisslab AG	1246	518
Jeffrey	Huang	EPF	Head of Pillar and Advisor (Educational Institution), while on leave	SUTD Architecture and Sustainable Design Singapore	1316	621
Daniel	Buser	UBE	NA	Osteology Stiftung Luzern	1317	189
Claudio	Bassetti	UBE	NA	Fondazione Neuroscienze Ticino	1318	86
Philippe	Thalmann	EPF	Membre du conseil de fondation	IDHEAP, Chavannes-près-Renens	1319	1229
Hervé	Bourlard	EPF	Member (vice-president) of the Board of Directors	IdeArk SA (IDIAP's technology transfer instrument)	1320	149
Andreas	Kotte	UBE	NA	Seniorenuniversität Bern	1321	693
Stefan	Weber	UBE	Board Member	CAScination AG	1322	1292
Günter	Müller-Stewens	USG	Mitglied des Stiftungsrates	Master of Law and Economics	1323	928
Jieping	Zhu	EPF	Editorial board member	J. Antibiotics, Nature Publisher	1324	1357
Roland	Fankhauser	UBA	Mitglied	Advokatenkammer Basel-Stadt	50	340
Oliver	Gassmann	USG	Miglied Forschungs- und Bildungskommission	Economiesuisse	51	429
Daniel	Candinas	UBE	NA	Ruth & Arthur Scherbarth Stiftung, Bern	52	196
Antoinette	Weibel	USG	Beiratsmitglied	Schweizerische Vereinigung für Führungsausbildung	1	1302
Laurent	Vulliet	EPF	CEO et Administrateur	BG Ingénieurs Conseils, Lausanne	2	1288
Ian	Smith	EPF	Adjunct Professor/Prof. Titulaire (teaching)	Carnegie Mellow University, USA	3	1152
Matthias	Finger	EPF	Membre	EICom, Commission Fédérale de la Régulation du Marché de l'Electricté, Bern	4	358
Edwin Charles	Constable	UBA	Mitglied der Life Science Kommission	HKBB Basel	5	221
Markus	Schefer	UBA	Mitglied des Kontrollorgans über den Staatsschutz	Kanton Basel-Stadt	6	1093
Vito	Roberto	USG	Konsulent	Baker & McKenzie	7	1041
Daniel	Oyon	ULA	Mandat	Etablissement Cantonal d'Assurance	8	978
Johan	Auwerx	EPF	Biomedical consulting - Founder and BOD (Director - approved by EPFL)	Reamol Biomedical Consultung, Buchillon, CH	9	54
Simone	Walther	USG	Rechtsanwältin	Schärer Rechtsanwälte	10	1289
Joseph	Francois	UBE	NA	Board Member, Institute for Int'l & Development Econ.	11	401
Matthias	Finger	EPF	Vice-président	SKE, Commission Fédérale d'Arbitrage dans le Secteur du Rail, Berne	12	358
André	Holenstein	UBE	NA	Stiftung Schloss Spiez	13	615
Martin G.	Täuber	UBE	NA	Stiftung Universität und Gesellschaft	14	1215
Bruno	Moretti	UBE	NA	Stiftung Kinderbetreuung im Hochschulraum Bern KIHOB	15	871
José del Rocío	Millán Ruiz	EPF	Science Advisory Board	Nielsen Neuro. New York, USA	16	851
Philippe	Bacchetta	ULA	NA	Activités académiques	17	58
Andreas	Burg	EPF	Technical consulting	ACP Advanced Circuit Pursuit AG, Zürich	18	186
Daniel	Odermatt	UBE	NA	Campus Muristalden AG	19	971
Laurent	Schild	ULA	Mandat	Swissmedic	20	1095
Pascal	Mahon	UNE	membre du Directoire	Schweizerisches Kompetenzzentrum für Menschenrechte (SKMR)	21	780
Marilyne	Andersen	EPF	Member of Industry Agenda Council for Real Estate and Urbanization	World Economic Forum	22	41
Yvan	Lengwiler	UBA	Mitglied des Stiftungsrates	Max Geldner-Stiftung, Basel	23	749
Joachim	Lingner	EPF	ERC starting grant review panel	ERC Executive Agency, Brussels	24	757
Janet	Hering	EPF	Member, Scientific Advisory Board (10.2013 - present)	AquaDiva, Fredrich-Schiller-Universität Jena, Germany	25	581
Lino	Guzzella	ETH	Vertreter in der Plenarversammlung und im Vorstand	swissuniversities	26	536
Pius Eliseo	Baschera	ETH	VR-Mandat	Roche Holding AG	27	82
Matthias	Lütolf	EPF	Board member and advisor	QGel SA, PSE, Lausanne	28	770
Klaus	Mezger	UBE	NA	Ionight	29	845
Fritz	Schlunegger	UBE	NA	Bretscher Stiftung	30	1111
Gian-Paulo	Dotto	ULA	NA	Massachusetts General Hospital	31	266
Pierre-André	Farine	UNE	Présidence de la Fondation du Prix Omega, Prix Omega scientifique et Prix Omega Etudiants	Fondation du prix Omega, Neuchâtel	32	351
Nico	de Rooij	EPF	Président du conseil d'administration	Contrôle officiel suisse des chronomètres (COSC), La Chaux-de-Fonds	33	248
Maarten J.F.M.	Hoenen	UBA	Mitglied des Stiftungsrates	Swisspeace Bern	34	596
Christoph	Aebi	UBE	NA	Bernische Stiftung für krebskranke Kinder und Jugendliche	35	12
Willy	Zwaenepoel	EPF	Advisory Board	Midokura, Japan	36	1376
Reto	Föllmi	USG	Verwaltungsratspräsident	R&M Immobilien AG	37	384
Hans-Uwe	Simon	UBE	NA	Novartis, Forschungsstiftung	38	1147
Denis	Duboule	UGE	Membre du conseil scientifique	Strategic Research Initiative on stem cells, Stockholm	39	285
Georg	Nöldeke	UBA	Mitglied des Stiftungsrates	Basler Kantonalbank, Stiftung zur Förderung von Forschung und Unterricht, Basel	40	958
Pierre	Gönczy	EPF	Scientific Board (no income)	Novartis Consumer Health Foundation, Nyon	41	457
Anton	Schleiss	EPF	Expertise Druckstollen, Xe-Pian Xe-Namnoy, Laos	SK Engineering & Constructions, South Korea	42	1110
Denis	Duboule	UGE	Membre de comité scientifique	Institut génomique Montpellier	43	285
Andreas	Mortensen	EPF	Membre du conseil de fondation	Fondation Zeno Karl Schindler	44	886
Frank	Stüber	UBE	NA	Stiftung für die Forschung in Anästhesie und Intensivmedizin	45	1189
Daniel	Oyon	ULA	Mandat	Autorité fédérale de surveillance en matière de révision	46	978
Martin G.	Täuber	UBE	NA	SWAN Hadron AG	47	1215
Georg	von Schnurbein	UBA	Mitglied des Stiftungsrates	Roland von Hoesslin Gedenkstiftung, Augsburg, Deutschland	48	1286
Ernst	Hafen	ETH	VR-Mandat	EvalueScience AG	49	538
Marc	Gruber	EPF	Visiting Professor	Imperial College Business School	53	491
Dietmar	Eberle	ETH	VR-Mandat	Senn BPM AG	54	299
Fréderic	Krauskopf	UBE	NA	A. Peneveyre SA	55	696
Rico	von Wyss	USG	Oberstlt i Gst	Schweizer Armee	56	1287
Stefanie	Hellweg	ETH	Vorstandsmitglied	Ecoinvent	57	562
Hilal	Lashuel	EPF	Executive Director, Qatar Biomedical Research Institute (while on leave)	Qatar Foundation, Doha Qatar	58	721
Klaus	Zuberbühler	UNE	Enseignement	Université St Andrews (UK)	59	1368
Bernhard	Ehrenzeller	USG	Mitglied des Stiftungsrats	Stiftung für Schweizerische Rechtspflege	60	309
Willy	Zwaenepoel	EPF	Advisory Board	Nutanix Inc. San Jose	61	1376
Frédéric	Kaplan	EPF	Ecriture de chroniques	Le Temps	62	674
Lino	Guzzella	ETH	Director	ETH Singapore SEC Ltd.	63	536
Jérôme Jean-Constant	Faist	ETH	NA	Centre Suisse d’Electronique et de Microtechnique (CSEM)	64	328
Simone	Munsch	UFR	Forschungsrätin	Schweizerischer Nationalfonds (SNF)	65	935
Jean-François	Molinari	EPF	Panel Synergia FNS	FNS	66	856
Hubert	Steinke	UBE	NA	Paul- und Johanna Röthlisberger-Schmid-Stiftung	67	1174
Matthias	Egger	UBE	NA	WHO, Geneva	68	304
Jan-Anders	Manson	EPF	Membre du conseil d'administration	EELCEE Ltd., Korea	69	786
Klaus	Möller	USG	Mitherausgeber der Zeitschrift Board - Zeitschrift für Aufsichtsräte	Bundesanzeiger Verlag	70	861
Geraldine	Frei	USG	Vorsitzender des Verwaltungsrates	Algofin AG	71	404
Lino	Guzzella	ETH	Stiftungsrat	Erich Degen-Stiftung	72	536
Melody	Swartz	EPF	Founder & Shareholder	Lanta Bio, Préverenges, CH	73	1199
Karl	Aberer	EPF	Chairman of L3S Advisory Board	L3S Advisory Board	74	4
Andreas	Ladner	UBE	NA	Activités académiques	75	709
Thomas	Bieger	USG	Verwaltungsratspräsident	Jungfraubahnen Management AG	76	124
Manuel	Ammann	USG	Verwaltungsrat	Neue Bank AG	77	38
Françoise Gisou van der	Goot Grunberg	EPF	Diverses commissions du SNF	SNF Bern	78	464
Walter	Brenner	USG	Verwaltungsratspräsident	ITMP AG	79	163
Andreas	Mortensen	EPF	proposés référés	NSF, USA	80	886
Alexander	Fust	USG	Dozent	CTI-Entrepreneurship	81	418
Achim	Conzelmann	UBE	NA	Foundation of Talents	82	223
Janet	Hering	EPF	Member of the board	Fondation pour l’Etude des Eaux du Léman	83	581
Pierre	Dillenbourg	EPF	Membre indépendant du conseil d'administration de l'établissement scolaire privé Haut-Lac (1 séance)	Haut-Lac Ecole internationale bilingue, St-Légier, CH	84	263
Klaus	Zuberbühler	UNE	Membre du conseil scientifique	Max Planck Institute of Evolutionary Anthropology	85	1368
Alfred	Rufer	EPF	Expertise	Ministère de la Recherche, Paris	86	1071
François	Avellan	EPF	Associé minoritaire dans la start-up d'un ancien doctorant	Power Vision Engineering Sàrl, Ecublens	87	56
Philippe	Thalmann	EPF	Comité de direction du PNR 66 Ressource bois	Schweizerischer Nationalfonds	88	1229
Thierry	Carrel	UBE	NA	Mobiliar Genossenschaft	89	202
Matthias	Kohler	ETH	NA	Erich Degen-Stiftung	90	687
Günter	Müller-Stewens	USG	Mitglied der Leitung	Verein Katholisches Akademikerhaus/Katholisches Studentenhaus	91	928
Thomas	Friedli	USG	Dozent Qualitäts- und Prozessmanagement	Universität Salzburg	92	409
Nico	de Rooij	EPF	Conseil scientifique du CSEM SA	CSEM SA, Neuchâtel	93	248
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation les Bois Chamblard	94	31
Alfred	Rufer	EPF	Expertise	AERES, Paris	95	1071
Henry	Markram	EPF	Chairman (en liquidation)	Blue Brain SA, Epalinges, CH	96	812
Heinz	Zimmermann	UBA	Mitglied des Verwaltungsrates	vescore Solutions, St. Gallen	97	1363
Lutz-Peter	Nolte	UBE	NA	Medical Cluster	98	960
Christoph	Lechner	USG	Mitglied des Verwaltungsrats	Helvetia AG	99	726
Frédéric	Kaplan	EPF	Enseignement	HEAD Genève	100	674
Harry	Gugger	EPF	Member of the Advisory Board, Studiengang Kulturmanagement Uni Basel	SKM, UniBasel, Basel	101	505
Klaus	Möller	USG	Gesellschafter	The Performance Management Company PMC GmbH	102	861
Patrick	Aebischer	EPF	NA	World Economic Forum	103	31
Daniel	Steingruber	USG	Fachlehrer für Wirtschaft & Recht	Kantonsschule am Brühl in St.Gallen	104	1168
Josef	Mondl	USG	Redner, Berater	Selbstständig	105	862
Jacques	Dubey	UFR	Rechtsberater	Selbstständig	106	267
Elgar	Fleisch	USG	VR-Mandat	42matters AG	107	373
Vassily	Hatzimanikatis	EPF	Consulting	TOTAL, Paris, France	108	553
Pietro	Beritelli	USI	Verwaltungsratspräsident	Heidiland Tourismus AG	109	103
Thomas	Hunkeler	UFR	Jurypräsident	Kollegium Gambach	110	638
Giovanni	Dietler	EPF	Membre du Conseil Scientifique	Adolphe Merkle Institute, Université de Fribourg	111	259
Mohammad Amin	Shokrollahi	EPF	CEO (on leave from EPFL)	Kandou Bus, Lausanne	112	1138
Patrick	Aebischer	EPF	NA	Fondation Terre des Hommes	113	31
Boi	Faltings	EPF	Scientific Advisor / Consultant	Prediggo SA, PSE, Ecublens	114	331
Georges	Abou Jaoudé	EPF	Professeur invité (2 interventions d'une semaine)	Kazan Federal University, Russia	115	6
Reinhard	Jung	USG	Mitglied des Innovationsbeirats	Haas Food Equipment GmbH	116	666
Martin	Fröhlich	EPF	Bureau d'architecture, Fondateur	AFF Architekten, Berlin, Germany	117	410
Artur	Baldauf	UBE	NA	International School of Bern	118	65
Wilhelm	Krek	ETH	VR-Mandat	ProteoMediX AG	119	697
Willy	Zwaenepoel	EPF	Advisory Board	Typesafe, Inc. Lausanne	120	1376
Jérôme Jean-Constant	Faist	ETH	VR-Mandat	Alpes Lasers S.A.	121	328
Hervé	Bourlard	EPF	Director	Idiap Research Institute	122	149
Anton	Schleiss	EPF	Panel of experts, Haraz Dam & HPP	Mahab Ghoods, Theran, Iran	123	1110
Thomas	Rudolph	USG	Verwaltungsrat	McOptik	124	1063
Jean-Louis	Scartezzini	EPF	EIRP Projects Evaluation Panel	BCA, Singapore	125	1087
Bruno	Gottstein	UBE	NA	Jean-Pierre Miéville-Stiftung	126	465
Hugo	Zbinden	UGE	Membre du conseil d'administration	SIG	127	1343
Andrea	Back	USG	Beirätin	Crosswalk AG	480	62
Jean-Pierre	Hubaux	EPF	Membre du régulateur fédéral des télécoms	ComCom, Berne	128	622
Elyahou	Kapon	EPF	Member of Exert Panel	ERC (consolidators)	129	676
Walter	Brenner	USG	Beratungstätigkeit	ITMC AG	130	163
Reinhard	Schulze	UBE	NA	Mitglied Hochschulrat Leipzig	131	1129
Iris	Baumgartner	UBE	NA	Unitectra	132	88
Alfred	Wüest	ETH	Co-Editor	Journal Acquatic Sciences	133	1338
Jeffrey	Huang	EPF	Co-Founder and Advisor (Design Firm), while on leave	Convergeo Lausanne, Switzerland	134	621
Eugen	Brühwiler	EPF	Quatre mandats d'expertise (en tant qu'expert fédéral), mandatés par l'Office Fédéral de la Culture	BAK, Heimatschutz und Denkmalpflege, Bern	135	181
Heinrich	Hofmann	EPF	Member Advisory Committee	Nanotec, Thailand Science Park, Thailand	136	609
Jean-François	Dufour	UBE	NA	Stiftung für Leberkrankheiten	137	287
Dimos	Poulikakos	ETH	VR-Mandat	Hylomorph AG	138	1005
Benoît	Deveaud	EPF	Assesseur à la Commission de Conciliation en matière de baux	Préfecture de Lausanne	139	253
Francesco	Stellacci	EPF	Head, Scientific Advisory Board	Midatech, UK	140	1181
Sophia	Haussener	EPF	Associate Editor for Journal of Renewable & Sustainable Energy	AIP Publishing Center, Melville, NY, USA	141	554
Thomas	Vogel	ETH	NA	Albert Lück-Stiftung	142	1277
Olivier	Martin	EPF	Reviewing	Various funding agencies and universities	143	813
Antoinette	Weibel	USG	Stiftungsratmitglied	Schweizerische Gesellschaft für Organisation	144	1302
James	Larus	EPF	Huawei Distributed Computing Lab Advisory Board	America Software Lab, Santa Clara, CA	145	718
Thomas	Keller	EPF	Mandat d'expert pour un pont en matériaux composites	Canton de Tessin	146	683
Philippe	Gillet	EPF	Membre du Conseil d'Administration	Société BioMérieux	147	450
Christian	Bovet	UGE	Président du comité d'audit et membre du conseil d'adminstration	BPN Paribas (Suisse) SA	148	157
Joël	Mesot	EPF	Steering Committee	ESS	149	841
Claudio	Loderer	UBE	NA	OLZ & Partners	150	758
Rüdiger	Fahlenbrach	EPF	2-hour Exec. Education International Wealth Management Retreat	SFI, Zürich	151	326
Alexander	Ilic	USG	Expert Committee	Kommission für Technologie und Innovation	152	647
Heinrich	Hofmann	EPF	Member Advisory Committee	University of Bremen	153	609
Giuliano	Bonoli	ULA	Mandat	Commission fédérale des questions familiales	154	138
Heinz	Zimmermann	UBA	Mitglied des Verwaltungsrates	Remaco AG, Basel	155	1363
Stefan	Morkötter	USG	Geschäftsführer	IBEF GmbH	156	877
Claudio	Bassetti	UBE	NA	SITEM	157	86
Jean-Marie	Annoni	UFR	Neurologe	Freiburger Spital	158	42
Bruno	Marchand	EPF	Commission d'urbanisme et d'architecture	Commune de Gland	159	796
Christophe	Ballif	EPF	Consultant technologique et membre du conseil d'administration	Asgalium Unitec SA, Cortaillod	160	69
Martin	Vetterli	EPF	Membre du conseil d'administration (jusqu'à Juin 2014, puis occasional advisor)	VIDINOTI	161	1270
Bradley	Nelson	ETH	VR-Mandat	Magnebotix AG	162	953
Francesco	Stellacci	EPF	Scientific advisor	Istituto Besta/Centro di Nanomedicina, Milano, Italy	163	1181
Geraldine	Frei	USG	Mitglied des Verwaltungsrates	NeueBank AG	164	404
Johannes	Rüegg-Stürm	USG	Verwaltungsratspräsident	Raiffeisen Schweiz	165	1065
Stephan	Morgenthaler	EPF	Conseil scientifique	Novigenix, Lausanne	166	874
Martin	Brown	USG	Diverse kleinere Tätigkeiten	European Fund for Southeast Europe (EFSE)	167	170
Kuno	Schedler	USG	Verwaltungsratspräsident	Schweizer Paraplegiker Forschung	168	1092
Michel	Bierlaire	EPF	Consultance Technique en optimisation	OPTIMIS HCM Echandens	169	127
Carlotta	Guiducci	EPF	expertise examen doctorat, science de la vie	Uni de Bâle	170	506
Florian	Wettstein	USG	Stiftungsrat	Foundation for Responsible Leadership	171	1316
Andreas	Züttel	EPF	Membre du conseil	H2 Energy, Zürich	172	1371
Christian	Enz	EPF	Scientific Advisory Board: Cooperation CSEM-EPF	CSEM, Neuchatel	173	319
Peter	Ryser	EPF	Non-executive director	Cranes Sofrwares International Limited, India	174	1077
Andreas	Mortensen	EPF	Membre Board of Trustees & research center’s scientific advisory board	IMDEA-Materials, Madrid, Espagne	175	886
Joël	Mesot	EPF	Stiftungrat	Technopark Aargau	176	841
Jonathan	Levine	ETH	Stiftungsrat	Stiftung Geobotanisches Forschungsinstitut Rübel	177	755
Hans-Uwe	Simon	UBE	NA	Fondation pour la recherche Lausanne	178	1147
Andreas	Mortensen	EPF	Membre de la commission de sélection des SNSF, Starting Grants 2014	Fonds National Suisse	179	886
Adriano	Marantelli	UBE	NA	Curt Rommel Stiftung	180	789
Aymo	Brunetti	UBA	NA	Fachhochschule Kalaidos	181	184
Yvan	Lengwiler	UBA	Mitglied des Verwaltungsrates	Finanzmarktaufsicht FINMA, Bern	182	749
Ursula	Röthlisberger	EPF	Member of the Board	Chemical Physics Letters - Elsevier	183	1059
Roland	Müller	USG	Verwaltungsratspräsident	Ebnat AG, Ebna	184	918
Andreas	Züttel	EPF	Cours en science de l'environnement	Université de Fribourg	185	1371
Kersten	Geers	EPF	Workshop	Faculty of Architecture, Slipakorn University, Bankok	186	436
David Lyndon	Emsley	EPF	Professor of Chemistry	Ecole normale supérieure de Lyon	187	318
Giovanni	de Micheli	EPF	IMEC Techn. Advisory board	IMEC, Leuven, B	188	239
Elgar	Fleisch	USG	VR-Mandat	Schweizerische Mobiliar Holding AG	189	373
Klaus	Zuberbühler	UNE	Co-directeur	Tai Monkey Project (Côte d'Ivoire)	190	1368
Martin G.	Täuber	UBE	NA	Forschungsstiftung Genaxen	191	1215
Georg	von Schnurbein	UBA	Präsident	Verein Europäische Freiwilligenuniversität	192	1286
Giorgio	Margaritondo	EPF	President, Scientific and Technological Committee	Istituto Italiano di Tecnololgia (IIT)	193	807
Paul Joseph	Dyson	EPF	Editorial board member of several journals (unpaid)	Journals	194	298
André	Holenstein	UBE	NA	Universität Bern, Forschungsstiftung	195	615
Emmanuel	Rey	EPF	Associé et partenaire d'un bureau d'architecture et d'urbanisme	Bauart Architekten und Planer AG, Bern	196	1027
Thomas	Bieger	USG	Präsident	SBB Forschungsfonds	197	124
William	Curtin	EPF	Scientific Advisory Board (2 days/year + some report writing)	A*star Singapore, Inst. High Performance Computing	198	229
Lyesse	Laloui	EPF	ERC Consolidator Grants panel dealing with Products and Processes Engineering	Union Européenne	199	715
Valentin	Djonov	UBE	NA	SWISSENDOS Stiftungsrat	200	264
Jean-Louis	Scartezzini	EPF	IPCC Working group III (mitigation)	PROCLIM/SCNAT, Berne	201	1087
Dario	Neri	ETH	VR-Mandat	Philogen S.P.A.	202	955
Giorgio	Margaritondo	EPF	Membre de l'international advisory board	Scuola Sant'Anna, Pisa, Italy	203	807
Hans Jörg	Peter	ULA	Mandat	Une administration de faillite non spécifié	204	994
Harald	Brune	EPF	Conseiller national, Présedent de la division 2 du Fond National	Fond National pour la Recherche en Suisse, Bern	205	183
Pierre-André	Farine	UNE	Présidence de la commission technique CT du COSC	COSC (Contrôle Officiel Suisse des Chronomètres), La Chaux-de-Fonds	206	351
Daniel	Candinas	UBE	NA	Insula Stiftung	207	196
Till	Förster	UBA	Mitglied des Stiftungsrates	Basel Institute on Governance	208	398
Roland	Müller	USG	Verwaltungsratspitglied	BTV Leasing Schweiz AG	209	918
Jieping	Zhu	EPF	Editorial board member	Beistein J Org Chem, Beilstin Institute, Germany	210	1357
Meike	Mevissen	UBE	NA	Stiftung Tierärztliche Hochschule Hannover	211	844
Johan	Auwerx	EPF	Nutraceuticals - SAB member	Amazentis, Ecublens, Switzerland	212	54
Elgar	Fleisch	USG	VR-Mandat	UCTec Beteiligungsgesellschaft AG	213	373
Pascal	Mahon	UNE	Enseignement	Académie suisse de la magistrature	214	780
Hans Peter	Herzig	EPF	Member of different program committees	Various international conferences	215	587
Didier	Trono	EPF	Membre du conseil	Fondation ISREC, Lausanne	216	1249
Martin G.	Täuber	UBE	NA	Spital-Management Bern AG	217	1215
Françoise Gisou van der	Goot Grunberg	EPF	Scientific Advisory Board	Laboratory of Excellence (Labex) INFORM	218	464
Nikolaos	Stergiopulos	EPF	Administrateur et director ad interim	Rheon Medical SA, Préverenges	219	1184
Alexander	Widmer	ETH	Stiftungsrat	Stiftung Geobotanisches Forschungsinstitut Rübel	220	1319
Alain	Wegmann	EPF	Conseil informatique (non-payé)	Aeroport Genève	221	1296
Heike	Bruch	USG	Mitglied des Fachrates	Schweizer Kaderorganisation SKO	222	174
Pascal	Pichonnaz	UFR	Gutachter	Selbstständig	224	998
Walter	Brenner	USG	Informatik-Lenkungsausschuss	Landesregierung Vorarlberg	225	163
Reto	Föllmi	USG	Vorsitz EG Wirtschaftsstatistik	Bundesamt für Statistik	226	384
Andreas	Beyer	UBA	Mitglied des Auswahlausschusses	Alexander von Humboldt Stiftung	227	113
Heike	Bruch	USG	Mitglied des Vorstandes	Das Demographienetzwerk ddn	228	174
Daniel	Odermatt	UBE	NA	Genossenschaft basecamp4hightech (bc4ht)	229	971
Patricia	Egli	USG	Ersatzrichterin	Verwaltungsgericht Zürich	230	305
Hans-Uwe	Simon	UBE	NA	Universität Bern, Forschungsstiftung	231	1147
Roland	Fankhauser	UBA	Vorstandsmitglied	Verein Fachanwältinnen und Fachanwälte SAV Familienrecht	232	340
Albert	Hafner	UBE	NA	Stiftung Charles Neuhaus Biel	233	539
Volkan	Cevher	EPF	Faculty Fellow	Rice University, Houston, Texas	234	206
Demetri	Psaltis	EPF	Board Member	Wyss Center	235	1007
Pius Eliseo	Baschera	ETH	VR-Präsidium	Hilti AG	236	82
Ulrich	Mosch	UGE	Membre du conseil scientifique	HEM Bâle	237	887
Ambrogio	Fasoli	EPF	Editor-in-Chief, Nuclear Fusion Journal	IAEA, Vienna, Austria	238	352
Daniel	Odermatt	UBE	NA	Stiftung Haus der Universität Bern	239	971
Dominique	Foray	EPF	Expertise	SNF, Bern	240	395
Maria del Carmen	Sandi Perez	EPF	Scientific Advisory Board Member	Leibniz Institute for Neurobiology, LIN, Magdeburg, Germany	241	1084
Sven	Reinecke	USG	Mitglied im Stiftungsrat	Stiftung Kinderdorf Pestalozzi	242	1021
Hubert	Girault	EPF	Associate Editor - Chemical Science	Royal Society of Chemistry, Cambridge, UK	243	454
Tatsuya	Nakada	EPF	Editor of Nuclear Physics B	Elsevier Publishing, Amsterdam	244	949
Roland	Füss	USG	Vortragstätigkeit (einmalig)	Swiss&Global	245	416
Karl	Aberer	EPF	Member of Conseil Fondation IDIAP	Fondation IDIAP	246	4
Hans-Andrea	Loeliger	ETH	Ko-Geschäftsführer	Anadec GmbH	247	760
Paul	Xirouchakis	EPF	Survey on sustainability (1 day)	KIST EUROPE, Germany	248	1342
Rolf	Becker	UBE	NA	GESIS Leibniz Institut	249	97
Nicolas	Gruber	ETH	Vertreter der ETH im Leitorgan	Association Climate-KIC	250	492
Walter	Perrig	UBE	NA	Rochester Bern Foundation Board	251	991
Vincent	Kaufmann	EPF	Associé dans un bureau d'étude	Gt-bureau de recherche, Paris	252	680
Jean-Philippe	Thiran	ULA	Professeur associé ad personam	Université de Lausanne, faculté de médecine	253	1233
Hilal	Lashuel	EPF	Scientific Advisory Board Member	Brain forum	254	721
Janet	Hering	EPF	Member, GAIA Advisory Board (06.2008 - present)	GAIA	255	581
Roman	Boutellier	ETH	VR-Mandat	Rychiger AG	256	155
Ursula	Röthlisberger	EPF	Associate Editor, American Chemical Society Journal Journal of Chemical Theory and Computation	American Chemical Society, Washington, USA	257	1059
Michel	Rappaz	EPF	Membre du conseil scientifique	Alcoa Howmet, Whitehall, USA	258	1017
Jeffrey Alan	Hubbell	EPF	Board of Directors	Lumberjack, AG, Basel	259	632
Pierre-André	Farine	UNE	Conseiller scientifique, Advisory Board	Ethimedix SA, Nyon	260	351
Philippe	Gillet	EPF	Président du conseil d'Administration	Institut de Physique du Globe de Paris	261	450
Pascal	Mahon	UNE	Président	Académie suisse de la magistrature	262	780
Philippe A.	Halban	UGE	Conseil scientifique et orateur	sanofi-aventis	263	545
Thomas	Hunkeler	UFR	Mitglied der Fachkommission & Jurymitglied	Pro Helvetia	264	638
Olivier	Hari	UNE	mandats privés (expertises, analyses)	Schellenberg Wittmer SA	265	548
Thomas	Rudolph	USG	Verwaltungsrat	Otto's	266	1063
Peter	Leibfried	USG	Mitglied des Fachbeirats	KoR Zeitschrift für internationale und kapitalmarktorientierte Rechnungslegung	267	736
Philippe	Gillet	EPF	Président du Board du Human Brain Project	Human Brain Project	268	450
Jieping	Zhu	EPF	Editorial board member	Eur. J. Org. Chem., Wiley	269	1357
Serge	Vaudenay	EPF	Droits d'auteur	PPUR, Lausanne	270	1267
Johannes	Heverhagen	UBE	NA	PET-AG Bern	271	592
Fernando	Porte Agel	EPF	Consulting work	Qatar fondation	272	1002
Arjen	Lenstra	EPF	Advisor of crypto group	OWI, Amsterdam	273	750
Nicolas	Mermod	ULA	Mandat	Selexis	274	831
Joël	Mesot	EPF	Member	Helmholtz Senate	275	841
Antonio	Loprieno	UBA	Präsident des Stiftungsrates	Schweizerische Studienstiftung	276	766
Lukas	Gschwend	USG	Präsident der Rechtsquellenstiftung	Schweizerischen Juristenvereins	277	498
Heinz	Zimmermann	UBA	Mitglied des Stiftungsrates	Stiftung zur Förderung des Schweizerischen Wirtschaftsarchivs am WWZ der Universität Basel	278	1363
Anders	Meibom	EPF	Chairman of the Board	Institute of Translational Molecular Imaging Foundation, Genève	279	818
Eva	Bayer Fluckiger	EPF	Membre du comité éditorial	Archiv der Mathematik	280	95
Primus-Eugen	Mullis	UBE	NA	Berner Diabetes Stiftung	281	931
Silvestro	Micera	EPF	Prof. Part-time	Scuola superiore Sant'Anna, Italy	282	846
Thomas	Epper	USG	Department of Economics	Universität Zürich	283	321
Tatsuya	Nakada	EPF	Editor of Journal of High Energy Physics	Springer-Verlag, Heidelberg, Germany	284	949
Bernhard	Ehrenzeller	USG	Experte im Rahmen der Weiterentwicklung der schweizerischen Hochschul- und Bildungsgesetzgebung wie auch der Hochschulgesetzregelung	Kanton St.Gallen	285	309
Hato	Schmeiser	USG	Präsident	European Group of Risk and Insurance Economist EGRIE	286	1115
Daniel	Buser	UBE	NA	ITI Stiftung Basel	287	189
Christoph A.	Müller	USG	Externer Moderator Projekt Gründerhochschule Exist IV	Hochschule Esslingen	288	907
Thomas Markus	Zellweger	USG	Verwaltungsrat	Hasler Transport AG	289	1346
Stephan	Wolf	UBE	NA	Curt Rommel-Stiftung (Grundauftrag)	290	1326
Anders	Hagfeldt	EPF	Board Member	Dyenamo AB, Start-up, Stockholm	291	544
Pierre	Dillenbourg	EPF	Mandat d'études sur la stratégie MOOC des universités Flamandes	Koninklijke Vlaamse Academie van België voor Wetenschappen en Kusten, Brussel	292	263
Lino	Guzzella	ETH	Stiftungsrat	Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	293	536
Roland	Weiger	UBA	Mitglied des Verwaltungsrates	Coltene, Altstätten	294	1306
Adriano	Marantelli	UBE	NA	Stiftung Archiv für schweizerisches Abgaberecht	295	789
Georg	Fantner	EPF	Technical consultant	SCL-Sensor. Tech. Fabrication GesmbH, Vienna, Austria	296	342
Ulrich Alois	Weidmann	ETH	VR-Mandat	VBG Verkehrsbetriebe Glattal AG	297	1305
Simone	Munsch	UFR	Präsidentin der Unabhängigen Fachkommission	Airport Casino Basel	298	935
Jan-Anders	Manson	EPF	Membre du conseil d'administration	Hexpol AB, Malmö, Suède	299	786
Hannes	Weigt	UBA	Mitglied des Beirats	Energieagentur Landkreis Lörrach GmbH	300	1307
Christopher	Tucci	EPF	Board Member	EAMSA	301	1258
Denis	Duboule	UGE	Membre conseil scientifique	Fondation Louis Jeantet, Genève	302	285
George	Candea	EPF	CEO and President (while on leave)	CodeTickler, CA, USA	303	190
Yvan	Lengwiler	UBA	Mitglied des Stiftungsrates	Studienzentrum Gerzensee	304	749
Detlef	Günther	ETH	Stiftungsrat	Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	305	518
Stephan	Aier	USG	Beratung und Veranstaltungen im Bereich Enterprise Architecture Management	TWZ GmbH	306	33
Christoph	Müller	UBE	NA	Stiftung für klinisch-experimentelle Tumorforschung Bern	307	897
Hervé	Bourlard	EPF	Board of directors and shareholder	Koemei, SA (Idiap's spin-off)	308	149
Kuno	Schedler	USG	Präsident	Compass Alters- und Pflegeverein	309	1092
Leo	Staub	USG	Mitglied Verwaltungsrat	ALID AG	310	1165
Thomas	Szucs	UZH	Mitglied des Spitalrats	Kantonsspital Uri	311	1203
Cécile	Hébert	EPF	Comité HCERES, évaluation de laboratoire INAC, CEA Grenoble	HCERES, France	312	559
Nico	de Rooij	EPF	Conseil d'administration	High Tech Factory, Enschede, NL	313	248
Günter	Müller-Stewens	USG	Mitglied des Verwaltungsrats	Elbet AG	314	928
Denis	Duboule	UGE	Membre du conseil scientifique	Wallenberg Institute for Regenerative Medicine, Stockholm	315	285
Daniel	Oyon	ULA	Mandat	Académie internationale des sciences et technique du sport	316	978
Felix	Naef	EPF	Executive Board	SystemsX.ch	317	941
Nikolaos	Geroliminis	EPF	Advising on traffic management for the city of Sydney	UNSW Australia, Australian Center for Commercial Mathematics, Sydney	318	439
Philippe	Gillet	EPF	Président du Conseil de l'Ecole	Ecole VetAgro Sup	319	450
Massimo	Morbidelli	ETH	VR-Mandat	ChromaCon AG	320	866
Christian	Heinis	EPF	Co-founder and shareholder of the start-up’	Bicycle Therapeutics, Cambridge, UK	321	560
Philippe	Renaud	EPF	Conseil scientifique, membre	CSEM SA, Neuchâtel	322	1023
Pierre-André	Farine	UNE	Vice-président	Collegium International SMYLE en microtechnique, Besançon	323	351
Paul	Schönsleben	ETH	VR-Präsidium	Bioforce AG	324	1126
Andreas	Kotte	UBE	NA	Schweizerische Theatersammlung	325	693
Thomas	Berndt	USG	Verwaltungsratspräsident	equia AG, Zürich	326	106
Philippe	Meier	ULA	NA	Activités académiques	327	822
Sebastian	Maerkl	EPF	Board Member, Prosper Diagnostics an early stage EPFL start-up	Prosper Diagnostic, Basel	328	772
Edwin Charles	Constable	UBA	Mitglied des Management Board	Biovalley Basel	329	221
Sibylle	Hofer	UBE	NA	Moser-Nef-Stiftung	330	598
Joël	Mesot	EPF	Member	European Association of National Research Facilities Laboratories	331	841
Philippe	Gillet	EPF	Membre du Conseil de la Fondation	Fondation Elemo	332	450
Leonid	Rivkin	EPF	IRFU Scientific Council, CEA	Irfu, CEA, Gif sur Yvette, France	333	1037
Günter	Müller-Stewens	USG	Mitglied der Vor-und Hauptjury	St. Gallen Symposium	334	928
José del Rocío	Millán Ruiz	EPF	Sociétaire sans droit de signature	ADREAM, Crans-Montana, Switzerland	335	851
Lino	Guzzella	ETH	Stiftungsrat	Fondazione Monte Verità	336	536
Frédéric	Mila	EPF	Editeur associé	Europhysics Letters, Mulhouse, France	337	848
Christopher	Tucci	EPF	Board of Governors	Academy of Management	549	1258
Jean-Pierre	Métraux	UFR	Forschungsrat der Abteilung Biologie und Medizin	Schweizer Nationalfonds SNF	338	842
Benjamin	Schindler	USG	Vierzehner	Zunft zur Meisen (Zürich)	339	1104
Pascal	Pichonnaz	UFR	Schiedsrichter	Handelsschiedsgericht	340	998
Stefan	Morkötter	USG	Verwaltungsrat	Infrastruktur SK	341	877
Maria del Carmen	Sandi Perez	EPF	Review Editor	eNeuro, Society for Neuroscience, USA	342	1084
Walter	Perrig	UBE	NA	Seniorenuniversität Bern	343	991
Dieter	Dietz	EPF	Architecture, agence d'architecture	dieterdietz.org	344	261
Antoinette	Weibel	USG	Geschäftsführerin	BTiO GmbH	345	1302
Andreas	Papassotiropoulos	UBA	Mitglied des Verwaltungsrates	GeneGuide AG, Basel	346	984
Günter	Müller-Stewens	USG	Mitglied im Herausgeberbeirat	Zeitschrift für Management	347	928
Pascal	Dey	USG	Dozent	Fachhochschule Nordwestschweiz	348	254
Aude	Billard	EPF	Présidente	Association Amies et Amis de la Fondation EPFL-WISH	349	128
David Andrew	Barry	EPF	Co-Editor	Advances in Water Resources (Elsevier Journal)	350	76
Michael	Gastpar	EPF	Academic Affiliation (unpaid)	Delft University of Technology	351	431
Elgar	Fleisch	USG	VR-Mandat	Schweizerische Mobiliar Genossenschaft	352	373
Eva	Bayer Fluckiger	EPF	Membre du comité éditorial	Journal of Algebra	353	95
Lyesse	Laloui	EPF	Editeur en chef	ELSEVIER	354	715
Thomas	Bieger	USG	Stiftungsrat	St. Galler Stiftung für Internationale Studien	355	124
Christoph A.	Müller	USG	Präsidium	Förderkreis Gründungsforschung FGF e.V.	356	907
Bruno	Marchand	EPF	Commission d'urbanisme et architecture	Commune de Prengins	357	796
Tomi	Laamanen	USG	Chairman of the Board	Stratwin AG	358	707
Patrick	Jenny	ETH	VR-Mandat	Fritz + Caspar Jenny AG	359	657
Philippe	Renaud	EPF	Conseil scientifique + CA	Mimotec SA, Sion	360	1023
Joerg	Hofstetter	USG	Präsident	International Forum on Sustainable Value Chains ISVC	361	611
Andrea	Rinaldo	EPF	Board Member	Federazione italiana Rubgy (IT)	362	1032
Nicolas	Grandjean	EPF	Expertise scientifique, Institut de recherche	Leibnitz Association, Germany	363	476
Torsten	Tomczak	USG	Mitglied des Verwaltungsrats	Ammarkt	364	1244
Peter	Schneemann	UBE	NA	CIHA	365	1118
Tobias	Schneider	EPF	Phase-out of independent Max-Planck Research Group until 12/2014	MPIDS, Germany	366	1123
Jean-Philippe	Thiran	ULA	Consultant (7 jours)	Airbus EADS, France	367	1233
Alfred	Wüest	ETH	Externer Reviewer	Tahoe Environmental Research Facility, UC Davies	368	1338
Anna	Fontcuberta Morral	EPF	Expertise de projet	Science Foundation Ireland	369	390
Jeffrey Alan	Hubbell	EPF	Owner	Argo Innovations, Atlanta	370	632
Karl	Gademann	UZH	Vorstandsmitglied	Schweizerische Akademie der Naturwissenschaften SCNAT Bern	371	419
Dominique	Perrault	EPF	Architecture & gestion de projets	Dominique Perrault Libérale c/o Architram, Renens	372	989
Joseph	Francois	UBE	NA	Board Member, European Trade Study Group	373	401
Roland Yves	Siegwart	ETH	Stiftungsrat	BlueLion Stiftung	374	1142
Martin G.	Täuber	UBE	NA	Stiftung Swiss School of Public Health plus (SSPH)	375	1215
Andreas	Beyer	UBA	Sprecher des Forschugnsverbunds Bilderfahrzeuge - Aby Warbug's Legacy and the Future of Iconology	Bundesministerium für Bildung und Forschung	376	113
Stanislav	Smirnov	UGE	Direction scientifique	Centre de mathématiques, Université d'Etat de Saint Petersburg	377	1149
Tamar	Kohn Johnson	EPF	Member of Independent Advisory Committee	WHO, Geneva	378	690
Martinus	Gijs	EPF	Project review work, proposal evaluation	European Commission	379	442
Johan	Auwerx	EPF	Mitochondrial metabolism and deseases - Founder & SAB member	Mitobridge, Cambridge, MA, USA	380	54
Janet	Hering	EPF	Vice President	ETH Women Professors Forum	381	581
Olaf	Blanke	UGE	Professeur à 20%	Université de Genève	382	130
Thomas	Bieger	USG	Verwaltungsratsvizepräsident	Bergbahnen Disentis	383	124
Anna	Fontcuberta Morral	EPF	Participation au conseil scientifique	CSEM, Neuchâtel	384	390
Jieping	Zhu	EPF	Consultant	Novartis	385	1357
Anna	Fontcuberta Morral	EPF	Expertise de projet	Stifelsen Strtegisk Froskning, Sweden	386	390
Simon	Henein	EPF	Enseignement de cours de formation continue	FSRM: Fondation Suisse pour la Recherche en Microtechnique, Neuchâtel	387	564
Matthias	Finger	EPF	Florence School of regulation, Transport Area (organisation de 6 workshops en 2013)	European University Institute, Florence, Italy	388	358
Falk	Uebernickel	USG	Geschäftsführender Partner und Mitglied des Verwaltungsrates	IT Management Partner St. Gallen AG	389	1259
Olivier	Guillod	UNE	Cours	MAS en économie et administration de la santé de HEC Lausanne	390	510
Leo	Staub	USG	Präsident des Verwaltungsrates	CRS Holding AGn	391	1165
Roland	Fankhauser	UBA	Vorstandmitglied	Basler Juristenverein, Pro Iure	392	340
Dominique	de Quervain	UBA	Mitglied des Verwaltungsrates	GeneGuide AG, Basel	393	242
Laurent	Tissot	UNE	Membre titulaire étranger	Comité des travaux historiques et scientifiques	394	1242
Giorgio	Margaritondo	EPF	President, Evaluation Committee (Nucleo di Valutazione), Politecnico di Torino	Politecnico di Torino	395	807
Dominique	Foray	EPF	Expertise	Gesellschaft für Wissenschaftstatistik, EFI, Berlin	396	395
Urs	Brägger	UBE	NA	ub-invent GmbH	397	158
Thomas	Koller	UBE	NA	Fondation Gustave Dubois als Vertretung der RW Fak.	398	691
Ulrich	Mosch	UGE	Membre du conseil	HEM Genève	399	887
Kersten	Geers	EPF	Founding Partner	Office KGDVS, Brussels	400	436
Denis	Duboule	UGE	Membre du conseil scientifique	CBM Severo Ochoa research Centre, Madrid	401	285
Marcel	Meili	ETH	VR-Mandat	Zypresse AG	402	828
Nicolas	Grandjean	EPF	Conseil scientifique	CEA-LETI, France	403	476
Christina	Thurner	UBE	NA	Schweizer Tanzarchiv	404	1235
Thomas	Dyllick	USG	Berater	BSL Lausanne	405	294
Olivier	Schneider	EPF	Président de l'association CHIPP	Swiss Institute of Particle Physics (CHIPP)	406	1122
Thomas Markus	Zellweger	USG	Verwaltungsrat	Welz AG	407	1346
Doris	Wastl	UBE	NA	Dr. A. Bretscher Stiftung	408	1290
Benoît	Deveaud	EPF	Membre du comité de Fondation	Fondation Adrian et Simone Frutiger, Berne	409	253
Rolf	Ingold	UFR	Stiftungsrat	Hasler Stiftung	410	649
David Andrew	Barry	EPF	Visiting Professor	University of Edinburgh, UK	411	76
Daniel	Buser	UBE	NA	Kursaal Bern AG	412	189
Christophe	Ballif	EPF	Panel, clean energy research program, Singapour	Economic development Board (EDB), Raffles Tower, Singapour	413	69
Ursula	Wolf	UBE	NA	Paracelsus-Spital Richterswil, ZH	414	1333
Christoph A.	Müller	USG	Verwaltungsratspräsident	Memo St.Gallen GmbH	415	907
Thomas	Dyllick	USG	Kommanditist	Brenzinger Grundstücksverwaltungs KG	416	294
Jean-François	Dufour	UBE	NA	Stiftung gegen Leberkrebs	417	287
Ursula	Röthlisberger	EPF	Head of the sub panel Life Sciences of the PRACE Access Committee	PRACE AISBL, Brussels, Belgium	418	1059
Marco	Bakker	EPF	CEO, Architect	Bakker & Blanc Architectes Lausanne, Zurich	419	63
Olivier	Guillod	UNE	Conseil d’administration	Swissmedic	420	510
Nicolas	Grandjean	EPF	Expertise scientifique, projets de recherche	Ministry of Education, Singapore	421	476
Christian Pieter	Hoffmann	USG	Mitglied des Vorstands	Percipe GmbH	422	603
Reiner	Eichenberger	UFR	Mitglied Stiftungsrat Ombudsmann	Postfinance	423	311
Luca	Ortelli	EPF	Participation, en tant que vice-président, au Jury du concours d'architecture Vergers à Meyrin	Coopératives Codha et Voisinage - Genève	424	975
Ulrich	Maurer	ETH	Geschäftsführer	ATG Advanced Technology Group GmbH	425	815
Andreas	Härter	USG	Co-Präsident	Schweizerische Gesellschaft für Theaterkultur	426	550
Pius Eliseo	Baschera	ETH	VP des Beirates	ARDEX GmbH	427	82
Martin	Lengwiler	UBA	Mitglied des Verwaltungsrates	Seismo Verlags AG, Zürich	428	745
Melody	Swartz	EPF	Shareholder	Morphogene, Preverenges, CH	429	1199
Ursula	Wolf	UBE	Board Member	European Society of Cardiology (ESC)	430	1333
Hubert	Steinke	UBE	NA	Stiftung Dr. Ed. Müller, Beromünster	431	1174
Denis	Duboule	UGE	Président fondation	Fondation Latsis Internationale, Genève	432	285
Friedrich	Eisenbrand	EPF	Membre du conseil national de la recherche	FNS division IV, Berne	433	312
Adrian	Vatter	UBE	NA	Büro Vatter AG	434	1264
Maria del Carmen	Sandi Perez	EPF	Associate Editor, Frontiers in Behavioral Neuroscience	Frontiers, EPFL Innovation Park, Lausanne	435	1084
Edwin Charles	Constable	UBA	Mitglied des Verwaltungsrates	Unitectra AG	436	221
Nico	de Rooij	EPF	Conseil scientifique	Seyonic SA, Neuchâtel	437	248
Claudio	Bassetti	UBE	NA	Fondazione Eccles	438	86
Pierre	Vandergheynst	EPF	Consulting	Advanced Silicon SA, Lausanne	439	1263
Mihai Adrian	Ionescu	EPF	Lecture IMEC /Beyond CMOS (0.5 day)	IMEC Belgium	440	653
Ursula	Wolf	UBE	Associated Editor	Journal of the American College of Cardiology Cardiovascular Interventions	441	1333
Francesco	Stellacci	EPF	Co-editor in Chief, Nanoscale	Royal Chemistry Society, UK	442	1181
Lino	Guzzella	ETH	Zeichnungsberechtigt	Heyning-Roelli Stiftung	443	536
Oliver	Gassmann	USG	International Advisory Board	Alexander von Humboldt Institut für Internet & Society	444	429
Bradley	Nelson	ETH	VR-Mandat	Aeon Scientific AG	445	953
Christian	Belz	USG	Verwaltungsrat	Olma Messen St. Gallen	446	100
Jan-Anders	Manson	EPF	Membre du conseil de fondation (as EPFL)	Antidoping Suisse, Berne	447	786
Bruno	Marchand	EPF	Commission d'urbanisme, d'architecture et du Paysage	Commune de Payerne	448	796
Sibylle	Hofer	UBE	NA	Stiftung-Sammlung Schweizer Rechtsquellen	449	598
Christian	Bovet	UGE	Membre et Président du conseil	Fondation Professeur Walther Hug	450	157
Rüdiger	Fahlenbrach	EPF	15-hour MBA class	European School of Management and Technology	451	326
Michel	Rappaz	EPF	Associé	Novamet Sarl, Lausanne	452	1017
Gianluca	Crippa	UBA	Vizepräsident	Bernoulli-Euler-Gesellschaft Basel	453	226
Stefan	Weber	UBE	President	Stiftung CCMT	454	1292
Leonid	Rivkin	EPF	Scientific Committee, Frascati INFN National Laboratories	INFN, Italie	455	1037
Peter	Ryser	EPF	associé gérant président (dès le 03.11.2014)	Sinartis Sàrl, Le Mont-sur-Lausanne	456	1077
Giuliano	Bonoli	ULA	Mandat	Centre de formation professionnel spécialisé ORIF	457	138
William	Curtin	EPF	Editor-in-Chief (no contract, modest honorarium for professional activity)	Modelling and Simulation in Materials Sci. and Eng., Inst. of Physics, UK	458	229
Willy	Zwaenepoel	EPF	Chief Scientist	BugBuster SA, Lausanne	459	1376
Giorgio	Margaritondo	EPF	Chief Editor, Journal of Physics D	Institute of Physics, London	460	807
Urs	Bertschinger	USG	Partner	Prager Dreifuss AG	461	107
Benjamin	Schindler	USG	Ersatzmitglied der Rekurskommission	Evangelisch-reformierte Landeskirche beider Appenzell	462	1104
Enrico	De Giorgi	USG	Partner	Behavioural Finance Solutions GmbH	463	236
Daniel	Aebersold	UBE	NA	Berner Radium-Stiftung	464	10
Omid	Aschari	USG	Mitglied	Nationaler Geistiger Rat der Bahá'í der Schweiz	465	45
Roland	Fankhauser	UBA	Mitglied	Zivilrechtslehrervereinigung	466	340
Aurelio	Muttoni	EPF	Membre du conseil de fondation	CEB Trust Fund, Genève	467	939
Dominique	Foray	EPF	Expertise	Uni StGall, St. Gallen	468	395
Beatrix	Eugster	USG	Verwaltungsrat	Raiffeisen Diepoldsau-Schmitter	469	323
Hubert	Steinke	UBE	NA	Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	470	1174
Hedwig J.	Kaiser	UBA	Mitglied des Stiftungsrates	Stiftungsrat FRIAS	471	670
Andrea	Back	USG	Beirätin, Beratung	CID GmbH	472	62
Stephan	Morgenthaler	EPF	Divers contrats d'expertises	Firmenich, Nestlé, Touring Club Suisse	473	874
Paul	Mohacsi	UBE	NA	Katharina Huber-Steiner Stiftung	474	852
Andreas	Meier	UFR	Verwaltungsrat	Centris AG	475	821
Anders	Hagfeldt	EPF	Visiting Professor, Physical Chemistry	Department of Chemistry, Angström, Uppsala University, Sweden	476	544
Daniela	Thurnherr Keller	UBA	Ersatzrichterin	Appellationsgericht des Kantons Basel-Stadt	477	1237
Astrid	Epiney	UFR	Präsidentin	Schweizer Wissenschafts- und Innovationsrat	478	320
Marc	Gruber	EPF	Mitglied	SNF Forschungsrat	479	491
Philippe	Thalmann	EPF	Partenariat pour organiser une journée de séminaire/année	SVIT Swiss Real Estate School SA, Lausanne	481	1229
Gerd	Folkers	UBA	VR-Mandat	AZAD Pharmaceutical Ingredients AG	482	377
Srdan	Capkun	ETH	Geschäftsführer	Contego Laboratories GmbH	483	197
Thomas	Friedli	USG	Dozent Qualitäts- und Prozessmanagement	SMBS	484	409
Peter	Fornaro	UBA	Präsident des Verwaltungsrates	Bitsave AG, Kehrsatz	485	396
Stéphanie	Lacour	EPF	Co-fondateur d'une start-up en décembre 2014	G-Therapeutics EPFL PSE	486	708
Karen	Scrivener	EPF	Editor in chief, Cement and Concrete Research	Elsevier, UK	487	1134
Thomas	Stocker	UBE	NA	Nachhaltigkeitsbeirat Swisscanto	488	1186
Martin	Wilks	UGE	Mitglied des Stiftungsrates	Institut de Sante au Travail, Lausanne	489	1320
Christopher	Tucci	EPF	Member (no longer active)	AYU Association (no longer active)	490	1258
Michael	Graetzel	EPF	Scientific Advisor	G24 Power	491	469
Heinz	Zimmermann	UBA	Verwaltungsrat inkl. Präsidium Vorsorgestiftung	Viollier AG, Allschwil	492	1363
Klaus	Möller	USG	Mitglied des Geschäftsführenden Ausschusses	International Group of Controlling IGC	493	861
Eva	Bayer Fluckiger	EPF	Editrice en chef de la revue Commentarii Mathematici Helvetici	Société Mathématique Suisse	494	95
Antoinette	Weibel	USG	Präsidentin	FINT, First international Network of Trust Research	495	1302
Tobias	Mettler	USG	Associate Partner	BEG & Partners	496	843
Jan-Anders	Manson	EPF	Membre du conseil de fondation (as EPFL)	AISTS, EPFL-Innovation Park, Lausanne	497	786
Stephanie	Teufel	UFR	Aufsichtsrat	Exelsis Business Technology AG	498	1216
Paul Joseph	Dyson	EPF	Member of several conferences advisory boards (unpaid)	Conferences	499	298
Paola	Viganò	EPF	Membre comité scientifique	Ecole Nationale Supérieure du Paysage, Versailles, France	500	1275
Vassily	Hatzimanikatis	EPF	Consulting	Gevo, Colorado, USA	501	553
Nicolas	Gisin	UGE	Membre du conseil d'administraiton	ID Quantique SA	502	455
Pierre	Collin Dufresne	EPF	Academic Advisory Board	KEPOS Capital (NYC)	503	216
Janet	Hering	EPF	Chair, Advisory Board (09.2009 - present)	Leibniz Insitute of Freshwater Ecology and Inland Fisheries, Berlin, Germany	504	581
Andreas	Pautz	EPF	Member of review panel of a Helmoltz Program	Helmholtz Society of German Research Centers, Berlin	505	987
Lyesse	Laloui	EPF	Distingushed Adjunct professor (Jusqu'à Octobre 2014)	King Abdulaziz University (KAU), Jeddah, Saudi Arabia	506	715
Andreas	Mortensen	EPF	Membre (nommé par l'EPFL), Conseil de Fondation	FNS de la Recherche Scientifique	507	886
Benjamin	Schindler	USG	Mitglied Kommission für Planung und Gemeindeentwicklung	Gemeinde Speicher AR	508	1104
Lukas	Gschwend	USG	Mitglied	Unabhängige Expertenkommission Administrative Zwangsmassnahmen	509	498
Katrin	Beyer	EPF	Expert consulting for OFROU	Muttoni & Fernandez Ingénieurs Conseils SA, Ecublens	510	109
Roland	Müller	USG	Verwaltungsratspräsident	Peka Pinselfabrik AG	511	918
David Lyndon	Emsley	EPF	Invited Professor	KAUST, Jeddah	512	318
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation Campus Biotech Geneva	513	31
Jean-Claude	Reubi	UBE	NA	Yde Foundation Kopenhagen	514	1024
Christopher	Tucci	EPF	Adjunct Professor (finished Aug 2014)	Skolkovo Institute of Science & Technology	515	1258
Robert	Danon	ULA	Mandat	Activités académiques	516	231
Benjamin	Schindler	USG	Ersatzrichter	Staatsgerichtshof, Fürstentum Liechtenstein	517	1104
Roland	Fankhauser	UBA	Konsulent	Schweizerischer Anwaltsverband	518	340
Françoise Gisou van der	Goot Grunberg	EPF	EMBO YIP (Young Investigator Program) committee	EMBO, Heidelberg	519	464
Roland	Fankhauser	UBA	Mitglied	Freiwillige Akademische Gesellschaft (FAG)	520	340
Thomas	Bieger	USG	Verwaltungsratspräsident	Jungfraubahn Holding AG	521	124
Leo	Staub	USG	Mitglied Aufsichtsrat	Farby KABE Polska GmbH	522	1165
Hans Peter	Herzig	EPF	Board member	Swiss Society for Optics and Microscopy SSOM	523	587
Patrick	Emmenegger	USG	Präsident	Schweizerische Vereinigung für Politikwissenschaft	524	315
Lino	Guzzella	ETH	Stiftungsrat	Walter Hochstrasser-Stiftung	525	536
Didier	Trono	EPF	Membre du conseil	Fondation Giorgi-Cavaglieri	526	1249
Paul Joseph	Dyson	EPF	Examiner of several PhD Thesis	Several PhD thesis	527	298
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation Claude Verdan	528	31
Daniela	Thurnherr Keller	UBA	Mitglied des Verwaltungsrates	BVB, Basler Verkehrsbetriebe Basel	529	1237
Thomas	Friedli	USG	Verwaltungsrat	Schuh & Co.	530	409
Henry	Markram	EPF	President (en liquidation)	Blue Brain Foundation, Epalinges, CH	531	812
Pascal	Gantenbein	UBA	Mitglied des Verwaltungsrates	Hoffmann & Co. AG, Basel	532	420
Pascal	Mahon	UNE	Membre du Comité	Association suisse du droit public de l'organisation (ASDPO)	533	780
Drahomir	Aujesky	UBE	NA	Schweizerische Gesellschaft für allgemeine innere Medizin	534	49
Cécile	Hébert	EPF	Comité d'expert	Centre de microscopie de l'Université de Saragosse, Espagne	535	559
Jeffrey Alan	Hubbell	EPF	Board of Directors, Chief Scientific Advisor	Kuros Biosurgery, Zürich	536	632
Florian	Wettstein	USG	Co-Editor-in-Chief	Business and Human Rights Journal	537	1316
Oliver	Gassmann	USG	Gründer und Verwaltungsrat	Avatarion Technology	538	429
Bruno	Marchand	EPF	Commission consultative d'urbanisme et d'architecture	Canton de Vaud	539	796
Demetri	Psaltis	EPF	Board Member	SPIE (Society)	540	1007
Aurelio	Bay	EPF	Présidence du Jury des examens du GYB	GYB Gymnase Intercantonal de la Broye, Payerne	541	89
Grégoire	Courtine	EPF	Création de Start-up	G-Therapeutics SA	542	225
Didier	Trono	EPF	Membre du Conseil de la Recherche	Fonds National Scientifique Suisse	543	1249
James W.	Davis	USG	Mitglied des Verwaltungsrates	Paradigm Capital Partners	544	233
Bettina	Hürlimann-Kaup	UFR	Justizrat	Kanton Freiburg	545	639
Dietmar	Grichnik	USG	Gründer und Gesellschafter	Scienovation	546	481
Daniel	Odermatt	UBE	NA	Stiftung Sozialkasse der Universität Bern	547	971
Janet	Hering	EPF	Member	Swiss Hydrological Commission, Swiss Academy of Sciences	548	581
Mario	Paolone	EPF	Evaluation of the candidates for the Professorship/Associate professorship, Dept of Electric Power Eng	Norwegian University of Science and Technology, Norway	550	982
Daniel	Aebersold	UBE	NA	Janser Krebs-Stiftung	551	10
Alexander	Ilic	USG	Advisory Board	Swiss Energy and Climate Summit	552	647
Thomas	Dyllick	USG	Aufsichtsrat	oekom Research AG	553	294
Denis	Duboule	UGE	Membre de comité scientifique	Institut Curie Paris	554	285
Anton	Schleiss	EPF	Prüfung Bauvorhaben Linth 2015	Basler & Hofmann, Esslingen	555	1110
Kay Werner	Axhausen	ETH	VR-Mandat der Spin-Off-Firma	Senozon (Schweiz) AG	556	57
Pierre	Magistretti	EPF	Consultant	Price Foundation, Genève	557	774
Pierre-André	Farine	UNE	Conseiller scientifique, membre du comité d'organisation	Association pour le Concours International de Chronométrie, Le Locle	558	351
Douglas	Hanahan	EPF	Member, Scientific Advisory Board - Cancer Therapeutic Area	Pfizer, Inc., New York, USA	559	547
Joseph	Sifakis	EPF	Consulting	CEA/DRT, Grenoble, France	560	1144
Rainer	Schulin	ETH	Präsident	Stiftung Geobotanisches Forschungsinstitut Rübel	561	1128
Georg	von Schnurbein	UBA	Mitglied des Stiftungsrates	Stiftung Institute for Value-based Enterprise, Fribourg	562	1286
Stephan	Morgenthaler	EPF	Conseil d'administration, membre actuaire de Michgenossenschaft Reitnau	AICOS Technologies AG, Bâle	563	874
Oliver	Gassmann	USG	Verwaltungsrat	Hoffmann Neopac	564	429
Rüdiger	Fahlenbrach	EPF	10-hour PhD class	University of Vienna	565	326
Raffaello	D'Andrea	ETH	VR-Präsidium	Verity Studios AG	566	230
Peter	Rohner	USG	Vorstand	IHK Industrie- und Handelskammer Thurgau	567	1051
Martin	Brown	USG	Diverse kleinere Tätigkeiten	Departement für Entwicklungshilfe und -zusammenarbeit DEZA	568	170
Rafael	Lalive	ULA	NA	Activités académiques	569	710
Peter	Ryser	EPF	Membre de la commission de la formation et de la recherche	Economiesuisse, Zürich	570	1077
Sven	Reinecke	USG	Verwaltungsratspräsident	MPM Market Performance Management St. Gallen AG	571	1021
Vito	Roberto	USG	Verwaltungsratspräsident	Precious Capital AG	572	1041
Thomas	Rizzo	EPF	Panel Chair for ERC PE4 panel	ERC, Brussels	573	1038
Florian	Wettstein	USG	Stiftungsrat	Brot für alle	574	1316
Detlef	Günther	ETH	Verwaltungsrat	ETH Zürich SEC AG	575	518
Florian	Wettstein	USG	Mitglied des Executive Committee	International Society for Business, Ethics and Economics ISBEE	576	1316
David Andrew	Barry	EPF	Fellowships Committee	Royal Society of Edinburgh, UK	577	76
Giovanni	Dietler	EPF	Membre de la commission d'evaluation des profs boursiers SNF	SNF, Berne	578	259
Christophe	Ballif	EPF	Membre comité de conseil Active Niche Funds (fonds dédié au Solaire)	ANF SA, Lausanne	579	69
Oliver	Gassmann	USG	Gründer und Verwaltungsrat	BMI-Lab	580	429
Giorgio	Margaritondo	EPF	Council President EC integrating initiative on synchrotrons (CALIPSO)	Sincrotrone Trieste, Italy	581	807
Lino	Guzzella	ETH	Verwaltungsrat	Kistler Holding AG	582	536
Birgitt	Borkopp	UBE	Mitglied des Stiftungsrates	Museum Schloss Thun	583	141
Pius Eliseo	Baschera	ETH	VP des Beirates	Vorwerk & Co. KG	584	82
Christoph	Heinrich	ETH	Präsident	Paul Niggli-Stiftung	585	561
Johan	Auwerx	EPF	NAD metabolism - SAB member	Metro Mid-Atalantic Biotech, Birmingham, MI, USA	586	54
Stephan	Rohr	UBE	NA	Dr. Josef Steiner Cancer Research Foundation, Präsident	587	1052
Christoph A.	Müller	USG	Verwaltungsratspräsident	Virtuell Bau Holding, St.Gallen	588	907
Jian	Zhao	EPF	Editor in chief, Tunnelling and Underground Space Technology, while on leave	Elsevier, Oxford, UK	589	1349
Konrad	Wegener	ETH	Mitglied im Hochschulrat	FHS St. Gallen	590	1294
Frédéric	Mila	EPF	Committe member - Advanced Post-doc mobility	SNSF, Berne	591	848
Roland	Hodler	USG	Malmsten Visiting Professor, Department of Economics	University of Gothenburg	592	594
André-Gilles	Dumont	EPF	Conseil d'administration	Infralab SA Romanel, Lausanne	593	289
Ursula	Wolf	UBE	Course Director	EuroPCR	594	1333
Markus Hans	Gross	ETH	VR-Präsidium	Gimalon AG	595	484
Lyesse	Laloui	EPF	Adjunct professor	School of Civil and Environmental Engineering, Duke University, USA	596	715
Juan Ramon	Mosig	EPF	Chair of the EURAAP Board (jusqu'à Dec 2015)	European Association of Antennas and Propoagation	597	894
Hubert	Klumpner	ETH	Stiftungsrat	Stiftung Bibliothek Werner Oechslin	598	686
Nicolas	Grandjean	EPF	Conseil scientifique	Nanodimension AG, Suisse	599	476
Joël	Mesot	EPF	Int. Science Policy Comm.	Kurchatov Institute, Russia	600	841
Jeffrey Alan	Hubbell	EPF	Chief Scientific Advisor, Board of Directors	Anokion SA, Lausanne	601	632
Lukas	Gschwend	USG	Titularprofessor für Rechtsgeschichte und Rechtsphilosophie	Universität Zürich	602	498
Majed	Chergui	EPF	Editeur in chief of Structural Dynamics	American Institute of Phyiscs Publishing (AIPP), NY, USA	603	208
Benjamin	Schindler	USG	Vorstandsmitglied	St. Galler Juristenverein	604	1104
Jieping	Zhu	EPF	Editorial board member	Asian. J. Org. Chem. Wiley	605	1357
Ian	Sanders	ULA	Mandat	Schweizerischer Nationalfonds (SNF)	606	1079
Martin	Lengwiler	UBA	Präsident des Verwaltungsrates	fokus AG für Wissen und Organisation, Zürich	607	745
Detlef	Günther	ETH	NA	Verein Euresearch	608	518
Markus Hans	Gross	ETH	Direktor (wissenschaftlicher Co Direktor)	The Walt Disney Company (Switzerland) GmbH	609	484
Aurelio	Muttoni	EPF	Membre du Présidium	Fédération Internationale du Béton, Lausanne	610	939
Klaus	Möller	USG	Mitglied im Forschungsnetzwerk	Center for Performance Research & Analytics CEPRA	611	861
Michele	De Palma	EPF	Seminar-Roche	Roche, Basel - 10/01/2014	612	241
Oliver	Gassmann	USG	Gründer und Verwaltungsrat	BGW Management Advisory Group	613	429
Nikolaos	Stergiopulos	EPF	CSO et administrateur	Antlia SA, Lausanne	614	1184
Elgar	Fleisch	USG	VR-Mandat	Elgar Fleisch Management Services AG	615	373
Ernst	Mohr	USG	Verwaltungsrat	joixes AG	616	855
Matthias	Egger	UBE	NA	SNF Forschungsrat	617	304
Denis	Duboule	UGE	Président Division III	Fonds National Suisse, Berne	618	285
Giorgio	Margaritondo	EPF	Member, Scientific Council	HuGeF, Turin	619	807
Hugues	Abriel	UBE	NA	Cloetta Stiftung	620	7
Peter	Leibfried	USG	Mitglied des Verwaltungsrats	Ivoclar Vivadent AG	621	736
Giovanni	de Micheli	EPF	ALARI / Instructor	USI, Lugano, CH	622	239
Geoffrey	Bodenhausen	ULA	Professeur	ENS Paris	623	134
Hilal	Lashuel	EPF	Executive Committee Member	IBRO	624	721
Günter	Müller-Stewens	USG	Mitglied des Vorstandes	Schweizerische Gesellschaft für Organisation SGO	625	928
Dirk	Lehmkuhl	USG	Mitglied im Stiftungsrat	New Europe College	626	729
Maarten J.F.M.	Hoenen	UBA	Mitglied des Stiftungsrates	Volkshochschule beider Basel	627	596
Erwan	Morellec	EPF	Directeur du SFI PhD Program	Swiss Finance Institute	628	868
Alexander	Widmer	ETH	Stiftungsrat	Kinderbetreuung im Hochschulraum Zürich (kihz)	629	1319
Tobias	Nef	UBE	NA	Alterniity GmbH	630	950
Thomas	Friedli	USG	Dozent Qualitäts- und Prozessmanagement	EMBA	631	409
Karen	Scrivener	EPF	Consultant to innovation committee	Holcim, CH	632	1134
David Andrew	Barry	EPF	Member of the SNF Council	Swiss National Science Foundation	633	76
Joël	Mesot	EPF	Neutron Adv. Board	Oak Ridge National Lab. USA	634	841
Mario	Paolone	EPF	Lecture for the Post-graduate program Progettazione di Impianti Oil&Gas	University of Bologna, Italy	635	982
Jànos	Pach	EPF	Editor-in-chief of Discrete & Computational Geometry (pays a stipend)	Springer-Verlag, New York	636	979
Primus-Eugen	Mullis	UBE	NA	Berner Diabetes Gesellschaft	637	931
Martin	Brown	USG	Consultant for Financial Literacy	Verband der Schweizerischen Kantonalbanken	638	170
Emmanuel	Rey	EPF	Membre du comité d'une association à but non lucratif	Association Ecoparc, Neuchâtel	639	1027
Oliver	Lubrich	UBE	NA	Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	640	768
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation EPFL+	641	31
Bruno	Marchand	EPF	Commission d'Urbanisme et Architecture	Canton de Fribourg	642	796
Andreas	Mortensen	EPF	Membre, Wissenschaftlicher Beirat	Leibniz Institute INM, Saarbrücken, Allemagne	643	886
Cyrill P.	Rigamonti	UBE	NA	Hans-Sigrist-Stiftung	644	1028
Jian	Zhao	EPF	Independent director (non-executive), while on leave	Terratech Group Ltd	645	1349
Michaël	Unser	EPF	Comité d'expertise Ambizione	FNS, Bern	646	1260
Roland Yves	Siegwart	ETH	VR-Mandat	EVATEC Holding und EVATEC AG	647	1142
Alfred	Rufer	EPF	Expertise	ANR, Paris	648	1071
Thierry	Volery	USG	Mitglied des Beirats	Forum BGM – Betriebliches Gesundheitsmanagement Ostschweiz	649	1280
Harry	Gugger	EPF	Member of Advisory Board, The Circle at Zurich Airport	Flughafen ZHAG, Zurich	650	505
Roland	Fankhauser	UBA	Mitglied	Liatowitsch & Partner	651	340
Joël	Mesot	EPF	Member	VR Trägerschaft ParkInnovAARE	652	841
Willy	Zwaenepoel	EPF	Advisory board	SPartners Asia (Hongkong)	653	1376
Janet	Hering	EPF	Member, Advisory Board (11.2012 - present)	Water institute, Stellenbosch University	654	581
Boi	Faltings	EPF	Scientific Advisor / Consultant	Fairnez Inc., USA	655	331
Aldo	Steinfeld	ETH	VR-Mandat	Sunbiotec AG (Solar Biofuel technology)	656	1167
Daniel	Aebersold	UBE	NA	SWAN Isotopen AG	657	10
Anastasia	Ailamaki	EPF	Consulting on data mgmt	S2P Lion, Germany	658	34
Curzio	Rüegg	UFR	Mitglied der Wissenschaftlichen Kommission	Krebsliga Schweiz	660	1064
Pius Eliseo	Baschera	ETH	VR-Präsidium	Venture Incubator AG	661	82
Dietmar	Grichnik	USG	Inhaber	Dietmar Grichnik Entrepreneurial Management GmbH	662	481
Gerhard	Tröster	ETH	VR-Mandat	Amphiro AG	663	1251
Janet	Hering	EPF	Member Scientific Advisory Board	Helmholtz Zentrum für Umweltforschung (UFZ)	664	581
Inès	Devanthéry-Lamunière	EPF	Associée	dl-a, designlab-architecture SA, Genève	665	251
Janet	Hering	EPF	Member, Steering Board (01.2007 - present)	CCES Competence Center Environment and Sustainability	666	581
Patrick	Emmenegger	USG	NA	Eidgenössischen Berufsbildungskommission (EBBK)	667	315
Peter	Chen	ETH	VR-Mandat	Clariant AG	668	207
Andreas	Härter	USG	Mitglied des Verwaltungsrats	Konzert und Theater St. Gallen	669	550
Antoinette	Weibel	USG	Beiratsmitglied	Deutsches Forschungsinstitutes für öffentliche Verwaltung	670	1302
Christian	Leumann	UBE	NA	Synthena AG	671	754
Paola	Viganò	EPF	Partenaire associée	Secchi-Viganò Studio, Italie	672	1275
Hubert	Girault	EPF	Membre du Conseil de Fondation, vice-président ; domaine : éditions scientifiques	PPUR - EPFL	673	454
Kuno	Schedler	USG	Stiftungsrat	Schweizer Paraplegiker Stiftung	674	1092
Roland	Müller	USG	Verwaltungsratspräsident	Nussbaum Gruppe	675	918
Renate	Schubert	ETH	Stiftungsrat	Kinderbetreuung im Hochschulraum Zürich (kihz)	676	1127
Yvan	Lengwiler	UBA	Mitglied der Delegiertenversammlung	Patria Genossenschaft, Basel	677	749
Antonio	Loprieno	UBA	Vorstandsmitglied	Konfuzius Institut	678	766
Christoph A.	Müller	USG	Fachbeirat	Clairfield International GmbH, Frankfurt/Main	679	907
Thomas	Rudolph	USG	Verwaltungsrat	Migros	680	1063
Antonio	Loprieno	UBA	Mitglied des Hochschulrates	Pädagogische Hochschule Freiburg	681	766
Alfred	Rufer	EPF	Membre du Comité Electrosuisse	Electrosuisse	682	1071
Marc	Parlange	EPF	Dean and Prof. Faculté Applied Sciences	Leave at UBC	683	985
Dimos	Poulikakos	ETH	VR-Mandat	Scrona AG	684	1005
Dirk	Schäfer	USG	Unternehmensberater	Selbständig	685	1089
Roland	Müller	USG	Fluglehrer	Fliegerschule St.Gallen-Altenrhein	686	918
Reza Shokrollah	Abhari	ETH	Aufsichtsratsmandat	PNE Wind AG	687	5
Gérard	Bless	UFR	Leitung des regionalen Schuldienstes des Heilpädagogischen Instituts	Universität Freiburg	688	131
Philippe	Thalmann	EPF	Cours (26.03.14) La réforme fiscale écologique dans le cadre d'une formation continue	IDHEAP, Université de Lausanne	689	1229
Lino	Guzzella	ETH	Angestellter Konzernforschung	Sulzer	690	536
Christoph	Aebi	UBE	NA	Ronald McDonald Stiftung	691	12
Jeffrey Alan	Hubbell	EPF	Legal consulting	McAndrews, Held and Malloy, Chicago, USA	762	632
Thomas	Bieger	USG	Stiftungsrat	Max Schmidheiny zugunsten der Universität St. Gallen und ihrer Institute	692	124
Anna	Fontcuberta Morral	EPF	Expertise de projet	Université Freiburg (Allemagne)	693	390
Leo	Staub	USG	Präsident Verwaltungsrat	Selectchemie AG	694	1165
John	Antonakis	ULA	NA	Activités académiques	695	43
Vito	Roberto	USG	Stiftungsrat	HSG Stiftung	696	1041
Paul	Söderlind	USG	Forschungsrat Abteilung 1	Schweizer Nationalfonds SNF	697	1153
Henry	Markram	EPF	University of Massachussetts: Paid consultant on ONR research project	Amherst - USA	698	812
Ulrich Alois	Weidmann	ETH	VR-Mandat	systransis AG	699	1305
Peter	Rohner	USG	Mitglied des Investment Committee	IST Funds Swiss Healthcare Loans	700	1051
Roger	Moser	USG	Board Member	Think Tank Thurgau	701	892
Dieter	Dietz	EPF	RATP, audit des espaces	RATP, Paris	702	261
Christos	Katsaros	UBE	NA	Stiftung Papavramidès	703	677
Alexandre	Blanc	EPF	Architecte EPFL-FAS-SIA	Bakker & Blanc Architectes, Lausanne	704	129
Christian	Belz	USG	Verwaltungsrat	Starrag	705	100
Oliver	Gassmann	USG	Audit Expert Group	Schindler	706	429
Roland Yves	Siegwart	ETH	VR-Mandat	ALSTOM Inspection Robotics AG	707	1142
Reinhard	Jung	USG	Geschäftsführer	IARDA GmbH	708	666
Roland	Füss	USG	Lehrtätigkeit	CUREM	709	416
Jean-Baptiste	Zufferey	UFR	Verwaltungsrat	Eidgenössische Finanzmarktaufsicht FINMA	710	1369
Reinhard	Jung	USG	Vorstandsmitglied/Kassierer	Swiss Informatics Research Association	711	666
Eugen	Brühwiler	EPF	Projet de normalisation européen (Projet SIA NDP - EN 1991)	Société des Ingénieurs et Architectes Suisses, SIA, Zurich	712	181
Joerg	Hofstetter	USG	Verwaltungsratsmitglied	Inneco AG (link)	713	611
Cécile	Hébert	EPF	Comité recommandation et prospective de la plateforme de nanocarctérisation	CEA, Grenoble	714	559
Patrick	Thiran	EPF	Expertise pour projet panel VR NT-14	Swedish Research Council, Suède	715	1231
Walter	Leimgruber	UFR	Präsident	Eidgenössische Kommission für Migrationsfragen	716	743
Klaus	Kern	EPF	Directeur Max-Planck-Institut (occupation principale) et fonctions associés	MPI Max-Planck-Institut für Festkörperforschung, Stuttgart	717	684
James W.	Davis	USG	Mitglied der Parlamentarischen Kommission zur Überprüfung und Sicherung der Parlamentsrechte bei der Mandatierung von Auslandseinsätzen der Bundeswehr	Deutscher Bundestag	718	233
David Alan	Basin	ETH	Vorsitzender der Geschäftsführung	Contego Laboratories GmbH	719	83
Daniel	Odermatt	UBE	NA	Verein Berner Studentenlogierhäuser VBSL	720	971
Harley	Krohmer	UBE	NA	Stiftung Haus der Universität Bern	721	700
Andrea	Rinaldo	EPF	Board Member	European Professional Club Rugby (CH)	722	1032
Anthony C.	Davison	EPF	Consultancy on statistical analysis of accidents in French motorway tunnels	BG Consulting, Lausanne	723	235
Hervé	Bourlard	EPF	Member of the Advisory Board	Voxta Inc., India	724	149
Andrea	Back	USG	Wissenschaftliche Beirätin	Leibniz-Informationszentrum Wirtschaft	725	62
David	Gugerli	UZH	Stiftungsrat	Stiftung Jüdische Zeitgeschichte	726	500
Peter	Widmayer	ETH	VR-Mandat	NEBION AG	727	1317
Alain	Wegmann	EPF	Conseil informatique	TAG Aviation, Genève	728	1296
Gunter	Stephan	UBE	NA	phw bern	729	1182
Pierre-André	Farine	UNE	Conseil scientifique	Fondation Ch.-Ed. Guillaume, La Chaux-de-Fonds	730	351
Alfred	Rufer	EPF	Conseil scientifique	Imperix SA, Sion	731	1071
Pascal	Fua	EPF	Consulting	Pix4D EPFL Innovation Park	732	413
Thomas	Hunkeler	UFR	Mitglied des Stiftungsrates	Holcim-Stiftung zur Förderung der wissenschaftlichen Fortbildung	733	638
Stefan	Rebenich	UBE	NA	Jacob Burckhardt-Stiftung	734	1019
Anders	Hagfeldt	EPF	Distinguished Adjunct Professor, Chemistry	King Abdulaziz University, Saudi Arabia	735	544
Andreas	Mortensen	EPF	Membre de la commission d'accréditation d'institution de DTU	DTU, Institution d'accréditation du Danemark	737	886
Dietmar	Grichnik	USG	Mitglied des Beirats	Stiftung Social Funders	738	481
Fabien	Sorin	EPF	Expert externe pour 3 projets de recherche	Swedish Foundation for Strategic Research, Sweden	739	1156
Anthony C.	Davison	EPF	Editor, Biometrika (editor of a major statistics journal)	Biometrika Trust, University College London	740	235
Nico	de Rooij	EPF	Conseil d'administration	SwissScientific SA, Neuchâtel	741	248
Giorgio	Margaritondo	EPF	President, Parish Council	Mission catholique anglophone du canton de Vaud	742	807
Dietmar	Grichnik	USG	Präsident	Swiss Startup Monitor Stiftung	743	481
Ulrich Alois	Weidmann	ETH	VR-Mandat	Verkehrsbetrieb LIECHTENSTEINmobil	744	1305
Peter Viktor	Kunz	UBE	NA	Bayer Wartmann AG	745	704
Andreas	Beyer	UBA	Präsident der wissenschaftlichen Kommission	Schweizerisches Institut für Kunstwissenschaft	746	113
Peter	Leibfried	USG	Mitglied der Redaktionskommission	Schweizer Treuhänder	747	736
Christian	Jackowski	UZH	NA	Schweizerische Stiftung für Alkoholforschung SSA	748	654
Pierre	Magistretti	EPF	Consultant	Dana Foundation, New York	749	774
Melody	Swartz	EPF	Consultant	Merck, DE	750	1199
Heinrich	Hofmann	EPF	Expert Nanotechnology and Nanomaterials, Nanoregulation (Nanoreg WP1)	Federal Office of Public Health	751	609
Detlef	Günther	ETH	Stiftungsrat	SIB Swiss Institute of Bioinformatics, Lausanne	752	518
Jeffrey Alan	Hubbell	EPF	Legal consulting	Taylor Wessing, London	753	632
Günter	Müller-Stewens	USG	Mitglied des Aufsichtsrats	EGT AG	754	928
Philippe	Thalmann	EPF	Expert externe, Réseau de compétence Economie et Management	Mission HES-SO, Delémont	755	1229
Tatsuya	Nakada	EPF	Chair of the Scientific Committee (from September 2016)	INFN, Italie	756	949
Denis	Duboule	UGE	Membre	Conseil de l'EMBL	757	285
Nicola	Braghieri	EPF	Architecte associé (10%)	EX-M, Milan	758	159
Jürgen	Brugger	EPF	Proposal reviewing ARGOVIA	Swiss Nanoscience Institute, Basel	759	176
Jean-Jacques	Aubert	UNE	Vice-président	Académie suisse des sciences humaines et sociales	760	48
Thierry	Volery	USG	Honorary Research Fellow	University of Western Australia Business School	761	1280
Jan Marco	Leimeister	USG	Diverse gutachterliche und beratende Tätigkeiten	EQT	763	742
Daniel	Candinas	UBE	NA	Solothurner Spitäler AG	764	196
Bruno	Moretti	UBE	NA	Forum du Bilinguisme Bienne	765	871
Janet	Hering	EPF	Member visiting committee (09.2011 - present)	MIT Dept. of Civil and Environmental Engineering, USA	766	581
Lino	Guzzella	ETH	Stiftungsrat	Kinderbetreuung im Hochschulraum Zürich (kihz)	767	536
Roland	Müller	USG	Verwaltungsratsvizepräsident	Finanzmarktaufsicht Liechtenstein	768	918
Olivier	Schneider	EPF	Vice-président du Conseil paroissial, Ecublens-St.Sulpice	EERV, paroisse d'Ecublens-St.Sulpice, Ecublens	769	1122
Yann	Barrandon	ULA	Conseil d'administration	gyMetrics SA, Ecublens	770	71
Ulrich	Maurer	ETH	VR-Mandat	InfoSec Global (Schweiz) AG	771	815
Nico	de Rooij	EPF	Conseil d'administration	Silatech SA, Neuchâtel	772	248
Stephanie	Hrubesch	UBE	NA	Ostschweizerische Finanzholding AG	773	617
Christof	Holliger	EPF	Membre du FNS Panel Sinergia	FNS, Berne	774	616
Patrick	Aebischer	EPF	NA	Italian Institute of Technology	775	31
Mihai Adrian	Ionescu	EPF	SATW technology out-look (non-remuneré)	SATW	776	653
Alfred	Rufer	EPF	Conseil scientifique	Enairys PSE, Lausanne	777	1071
Daniel	Candinas	UBE	NA	Forschungsstiftung Genaxen	778	196
Stanislav	Smirnov	UGE	Direction scientifique	Institut des Sciences et Technologies, Skolkovo	779	1149
Denis	Piotet	ULA	Mandat	Chancellerie non spécifié	780	1001
Andreas	Lienhard	UBE	Vizepräsident des Verwaltungsrates	VR Verkehrsbetriebe Biel	781	756
Michèle F.	Sutter-Rüdisser	USG	Mitglied des Verwaltungsrats	thurmed AG / Spital Thurgau	782	1193
Marco	Celio	UFR	Verwaltungsratspräsident	SWANT (Swiss antibodies) SA	783	205
Elgar	Fleisch	USG	VR-Mandat	coresystems ag	784	373
Cesla	Amarelle	UNE	Mandat	Nationalrat	785	35
Francesco	Stellacci	EPF	Legal consultant	Foley Hoag, Boston, USA	786	1181
Janet	Hering	EPF	Member of organizing team for one session (05.2013 - 11.2014)	2014 IARU Congress, Copenhagen, Denmark	787	581
Christian Pieter	Hoffmann	USG	Lehrbeauftragter	Singapore Management University	788	603
Kai	Johnsson	EPF	Research Council Member of SNSF	SNSF Bern	789	662
Basile	Cardinaux	UFR	Vorstand	Pensionskasse des Staatspersonals Freiburg	790	199
Philippe	Gillet	EPF	Administrateur de la Fondation	Fondation Bullukian	791	450
Jieping	Zhu	EPF	Scientific Advisory Board Member	Inflamalps, Switzerland	792	1357
Laurent	Tissot	UNE	Membre du conseil scientifique	Association pour l'histoire des chemins de fer en France	793	1242
Grégoire	Courtine	EPF	Enseignement de cours Master	DNF, UNIL, Lausanne	794	225
Edwin Charles	Constable	UBA	Mitglied des Management Board	EVA Basel Life Science Start-up Agency	795	221
Hubert	Steinke	UBE	NA	Guggenheim-Stiftung für Geschichte der Medizin	796	1174
Semyon	Malamud	EPF	Academic consulting	Quantica Capital, Schaffausen	797	782
Kersten	Geers	EPF	Workshop Roman Architecture	Porto Academy, Portugal	798	436
Günter	Müller-Stewens	USG	Mitglied der Jury	Peter Werhahn-Preis	799	928
Flemming	Ruud	USG	Professor	Norwegian Business School	800	1072
Dario	Floreano	EPF	NASA/Caltech Jet Propulsion Laboratory: Visiting researcher (July-August 2014, while on leave)	JPL, Pasadena, USA	801	375
Philippe	Thalmann	EPF	Membre de la commission de caisse de Publica	Publica, Berne	802	1229
Roland	Müller	USG	Verwaltungsratspräsident	ME Advocat AG	803	918
Denis	Duboule	UGE	Membre de comité scientifique	Institute Imagine Paris	804	285
Daniel	Candinas	UBE	NA	Fondazione Epatocentro Ticino, Lugano	805	196
Peter	Leibfried	USG	Mitglied der Oberaufsichtskommission Berufliche Vorsorge	Schweizer Bund	806	736
Janet	Hering	EPF	Scientific Director (01.2013 - present)	EPFL CRAG, Lausanne	807	581
Paola	Viganò	EPF	Membre comité scientifique	Atelier International du Grand Paris, Paris	808	1275
Marcel	Meili	ETH	VR-Mandat	Lifä Immobilien AG	809	828
Gerhard	Tröster	ETH	VR-Mandat	u-blox AG	810	1251
Sacha Leo Cornel	Menz	ETH	VR-Mandat	Staub Holding AG	811	830
Torsten	Braun	UBE	Mitglied des Stiftungsrats und dessen Ausschuss	SWITCH	812	160
Freddy	Radtke	EPF	Member of the scientific committee	Swiss Cancer League, Bern	813	1012
Kai	Johnsson	EPF	Consulting	Spirochrome, Suisse	814	662
Roman	Boutellier	ETH	NA	Stiftung Swiss Innovation Park	815	155
Jan Marco	Leimeister	USG	Diverse gutachterliche und beratende Tätigkeiten	EU	816	742
Heinz	Zimmermann	UBA	Mitglied des Verwaltungsrates	Versicherung der Schweizer Ärzte, Bern	817	1363
Thomas	Berndt	USG	Ständiger Mitarbeiter	Zeitschrift Betriebs-Berater (BB)	818	106
Philippe	Thalmann	EPF	Membre de la commission fédérale consultative pour la recherche environnementale	Off. féd. de l'Environnement, Berne-Ittigen	819	1229
Benjamin	Schindler	USG	Vorstandsmitglied	Schweizerischer Juristenverein	820	1104
Luca	Bona	EPF	Directeur (form directly submitted to ETH Board)	EMPA	821	136
Alfio	Quarteroni	EPF	Président du conseil d'administration et coordinateur du comité scientifique	MOXOFF Srl, Milan	822	1008
Adriano	Marantelli	UBE	NA	Vereinsvorstand BEWEST (Weiterbildungsverein)	823	789
Bart	Deplancke	EPF	Board Member	GeNohm SA, EPFL Innovation Park, Lausanne	824	250
Theo	Lasser	EPF	President Board Abionic	Abionic, Innovation Park	825	722
Markus Hans	Gross	ETH	VR-Mandat	Dybuster AG	826	484
Tatsuya	Nakada	EPF	Member of the Scientific Advisory Committee for the Next Einstein Forum	African Institute for Mathematical Science, Cape Town, South Africa	827	949
Melody	Swartz	EPF	Founder & Shareholder	Lumberjack, USA	828	1199
Matthias	Schmidt	UBA	Mitglied des Stiftungsrates	Ernst Krenek Privatstiftung, Krems, Österreich	829	1116
Olivier	Guillod	UNE	Conseil d’administration	Office national (français) d’indemnisation des accidents médicaux	830	510
Vincent	Kaufmann	EPF	Charge d'enseignement (7h)	Université catholique de Louvain-la-Neuve (B)	831	680
Françoise Gisou van der	Goot Grunberg	EPF	Scientific Advisory Board Clinical Research Department	Univ Bern	832	464
Peter Mathias	Fischer	USG	Co-Founder	Sound Leadership LLC	833	362
Marc	Gruber	EPF	Venture Labe	Parc Scientifique EPFL	834	491
Peter	Leibfried	USG	Mitglied des Prüfungsausschusses	RBA-Bankengruppe	835	736
Urs Peter	Mosimann	UBE	NA	Stiftung Diaconis Bern	836	895
Rachid	Guerraoui	EPF	Evaluation Agence de la recherche, France	ANR, Paris	837	499
Mark	Pauly	EPF	Member of the board	Faceshift AG, Zurich	838	986
Vassily	Hatzimanikatis	EPF	Consulting	AMYRIS, California, USA	839	553
Georg	Fantner	EPF	Technical consultant	GETec KG, Langenlois, Austria	840	342
Patrick	Aebischer	EPF	NA	Singapore Biomedical Sciences International	841	31
Sebastian	Wolf	UBE	NA	Major und Feller Stiftung	842	1325
Marco	Celio	UFR	Verwaltungsratspräsident	Frimorfo S.A.	843	205
Daniel	Odermatt	UBE	NA	Forschungsstiftung Genaxen	844	971
Anna	Lauber-Biason	UFR	Oberassistentin an der Abteilung für Endokrinologie und Diabetologie	Universitätskinderklinik Zürich	845	723
Emmanuel	Rey	EPF	Membre du conseil d'administration	Bauart Architekten und Planer Holding AG, Bern	846	1027
Bertrand	Perrin	UFR	Ersatzmitglied für das Obergericht	Kanton Bern	847	993
Thomas	Berndt	USG	Mitglied im Fachbeirat	Zeitschrift für Corporate Governance (ZCG)	848	106
Luca	Ortelli	EPF	Participation à la Commission pour l'habilitation scientifique nationale	MIUR - Ministero Istruzione Università Ricerca	849	975
Jan Sickmann	Hesthaven	EPF	Evaluation committee for INRIA	INRIA, France	850	591
Thomas	Szucs	UZH	Präsident des Verwaltungsrates	Helsana AG, Dübendorf	851	1203
Daniel	Odermatt	UBE	NA	Centre of Continuing Dental Education AG	852	971
Jan Sickmann	Hesthaven	EPF	Evaluation panel for NSF	NSF, US	853	591
Sebastian	Wolf	UBE	NA	Hans Goldmann Stiftung	854	1325
Peter Viktor	Kunz	UBE	NA	Convida	855	704
Ingeborg	Schwenzer	UBA	Präsidentin des Stiftungsrates	Stiftung Swiss International Law School, Basel	856	1131
Tomi	Laamanen	USG	Gutachtertätigkeit	Unbekannt	857	707
Emmanuel	Frossard	ETH	Stiftungsrat	Walter Hochstrasser-Stiftung	858	411
Anna	Ebers	USG	Gründerin und Projektleiterin	Gemeinnützliches Projekt für erneuerbare Energien SunRaisers	859	301
Florian	Wettstein	USG	Mitglied des Initiativkommitees	Konzernverantwortungsinitiative	860	1316
Martin	Vetterli	EPF	President du Conseil National de la Recherche	FNS (Fonds National Suisse)	861	1270
Torsten	Tomczak	USG	Vorstandsmitglied	Schweizerische Gesellschaft für Marketing	862	1244
Jeffrey Alan	Hubbell	EPF	Board of Directors	Morphogene, SA, Préverenges	863	632
Yann	Barrandon	ULA	Consultant	A*Star IMB Biopolis, Singapour	864	71
Klaus	Möller	USG	Mitherausgeber der Zeitschrift Controlling	Vahlen Verlag	865	861
Andreas	Grüner	USG	Gutachter	Akkreditierungsagentur FIBAA	866	494
Mirko	Meboldt	ETH	Verwaltungsrat	inspire AG	867	817
Thomas	Vogel	ETH	NA	Erich Degen-Stiftung	868	1277
Thomas	Bieger	USG	Stiftungsrat	Swiss Luftfahrtstiftung	869	124
Elgar	Fleisch	USG	VR-Mandat	Dacuda AG	870	373
Helma Barblin	Wennemers	ETH	VR-Mandat	Bachem Holding AG	871	1309
Laurent	Stalder	ETH	Stiftungsrat	Stiftung Bibliothek Werner Oechslin	872	1159
Hans Peter	Herzig	EPF	Chairman of the editorial board	Journal of the Europ. Opt. Soc. (JEOS: RP)	873	587
Roman	Boutellier	ETH	VR-Mandat	Georg Fischer AG	874	155
Benjamin	Schindler	USG	Offizier Recht und Konventionen	Schweizerische Armee, Armeestab	875	1104
Karen	Scrivener	EPF	Consultant on durability	Kerneos, France	876	1134
Hubert	Steinke	UBE	NA	Psychiatrie-Museum Bern	877	1174
Thomas	Mountford	EPF	Visit to UFRJ Rio Brésil	UFRJ	878	896
Dominique	Foray	EPF	Expertise	SEFRI, Bern	879	395
Olivier	Schneider	EPF	Membre du conseil du CERN	SEFRI, CERN, Genève	880	1122
Marc	Gruber	EPF	University of Liechtenstein, Teaching	University of Liechtenstein, Vaduz, Lichtenstein	881	491
Pierre-André	Farine	UNE	Membre	SSC (Société Suisse de Chronométrie), Neuchâtel	882	351
Bertrand	Perrin	UFR	Rechtsberater	Selbstständig	883	993
Françoise Gisou van der	Goot Grunberg	EPF	Conseil scientifique	Fondation Bettencourt, Paris	884	464
Oliver	Gassmann	USG	Gründer, Co-Director	GLORAD	885	429
Roland Yves	Siegwart	ETH	VR-Mandat	Komax Holding AG	886	1142
Fréderic	Krauskopf	UBE	NA	Stiftung für Rechtsausbildung Luzern	887	696
Anna	Fontcuberta Morral	EPF	Expertise de projet	Fonds de Recherche Luxembourg	888	390
Pierre-André	Farine	UNE	Membre de l'assemblée générale AG du COSC	Contrôle officiel suisse des chronomètres (COSC), La Chaux-de-Fonds	889	351
Klaus	Zuberbühler	UNE	Directeur scientifique	Budongo Conservation Field Station (Ouganda)	890	1368
Peter	Rohner	USG	Verwaltungsratspräsident	BEG & Partners AG	891	1051
Detlef	Günther	ETH	Director	ETH Singapore SEC Ltd.	892	518
Christoph A.	Müller	USG	Verwaltungsratspräsident	Promerit Management Consulting AG	893	907
Benjamin	Schindler	USG	Mitglied des Kuratoriums des Universitätspfarramts	Evangelisch-reformierte Kirche des Kantons St. Gallen	894	1104
Cécile	Hébert	EPF	Expert projet accès transnationaux	Projet européen ESTEEM	895	559
Scott	Loren	USG	Dozent für Englische Sprache und Literatur	Pädagogische Hochschule St.Gallen	896	767
Harley	Krohmer	UBE	NA	Brandinvest AG, Verwaltungsrat	897	700
Roland	Müller	USG	Seniorpartner	Rechtsanwaltskanzlei ME Advocat AG	898	918
Walter Hans Jakob	Kaufmann	ETH	VR-Mandat	dsp Ingenieure & Planer AG	899	681
Philippe	Gillet	EPF	Président de la Fondation	Fondation IQRGC	900	450
Joseph	Francois	UBE	NA	Board Member, Global Trade Analysis Project	901	401
Paul	Xirouchakis	EPF	Reviewer Marie-Curie ITN (10 days)	EU Commission, Brussels	902	1342
Bradley	Nelson	ETH	VR-Mandat	Femtotools AG	903	953
Erick Moran	Carreira	ETH	VR-Mandat	Glycemicon AG	904	201
André	Schneider	UNE	NA	Universität Bern, Forschungsstiftung	905	1124
Elgar	Fleisch	USG	VR-Mandat	Interhoval AG	906	373
Hubert	Steinke	UBE	NA	Fondation Gustave Dubois	907	1174
Marcel	Meili	ETH	VR-Mandat	Datwoma AG	908	828
Lino	Guzzella	ETH	Leitung der Entwicklungsabteilung für Mechatronik	Hilti	909	536
Anne-Christine	Favre	ULA	NA	Activités académiques	910	353
Denis	Duboule	UGE	Président de panel	Fonds National Suisse	911	285
Georg	Nöldeke	UBA	Mitglied des Stiftungsrates	Speiser-Bär-Stiftung, Basel	912	958
Franz	Graf	USI	Architecte indépendant à Genève	F. Graf & J. Menoud, Carouge	913	471
Christian Pieter	Hoffmann	USG	Lehrbeauftragter	Johannes Gutenberg-Universität Mainz	914	603
Françoise Gisou van der	Goot Grunberg	EPF	Conseil Suisse de la Science et de l'Innovation	CSSI Bern	915	464
Denis	Duboule	UGE	Professeur (50%)	Université de Genève	916	285
Francesco	Stellacci	EPF	Invited Member, Scientific Advisory Board	Constellium, France	917	1181
Kai	Johnsson	EPF	Associate Editor Ass. Chemical Biology	American Chemical Society, USA	918	662
Frank	Scheffold	UFR	Verwaltungsratspräsident	LS Instruments AG	919	1094
Aurelio	Muttoni	EPF	Membre du Conseil d'administration et employé (taux d'activité 10%)	Lurati Muttoni Partner, Studio d'ingegneria SA, Mendrisio	920	939
Martin G.	Täuber	UBE	NA	Hans-Sigrist-Stiftung	921	1215
Werner	Strik	UBE	NA	Psychiatriemuseum Bern	922	1187
Bernhard	Ehrenzeller	USG	Korrespondierendes Mitglied der philosophisch-historischen Klasse im Ausland	Österreichische Akademie der Wissenschaften	923	309
Paola	Viganò	EPF	Membre comité scientifique	Ecole Nationale Supérieure d'architecture et de paysage de Lille, France	924	1275
Ursula	Röthlisberger	EPF	Panel member for the ERC Starting grant 2014 PE4	European Research Council, Brussels, Belgium	925	1059
Pascal	Mahon	UNE	Membre	Office cantonal de conciliation en matière de conflits de travail	926	780
David	Spreng	UBE	NA	Jakob Spreng AG	927	1158
Hans-Andrea	Loeliger	ETH	VR-Mandat	Endora Tech AG	928	760
Andrea	Rinaldo	EPF	Chair of hydraulic constructions, part-time (10%)	Università di Padova, Italie	929	1032
Michael	Graetzel	EPF	Honorary Editor of Nano Journal	SAINT, SKKU	930	469
Christoph A.	Müller	USG	Expertenjury Startfeld und Vorjury	Startfeld Diamant	931	907
Stuart	Lane	ULA	NA	Activités académiques	932	716
Pierre	Collin Dufresne	EPF	Expert Witness Consulting	Cornerstone Research (NYC)	933	216
Primus-Eugen	Mullis	UBE	NA	Fondazione Ettore e Valeria Rossi	934	931
Giovanni	Dietler	EPF	Membre du Conseil de la Fondation Monte Verità, Ascona, représentant EPFL	EPFL	935	259
Christoph A.	Müller	USG	Beirat	MÖRK GmbH & Co. KG, Leonberg	936	907
Nicolas	Queloz	UFR	Rechtsberater	Selbstständig	937	1009
Arno	Schlüter	ETH	VR-Mandat	keoto AG	938	1113
Pierre	Collin Dufresne	EPF	Advisory Board	SANCUS Capital (NYC)	939	216
Michel	Rappaz	EPF	Actionnaire et Membre du Conseil d'administration	Ycoor Systems SA, Sierre	940	1017
Tatsuya	Nakada	EPF	Chair of the Scientific Advisory Committee	National Institute for Subatomic Physics, Amsterdam	941	949
Denis	Duboule	UGE	Président de comité scientifique	Biozentrum Basel	942	285
Alexander	Zimmermann	USG	Mitglied des Beirats	Franz Haniel & Cie. GmbH	943	1364
Ursula	Röthlisberger	EPF	Member of the Scientific Advisory Committee as part of the selection of CECAM workshop annual program	Centre Européen de Calcul Atomique et Moléculaire (CECAM), Lausanne, CH	944	1059
Ernst	Mohr	USG	Verwaltungsrat	Premiumselect Lux S.A.	945	855
Michel	Rappaz	EPF	Président du Conseil de fondation	PPUR, RLC, Lausanne	946	1017
Christian	Leumann	UBE	NA	Verein Euresearch	947	754
Harris	Dellas	UBE	NA	Study Center Gerzensee	948	249
Joël	Mesot	EPF	Scientific Advisory Board	FRM-II, Munich	949	841
Harry	Gugger	EPF	Committee Member BSA Forschungsstipendium	BSA CH, Basel	950	505
Alexander	Fust	USG	Fachexperte und Coach für Designer Startups	Creative Hub	951	418
Jean-Jacques	Aubert	UNE	Député	Grand Conseil NE	952	48
Leonid	Rivkin	EPF	CERN Scientific Policy Committee	CERN Council, Genève	953	1037
Douglas	Hanahan	EPF	Member, Scientific Advisory Board	Shenogen Pharma Group LTD, China	955	547
William	Curtin	EPF	Adjunct Professor (collaborations on US-funded research. Currently 10% is charged to one grant)	School of Engineering, Brown University	956	229
Christophe	Ballif	EPF	Chef de division CSEM PV-center, officiellement depuis 1.10.2012	CSEM, Neuchâtel	957	69
Marc	Gruber	EPF	Bern-Rochester MBA, Teaching	University of Bern	958	491
Johan	Auwerx	EPF	Nutrition & Phytochemistry - Founder & Consultant	PhytoDia, Illkirch, France	959	54
Giovanni	Dietler	EPF	Membre du Conseil Communal	Echandens	960	259
Serge	Vaudenay	EPF	Droits d'auteur	Springer USA	961	1267
Erick Moran	Carreira	ETH	VR-Mandat	SpiroChem AG	962	201
Hervé	Bourlard	EPF	Member of the Advisory Board	Privately SA, Switzerland	963	149
Paolo	Ienne	EPF	Guest lecturer (spring 2014)	Technical University München, Germany	964	642
Roland	Müller	USG	Titularprofessor für Arbeitsrecht	Universität Bern	965	918
Jian	Zhao	EPF	Professor of Geomechanics (full-time), while on leave	Monash University, Australia	966	1349
Stefan	Bühler	UZH	Vizepräsident	Wettbewerbskommission	967	185
Jan Sickmann	Hesthaven	EPF	Scientific advisory board	SRI-UQ, KAUST, KSA	968	591
Janet	Hering	EPF	Member	U.S. National Academy of Engineering	969	581
Harald	Brune	EPF	Hans-Fischer Senior Fellow	Institute of Advanced Studies, Technical University of Munich, Garching	970	183
Andreas	Mortensen	EPF	Member International Scientific Advisory Board (ISAB) of the COMET K2 Center	Materials Center Leoben Forschung, Austria	971	886
Geraldine	Frei	USG	Mitglied des Verwaltungsrates	St. Galler Kantonalbank AG	972	404
Rémy	Glardon	EPF	Conseil en gestion d'entreprise	NGL Cleaning Technology SA, Nyon	973	456
Patrick	Aebischer	EPF	Chairman, Beirat	Advisory Board Novartis Venture Fund	974	31
Frédéric	Kaplan	EPF	Enseignement	Université de Berne	975	674
Karin Mirjam	Ingold	UBE	NA	Spirit of Bern: wiss. Beirat	976	648
Pierre	Collin Dufresne	EPF	Advisory Board	Lombard Odier, Geneva	977	216
Joseph	Sifakis	EPF	Consulting	Crossing Tech, EPFL - Innovation Park	978	1144
Heike	Mayer	UBE	NA	Rat für Raumordnung	979	816
Julia	Marewski	ULA	NA	Activités académiques	980	797
Tatsuya	Nakada	EPF	Chair of the Scientific Policy Committee for the CERN Council	CERN, Genève	981	949
Martin	Brown	USG	Consultant for Financial Literacy	Swiss National Bank	982	170
Martin G.	Täuber	UBE	NA	SWAN Isotopen AG	983	1215
Paolo	Ienne	EPF	Guest lecturer, summer 2014	University of Oulu	984	642
Dirk	Lehmkuhl	USG	Mitglied im Stiftungsrat	Center for Advanced Studies	985	729
Peter	Nagel	UBA	Mitglied des Stiftungsrates	Pro Entomologia, Naturhistorisches Museum, Basel	986	942
Pietro	Beritelli	USI	Verwaltungsratspräsident	Tourismus Services Ostschweiz AG	987	103
Birgitt	Borkopp	UBE	Mitglied des Dachstiftungsrates	Kunstmuseum Bern	988	141
Leo	Staub	USG	Mitglied Verwaltungsrat	Karl Bubenhofer AG	989	1165
Alexander	Ilic	USG	Advisory Board	Swiss Start-up Monitor	990	647
Elgar	Fleisch	USG	VR-Mandat	Hoval Holding AG	991	373
Sabine	Süsstrunk	EPF	Start-up advisor to Kokko Inc.	Kokko Inc, USA	992	1190
Giovanni	de Micheli	EPF	CfAED Techn. Advisory board	Dresden, D	993	239
Franz	Werro	UFR	Rechtsberater	Selbstständig	994	1310
Benjamin	Schindler	USG	Vizepräsident des Stiftungsrats	Peter Häberle-Stiftung an der Universität St. Gallen	995	1104
Lino	Guzzella	ETH	Verwaltungsrat	Venture Incubator Ltd	996	536
Olivier	Guillod	UNE	Prof invité	Uni Paris V Descartes	997	510
Eva	Bayer Fluckiger	EPF	Membre du comité éditorial	International Journal of Number Theory	998	95
Roland	Logé	EPF	Conseil scientifique, domaine de la métallurgie	Association ARMINES, Paris, France	999	761
Simone	Munsch	UFR	Wissenschaftlicher Beriat des Zentrums für Psychotherapie	Universität Zürich	1000	935
Anton	Schleiss	EPF	Schiedsgericht Nant de Dranse	Nant de Dranse SA, Martigny	1001	1110
Hans H.	Hirsch	UBA	Mitglied des Stiftungsrates	Stiftung Infektiologie beider Basel	1002	593
Martin G.	Täuber	UBE	NA	Fondation pour la recherche dans le cadre de l'Etude Suisse de Cohorte VIH	1003	1215
Eugen	Brühwiler	EPF	Panoramaweg Rigi SZ : mandat de conseil pour la restoration de ponts historiques	Office fédéral des routes, Bern	1004	181
Martin G.	Täuber	UBE	NA	Übergangsrat der UPD	1005	1215
Thomas	Hunkeler	UFR	Mitglied des Wissenschaftsrates	FNRS	1006	638
Kersten	Geers	EPF	Residency	Canadian Centre for Architecture, Montréal, Canada	1007	436
Aurelio	Muttoni	EPF	Membre du conseil d'administration et employé (taux d'activité 10%)	Muttoni et Fernàndez Ingénieurs Conseils SA, Ecublens	1008	939
Anna	Ebers	USG	Mitgründerin	oikos Konstanz	1009	301
Christian	Belz	USG	Verwaltungsrat	Création Baumann	1010	100
Wolfgang	Jenewein	USG	Mitglied des Verwaltungsrats	Leadership & Endurance AG	1011	655
Gábor	Székely	ETH	VR-Mandat	Virtamed AG	1012	1200
Jan Marco	Leimeister	USG	Diverse gutachterliche und beratende Tätigkeiten	Volkswagen	1013	742
Vincent	Kaufmann	EPF	Chronique mensuelle	Migros Magazine, Zürich	1014	680
Lino	Guzzella	ETH	Verwaltungsrat	Kistler Instrumente AG	1015	536
Manfred	Morari	ETH	Verwaltungsrat	inspire AG	1016	865
Michael	Graetzel	EPF	Scientific Advisor	NTU, Singapore	1017	469
Olivier	Schneider	EPF	Administrateur	Coopérative St-Thomas, Lausanne	1018	1122
Thomas	Bieger	USG	Verwaltungsratspräsident	Schweizer Gesellschaft für Hotelkredit	1019	124
Christoph A.	Müller	USG	Aufsichtsratsvorsitzender	Promerit Holding AG	1020	907
Bruno	Moretti	UBE	NA	Jaberg-Stiftung	1021	871
Lutz-Peter	Nolte	UBE	NA	CCMT	1022	960
Daniel	Odermatt	UBE	NA	Unitectra AG	1023	971
Ralf	Seifert	EPF	Professorship at IMD, 50% work contract	IMD, Lausanne	1024	1135
Thomas	Dyllick	USG	Beirat	SQS Software Quality Systems (Schweiz) AG	1025	294
François	Dufresne	ULA	Conseil d'administration	Etablissement Cantonal d'Assurance	1026	288
Titus Andreas	Jenny	UFR	Analyse von Spektren für dritte	Unbekannt	1027	658
Jeffrey	Huang	EPF	Co-Founder and Advisor (Software and Service Firm), while on leave	Eversitas LLC Cambridge, Massachussetts	1028	621
Stefan	Bechtold	ETH	NA	Fondation Professeur Walther Hug	1029	96
Martin	Odersky	EPF	Board-Observer (former Chairman)	Typesafe Sarl, Lausanne	1030	972
Peter Mathias	Fischer	USG	National Representative Switzerland and Member of the Executive Committee	European Marketing Academy EMAC	1031	362
Cécile	Hébert	EPF	Trésorière. Aide à l'enseignement en Tanzanie.	Foundation TALENT	1032	559
Bernhard	Ehrenzeller	USG	Richter	Staatsgerichtshof des Fürstentums Liechtenstein	1033	309
Jeffrey Alan	Hubbell	EPF	Board of Directors	Lanta Bio Sàrl, Préverenges	1034	632
Heinrich	Hofmann	EPF	Member steering committee NFP 64 Opportunities and Risk of Nanomaterials	Schweizerischer Nationalfonds, Bern	1035	609
Reto	Föllmi	USG	Mitglied des geschäftsleitenden Ausschusses	SEW-HSG	1036	384
Hans Peter	Herzig	EPF	Lecturer (2days)	Micro-Optics lecture FSRM	1037	587
Giorgio	Margaritondo	EPF	Member, Consulting Committee ANVUR	Ministero MIUR, Rome, Italy	1038	807
Elke	Hentschel	UBE	Präsidentin	Jaberg-Stiftung	1039	565
Paolo	Ermanni	ETH	VR-Mandat	Acutronic Schweiz AG	1040	322
Pierre	Vandergheynst	EPF	Founder, pas de rôle exécutif	Immersive Vision SARL, PSE	1041	1263
Stewart	Cole	EPF	Membre du Conseil d'Administration	Institut Pasteur Paris, France	1042	212
Andreas	Beyer	UBA	Vorsitzender wissenschaftlicher Beirat	Gerda Henkel-Stiftung	1043	113
Stephan	Aier	USG	Lehrauftrag Enterprise Architecture	Reykjavik University	1044	33
Françoise Gisou van der	Goot Grunberg	EPF	Conseil de fondation et Conseil Scientifique de la Fondation Jeantet	Fondation Jeantet, Genève	1045	464
Paola	Viganò	EPF	Prof. ordinaire part-time	Université IUAV, Italie	1046	1275
Philippe	Thalmann	EPF	Panel d'évaluation des pôles de compétence suisses en recherche énergétique	Kommission für Technologie und Innovation	1047	1229
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation pour la formation continue lausannoise	1048	31
Janet	Hering	EPF	Member, Scientific and Technical Council (01.2013 - present)	IRGC, EPFL, Lausanne	1049	581
Peter	Rohner	USG	Stiftungsrat	International School Schaffhausen ISSH	1050	1051
Frédéric	Kaplan	EPF	Gérance	OZWE, Lausanne	1051	674
Michele	De Palma	EPF	Advisory Board Meeting - Sanofi	Sanofi, Barcelona - 17/11/2014	1052	241
Christian Pieter	Hoffmann	USG	Dozent	Hochschule für Wirtschaft Zürich	1053	603
Christophe	Moser	EPF	Founder Composyt Light Lab	PSE A, EPFL	1054	889
Mihai Adrian	Ionescu	EPF	SNF professorship review	SNF	1055	653
Roland	Fankhauser	UBA	Mitglied	Zivilprozessrechtslehrervereinigung	1056	340
Ioannis	Botsis	EPF	Scientific Consultant in 2 projects, THALES, Greece	University of Piraeus, Grèce	1057	142
Karl	Aberer	EPF	Panel Member	SNF Ambizione Program	1058	4
Christophe	Ancey	EPF	Prise en compte du risque de reptation sur la télécabine du Lys, pylônes P9-11	Espace Cauterets, Mairie, Cauterets	1059	39
André	Berchtold	ULA	NA	Activités académiques	1060	101
José del Rocío	Millán Ruiz	EPF	Scientific Advisory Board	MindMaze, Ecublens	1061	851
László	Forró	EPF	Chair of the Int. Advisory Board and consultant	Nano Center of Serbia, Belgrade	1062	397
Mark	Pieth	UBA	Präsident des Stiftungsrates	Basel Institute on Governance	1063	999
Lino	Guzzella	ETH	Stiftungsrat	International Federation of Automatic Control (IFAC) Stiftung	1064	536
Johan Olof Anders	Robertsson	ETH	Geschäftsführer	Robertsson Industrial Geoscience Innovation GmbH	1065	1042
Tomi	Laamanen	USG	Member of the Board	Oy Halton Group Ltd	1066	707
Mihai Adrian	Ionescu	EPF	Review projet EC SOI-HITS (1 jour)	European Commission, Brussels	1067	653
Maria del Carmen	Sandi Perez	EPF	Scientific Advisory Board Member	LabEx Brain, Université de Bordeaux, France	1068	1084
Peter	Rohner	USG	Verwaltungsratspräsident	BEG Management AG	1069	1051
Mario	Fontana	ETH	Geschäftsführer	F-Ingenieur GmbH	1070	385
René	Bloch	UBE	NA	Jakob und Werner Wyler-Stiftung Zürich	1071	132
Manuel	Ammann	USG	Verwaltungsrat	St. Galler Kantonalbank AG	1072	38
Jürgen	Brugger	EPF	Proposal reviewing HEPIA	HES Campus Biotech, Genève	1073	176
Thomas	Hunkeler	UFR	Mitglied des Stiftungsrates	Bell AG	1074	638
Dietmar	Grichnik	USG	Gesellschafter	Particulate	1075	481
Alexander	Ilic	USG	Founder, Chairman, and CTO	Dacuda AG	1076	647
Hans Peter	Herzig	EPF	Reviewer	National and international scientific projects	1077	587
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation Brocher	1078	31
Detlef	Günther	ETH	Stiftungsrat	Stiftung Technopark Zürich	1079	518
Christoph	Lechner	USG	Mitglied des Verwaltungsrats	Hügli AG	1080	726
Patrick	Aebischer	EPF	NA	Fondation Claude Nobs	1081	31
Martin O.	Saar	ETH	Geschäftsführer	Geofluidics LLC	1082	1078
Bruno	Marchand	EPF	Bruno Marchand Architecture Urbanisme et aménagement du territoire	Bruno Marchand, Lausanne	1083	796
Denis	Duboule	UGE	Membre du conseil scientifique	Hubrecht Institute Utrecht	1084	285
Michel	Bierlaire	EPF	Conseil d'administration ENTPE (non rémunéré)	Etat français, Lyon	1085	127
Paul Joseph	Dyson	EPF	Member of the board of the Swiss Competence Center in Energy Research	PSI	1086	298
Lino	Guzzella	ETH	Präsident	ETH Zürich	1087	536
Patrick	Aebischer	EPF	Beirat	Singapore International Advisory Committee for Biomedical Sciences	1088	31
Iris	Baumgartner	UBE	NA	Spital Thun AG	1089	88
Juan Ramon	Mosig	EPF	Organisation de conférences scientifiques en Europe	AISBL (non-profit Association)	1090	894
Denis	Tappy	ULA	Juge suppléant	Tribunal cantonal vaudois	1091	1204
Alexandre	Pouget	UGE	Membre du Scientific Advisory Board	NERF (Leuwen)	1092	1003
Simone	Munsch	UFR	Vizepräsidentin	PsyKo	1093	935
Melody	Swartz	EPF	Founder & Shareholder	Anokion, Ecublens, CH	1094	1199
Gudela	Grote	ETH	Stiftungsrat	Stiftung zur Föderung der Forschung und Ausbildung in Unternehmenswiss., ETH Zürich	1095	485
Sacha Leo Cornel	Menz	ETH	VR-Mandat	SAM Architekten und Partner AG	1096	830
Pius Eliseo	Baschera	ETH	VR-Mandat	Schindler Holding AG	1097	82
Daniel	Odermatt	UBE	NA	innoBE AG	1098	971
Alexander	Ilic	USG	Advisory Board	ETH Entrepreneur Club	1099	647
Lino	Guzzella	ETH	Stiftungsrat	Swiss University Sports Foundation	1100	536
Michael	Graetzel	EPF	Scientific Advisor	DYESOL	1103	469
Nikolaos	Geroliminis	EPF	Development of analysis tools	Minnesota Traffic Observatory, University of Minnesota, USA	1104	439
Roland	Müller	USG	Verwaltungsratssekretär	Ricola Familienholding AG	1105	918
Thomas	Bieger	USG	Stiftungsrat	ITS Foundation. International Tourism Symposium	1106	124
Nicolas	Monod	EPF	Travail éditorial (non lucratif)	L'enseignement Mathématique, Genève	1107	864
Roman	Boutellier	ETH	Stiftungsrat	Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	1108	155
Marcelo	Aebi	ULA	NA	Activités académiques	1109	13
Bettina	Kahil	ULA	NA	Activités académiques	1110	667
Christopher	Tucci	EPF	Board Member	Lean Analytical Association	1111	1258
Pascal	Roman	ULA	Mandat	CHUV	1112	1053
Thierry	Volery	USG	Vorsitzender des Beirats	EXIST – Existenzgründungen aus der Wissenschaft	1113	1280
Anthony	Strittmatter	USG	Affiliated	Albert-Ludwigs-University	1114	1188
Luca	Ortelli	EPF	Participation, en tant que président, au Jury du concours d'architecture Campus RTS sur le site de EPFL	RTS - Radio Télévision Suisse	1115	975
Thomas	Geiser	USG	NA	Rehaklinik Heiligenschwendi	1116	437
Thomas	Friedli	USG	Mitglied strategisches Advisory Board	RUAG	1117	409
Aldo	Steinfeld	ETH	VR-Mandat	dsolar Ltd.	1118	1167
Alfred	Wüest	ETH	Berater	Contour Global, New York, für Methan Extraktion Lake Kivu	1119	1338
Didier	Sornette	ETH	Vorsitzender der Geschäftsführung	Sentiment Studies GmbH	1120	1157
Marc	Gruber	EPF	Venture Lab - Teaching	Institut fuer Jungunternehmen, St. Gallen	1121	491
Laurent	Tissot	UNE	Membre du conseil	Fondation pour l'histoire de la poste	1122	1242
Fabio Matteo	Gramazio	ETH	VR-Mandat	ROB Technologies AG	1123	472
Hedwig J.	Kaiser	UBA	Mitglied des Aufsichtsrates	Universitätsklinikum Heidelberg	1124	670
Peter Viktor	Kunz	UBE	NA	Walder	1194	704
Reto	Föllmi	USG	Mitglied des VR	Löwetz Immobilien AG	1125	384
Ursula	Wolf	UBE	Stiftungsrat	REHA Klinik Heiligenschwendi	1126	1333
Martin	Brown	USG	Background Note on the Impact of Banking Crises on Households in Emerging Europe for World Development Report 2014	World Bank	1127	170
Thomas Markus	Zellweger	USG	Verwaltungsrat	Tisca Tiara AG	1128	1346
Anders	Hagfeldt	EPF	Visiting Professor, Energy Research Institute	Nanyang Technological University, Singapore	1129	544
Jan Marco	Leimeister	USG	Diverse gutachterliche und beratende Tätigkeiten	High Tech Gründerfonds	1130	742
Leonid	Rivkin	EPF	MAX IV Machine Advisory Committee	MAXIV Laboratory, Lund, Sweden	1131	1037
Matthias	Lütolf	EPF	President of the Board	Morphodyne SA, EPFL	1132	770
Georg	Pfleiderer	UBA	Präsident	Eidgenössische Ethikkommission für Biotechnologie (EKAH)	1133	995
François	Avellan	EPF	Expertise du rendement des turbines de la centrale de La Higuera, Chili, dans le cadre d'une procédure juridique	Barros, Letelier & Gonzalez Attorneys at Law, Chile	1134	56
Ivan	Rodriguez	UGE	Membre du comité	Gensuisse	1135	1044
Ursula	Wolf	UBE	Section Editor	UpToDate	1136	1333
Manuel	Ammann	USG	Verwaltungsratspräsident	Algofin AG	1137	38
Elisio	Macamo	UBA	Mitglied des Stiftungsrates	UBUNTU, Zürich; Share for Food Alliance, Basel	1138	771
Katrin	Beyer	EPF	Board member	Swiss Society for Earthquake Engineering and Structural Dynamic, Zürich	1139	109
Dominique	Foray	EPF	Consulting	EPFL-TTO	1140	395
Jan Marco	Leimeister	USG	Professor	Universität Kassel	1141	742
Harm-Anton	Klok	EPF	Teaching/Guest professor	Soochow University, China	1142	685
Fabien	Sorin	EPF	Membre du conseil scientifique du Laboratoire d'excellence SEAM (non rémunéré)	SEAM, France	1143	1156
Bruno	Marchand	EPF	Commission d'architecture et d'urbanisme	Commune de Pully	1144	796
Simon	Henein	EPF	Membre du Scientific Advisory Board and conseil technique	CSEM: Centre Suisse d'Electronique et de Microtechnique, Neuchâtel	1145	564
Roland	Füss	USG	Lehrtätigkeit	EBS Universität	1146	416
Pascal	Zysset	UBE	NA	Strassen- und Kanalisationsgenossenschaft Badweidli	1147	1377
Yves	Pigneur	ULA	NA	Activités académiques	1148	1000
Stefan	Morkötter	USG	Fachbeirat	Hydropower Solutions GmbH	1149	877
Christopher	Tucci	EPF	Board Member	Innovation Strategy Center Association	1150	1258
Xile	Hu	EPF	Consulting of chemical research, 3 hours	Syngenta Crop Protection AG, Stein	1151	618
Melody	Swartz	EPF	Founder & Shareholder	Lumberjill, Basel, CH	1152	1199
Jan Marco	Leimeister	USG	Beirat	United Digital Group UDG	1153	742
Tosso	Leeb	UBE	NA	Albert-Heim-Stiftung	1154	727
Yusuf	Leblebici	EPF	Founder	Immersive Vision Technologies, PSE, Lausanne	1155	724
Christoph A.	Müller	USG	Geschäftsführender Gesellschafter	UEC gemeinnützige GmbH	1156	907
Denis	Duboule	UGE	Président du conseil scientifique	Ecole Normale de Paris (ENS)	1157	285
Achim	Conzelmann	UBE	NA	PH Bern, Schulrat	1158	223
Franz	Graf	USI	Professeur ordinaire	Università della Svizzera italiana, Accademia di Architettura	1159	471
Denis	Duboule	UGE	Membre du comité steering	IGBMC Strasbourg	1160	285
Jieping	Zhu	EPF	Committee member	Institut de Chimie de Lyon	1161	1357
Ina	Habermann	UBA	Mitglied des Stiftungsrates	Telebasel, Basel	1162	537
Peter	Ryser	EPF	Administrateur vice-président	Sensile Technologies SA, Morges	1163	1077
Mario	Paolone	EPF	Editor in Chief of the international journal Sustainable Energy, Grids and Networks	Elsevier Ltd, UK	1164	982
Kersten	Geers	EPF	Founding Member	San Rocco Magazine, Milano, Italy	1165	436
Rajna Nicole	Gibson Brandon	UGE	Membre du conseil d'administration	Swiss Re	1166	441
Alexander	Fust	USG	Dozent	FHS St. Gallen	1167	418
Denis	Duboule	UGE	Membre du conseil scientifique	Institut Curie, Paris	1168	285
Günter	Müller-Stewens	USG	Mitglied im Herausgeberbeirat	Zeitschrift Die Unternehmung	1169	928
Elgar	Fleisch	USG	VR-Mandat	qipp AG	1170	373
Eva	Bayer Fluckiger	EPF	Membre du conseil de la recherche Division II	FNS, Berne	1171	95
Gerd	Folkers	UBA	VR-Präsidium	PNN Pharma Nation Network AG	1172	377
Erwan	Morellec	EPF	Cours (1 jour): Derivatives for Central Bankers	Swiss National Bank	1173	868
Philippe	Thalmann	EPF	Mandat privé pour l'évaluation de la durabilité de projets - Aspects économiques	ARE, Office fédéral du développement territorial, Berne	1174	1229
Michael	Gastpar	EPF	Academic Affiliation (unpaid)	University of California, Berkeley	1175	431
Nava	Setter	EPF	President of the foundation	Talent Foundation, Saint-Sulpice	1176	1136
Torsten	Schwede	UBA	Mitglied des Board of Directors	SIB Swiss Institute of Bioinformatics, Lausanne	1177	1130
Christian	Hesse	UBE	NA	Dr. Josephine de Karman-Stiftung	1178	588
Antonio	Lanzavecchia	ETH	Geschäftsführer	Humabs Holding GmbH	1179	717
Berend	Smit	EPF	Teaching and Research	University of California, Berkeley	1180	1151
Björn	Rasch	UBA	Betreuung von Studenten und Doktoranden	Universität Zürich	1181	1018
Jean-Louis	Scartezzini	EPF	VELUX Foundation Workshop	VELUX Stiftung, Zurich	1182	1087
Peter	Rohner	USG	Verwaltungsratspräsident	BEG Business Engineering Group AG	1183	1051
Harry	Gugger	EPF	Board Member, Academic Committee Member Holcim Foundation	Holcim Group Services Ltd/ Holcim Technology Ltd, Zurich	1184	505
Antonio	Loprieno	UBA	Mitglied des Universitätsrates	Universität Tübingen	1185	766
Ivan	Rodriguez	UGE	Membre du comité	Wright Foundation	1186	1044
André	Holenstein	UBE	NA	Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	1187	615
Leonid	Rivkin	EPF	Interim Chair of the International Collaboration Board of the Future Circular Collider (FCC) study	CERN, Genève	1188	1037
Oliver	Gassmann	USG	Verwaltungsrat	Zühlke	1189	429
Giorgio	Margaritondo	EPF	Member, Consiglio di Fondazione USI	USI, Lugano	1190	807
Philippe	Thalmann	EPF	Membre du conseil scientifique	Swisscleantech Association, Bern	1191	1229
Daniel	Kuhn	EPF	PhD course on Financial Optimization and Risk Management under Uncertainty	Norwegian University of Science & Technology, Trondheim, Norway	1192	701
Kai	Johnsson	EPF	Consulting Quartet Medicine	Quiartet Medicine, Boston, USA	1193	662
Olivier	Christin	UNE	Enseignement	Ecole pratique des hautes études de Paris	1195	209
Christopher	Tucci	EPF	Board Member	Powzy	1196	1258
Detlef	Günther	ETH	Verwaltungsrat	inspire AG	1197	518
Konrad	Wegener	ETH	VR-Mandat	Meyer Burger Technology AG	1198	1294
Pascal	Pichonnaz	UFR	Vize-Präsident	EKK (Eidgenössische Konsumenten Kommission)	1199	998
David	Atienza Alonso	EPF	Consultancy on embedded systems uses for swallowing and chewing monitoring	Nestec SA	1200	46
Felix	Naef	EPF	Member of evaluation committee Advanced Postdoc Mobility	SNF	1201	941
Michèle F.	Sutter-Rüdisser	USG	Mitglied des Universitätsrats	Universität Liechtenstein	1202	1193
Marina Silva	Cattaruzza	UBE	NA	Universita della Svizzera Italiana	1203	203
Aleksandra	Radenovic	EPF	Sponsored research agreement from Roche	Head of research Roche Sequencing	1204	1010
Ernst	Mohr	USG	Verwaltungsrat	AtlanticLux Lebensversicherung S.A.	1205	855
Patrick	Aebischer	EPF	Verwaltungsrat	Lonza Group	1206	31
Georg Fredrik	von Krogh	ETH	Geschäftsführer	Innovative Strategies GmbH	1207	1281
David Andrew	Barry	EPF	Member and expert to the Sinergia section	Swiss National Science Foundation - Sinergia	1208	76
Leo	Staub	USG	Präsident Verwaltungsrat	Genossenschaft Migros Ostschweiz	1209	1165
Basile	Cardinaux	UFR	Anwalt	Selbstständig	1210	199
Didier	Trono	EPF	Membre du conseil scientifique	MOLMED, Milan, Italy	1211	1249
Heinrich	Hofmann	EPF	Board of Directors	ANTIA Therapeutics, Bern	1212	609
Stephan	Windecker	UBE	Verwaltungsrat	Kardiologie Interlaken - Unterseen AG, Verwaltungsrat	1213	1322
Marcel	Meili	ETH	VR-Präsidium	Verlag Scheidegger und Spiess AG	1214	828
Jieping	Zhu	EPF	Committee member Labex SynOrg	INSA, France	1215	1357
Florian	Elliker	USG	Research Fellow	University of the Free State	1216	313
Georg	von Schnurbein	UBA	Präsident des Stiftungsrates	Stiftung zur Förderung des Antikenmuseums Basel	1217	1286
Michael	Lehning	EPF	Politecnico di Milano	Politecnico di Milano, Milano	1218	730
Konrad	Hungerbühler	ETH	VR-Mandat	Ernst Hungerbühler AG (in Liquidation)	1219	633
Hans Peter	Herzig	EPF	Vice-president (until August 2014)	International Commission for Optics ICO	1220	587
Denis	Duboule	UGE	Membre	Concile de l'EMBO	1221	285
Francesco	Stellacci	EPF	Member of the Scientific Advisory Board	Centro Europeo di Nanomedicina, Milano	1222	1181
Pierre-Alain	Mariaux	UNE	Membre	Commission scientifique du Trésor abbatial de l'Abbaye St-Maurice	1223	808
Ursula	Röthlisberger	EPF	Member of the Editorial Board	Journal of Physics D: Applied Physics, UK	1224	1059
Martin	Brown	USG	Diverse Gutachten	KfW Development Bank	1225	170
Patrick	Aebischer	EPF	Part of the presidential duties	CSEM	1226	31
Elyahou	Kapon	EPF	Member of Board of Directors	BeamExpress SA	1227	676
Harry	Gugger	EPF	Board Director	HGS (Harry Gugger Studio), Basel	1228	505
Martin G.	Täuber	UBE	NA	SWANtec Holding AG	1229	1215
Wulfram	Gerstner	EPF	Scientific advisory board	Center for Integrative Neuroscience (CIN), University of Tübingen	1230	440
Andrea	Rinaldo	EPF	Secretary, Class of Sciences	Istituto Veneto di Scienze, Lettere e Arti (IT)	1231	1032
Matthias P.	Wymann	UBA	Mitglied des Verwaltungsrates	PIQUR Therapeutics AG, Basel	1232	1339
Nicolas	Monod	EPF	Expertises	Fond National Suisse, Berne	1233	864
Hedwig J.	Kaiser	UBA	Mitglied des Verwaltungsrates	UKBB	1234	670
Reto	Föllmi	USG	Vorstandsmitglied	Schweiz. Gesellschaft für Volkswirtschaft und Statistik	1235	384
Peter	Ryser	EPF	Gérant entreprise personnel	Rycons GmbH, Stäfa	1236	1077
Boi	Faltings	EPF	Scientific Advisor / Consultant	Livelyplanet, SAS, Versailles, France	1237	331
Georg	von Schnurbein	UBA	Board member	European Research Network on Philanthropy	1238	1286
François	Diederich	ETH	Aufsichtsratsmandat	BASF Societas Europeae (Schweden)	1239	255
Nils	Soguel	ULA	President	SRS-CSPCP	1240	1154
Jeffrey Alan	Hubbell	EPF	Adjunct Professor (uncompensated)	Diabetes Research Institute, University of Miami, USA	1241	632
Martin	Brown	USG	Member of Technical Assistance Committee	ResponsAbility	1242	170
Omid	Aschari	USG	Verwaltungsratspräsident und Gründer	ASG Strategy Group AG	1243	45
David Lyndon	Emsley	EPF	Associate Editor, Journal of the American Chemical Society	American Chemical Society	1244	318
Roger	Moser	USG	Founder & Partner	Industry Intelligence GmbH	1245	892
Laurent	Tissot	UNE	Membre du conseil scientifique	Maison des sciences de l'homme de l'Université de Tours	1247	1242
Ioannis	Papadopoulos	ULA	Mandat	Schweizerischer Nationalfonds (SNF)	1248	983
Lukas	Gschwend	USG	Vizepräsident	Zürichsee Landschaftsschutz ZSL	1249	498
Arno	Schlüter	ETH	Mitglied des Nachhaltigkeitsbeirats	Herzog Kull Group	1250	1113
Klaus	Neumann-Braun	UBA	Mitglied des Verwaltungsrates	Baimedia AG, Basel	1251	956
Thomas	Bieger	USG	Stiftungsrat	Dr. Heinrich Wachter zur Förderung der wissenschaftlichen Forschung an der Hochschule St. Gallen für Wirtschafts- und Sozialwissenschaften	1252	124
Sebastian	Wolf	UBE	NA	Haag Streit Stiftung	1253	1325
Francesco	Stellacci	EPF	Editorial Board Member, Nature Communications	Nature Publishing Group, London, UD	1254	1181
Christian	Bochet	UFR	Präsident	Atlas Photonics Sàrl	1255	133
Peter	Rohner	USG	«Pate» für Jungunternehmer	Startnetzwerk Thurgau	1256	1051
Patrick	Aebischer	EPF	Part of the presidential duties	Fondation pour l'étude des eaux du Léman	1257	31
Roland	Müller	USG	Verwaltungsratsvizepräsident	Board Foundation	1258	918
Anders	Hagfeldt	EPF	Chairman of the Committee for Development Research	Swedish Research Council	1259	544
Hervé	Bourlard	EPF	External Fellow and Member of the Board of Trustees	Intl. Computer Science Institute (ICSI), Berkeley, CA	1260	149
Thomas	Stocker	UBE	NA	Johanna Dürmüller-Bol Stiftung	1261	1186
Christophe	Moser	EPF	Board observer (resigned on 25.12.14)	Ondax Corp., USA	1262	889
Patrick	Thiran	EPF	Membre du comité scientifique du LINCS	Institut Mines-Télécom, France	1263	1231
Philippe	Thalmann	EPF	Journée d'économie politique d'iconomix 2014. 1 cours (21.11.14)	HEP Lausanne	1264	1229
Matthias	Egger	UBE	NA	Krebsforschung Schweiz	1265	304
Philippe	Thalmann	EPF	Membre du groupe de travail Forum for climate and global change ProClim	Swiss Academy of Sciences, Bern	1266	1229
Damir	Filipovic	EPF	Member of the Board of Directors	Swiss Life Holding Ltd	1267	355
Marilyne	Andersen	EPF	Board member	ECOVEST SA	1268	41
Wilhelm	Gruissem	ETH	VR-Mandat	Nebion AG	1269	493
Andreas	Meier	UFR	Stiftungsrat	Stiftung Rechenzentrum für Krankenversicherung	1270	821
Kay	Severin	EPF	Scientific expert for patent firm	Patentanwalt Ter Meer Steinmeister & Partner	1271	1137
Janet	Hering	EPF	Member (11.2009 - present)	ETH Board Committee on Competence Centers (BCC)	1272	581
Freddy	Radtke	EPF	Chairman of board of directors	Cellestia Biotech SA, Innovation Square EPFL	1273	1012
Peter Mathias	Fischer	USG	Gründer und Leiter der Regionalgruppe Ostschweiz/Vorarlberg	AbsolventUM	1274	362
Hervé	Bourlard	EPF	Member of the Foundation Council	Fondation Dalle Molle	1275	149
Bernard	Thorens	ULA	NA	Activités académiques	1276	1234
Reiner	Eichenberger	UFR	Mitglied	Eidgenössische Kommunikationskommission	1277	311
Martin G.	Täuber	UBE	NA	Schweizerische Akademie der Medizinischen Wissenschaften (SAMW)	1278	1215
Pierre	Vandergheynst	EPF	Consulting	Nestlé Research, Vevey	1279	1263
Patrick	Aebischer	EPF	Verwaltungsrat	Nestlé	1280	31
Edwin Charles	Constable	UBA	Mitglied des Stiftungsrates	Universitätsspital Basel, Forschungsstiftung	1281	221
Michel	Rappaz	EPF	Président du conseil de fondation	Fondation R&R Haenny, SAV, Lausanne	1282	1017
Pascal	Fua	EPF	Advising	PlayfulVision EPFL	1283	413
Dominique	Perrault	EPF	Architecture & gestion de projets	SA Dominique Perrault Architecture, Chatelaine	1284	989
Laurent	Tissot	UNE	Membre du Bureau exécutif	Commission internationale pour la philosophie et les sciences humaines (CIPSH)	1285	1242
Patrick	Aebischer	EPF	Founder & Chairman of the BOD	Amazentis	1286	31
Giorgio	Margaritondo	EPF	Member, Board of Directors	Università di Pavia	1287	807
Fréderic	Krauskopf	UBE	NA	Fondation A. Peneveyre SA	1288	696
Daniel	Odermatt	UBE	NA	Stiftung Mensabetriebe der Universität Bern	1289	971
Gerhard M.	Christofori	UBA	Mitglied des Stiftungsrates	Hans Buss-Stiftung Basel	1290	210
Berend	Smit	EPF	Editor	Frontiers Publishers, Lausanne	1291	1151
Christian Pieter	Hoffmann	USG	Mitglied des Beirats, Geschäftsberichte	HSG Symposium	1292	603
Eugen	Brühwiler	EPF	Ingénieur-expert dans le cadre du bétonnage du Tunnel Eyholz à Visp VS	Office fédéral des routes, Sion	1293	181
Peter	Schneemann	UBE	NA	Kiefer Hablitzel Stiftung	1294	1118
Daniel	Odermatt	UBE	NA	Stiftung für technologische Innovation - STI	1295	971
Pierre-André	Farine	UNE	Membre du Conseil d'administration d'Asgalium Unitec SA, Consulting et expertises	Asgalium Unitec SA, Cortaillod	1296	351
Eva	Bayer Fluckiger	EPF	Membre	Stiftung zur Förderung der mathematischen Wissenschaften in der Schweiz	1297	95
Reto	Föllmi	USG	Bankrat	Schwyzer Kantonalbank	1298	384
Paul	Xirouchakis	EPF	Reviewer MATENG (9.5 days)	EU Commission	1299	1342
Tamar	Kohn Johnson	EPF	Adjunct scientist	Eawag	1300	690
Jeffrey Alan	Hubbell	EPF	Board of Directors	Lumberjill, Inc., Boston	1301	632
Roman	Boutellier	ETH	VR-Mandat	Appenzeller Kantonalbank	1302	155
Reto	Föllmi	USG	Mitglied der Programmkommission	Avenir Suisse	1303	384
Lino	Guzzella	ETH	Stiftungsrat	Schweizerische Studienstiftung Fonds für begabte junge Menschen	1304	536
Dirk	Schäfer	USG	Partner	Detecon (Schweiz) AG	1305	1089
Peter	Leibfried	USG	Präsident der Fachkommission	Swiss GAAP FER	1306	736
Thomas	Keller	EPF	Conseil d'administration (jusqu'au 31.12.2014)	F.J. Aschwanden AG, Lyss	1307	683
Christian Gerhard	Wolfrum	ETH	VR-Mandat	Glycemicon AG	1308	1334
Dominique	Bonvin	EPF	Consulting, conseil scientifique	ONLINE Control Sàrl, Lausanne	1309	139
Philipp	Rudolf von Rohr	ETH	Stiftungsrat	André und Hedy Knoll-Spring Stiftung	1310	1060
Stephan	Windecker	UBE	Aufsichtsrat	European Cardiovascular Research Institute (ECRI), Aufsichtsrat	1311	1322
Florian	Wettstein	USG	Mitglied des Editorial Advisory Boards	Business Ethics Journal Review	1312	1316
Anton	Schleiss	EPF	Beratung, vidange de fonds - surélévation du barrage Cambambe, Angola	Stucky SA, Renens	1313	1110
Pascal	Mahon	UNE	Membre du Comité suisse	Commission internationale des juristes (ICJ)	1314	780
Anton	Schleiss	EPF	Beratung, Wasserkraftwerk Chippis VS	FMV SA, Sion	1315	1110
Anton F.H.	Bierl	UBA	Mitglied des Stiftungsrates	Vischer-Heusler Stiftung	1325	125
Christian	Leumann	UBE	NA	Schweizerischer Nationalfonds, Stiftungsrat	1326	754
Patrick	Jenny	ETH	VR-Mandat	Ziegelbrücke Energie AG	1327	657
Antoinette	Weibel	USG	Beiratsmitglied	Trust Management Institut e.V.	1328	1302
Ottmar	Holdenrieder	ETH	Stiftungsrat	Stiftung Geobotanisches Forschungsinstitut Rübel	1329	612
Paul	Schönsleben	ETH	VR-Präsidium	Sanalpin AG	1330	1126
Hubert	Girault	EPF	Membre du Jury et Mentor ; domaine : promotion de la recherche scientifique	Fondation Carnot, Neuilly s/Seine	1331	454
Andreas	Mortensen	EPF	proposés référés	EPSRC, UK	1332	886
Semyon	Malamud	EPF	Teaching a PhD class	Dublin City University	1333	782
Dario	Neri	ETH	Mitarbeit in Projekt	Philochem AG	1334	955
Henry	Markram	EPF	Frontiers Research Foundation, President	PSE-D, Ecublens, CH	1335	812
Eugen	Brühwiler	EPF	Expert/conseiller pour le suivi de questions liées à la structure porteuse de la Cathédrale de Lausanne	Canton de Vaud SIPAL	1336	181
Lyesse	Laloui	EPF	Président du Conseil d'administration (depuis mi-décembre 2014)	STUNEX SA	1337	715
Tamar	Kohn Johnson	EPF	Associate Editor	Royal Society of Chemistry, Cambridge, UK	1338	690
Artur	Baldauf	UBE	NA	Securitas AG	1339	65
Thomas	Bieger	USG	Mitglied	Genossenschaft Olma Messen St. Gallen	1340	124
Heike	Bruch	USG	Verwaltungsratspräsidentin und Gründerin	Energy factory	1341	174
Thomas	Szucs	UZH	Mitglied des Aufsichtsrats	Biovertis AG, Wien	1342	1203
Joël	Mesot	EPF	Stiftungsratsvizepräsident	Marcel-Benoist	1343	841
Ursula	Wolf	UBE	Board Member	European Association of Percutaneous Cardiovascular Intervention (EAPCI)	1344	1333
Alfred	Wüest	ETH	Advisory Board Forschungsstelle Nachhaltige Energie-und Wasserversorgung	Uni Basel	1345	1338
Andrea	Back	USG	Gutachterin	Marie Heim-Vögtlin-Programm des Schweizerischen Nationalfonds, Abteilung Geistes- und Sozialwissenschaften	1346	62
Jean-Philippe	Dunand	UNE	Conseil externe dans l'étude d'avocats	Athemis	1347	290
Philippe	Thalmann	EPF	Président le la Commission fédérale de logement	Office fédéral du logement, Granges	1348	1229
Philippe	Gillet	EPF	Membre du Conseil de la Fondation	Fondation BNP Paribas pour le mécénat	1349	450
Didier	Trono	EPF	Chaire du conseil scientifique	IGH Montpellier	1350	1249
Yves	Weinand	EPF	Parlement vaudois, mission de stabilité	Canton de Vaud, Service Immeubles, Patrimoine et Logistique, Lausanne	1351	1308
Martin	Fey	UBE	NA	Berger-Janser-Stiftung, Bern	1352	354
Marcel	Meili	ETH	VR-Mandat	Vetimag AG	1353	828
Dario	Floreano	EPF	Harvard Wyss Institute: Visiting Professor (September-December 2014, while on leave)	SEAS Harvard, Cambridge, USA	1354	375
Andreas	Meier	UFR	Geschäftsführer	eTorrent GmbH	1355	821
Markus	Kreutzer	USG	Lehrstuhl für Strategisches und Internationales Management	EBS Universität	1356	698
Maria del Carmen	Sandi Perez	EPF	Consulting	Amazentis, Ecublens	1357	1084
Tatsuya	Nakada	EPF	Chair of a B-factory Programme Advisory Committee	High Energy Accelerator Organization, Tsukuba, Japan	1358	949
Paolo	Ienne	EPF	Member of evaluation panel	FNS, Bern	1359	642
Christoph Hans	Boesch	UBE	NA	Jubiläumsstiftung Mobiliar	1360	135
Daniel	Candinas	UBE	NA	CAScination AG	1361	196
Elgar	Fleisch	USG	VR-Mandat	BEN Energy AG	1362	373
David	Suter	EPF	Evaluation de projets de recherche	Agence Nationale de la Recherche (ANR), Paris	1363	1191
Janet	Hering	EPF	Member, Board of reviewing editors (01.2010 - present)	Science	1364	581
Serge	Vaudenay	EPF	Expertise	Ingenico Paris	1365	1267
Roland	Fankhauser	UBA	Vorstandsmitglied und seit Januar 2015 Präsident	Centrum für Familienwissenschaften	1366	340
Heinrich	Hofmann	EPF	Expert Nanotechnology and Nanomaterials, Nanoregulation (Nanoreg WP2)	Federal Office for the Environment FOEN	1367	609
Stewart	Cole	EPF	Contrat de Conseil	K-RITH, Durban, South Africa	1368	212
Karl	Aberer	EPF	Member Conseil of Zeno-Karl Schindler Foundation	Zeno-Karl Schindler Foundation	1369	4
Hubert	Girault	EPF	Membre de la commission fédérale d'examen, nommé par le Conseil Fédéral ; domaine : électrochimie	Direction générale des douanes, Berne	1370	454
Minyue	Dong	ULA	NA	Activités académiques	1371	265
Colin	Jones	EPF	SNF SCOPES evaluation panel	SNSF Bern	1372	663
Lino	Guzzella	ETH	Mitglied	Schweizerischen Akademie der Technischen Wissenschaften	1373	536
Heinz	Zimmermann	UBA	Mitglied des Stiftungsrates	BIZ-Stiftung c/o Dr. Carlo Bertossa, Basel	1374	1363
Heike	Bruch	USG	Mitglied des Vorstandes	Deutsche Gesellschaft für Personalführung DGFP	1375	174
Roger	Moser	USG	Board Member	Timor Foundation	1376	892
Roman	Boutellier	ETH	VR-Mandat	Ammann BauAusrüstung AG	1377	155
\.


--
-- TOC entry 3466 (class 0 OID 49710)
-- Dependencies: 218
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organizations (organization, function, organization_sector, id) FROM stdin;
inspire AG	Verwaltungsrat	Technology	1
AERES, Paris	Expertise	Education & research	2
Idiap Research Institute	Director	Education & research	3
SwissScientific SA, Neuchâtel	Conseil d'administration	Financial industry & insurances	4
AFF Architekten, Berlin, Germany	Bureau d'architecture, Fondateur	Industry, construction & agriculture	5
CCES Competence Center Environment and Sustainability	Member, Steering Board (01.2007 - present)	Education & research	6
BVB, Basler Verkehrsbetriebe Basel	Mitglied des Verwaltungsrates	Energy, environment & mobility	7
Fondation Dalle Molle	Member of the Foundation Council	Society, Social, Culture & Sports	8
Infrastruktur SK	Verwaltungsrat	Not classifiable	9
J. Antibiotics, Nature Publisher	Editorial board member	Media & communication	10
Terratech Group Ltd	Independent director (non-executive), while on leave	Financial industry & insurances	11
UFRJ	Visit to UFRJ Rio Brésil	Education & research	12
Office KGDVS, Brussels	Founding Partner	Industry, construction & agriculture	13
African Institute for Mathematical Science, Cape Town, South Africa	Member of the Scientific Advisory Committee for the Next Einstein Forum	Education & research	14
FNS, Berne	Membre du FNS Panel Sinergia	Education & research	15
Amphiro AG	VR-Mandat	Industry, construction & agriculture	16
Contrôle officiel suisse des chronomètres (COSC), La Chaux-de-Fonds	Membre de l'assemblée générale AG du COSC	Industry, construction & agriculture	17
Technopark Aargau	Stiftungrat	Commerce, trade & services	18
SRI-UQ, KAUST, KSA	Scientific advisory board	Education & research	19
Deutsche Gesellschaft für Personalführung DGFP	Mitglied des Vorstandes	Commerce, trade & services	20
Advisory Board Novartis Venture Fund	Chairman, Beirat	Financial industry & insurances	21
Schweizerisches Kompetenzzentrum für Menschenrechte (SKMR)	membre du Directoire	Education & research	22
Imperix SA, Sion	Conseil scientifique	Energy, environment & mobility	23
Modelling and Simulation in Materials Sci. and Eng., Inst. of Physics, UK	Editor-in-Chief (no contract, modest honorarium for professional activity)	Education & research	24
Electrosuisse	Membre du Comité Electrosuisse	Commerce, trade & services	25
IGBMC Strasbourg	Membre du comité steering	Education & research	26
Bundesministerium für Bildung und Forschung	Sprecher des Forschugnsverbunds Bilderfahrzeuge - Aby Warbug's Legacy and the Future of Iconology	Politics, administration, justice system & security sector	27
Mimotec SA, Sion	Conseil scientifique + CA	Industry, construction & agriculture	28
Hoffmann & Co. AG, Basel	Mitglied des Verwaltungsrates	Consulting, public relations, legal & trust	29
UBUNTU, Zürich; Share for Food Alliance, Basel	Mitglied des Stiftungsrates	Not classifiable	30
Nachhaltigkeitsbeirat Swisscanto	NA	Energy, environment & mobility	31
SNF	SNF professorship review	Education & research	32
School of Civil and Environmental Engineering, Duke University, USA	Adjunct professor	Education & research	33
Leadership & Endurance AG	Mitglied des Verwaltungsrats	Consulting, public relations, legal & trust	34
Autorité fédérale de surveillance en matière de révision	Mandat	Commerce, trade & services	35
Stiftung Universität und Gesellschaft	NA	Education & research	36
Oy Halton Group Ltd	Member of the Board	Industry, construction & agriculture	37
SANCUS Capital (NYC)	Advisory Board	Financial industry & insurances	38
Typesafe Sarl, Lausanne	Board-Observer (former Chairman)	Technology	39
EERV, paroisse d'Ecublens-St.Sulpice, Ecublens	Vice-président du Conseil paroissial, Ecublens-St.Sulpice	Society, Social, Culture & Sports	40
NEBION AG	VR-Mandat	Technology	41
I.VW-Forschungskreis	Beratungstätigkeiten für Mitglieder	Education & research	42
Nanodimension AG, Suisse	Conseil scientifique	Financial industry & insurances	43
ADREAM, Crans-Montana, Switzerland	Sociétaire sans droit de signature	Education & research	44
Minnesota Traffic Observatory, University of Minnesota, USA	Development of analysis tools	Education & research	45
FNS division IV, Berne	Membre du conseil national de la recherche	Education & research	46
Préfecture de Lausanne	Assesseur à la Commission de Conciliation en matière de baux	Politics, administration, justice system & security sector	47
ESS	Steering Committee	Not classifiable	48
FSRM: Fondation Suisse pour la Recherche en Microtechnique, Neuchâtel	Enseignement de cours de formation continue	Education & research	49
dl-a, designlab-architecture SA, Genève	Associée	Industry, construction & agriculture	50
Maison des sciences de l'homme de l'Université de Tours	Membre du conseil scientifique	Education & research	51
Swiss Luftfahrtstiftung	Stiftungsrat	Energy, environment & mobility	52
ETH Zürich	Präsident	Education & research	53
McOptik	Verwaltungsrat	Commerce, trade & services	54
HCERES, France	Comité HCERES, évaluation de laboratoire INAC, CEA Grenoble	Education & research	55
Karl Bubenhofer AG	Mitglied Verwaltungsrat	Industry, construction & agriculture	56
Albert-Ludwigs-University	Affiliated	Education & research	57
Kuros Biosurgery, Zürich	Board of Directors, Chief Scientific Advisor	Technology	58
Dana Foundation, New York	Consultant	Education & research	59
Abionic, Innovation Park	President Board Abionic	Pharma & health	60
IT Management Partner St. Gallen AG	Geschäftsführender Partner und Mitglied des Verwaltungsrates	Consulting, public relations, legal & trust	61
Académie suisse des sciences humaines et sociales	Vice-président	Society, Social, Culture & Sports	62
Canton de Vaud	Commission consultative d'urbanisme et d'architecture	Politics, administration, justice system & security sector	63
Unitectra AG	NA	Education & research	64
San Rocco Magazine, Milano, Italy	Founding Member	Media & communication	65
Quantica Capital, Schaffausen	Academic consulting	Financial industry & insurances	66
DYESOL	Scientific Advisor	Energy, environment & mobility	67
Insula Stiftung	NA	Education & research	68
Hoffmann Neopac	Verwaltungsrat	Industry, construction & agriculture	69
Typesafe, Inc. Lausanne	Advisory Board	Technology	70
Royal Society of Chemistry, Cambridge, UK	Associate Editor - Chemical Science	Education & research	71
Comité des travaux historiques et scientifiques	Membre titulaire étranger	Society, Social, Culture & Sports	72
Handelsschiedsgericht	Schiedsrichter	Politics, administration, justice system & security sector	73
Lonza Group	Verwaltungsrat	Technology	74
Pädagogische Hochschule St.Gallen	Dozent für Englische Sprache und Literatur	Education & research	75
Fondation Professeur Walther Hug	Membre et Président du conseil	Education & research	76
Institut de Sante au Travail, Lausanne	Mitglied des Stiftungsrates	Pharma & health	77
Compass Alters- und Pflegeverein	Präsident	Pharma & health	78
Raiffeisen Diepoldsau-Schmitter	Verwaltungsrat	Financial industry & insurances	79
Direction générale des douanes, Berne	Membre de la commission fédérale d'examen, nommé par le Conseil Fédéral ; domaine : électrochimie	Politics, administration, justice system & security sector	80
Elsevier, Oxford, UK	Editor in chief, Tunnelling and Underground Space Technology, while on leave	Media & communication	81
Activités académiques	NA	Education & research	82
Centre de mathématiques, Université d'Etat de Saint Petersburg	Direction scientifique	Pharma & health	83
Premiumselect Lux S.A.	Verwaltungsrat	Financial industry & insurances	84
Fritz + Caspar Jenny AG	VR-Mandat	Commerce, trade & services	85
Office fédéral du logement, Granges	Président le la Commission fédérale de logement	Politics, administration, justice system & security sector	86
Brenzinger Grundstücksverwaltungs KG	Kommanditist	Commerce, trade & services	87
IRGC, EPFL, Lausanne	Member, Scientific and Technical Council (01.2013 - present)	Education & research	88
BPN Paribas (Suisse) SA	Président du comité d'audit et membre du conseil d'adminstration	Financial industry & insurances	89
St. Gallen Symposium	Mitglied der Vor-und Hauptjury	Education & research	90
Paradigm Capital Partners	Mitglied des Verwaltungsrates	Financial industry & insurances	91
Prediggo SA, PSE, Ecublens	Scientific Advisor / Consultant	Technology	92
Evangelisch-reformierte Landeskirche beider Appenzell	Ersatzmitglied der Rekurskommission	Society, Social, Culture & Sports	93
SEAM, France	Membre du conseil scientifique du Laboratoire d'excellence SEAM (non rémunéré)	Society, Social, Culture & Sports	94
PRACE AISBL, Brussels, Belgium	Head of the sub panel Life Sciences of the PRACE Access Committee	Education & research	95
Reamol Biomedical Consultung, Buchillon, CH	Biomedical consulting - Founder and BOD (Director - approved by EPFL)	Consulting, public relations, legal & trust	96
dieterdietz.org	Architecture, agence d'architecture	Industry, construction & agriculture	97
Foley Hoag, Boston, USA	Legal consultant	Consulting, public relations, legal & trust	98
Psychiatrie-Museum Bern	NA	Society, Social, Culture & Sports	99
Robertsson Industrial Geoscience Innovation GmbH	Geschäftsführer	Industry, construction & agriculture	100
Institute Imagine Paris	Membre de comité scientifique	Education & research	101
Zeitschrift für Corporate Governance (ZCG)	Mitglied im Fachbeirat	Media & communication	102
Förderkreis Gründungsforschung FGF e.V.	Präsidium	Education & research	103
SNF Forschungsrat	Mitglied	Education & research	104
Lumberjack, USA	Founder & Shareholder	Not classifiable	105
Schweizerischen Juristenvereins	Präsident der Rechtsquellenstiftung	Commerce, trade & services	106
Norwegian University of Science & Technology, Trondheim, Norway	PhD course on Financial Optimization and Risk Management under Uncertainty	Education & research	107
Volkshochschule beider Basel	Mitglied des Stiftungsrates	Education & research	108
ITS Foundation. International Tourism Symposium	Stiftungsrat	Commerce, trade & services	109
Genossenschaft Olma Messen St. Gallen	Mitglied	Industry, construction & agriculture	111
Uni Basel	Advisory Board Forschungsstelle Nachhaltige Energie-und Wasserversorgung	Education & research	112
Institut fuer Jungunternehmen, St. Gallen	Venture Lab - Teaching	Consulting, public relations, legal & trust	113
Delft University of Technology	Academic Affiliation (unpaid)	Education & research	114
Venture Incubator AG	VR-Präsidium	Financial industry & insurances	115
FNS (Fonds National Suisse)	President du Conseil National de la Recherche	Education & research	116
Alterniity GmbH	NA	Technology	117
Ingenico Paris	Expertise	Technology	118
S2P Lion, Germany	Consulting on data mgmt	Not classifiable	119
Fondation IQRGC	Président de la Fondation	Not classifiable	120
Jungfraubahnen Management AG	Verwaltungsratspräsident	Energy, environment & mobility	121
Fondation les Bois Chamblard	Part of the presidential duties	Education & research	122
Viollier AG, Allschwil	Verwaltungsrat inkl. Präsidium Vorsorgestiftung	Pharma & health	123
Schweizer Kaderorganisation SKO	Mitglied des Fachrates	Commerce, trade & services	124
AISBL (non-profit Association)	Organisation de conférences scientifiques en Europe	Not classifiable	125
Haag Streit Stiftung	NA	Pharma & health	126
Sunbiotec AG (Solar Biofuel technology)	VR-Mandat	Energy, environment & mobility	127
Fondation Claude Verdan	Part of the presidential duties	Society, Social, Culture & Sports	128
SKM, UniBasel, Basel	Member of the Advisory Board, Studiengang Kulturmanagement Uni Basel	Education & research	129
Zivilrechtslehrervereinigung	Mitglied	Politics, administration, justice system & security sector	130
Dresden, D	CfAED Techn. Advisory board	Politics, administration, justice system & security sector	131
SNF, Berne	Membre de la commission d'evaluation des profs boursiers SNF	Education & research	132
Dybuster AG	VR-Mandat	Technology	133
Konzert und Theater St. Gallen	Mitglied des Verwaltungsrats	Society, Social, Culture & Sports	134
OPTIMIS HCM Echandens	Consultance Technique en optimisation	Consulting, public relations, legal & trust	135
Ecoinvent	Vorstandsmitglied	Industry, construction & agriculture	136
Master of Law and Economics	Mitglied des Stiftungsrates	Not classifiable	137
SNSF Bern	Research Council Member of SNSF	Education & research	138
Dr. Heinrich Wachter zur Förderung der wissenschaftlichen Forschung an der Hochschule St. Gallen für Wirtschafts- und Sozialwissenschaften	Stiftungsrat	Education & research	139
Versicherung der Schweizer Ärzte, Bern	Mitglied des Verwaltungsrates	Financial industry & insurances	140
ITMC AG	Beratungstätigkeit	Technology	141
MIT Dept. of Civil and Environmental Engineering, USA	Member visiting committee (09.2011 - present)	Education & research	142
AIP Publishing Center, Melville, NY, USA	Associate Editor for Journal of Renewable & Sustainable Energy	Media & communication	143
Institut Pasteur Paris, France	Membre du Conseil d'Administration	Education & research	144
Biometrika Trust, University College London	Editor, Biometrika (editor of a major statistics journal)	Media & communication	145
Economiesuisse	Miglied Forschungs- und Bildungskommission	Commerce, trade & services	146
R&M Immobilien AG	Verwaltungsratspräsident	Commerce, trade & services	147
Berger-Janser-Stiftung, Bern	NA	Pharma & health	148
Selbstständig	Rechtsberater	Not classifiable	149
Silatech SA, Neuchâtel	Conseil d'administration	Commerce, trade & services	150
USI, Lugano, CH	ALARI / Instructor	Education & research	151
Bauart Architekten und Planer AG, Bern	Associé et partenaire d'un bureau d'architecture et d'urbanisme	Industry, construction & agriculture	152
Ronald McDonald Stiftung	NA	Society, Social, Culture & Sports	153
Frimorfo S.A.	Verwaltungsratspräsident	Technology	154
European Professional Club Rugby (CH)	Board Member	Society, Social, Culture & Sports	155
FNS de la Recherche Scientifique	Membre (nommé par l'EPFL), Conseil de Fondation	Education & research	156
ETH Zürich SEC AG	Verwaltungsrat	Politics, administration, justice system & security sector	157
Universita della Svizzera Italiana	NA	Education & research	158
ub-invent GmbH	NA	Pharma & health	159
Securitas AG	NA	Politics, administration, justice system & security sector	160
HSG Symposium	Mitglied des Beirats, Geschäftsberichte	Education & research	161
INRIA, France	Evaluation committee for INRIA	Education & research	162
Liatowitsch & Partner	Mitglied	Politics, administration, justice system & security sector	163
Schweizer Nationalfonds SNF	Forschungsrat der Abteilung Biologie und Medizin	Education & research	164
Avatarion Technology	Gründer und Verwaltungsrat	Technology	165
BeamExpress SA	Member of Board of Directors	Not classifiable	166
Ziegelbrücke Energie AG	VR-Mandat	Energy, environment & mobility	167
M&A Review	Herausgeber	Media & communication	168
Center for Performance Research & Analytics CEPRA	Mitglied im Forschungsnetzwerk	Education & research	169
Deutscher Bundestag	Mitglied der Parlamentarischen Kommission zur Überprüfung und Sicherung der Parlamentsrechte bei der Mandatierung von Auslandseinsätzen der Bundeswehr	Politics, administration, justice system & security sector	170
Royal Chemistry Society, UK	Co-editor in Chief, Nanoscale	Education & research	171
Association suisse du droit public de l'organisation (ASDPO)	Membre du Comité	Politics, administration, justice system & security sector	172
ComCom, Berne	Membre du régulateur fédéral des télécoms	Politics, administration, justice system & security sector	173
Secchi-Viganò Studio, Italie	Partenaire associée	Industry, construction & agriculture	174
Springer USA	Droits d'auteur	Media & communication	175
Sensile Technologies SA, Morges	Administrateur vice-président	Industry, construction & agriculture	176
EvalueScience AG	VR-Mandat	Consulting, public relations, legal & trust	177
phw bern	NA	Education & research	178
Sinartis Sàrl, Le Mont-sur-Lausanne	associé gérant président (dès le 03.11.2014)	Technology	179
NERF (Leuwen)	Membre du Scientific Advisory Board	Pharma & health	180
Schweizerische Gesellschaft für allgemeine innere Medizin	NA	Pharma & health	181
Roland von Hoesslin Gedenkstiftung, Augsburg, Deutschland	Mitglied des Stiftungsrates	Not classifiable	182
EU Commission	Reviewer MATENG (9.5 days)	Politics, administration, justice system & security sector	183
Federal Office of Public Health	Expert Nanotechnology and Nanomaterials, Nanoregulation (Nanoreg WP1)	Pharma & health	184
gyMetrics SA, Ecublens	Conseil d'administration	Technology	185
ERC (consolidators)	Member of Exert Panel	Education & research	186
Commission scientifique du Trésor abbatial de l'Abbaye St-Maurice	Membre	Society, Social, Culture & Sports	187
Eidgenössische Kommunikationskommission	Mitglied	Commerce, trade & services	188
Rychiger AG	VR-Mandat	Industry, construction & agriculture	189
Gt-bureau de recherche, Paris	Associé dans un bureau d'étude	Education & research	190
Pensionskasse des Staatspersonals Freiburg	Vorstand	Financial industry & insurances	191
KfW Development Bank	Diverse Gutachten	Financial industry & insurances	192
L'enseignement Mathématique, Genève	Travail éditorial (non lucratif)	Media & communication	193
Institut génomique Montpellier	Membre de comité scientifique	Education & research	194
Journal of the Europ. Opt. Soc. (JEOS: RP)	Chairman of the editorial board	Media & communication	195
Büro Vatter AG	NA	Consulting, public relations, legal & trust	196
Merck, DE	Consultant	Pharma & health	197
Verein Berner Studentenlogierhäuser VBSL	NA	Commerce, trade & services	198
Starrag	Verwaltungsrat	Industry, construction & agriculture	199
Swedish Research Council, Suède	Expertise pour projet panel VR NT-14	Education & research	200
Oak Ridge National Lab. USA	Neutron Adv. Board	Education & research	201
Stiftung Charles Neuhaus Biel	NA	Society, Social, Culture & Sports	202
European University Institute, Florence, Italy	Florence School of regulation, Transport Area (organisation de 6 workshops en 2013)	Education & research	203
Stiftung für Rechtsausbildung Luzern	NA	Education & research	204
Voxta Inc., India	Member of the Advisory Board	Media & communication	205
Stiftung Papavramidès	NA	Education & research	206
SEW-HSG	Mitglied des geschäftsleitenden Ausschusses	Education & research	207
Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	Stiftungsrat	Education & research	208
Ruth & Arthur Scherbarth Stiftung, Bern	NA	Society, Social, Culture & Sports	209
Alcoa Howmet, Whitehall, USA	Membre du conseil scientifique	Industry, construction & agriculture	210
U.S. National Academy of Engineering	Member	Education & research	211
Forschungsstiftung Genaxen	NA	Education & research	212
Kantonsspital Uri	Mitglied des Spitalrats	Pharma & health	213
Etablissement Cantonal d'Assurance	Conseil d'administration	Society, Social, Culture & Sports	214
Ernst Hungerbühler AG (in Liquidation)	VR-Mandat	Technology	215
Cloetta Stiftung	NA	Education & research	216
Forum du Bilinguisme Bienne	NA	Society, Social, Culture & Sports	217
Algofin AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	218
Bernoulli-Euler-Gesellschaft Basel	Vizepräsident	Education & research	219
High Energy Accelerator Organization, Tsukuba, Japan	Chair of a B-factory Programme Advisory Committee	Education & research	220
Beistein J Org Chem, Beilstin Institute, Germany	Editorial board member	Media & communication	221
Staatsgerichtshof des Fürstentums Liechtenstein	Richter	Politics, administration, justice system & security sector	222
Centris AG	Verwaltungsrat	Technology	223
SAM Architekten und Partner AG	VR-Mandat	Industry, construction & agriculture	224
eNeuro, Society for Neuroscience, USA	Review Editor	Education & research	225
Fondation ISREC, Lausanne	Membre du conseil	Education & research	227
IDHEAP, Université de Lausanne	Cours (26.03.14) La réforme fiscale écologique dans le cadre d'une formation continue	Education & research	228
Park Book AG	VR-Präsidium	Media & communication	229
Jacob Burckhardt-Stiftung	NA	Society, Social, Culture & Sports	230
PROCLIM/SCNAT, Berne	IPCC Working group III (mitigation)	Energy, environment & mobility	231
Schweizerische Akademie der Medizinischen Wissenschaften (SAMW)	NA	Pharma & health	232
Farby KABE Polska GmbH	Mitglied Aufsichtsrat	Industry, construction & agriculture	233
Energieagentur Landkreis Lörrach GmbH	Mitglied des Beirats	Energy, environment & mobility	234
EICom, Commission Fédérale de la Régulation du Marché de l'Electricté, Bern	Membre	Politics, administration, justice system & security sector	235
Morphodyne SA, EPFL	President of the Board	Pharma & health	236
Politecnico di Milano, Milano	Politecnico di Milano	Education & research	237
Biozentrum Basel	Président de comité scientifique	Education & research	238
IMDEA-Materials, Madrid, Espagne	Membre Board of Trustees & research center’s scientific advisory board	Education & research	239
Faceshift AG, Zurich	Member of the board	Technology	240
Fondation Campus Biotech Geneva	Part of the presidential duties	Education & research	241
Norwegian University of Science and Technology, Norway	Evaluation of the candidates for the Professorship/Associate professorship, Dept of Electric Power Eng	Education & research	242
Nielsen Neuro. New York, USA	Science Advisory Board	Consulting, public relations, legal & trust	243
Commission internationale des juristes (ICJ)	Membre du Comité suisse	Politics, administration, justice system & security sector	244
Tribunal cantonal vaudois	Juge suppléant	Politics, administration, justice system & security sector	245
Virtamed AG	VR-Mandat	Pharma & health	246
F-Ingenieur GmbH	Geschäftsführer	Commerce, trade & services	247
Canadian Centre for Architecture, Montréal, Canada	Residency	Industry, construction & agriculture	248
Kunstmuseum Bern	Mitglied des Dachstiftungsrates	Society, Social, Culture & Sports	249
Fondation EPFL+	Part of the presidential duties	Education & research	250
Qatar Foundation, Doha Qatar	Executive Director, Qatar Biomedical Research Institute (while on leave)	Education & research	251
Taylor Wessing, London	Legal consulting	Consulting, public relations, legal & trust	252
Vorwerk & Co. KG	VP des Beirates	Commerce, trade & services	253
Université IUAV, Italie	Prof. ordinaire part-time	Education & research	254
NGL Cleaning Technology SA, Nyon	Conseil en gestion d'entreprise	Technology	255
Stiftung Swiss Innovation Park	NA	Commerce, trade & services	256
Curt Rommel-Stiftung (Grundauftrag)	NA	Education & research	257
Canton de Fribourg	Commission d'Urbanisme et Architecture	Politics, administration, justice system & security sector	258
EAMSA	Board Member	Education & research	259
Kollegium Gambach	Jurypräsident	Education & research	260
Constellium, France	Invited Member, Scientific Advisory Board	Industry, construction & agriculture	261
Center for Advanced Studies	Mitglied im Stiftungsrat	Education & research	262
University of Edinburgh, UK	Visiting Professor	Education & research	263
Hasler Stiftung	Stiftungsrat	Technology	264
Universität Salzburg	Dozent Qualitäts- und Prozessmanagement	Education & research	265
Europhysics Letters, Mulhouse, France	Editeur associé	Media & communication	266
Universität Zürich	Titularprofessor für Rechtsgeschichte und Rechtsphilosophie	Education & research	267
European Research Network on Philanthropy	Board member	Education & research	268
BGW Management Advisory Group	Gründer und Verwaltungsrat	Consulting, public relations, legal & trust	269
SK Engineering & Constructions, South Korea	Expertise Druckstollen, Xe-Pian Xe-Namnoy, Laos	Commerce, trade & services	270
European Commission	Project review work, proposal evaluation	Politics, administration, justice system & security sector	271
Bachem Holding AG	VR-Mandat	Pharma & health	272
Spital Thun AG	NA	Pharma & health	273
University of California, Berkeley	Teaching and Research	Education & research	274
Atlas Photonics Sàrl	Präsident	Technology	275
GeNohm SA, EPFL Innovation Park, Lausanne	Board Member	Technology	276
F. Graf & J. Menoud, Carouge	Architecte indépendant à Genève	Industry, construction & agriculture	277
Kinderbetreuung im Hochschulraum Zürich (kihz)	Stiftungsrat	Society, Social, Culture & Sports	278
EQT	Diverse gutachterliche und beratende Tätigkeiten	Financial industry & insurances	279
European School of Management and Technology	15-hour MBA class	Education & research	280
Scuola Sant'Anna, Pisa, Italy	Membre de l'international advisory board	Education & research	281
Massachusetts General Hospital	NA	Pharma & health	283
BEG & Partners AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	284
Gevo, Colorado, USA	Consulting	Energy, environment & mobility	285
Journal of Physics D: Applied Physics, UK	Member of the Editorial Board	Media & communication	286
Commission fédérale des questions familiales	Mandat	Society, Social, Culture & Sports	287
Université de Genève	Professeur à 20%	Education & research	288
oekom Research AG	Aufsichtsrat	Financial industry & insurances	289
Firmenich, Nestlé, Touring Club Suisse	Divers contrats d'expertises	Not classifiable	290
Swisspeace Bern	Mitglied des Stiftungsrates	Politics, administration, justice system & security sector	291
Exelsis Business Technology AG	Aufsichtsrat	Technology	292
Soochow University, China	Teaching/Guest professor	Education & research	293
Crosswalk AG	Beirätin	Consulting, public relations, legal & trust	294
Association pour l'histoire des chemins de fer en France	Membre du conseil scientifique	Society, Social, Culture & Sports	295
Kokko Inc, USA	Start-up advisor to Kokko Inc.	Technology	296
Virtuell Bau Holding, St.Gallen	Verwaltungsratspräsident	Commerce, trade & services	297
Lumberjack, AG, Basel	Board of Directors	Pharma & health	298
PPUR, Lausanne	Droits d'auteur	Media & communication	299
Jaberg-Stiftung	NA	Society, Social, Culture & Sports	300
Various international conferences	Member of different program committees	Not classifiable	301
Heidiland Tourismus AG	Verwaltungsratspräsident	Commerce, trade & services	302
CRS Holding AGn	Präsident des Verwaltungsrates	Financial industry & insurances	303
Kiefer Hablitzel Stiftung	NA	Society, Social, Culture & Sports	304
Economiesuisse, Zürich	Membre de la commission de la formation et de la recherche	Commerce, trade & services	305
dsp Ingenieure & Planer AG	VR-Mandat	Commerce, trade & services	306
DTU, Institution d'accréditation du Danemark	Membre de la commission d'accréditation d'institution de DTU	Education & research	308
Appenzeller Kantonalbank	VR-Mandat	Financial industry & insurances	309
Verein Katholisches Akademikerhaus/Katholisches Studentenhaus	Mitglied der Leitung	Society, Social, Culture & Sports	310
Tahoe Environmental Research Facility, UC Davies	Externer Reviewer	Education & research	311
Selectchemie AG	Präsident Verwaltungsrat	Technology	312
A. Peneveyre SA	NA	Industry, construction & agriculture	313
European Marketing Academy EMAC	National Representative Switzerland and Member of the Executive Committee	Education & research	314
Acutronic Schweiz AG	VR-Mandat	Industry, construction & agriculture	316
Fonds National Suisse, Berne	Président Division III	Education & research	317
CEB Trust Fund, Genève	Membre du conseil de fondation	Education & research	318
AbsolventUM	Gründer und Leiter der Regionalgruppe Ostschweiz/Vorarlberg	Education & research	319
SATW	SATW technology out-look (non-remuneré)	Education & research	320
Unbekannt	Analyse von Spektren für dritte	Not classifiable	321
Jungfraubahn Holding AG	Verwaltungsratspräsident	Energy, environment & mobility	322
Trust Management Institut e.V.	Beiratsmitglied	Consulting, public relations, legal & trust	323
Journals	Editorial board member of several journals (unpaid)	Not classifiable	324
IAEA, Vienna, Austria	Editor-in-Chief, Nuclear Fusion Journal	Energy, environment & mobility	325
Stratwin AG	Chairman of the Board	Consulting, public relations, legal & trust	326
Advokatenkammer Basel-Stadt	Mitglied	Politics, administration, justice system & security sector	327
Swiss Institute of Particle Physics (CHIPP)	Président de l'association CHIPP	Education & research	328
Dublin City University	Teaching a PhD class	Education & research	329
Fondation Ch.-Ed. Guillaume, La Chaux-de-Fonds	Conseil scientifique	Education & research	330
Antlia SA, Lausanne	CSO et administrateur	Pharma & health	331
Verein Fachanwältinnen und Fachanwälte SAV Familienrecht	Vorstandsmitglied	Politics, administration, justice system & security sector	332
NeueBank AG	Mitglied des Verwaltungsrates	Financial industry & insurances	333
America Software Lab, Santa Clara, CA	Huawei Distributed Computing Lab Advisory Board	Technology	334
Various funding agencies and universities	Reviewing	Not classifiable	335
Rechtsanwaltskanzlei ME Advocat AG	Seniorpartner	Consulting, public relations, legal & trust	336
Nature Publishing Group, London, UD	Editorial Board Member, Nature Communications	Media & communication	337
Livelyplanet, SAS, Versailles, France	Scientific Advisor / Consultant	Technology	338
Nant de Dranse SA, Martigny	Schiedsgericht Nant de Dranse	Commerce, trade & services	339
Helmholtz Society of German Research Centers, Berlin	Member of review panel of a Helmoltz Program	Education & research	340
Antidoping Suisse, Berne	Membre du conseil de fondation (as EPFL)	Pharma & health	341
European Society of Cardiology (ESC)	Board Member	Pharma & health	342
GAIA	Member, GAIA Advisory Board (06.2008 - present)	Not classifiable	343
Echandens	Membre du Conseil Communal	Politics, administration, justice system & security sector	344
Irfu, CEA, Gif sur Yvette, France	IRFU Scientific Council, CEA	Education & research	345
BTiO GmbH	Geschäftsführerin	Consulting, public relations, legal & trust	346
VELUX Stiftung, Zurich	VELUX Foundation Workshop	Education & research	347
Katharina Huber-Steiner Stiftung	NA	Education & research	348
Glycemicon AG	VR-Mandat	Technology	349
Vischer-Heusler Stiftung	Mitglied des Stiftungsrates	Not classifiable	350
coresystems ag	VR-Mandat	Technology	351
RATP, Paris	RATP, audit des espaces	Energy, environment & mobility	352
Eidgenössischen Berufsbildungskommission (EBBK)	NA	Politics, administration, justice system & security sector	353
BugBuster SA, Lausanne	Chief Scientist	Technology	354
Philochem AG	Mitarbeit in Projekt	Technology	355
AICOS Technologies AG, Bâle	Conseil d'administration, membre actuaire de Michgenossenschaft Reitnau	Technology	356
equia AG, Zürich	Verwaltungsratspräsident	Consulting, public relations, legal & trust	357
Sound Leadership LLC	Co-Founder	Consulting, public relations, legal & trust	358
Wettbewerbskommission	Vizepräsident	Politics, administration, justice system & security sector	359
SWISSENDOS Stiftungsrat	NA	Pharma & health	360
Ministère de la Recherche, Paris	Expertise	Education & research	361
Journal of Algebra	Membre du comité éditorial	Media & communication	362
Ammarkt	Mitglied des Verwaltungsrats	Consulting, public relations, legal & trust	363
OLZ & Partners	NA	Financial industry & insurances	364
CTI-Entrepreneurship	Dozent	Commerce, trade & services	365
ECOVEST SA	Board member	Commerce, trade & services	366
SWAN Isotopen AG	NA	Technology	367
Société Mathématique Suisse	Editrice en chef de la revue Commentarii Mathematici Helvetici	Education & research	368
SBB Forschungsfonds	Präsident	Education & research	369
Schweizerisches Institut für Kunstwissenschaft	Präsident der wissenschaftlichen Kommission	Education & research	370
Nestec SA	Consultancy on embedded systems uses for swallowing and chewing monitoring	Industry, construction & agriculture	371
Migros	Verwaltungsrat	Commerce, trade & services	373
Österreichische Akademie der Wissenschaften	Korrespondierendes Mitglied der philosophisch-historischen Klasse im Ausland	Education & research	374
CSEM, Neuchâtel	Chef de division CSEM PV-center, officiellement depuis 1.10.2012	Education & research	375
Swiss Cancer League, Bern	Member of the scientific committee	Pharma & health	376
SEAS Harvard, Cambridge, USA	Harvard Wyss Institute: Visiting Professor (September-December 2014, while on leave)	Education & research	377
Water institute, Stellenbosch University	Member, Advisory Board (11.2012 - present)	Education & research	378
Schweizerische Mobiliar Genossenschaft	VR-Mandat	Financial industry & insurances	379
COSC (Contrôle Officiel Suisse des Chronomètres), La Chaux-de-Fonds	Présidence de la commission technique CT du COSC	Industry, construction & agriculture	380
Elgar Fleisch Management Services AG	VR-Mandat	Consulting, public relations, legal & trust	381
Verband der Schweizerischen Kantonalbanken	Consultant for Financial Literacy	Financial industry & insurances	382
Paul Niggli-Stiftung	Präsident	Education & research	383
VIDINOTI	Membre du conseil d'administration (jusqu'à Juin 2014, puis occasional advisor)	Consulting, public relations, legal & trust	384
Fondation Gustave Dubois	NA	Education & research	385
Volkswagen	Diverse gutachterliche und beratende Tätigkeiten	Energy, environment & mobility	386
FNS, Bern	Member of evaluation panel	Education & research	387
ID Quantique SA	Membre du conseil d'administraiton	Technology	388
Royal Society of Edinburgh, UK	Fellowships Committee	Education & research	389
Jakob und Werner Wyler-Stiftung Zürich	NA	Society, Social, Culture & Sports	390
Industry Intelligence GmbH	Founder & Partner	Consulting, public relations, legal & trust	391
AMYRIS, California, USA	Consulting	Technology	392
Alexander von Humboldt Stiftung	Mitglied des Auswahlausschusses	Education & research	393
ROB Technologies AG	VR-Mandat	Commerce, trade & services	394
Kanton Basel-Stadt	Mitglied des Kontrollorgans über den Staatsschutz	Politics, administration, justice system & security sector	395
Kurchatov Institute, Russia	Int. Science Policy Comm.	Education & research	396
University of Liechtenstein, Vaduz, Lichtenstein	University of Liechtenstein, Teaching	Education & research	397
Price Foundation, Genève	Consultant	Not classifiable	398
Bayer Wartmann AG	NA	Not classifiable	399
Erich Degen-Stiftung	NA	Education & research	400
Kommission für Technologie und Innovation	Expert Committee	Politics, administration, justice system & security sector	401
FMV SA, Sion	Beratung, Wasserkraftwerk Chippis VS	Energy, environment & mobility	402
Coopératives Codha et Voisinage - Genève	Participation, en tant que vice-président, au Jury du concours d'architecture Vergers à Meyrin	Commerce, trade & services	403
Pädagogische Hochschule Freiburg	Mitglied des Hochschulrates	Education & research	404
Ecole VetAgro Sup	Président du Conseil de l'Ecole	Education & research	405
Stiftung für technologische Innovation - STI	NA	Commerce, trade & services	406
Ycoor Systems SA, Sierre	Actionnaire et Membre du Conseil d'administration	Technology	407
Raiffeisen Schweiz	Verwaltungsratspräsident	Financial industry & insurances	408
Rycons GmbH, Stäfa	Gérant entreprise personnel	Consulting, public relations, legal & trust	409
Swiss Finance Institute	Directeur du SFI PhD Program	Financial industry & insurances	410
IBEF GmbH	Geschäftsführer	Technology	411
Deutsches Forschungsinstitutes für öffentliche Verwaltung	Beiratsmitglied	Education & research	412
ETH Board Committee on Competence Centers (BCC)	Member (11.2009 - present)	Education & research	413
Bundesanzeiger Verlag	Mitherausgeber der Zeitschrift Board - Zeitschrift für Aufsichtsräte	Media & communication	414
SWANT (Swiss antibodies) SA	Verwaltungsratspräsident	Pharma & health	415
Stiftung Tierärztliche Hochschule Hannover	NA	Education & research	416
CEA-LETI, France	Conseil scientifique	Education & research	417
EBS Universität	Lehrtätigkeit	Education & research	418
Anokion, Ecublens, CH	Founder & Shareholder	Pharma & health	419
Dominique Perrault Libérale c/o Architram, Renens	Architecture & gestion de projets	Industry, construction & agriculture	420
Schindler Holding AG	VR-Mandat	Industry, construction & agriculture	421
International Forum on Sustainable Value Chains ISVC	Präsident	Education & research	422
Stiftung Kinderdorf Pestalozzi	Mitglied im Stiftungsrat	Politics, administration, justice system & security sector	423
Schweizerische Vereinigung für Führungsausbildung	Beiratsmitglied	Commerce, trade & services	424
Commune de Gland	Commission d'urbanisme et d'architecture	Politics, administration, justice system & security sector	425
TOTAL, Paris, France	Consulting	Commerce, trade & services	426
SPartners Asia (Hongkong)	Advisory board	Society, Social, Culture & Sports	427
Stiftung zur Förderung der mathematischen Wissenschaften in der Schweiz	Membre	Education & research	428
Inneco AG (link)	Verwaltungsratsmitglied	Consulting, public relations, legal & trust	429
EMPA	Directeur (form directly submitted to ETH Board)	Education & research	430
Institut de Physique du Globe de Paris	Président du conseil d'Administration	Education & research	431
Midokura, Japan	Advisory Board	Technology	432
Krebsliga Schweiz	Mitglied der Wissenschaftlichen Kommission	Pharma & health	433
Nationaler Geistiger Rat der Bahá'í der Schweiz	Mitglied	Society, Social, Culture & Sports	434
HGS (Harry Gugger Studio), Basel	Board Director	Industry, construction & agriculture	435
International School of Bern	NA	Education & research	437
Swissmedic	Conseil d’administration	Pharma & health	438
SUTD Architecture and Sustainable Design Singapore	Head of Pillar and Advisor (Educational Institution), while on leave	Education & research	439
Centre de formation professionnel spécialisé ORIF	Mandat	Education & research	440
Association Amies et Amis de la Fondation EPFL-WISH	Présidente	Education & research	441
HSG Stiftung	Stiftungsrat	Education & research	442
SKE, Commission Fédérale d'Arbitrage dans le Secteur du Rail, Berne	Vice-président	Energy, environment & mobility	443
BG Ingénieurs Conseils, Lausanne	CEO et Administrateur	Commerce, trade & services	444
Mission catholique anglophone du canton de Vaud	President, Parish Council	Society, Social, Culture & Sports	445
Campus Muristalden AG	NA	Education & research	446
Center for Integrative Neuroscience (CIN), University of Tübingen	Scientific advisory board	Education & research	447
Koninklijke Vlaamse Academie van België voor Wetenschappen en Kusten, Brussel	Mandat d'études sur la stratégie MOOC des universités Flamandes	Education & research	448
Italian Institute of Technology	NA	Education & research	449
Swiss Start-up Monitor	Advisory Board	Commerce, trade & services	450
ETH Women Professors Forum	Vice President	Society, Social, Culture & Sports	451
CAScination AG	NA	Pharma & health	452
Roche Holding AG	VR-Mandat	Pharma & health	453
Timor Foundation	Board Member	Society, Social, Culture & Sports	454
Amherst - USA	University of Massachussetts: Paid consultant on ONR research project	Not classifiable	455
International Federation of Automatic Control (IFAC) Stiftung	Stiftungsrat	Commerce, trade & services	456
Fondation Giorgi-Cavaglieri	Membre du conseil	Technology	457
University of Gothenburg	Malmsten Visiting Professor, Department of Economics	Education & research	458
American Chemical Society	Associate Editor, Journal of the American Chemical Society	Technology	459
HEM Genève	Membre du conseil	Education & research	460
Bell AG	Mitglied des Stiftungsrates	Industry, construction & agriculture	461
Seniorenuniversität Bern	NA	Education & research	462
United Digital Group UDG	Beirat	Consulting, public relations, legal & trust	463
Stiftung zur Förderung des Antikenmuseums Basel	Präsident des Stiftungsrates	Society, Social, Culture & Sports	464
Pro Entomologia, Naturhistorisches Museum, Basel	Mitglied des Stiftungsrates	Society, Social, Culture & Sports	465
Swedish Foundation for Strategic Research, Sweden	Expert externe pour 3 projets de recherche	Education & research	466
Postfinance	Mitglied Stiftungsrat Ombudsmann	Financial industry & insurances	468
Association ARMINES, Paris, France	Conseil scientifique, domaine de la métallurgie	Education & research	469
Holcim Group Services Ltd/ Holcim Technology Ltd, Zurich	Board Member, Academic Committee Member Holcim Foundation	Commerce, trade & services	470
Canton de Vaud, Service Immeubles, Patrimoine et Logistique, Lausanne	Parlement vaudois, mission de stabilité	Politics, administration, justice system & security sector	471
BEG Management AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	473
Académie internationale des sciences et technique du sport	Mandat	Education & research	474
Senozon (Schweiz) AG	VR-Mandat der Spin-Off-Firma	Consulting, public relations, legal & trust	475
Head of research Roche Sequencing	Sponsored research agreement from Roche	Pharma & health	476
SNF Ambizione Program	Panel Member	Education & research	477
INFN, Italie	Scientific Committee, Frascati INFN National Laboratories	Education & research	478
EELCEE Ltd., Korea	Membre du conseil d'administration	Industry, construction & agriculture	479
Helmholtz Zentrum für Umweltforschung (UFZ)	Member Scientific Advisory Board	Education & research	480
CSSI Bern	Conseil Suisse de la Science et de l'Innovation	Politics, administration, justice system & security sector	481
Rheon Medical SA, Préverenges	Administrateur et director ad interim	Pharma & health	482
KAUST, Jeddah	Invited Professor	Education & research	483
EVATEC Holding und EVATEC AG	VR-Mandat	Financial industry & insurances	484
Universität Bern	Titularprofessor für Arbeitsrecht	Education & research	485
King Abdulaziz University (KAU), Jeddah, Saudi Arabia	Distingushed Adjunct professor (Jusqu'à Octobre 2014)	Education & research	486
Nestlé Research, Vevey	Consulting	Industry, construction & agriculture	487
Hasler Transport AG	Verwaltungsrat	Energy, environment & mobility	488
Qatar fondation	Consulting work	Education & research	489
Foundation of Talents	NA	Society, Social, Culture & Sports	490
SNF Bern	Diverses commissions du SNF	Education & research	491
Swiss GAAP FER	Präsident der Fachkommission	Not classifiable	492
Alpes Lasers S.A.	VR-Mandat	Industry, construction & agriculture	493
PPUR - EPFL	Membre du Conseil de Fondation, vice-président ; domaine : éditions scientifiques	Education & research	494
ITMP AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	495
Philogen S.P.A.	VR-Mandat	Pharma & health	496
Übergangsrat der UPD	NA	Pharma & health	497
Università di Padova, Italie	Chair of hydraulic constructions, part-time (10%)	Education & research	498
Coltene, Altstätten	Mitglied des Verwaltungsrates	Pharma & health	499
Schweizerischer Nationalfonds	Comité de direction du PNR 66 Ressource bois	Education & research	500
BSL Lausanne	Berater	Education & research	501
Schweizerische Mobiliar Holding AG	VR-Mandat	Financial industry & insurances	502
WHO, Geneva	NA	Pharma & health	503
Tai Monkey Project (Côte d'Ivoire)	Co-directeur	Education & research	504
Rat für Raumordnung	NA	Politics, administration, justice system & security sector	505
MÖRK GmbH & Co. KG, Leonberg	Beirat	Commerce, trade & services	506
Board Member, Institute for Int'l & Development Econ.	NA	Education & research	507
Schweizerische Gesellschaft für Organisation	Stiftungsratmitglied	Education & research	508
Verein Euresearch	NA	Education & research	509
Hochschule für Wirtschaft Zürich	Dozent	Education & research	510
Max Schmidheiny zugunsten der Universität St. Gallen und ihrer Institute	Stiftungsrat	Education & research	511
Elsevier, UK	Editor in chief, Cement and Concrete Research	Education & research	513
L3S Advisory Board	Chairman of L3S Advisory Board	Education & research	514
Krebsforschung Schweiz	NA	Pharma & health	515
Swiss Society for Optics and Microscopy SSOM	Board member	Education & research	516
Fachhochschule Nordwestschweiz	Dozent	Education & research	517
Gesellschaft für Wissenschaftstatistik, EFI, Berlin	Expertise	Education & research	518
Seismo Verlags AG, Zürich	Mitglied des Verwaltungsrates	Media & communication	519
Science Foundation Ireland	Expertise de projet	Education & research	520
Fairnez Inc., USA	Scientific Advisor / Consultant	Consulting, public relations, legal & trust	521
Swiss Life Holding Ltd	Member of the Board of Directors	Financial industry & insurances	522
Prager Dreifuss AG	Partner	Consulting, public relations, legal & trust	523
HEM Bâle	Membre du conseil scientifique	Education & research	524
SMBS	Dozent Qualitäts- und Prozessmanagement	Education & research	525
sanofi-aventis	Conseil scientifique et orateur	Pharma & health	526
Biovertis AG, Wien	Mitglied des Aufsichtsrats	Pharma & health	527
Ecole Nationale Supérieure d'architecture et de paysage de Lille, France	Membre comité scientifique	Education & research	528
FHS St. Gallen	Dozent	Education & research	529
PIQUR Therapeutics AG, Basel	Mitglied des Verwaltungsrates	Pharma & health	530
EGT AG	Mitglied des Aufsichtsrats	Energy, environment & mobility	531
GETec KG, Langenlois, Austria	Technical consultant	Industry, construction & agriculture	532
Centre Européen de Calcul Atomique et Moléculaire (CECAM), Lausanne, CH	Member of the Scientific Advisory Committee as part of the selection of CECAM workshop annual program	Education & research	533
Zivilprozessrechtslehrervereinigung	Mitglied	Politics, administration, justice system & security sector	534
Institut Mines-Télécom, France	Membre du comité scientifique du LINCS	Education & research	535
Novartis, Forschungsstiftung	NA	Pharma & health	536
Pix4D EPFL Innovation Park	Consulting	Technology	537
University of Bern	Bern-Rochester MBA, Teaching	Education & research	538
Schweizerischen Akademie der Technischen Wissenschaften	Mitglied	Education & research	539
Adolphe Merkle Institute, Université de Fribourg	Membre du Conseil Scientifique	Education & research	540
GLORAD	Gründer, Co-Director	Education & research	541
Université catholique de Louvain-la-Neuve (B)	Charge d'enseignement (7h)	Education & research	542
Synthena AG	NA	Pharma & health	543
BEG Business Engineering Group AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	544
G24 Power	Scientific Advisor	Energy, environment & mobility	545
Ecole Normale de Paris (ENS)	Président du conseil scientifique	Education & research	546
Dr. Josephine de Karman-Stiftung	NA	Education & research	547
Nanotec, Thailand Science Park, Thailand	Member Advisory Committee	Education & research	548
Union Européenne	ERC Consolidator Grants panel dealing with Products and Processes Engineering	Politics, administration, justice system & security sector	549
Amazentis, Ecublens, Switzerland	Nutraceuticals - SAB member	Technology	550
Singapore Management University	Lehrbeauftragter	Education & research	551
CIHA	NA	Not classifiable	552
Stiftung Archiv für schweizerisches Abgaberecht	NA	Society, Social, Culture & Sports	553
World Economic Forum	NA	Commerce, trade & services	554
Infralab SA Romanel, Lausanne	Conseil d'administration	Commerce, trade & services	555
High Tech Gründerfonds	Diverse gutachterliche und beratende Tätigkeiten	Financial industry & insurances	557
Anokion SA, Lausanne	Chief Scientific Advisor, Board of Directors	Pharma & health	558
EuroPCR	Course Director	Pharma & health	559
Behavioural Finance Solutions GmbH	Partner	Technology	560
IMEC Belgium	Lecture IMEC /Beyond CMOS (0.5 day)	Education & research	561
Schweizer Paraplegiker Stiftung	Stiftungsrat	Pharma & health	562
Verkehrsbetrieb LIECHTENSTEINmobil	VR-Mandat	Energy, environment & mobility	563
Agence Nationale de la Recherche (ANR), Paris	Evaluation de projets de recherche	Education & research	564
Bergbahnen Disentis	Verwaltungsratsvizepräsident	Energy, environment & mobility	565
Marie Heim-Vögtlin-Programm des Schweizerischen Nationalfonds, Abteilung Geistes- und Sozialwissenschaften	Gutachterin	Education & research	566
RTS - Radio Télévision Suisse	Participation, en tant que président, au Jury du concours d'architecture Campus RTS sur le site de EPFL	Media & communication	567
Office fédéral des routes, Sion	Ingénieur-expert dans le cadre du bétonnage du Tunnel Eyholz à Visp VS	Energy, environment & mobility	568
Promerit Holding AG	Aufsichtsratsvorsitzender	Consulting, public relations, legal & trust	569
Stiftung Kinderbetreuung im Hochschulraum Bern KIHOB	NA	Society, Social, Culture & Sports	570
Conseil de l'EMBL	Membre	Education & research	571
Haut-Lac Ecole internationale bilingue, St-Légier, CH	Membre indépendant du conseil d'administration de l'établissement scolaire privé Haut-Lac (1 séance)	Education & research	572
REHA Klinik Heiligenschwendi	Stiftungsrat	Pharma & health	573
Fond National pour la Recherche en Suisse, Bern	Conseiller national, Présedent de la division 2 du Fond National	Education & research	574
Commune de Prengins	Commission d'urbanisme et architecture	Politics, administration, justice system & security sector	575
Kistler Holding AG	Verwaltungsrat	Industry, construction & agriculture	576
Projet européen ESTEEM	Expert projet accès transnationaux	Education & research	577
Hans Buss-Stiftung Basel	Mitglied des Stiftungsrates	Education & research	578
Ondax Corp., USA	Board observer (resigned on 25.12.14)	Industry, construction & agriculture	579
Ernst Krenek Privatstiftung, Krems, Österreich	Mitglied des Stiftungsrates	Society, Social, Culture & Sports	580
Peter Häberle-Stiftung an der Universität St. Gallen	Vizepräsident des Stiftungsrats	Education & research	581
Universitätsspital Basel, Forschungsstiftung	Mitglied des Stiftungsrates	Pharma & health	582
Universitätskinderklinik Zürich	Oberassistentin an der Abteilung für Endokrinologie und Diabetologie	Pharma & health	583
Leibniz-Informationszentrum Wirtschaft	Wissenschaftliche Beirätin	Education & research	584
Cranes Sofrwares International Limited, India	Non-executive director	Technology	585
Schweizer Tanzarchiv	NA	Society, Social, Culture & Sports	586
Hügli AG	Mitglied des Verwaltungsrats	Industry, construction & agriculture	587
Nussbaum Gruppe	Verwaltungsratspräsident	Industry, construction & agriculture	588
European Commission, Brussels	Review projet EC SOI-HITS (1 jour)	Politics, administration, justice system & security sector	590
SystemsX.ch	Executive Board	Technology	591
Schweizer Gesellschaft für Hotelkredit	Verwaltungsratspräsident	Commerce, trade & services	592
Grand Conseil NE	Député	Politics, administration, justice system & security sector	593
Kursaal Bern AG	NA	Commerce, trade & services	594
Fondation pour la recherche dans le cadre de l'Etude Suisse de Cohorte VIH	NA	Education & research	595
Meyer Burger Technology AG	VR-Mandat	Financial industry & insurances	596
European Group of Risk and Insurance Economist EGRIE	Präsident	Education & research	597
European Association of National Research Facilities Laboratories	Member	Education & research	598
University of Oulu	Guest lecturer, summer 2014	Education & research	599
Humabs Holding GmbH	Geschäftsführer	Pharma & health	600
Eur. J. Org. Chem., Wiley	Editorial board member	Media & communication	601
Startnetzwerk Thurgau	«Pate» für Jungunternehmer	Commerce, trade & services	602
Verlag Scheidegger und Spiess AG	VR-Präsidium	Media & communication	603
SEFRI, CERN, Genève	Membre du conseil du CERN	Education & research	604
QGel SA, PSE, Lausanne	Board member and advisor	Technology	605
UNSW Australia, Australian Center for Commercial Mathematics, Sydney	Advising on traffic management for the city of Sydney	Education & research	606
PSE-D, Ecublens, CH	Frontiers Research Foundation, President	Politics, administration, justice system & security sector	607
F.J. Aschwanden AG, Lyss	Conseil d'administration (jusqu'au 31.12.2014)	Commerce, trade & services	608
Schweizerische Vereinigung für Politikwissenschaft	Präsident	Education & research	609
Swiss Society for Earthquake Engineering and Structural Dynamic, Zürich	Board member	Commerce, trade & services	610
SWANtec Holding AG	NA	Financial industry & insurances	611
Swedish Research Council	Chairman of the Committee for Development Research	Education & research	612
Une administration de faillite non spécifié	Mandat	Media & communication	613
Peka Pinselfabrik AG	Verwaltungsratspräsident	Industry, construction & agriculture	614
Federal Office for the Environment FOEN	Expert Nanotechnology and Nanomaterials, Nanoregulation (Nanoreg WP2)	Energy, environment & mobility	615
Off. féd. de l'Environnement, Berne-Ittigen	Membre de la commission fédérale consultative pour la recherche environnementale	Politics, administration, justice system & security sector	616
VR Verkehrsbetriebe Biel	Vizepräsident des Verwaltungsrates	Energy, environment & mobility	617
Roche, Basel - 10/01/2014	Seminar-Roche	Pharma & health	618
Amazentis	Founder & Chairman of the BOD	Technology	619
Hans-Sigrist-Stiftung	NA	Education & research	620
Science	Member, Board of reviewing editors (01.2010 - present)	Not classifiable	621
SITEM	NA	Pharma & health	622
Gimalon AG	VR-Präsidium	Technology	623
Particulate	Gesellschafter	Not classifiable	624
SNSF, Berne	Committe member - Advanced Post-doc mobility	Education & research	625
Schweizerische Gesellschaft für Marketing	Vorstandsmitglied	Media & communication	626
St. Galler Kantonalbank AG	Verwaltungsrat	Financial industry & insurances	627
Centre Suisse d’Electronique et de Microtechnique (CSEM)	NA	Education & research	628
Endora Tech AG	VR-Mandat	Technology	629
Zühlke	Verwaltungsrat	Consulting, public relations, legal & trust	630
School of Engineering, Brown University	Adjunct Professor (collaborations on US-funded research. Currently 10% is charged to one grant)	Education & research	631
ALID AG	Mitglied Verwaltungsrat	Financial industry & insurances	632
Swiss Nanoscience Institute, Basel	Proposal reviewing ARGOVIA	Education & research	633
Lombard Odier, Geneva	Advisory Board	Financial industry & insurances	634
Powzy	Board Member	Media & communication	635
Holcim, CH	Consultant to innovation committee	Industry, construction & agriculture	636
Haas Food Equipment GmbH	Mitglied des Innovationsbeirats	Industry, construction & agriculture	637
Berner Diabetes Gesellschaft	NA	Pharma & health	638
American Institute of Phyiscs Publishing (AIPP), NY, USA	Editeur in chief of Structural Dynamics	Media & communication	639
Fond National Suisse, Berne	Expertises	Education & research	640
SFI, Zürich	2-hour Exec. Education International Wealth Management Retreat	Education & research	641
Universität Bern, Forschungsstiftung	NA	Education & research	642
PPUR, RLC, Lausanne	Président du Conseil de fondation	Media & communication	643
Akkreditierungsagentur FIBAA	Gutachter	Politics, administration, justice system & security sector	644
SNF, Bern	Expertise	Education & research	645
BEN Energy AG	VR-Mandat	Technology	646
Johanna Dürmüller-Bol Stiftung	NA	Society, Social, Culture & Sports	647
CEA/DRT, Grenoble, France	Consulting	Education & research	648
Staatsgerichtshof, Fürstentum Liechtenstein	Ersatzrichter	Politics, administration, justice system & security sector	649
Business Ethics Journal Review	Mitglied des Editorial Advisory Boards	Media & communication	650
UKBB	Mitglied des Verwaltungsrates	Pharma & health	651
PSE A, EPFL	Founder Composyt Light Lab	Education & research	652
Fonds de Recherche Luxembourg	Expertise de projet	Education & research	653
Tourismus Services Ostschweiz AG	Verwaltungsratspräsident	Commerce, trade & services	654
Board Member, European Trade Study Group	NA	Education & research	655
EPSRC, UK	proposés référés	Education & research	656
Association Climate-KIC	Vertreter der ETH im Leitorgan	Energy, environment & mobility	657
Lean Analytical Association	Board Member	Consulting, public relations, legal & trust	658
Schweizerischer Nationalfonds (SNF)	Forschungsrätin	Education & research	659
Rehaklinik Heiligenschwendi	NA	Pharma & health	661
ARE, Office fédéral du développement territorial, Berne	Mandat privé pour l'évaluation de la durabilité de projets - Aspects économiques	Energy, environment & mobility	662
Tisca Tiara AG	Verwaltungsrat	Industry, construction & agriculture	663
Istituto Veneto di Scienze, Lettere e Arti (IT)	Secretary, Class of Sciences	Education & research	664
Istituto Italiano di Tecnololgia (IIT)	President, Scientific and Technological Committee	Education & research	665
Wright Foundation	Membre du comité	Society, Social, Culture & Sports	666
CSEM	Part of the presidential duties	Education & research	667
Leibniz Institute for Neurobiology, LIN, Magdeburg, Germany	Scientific Advisory Board Member	Education & research	669
Business and Human Rights Journal	Co-Editor-in-Chief	Media & communication	670
Institut Curie Paris	Membre de comité scientifique	Education & research	671
Fondation R&R Haenny, SAV, Lausanne	Président du conseil de fondation	Education & research	673
Etat français, Lyon	Conseil d'administration ENTPE (non rémunéré)	Not classifiable	674
Flughafen ZHAG, Zurich	Member of Advisory Board, The Circle at Zurich Airport	Energy, environment & mobility	675
International School Schaffhausen ISSH	Stiftungsrat	Education & research	676
Technical University München, Germany	Guest lecturer (spring 2014)	Education & research	677
SSC (Société Suisse de Chronométrie), Neuchâtel	Membre	Industry, construction & agriculture	678
Freiwillige Akademische Gesellschaft (FAG)	Mitglied	Education & research	679
Eawag	Adjunct scientist	Education & research	680
Rochester Bern Foundation Board	NA	Education & research	681
Institute of Translational Molecular Imaging Foundation, Genève	Chairman of the Board	Education & research	682
ResponsAbility	Member of Technical Assistance Committee	Financial industry & insurances	683
Coopérative St-Thomas, Lausanne	Administrateur	Society, Social, Culture & Sports	684
Fondazione Ettore e Valeria Rossi	NA	Society, Social, Culture & Sports	685
Novamet Sarl, Lausanne	Associé	Consulting, public relations, legal & trust	686
Bruno Marchand, Lausanne	Bruno Marchand Architecture Urbanisme et aménagement du territoire	Not classifiable	687
Venture Incubator Ltd	Verwaltungsrat	Financial industry & insurances	688
Contour Global, New York, für Methan Extraktion Lake Kivu	Berater	Energy, environment & mobility	689
Stiftung Social Funders	Mitglied des Beirats	Politics, administration, justice system & security sector	690
Pro Helvetia	Mitglied der Fachkommission & Jurymitglied	Society, Social, Culture & Sports	691
Centre de microscopie de l'Université de Saragosse, Espagne	Comité d'expert	Education & research	692
Schärer Rechtsanwälte	Rechtsanwältin	Consulting, public relations, legal & trust	693
Hylomorph AG	VR-Mandat	Pharma & health	694
Stiftung zur Förderung des Schweizerischen Wirtschaftsarchivs am WWZ der Universität Basel	Mitglied des Stiftungsrates	Education & research	695
Welz AG	Verwaltungsrat	Industry, construction & agriculture	696
KoR Zeitschrift für internationale und kapitalmarktorientierte Rechnungslegung	Mitglied des Fachbeirats	Media & communication	697
World Bank	Background Note on the Impact of Banking Crises on Households in Emerging Europe for World Development Report 2014	Financial industry & insurances	698
Konzernverantwortungsinitiative	Mitglied des Initiativkommitees	Society, Social, Culture & Sports	699
VR Trägerschaft ParkInnovAARE	Member	Commerce, trade & services	700
keoto AG	VR-Mandat	Industry, construction & agriculture	701
Verwaltungsgericht Zürich	Ersatzrichterin	Politics, administration, justice system & security sector	703
Clairfield International GmbH, Frankfurt/Main	Fachbeirat	Consulting, public relations, legal & trust	704
Springer-Verlag, New York	Editor-in-chief of Discrete & Computational Geometry (pays a stipend)	Media & communication	705
Spital-Management Bern AG	NA	Pharma & health	706
Sentiment Studies GmbH	Vorsitzender der Geschäftsführung	Education & research	707
Hilti	Leitung der Entwicklungsabteilung für Mechatronik	Industry, construction & agriculture	708
UCTec Beteiligungsgesellschaft AG	VR-Mandat	Financial industry & insurances	709
Nebion AG	VR-Mandat	Technology	710
Moser-Nef-Stiftung	NA	Education & research	711
SpiroChem AG	VR-Mandat	Technology	712
Walter Hochstrasser-Stiftung	Stiftungsrat	Education & research	713
University of Vienna	10-hour PhD class	Education & research	714
CSEM, Neuchatel	Scientific Advisory Board: Cooperation CSEM-EPF	Education & research	715
Kanton Freiburg	Justizrat	Politics, administration, justice system & security sector	716
Solothurner Spitäler AG	NA	Pharma & health	717
Mission HES-SO, Delémont	Expert externe, Réseau de compétence Economie et Management	Education & research	718
OZWE, Lausanne	Gérance	Technology	719
ACP Advanced Circuit Pursuit AG, Zürich	Technical consulting	Industry, construction & agriculture	720
ONLINE Control Sàrl, Lausanne	Consulting, conseil scientifique	Technology	721
Schweizer Wissenschafts- und Innovationsrat	Präsidentin	Education & research	722
Startfeld Diamant	Expertenjury Startfeld und Vorjury	Commerce, trade & services	724
Schweizerischer Nationalfonds, Stiftungsrat	NA	Education & research	725
Herzog Kull Group	Mitglied des Nachhaltigkeitsbeirats	Consulting, public relations, legal & trust	726
Immersive Vision Technologies, PSE, Lausanne	Founder	Technology	727
Stiftung für Schweizerische Rechtspflege	Mitglied des Stiftungsrats	Politics, administration, justice system & security sector	728
Université de Berne	Enseignement	Education & research	729
Commune de Pully	Commission d'architecture et d'urbanisme	Politics, administration, justice system & security sector	730
IDHEAP, Chavannes-près-Renens	Membre du conseil de fondation	Education & research	731
Koemei, SA (Idiap's spin-off)	Board of directors and shareholder	Technology	732
CSEM SA, Neuchâtel	Conseil scientifique, membre	Education & research	733
Metro Mid-Atalantic Biotech, Birmingham, MI, USA	NAD metabolism - SAB member	Technology	734
Zypresse AG	VR-Mandat	Commerce, trade & services	735
MPI Max-Planck-Institut für Festkörperforschung, Stuttgart	Directeur Max-Planck-Institut (occupation principale) et fonctions associés	Education & research	736
SIB Swiss Institute of Bioinformatics, Lausanne	Mitglied des Board of Directors	Education & research	737
Espace Cauterets, Mairie, Cauterets	Prise en compte du risque de reptation sur la télécabine du Lys, pylônes P9-11	Politics, administration, justice system & security sector	738
Kardiologie Interlaken - Unterseen AG, Verwaltungsrat	Verwaltungsrat	Pharma & health	739
Fondation Elemo	Membre du Conseil de la Fondation	Education & research	740
Bakker & Blanc Architectes, Lausanne	Architecte EPFL-FAS-SIA	Industry, construction & agriculture	741
Bakker & Blanc Architectes Lausanne, Zurich	CEO, Architect	Industry, construction & agriculture	742
Fonds National Scientifique Suisse	Membre du Conseil de la Recherche	Education & research	743
Brandinvest AG, Verwaltungsrat	NA	Financial industry & insurances	744
Biovalley Basel	Mitglied des Management Board	Commerce, trade & services	745
Journal of the American College of Cardiology Cardiovascular Interventions	Associated Editor	Pharma & health	746
Fliegerschule St.Gallen-Altenrhein	Fluglehrer	Energy, environment & mobility	747
HEAD Genève	Enseignement	Education & research	748
Bitsave AG, Kehrsatz	Präsident des Verwaltungsrates	Technology	749
ENS Paris	Professeur	Education & research	750
Advanced Silicon SA, Lausanne	Consulting	Industry, construction & agriculture	751
CodeTickler, CA, USA	CEO and President (while on leave)	Technology	752
BlueLion Stiftung	Stiftungsrat	Technology	753
Amazentis, Ecublens	Consulting	Technology	754
Leibnitz Association, Germany	Expertise scientifique, Institut de recherche	Education & research	755
Genossenschaft Migros Ostschweiz	Präsident Verwaltungsrat	Commerce, trade & services	756
BMI-Lab	Gründer und Verwaltungsrat	Education & research	757
ANF SA, Lausanne	Membre comité de conseil Active Niche Funds (fonds dédié au Solaire)	Financial industry & insurances	758
UEC gemeinnützige GmbH	Geschäftsführender Gesellschafter	Education & research	759
IST Funds Swiss Healthcare Loans	Mitglied des Investment Committee	Financial industry & insurances	760
Das Demographienetzwerk ddn	Mitglied des Vorstandes	Society, Social, Culture & Sports	761
Max Geldner-Stiftung, Basel	Mitglied des Stiftungsrates	Society, Social, Culture & Sports	762
Fonds National Suisse	Membre de la commission de sélection des SNSF, Starting Grants 2014	Education & research	763
Think Tank Thurgau	Board Member	Society, Social, Culture & Sports	764
Femtotools AG	VR-Mandat	Industry, construction & agriculture	766
Faculty of Architecture, Slipakorn University, Bankok	Workshop	Education & research	767
SVIT Swiss Real Estate School SA, Lausanne	Partenariat pour organiser une journée de séminaire/année	Education & research	768
Mahab Ghoods, Theran, Iran	Panel of experts, Haraz Dam & HPP	Consulting, public relations, legal & trust	769
Kistler Instrumente AG	Verwaltungsrat	Industry, construction & agriculture	770
Leave at UBC	Dean and Prof. Faculté Applied Sciences	Education & research	771
Bauart Architekten und Planer Holding AG, Bern	Membre du conseil d'administration	Industry, construction & agriculture	772
Geofluidics LLC	Geschäftsführer	Industry, construction & agriculture	773
BIZ-Stiftung c/o Dr. Carlo Bertossa, Basel	Mitglied des Stiftungsrates	Not classifiable	774
vescore Solutions, St. Gallen	Mitglied des Verwaltungsrates	Consulting, public relations, legal & trust	775
Stucky SA, Renens	Beratung, vidange de fonds - surélévation du barrage Cambambe, Angola	Commerce, trade & services	776
Lurati Muttoni Partner, Studio d'ingegneria SA, Mendrisio	Membre du Conseil d'administration et employé (taux d'activité 10%)	Commerce, trade & services	778
Economic development Board (EDB), Raffles Tower, Singapour	Panel, clean energy research program, Singapour	Commerce, trade & services	779
Schweizerische Studienstiftung	Präsident des Stiftungsrates	Education & research	780
CID GmbH	Beirätin, Beratung	Technology	781
Ecole Nationale Supérieure du Paysage, Versailles, France	Membre comité scientifique	Education & research	782
EXIST – Existenzgründungen aus der Wissenschaft	Vorsitzender des Beirats	Commerce, trade & services	783
Stiftung Mensabetriebe der Universität Bern	NA	Commerce, trade & services	784
Académie suisse de la magistrature	Président	Education & research	785
Stiftung Geobotanisches Forschungsinstitut Rübel	Stiftungsrat	Education & research	786
Kazan Federal University, Russia	Professeur invité (2 interventions d'une semaine)	Education & research	787
Swiss Informatics Research Association	Vorstandsmitglied/Kassierer	Education & research	788
Foundation TALENT	Trésorière. Aide à l'enseignement en Tanzanie.	Education & research	789
Imperial College Business School	Visiting Professor	Education & research	790
Datwoma AG	VR-Mandat	Financial industry & insurances	791
Bundesamt für Statistik	Vorsitz EG Wirtschaftsstatistik	Politics, administration, justice system & security sector	792
Swiss Hydrological Commission, Swiss Academy of Sciences	Member	Politics, administration, justice system & security sector	793
AtlanticLux Lebensversicherung S.A.	Verwaltungsrat	Financial industry & insurances	794
Stiftung Infektiologie beider Basel	Mitglied des Stiftungsrates	Technology	795
IBRO	Executive Committee Member	Education & research	796
IMEC, Leuven, B	IMEC Techn. Advisory board	Education & research	797
Brain forum	Scientific Advisory Board Member	Education & research	798
Power Vision Engineering Sàrl, Ecublens	Associé minoritaire dans la start-up d'un ancien doctorant	Industry, construction & agriculture	799
National Institute for Subatomic Physics, Amsterdam	Chair of the Scientific Advisory Committee	Education & research	801
Stiftung Sozialkasse der Universität Bern	NA	Society, Social, Culture & Sports	802
Swiss Energy and Climate Summit	Advisory Board	Energy, environment & mobility	803
Nestlé	Verwaltungsrat	Industry, construction & agriculture	804
American Chemical Society, Washington, USA	Associate Editor, American Chemical Society Journal Journal of Chemical Theory and Computation	Education & research	805
Selbständig	Unternehmensberater	Not classifiable	806
Walder	NA	Commerce, trade & services	807
McAndrews, Held and Malloy, Chicago, USA	Legal consulting	Consulting, public relations, legal & trust	808
Morphogene, SA, Préverenges	Board of Directors	Pharma & health	809
Baimedia AG, Basel	Mitglied des Verwaltungsrates	Not classifiable	810
Novartis Consumer Health Foundation, Nyon	Scientific Board (no income)	Pharma & health	811
Innovative Strategies GmbH	Geschäftsführer	Consulting, public relations, legal & trust	812
Création Baumann	Verwaltungsrat	Industry, construction & agriculture	813
Universitätsklinikum Heidelberg	Mitglied des Aufsichtsrates	Pharma & health	814
Freiburger Spital	Neurologe	Pharma & health	815
CERN Council, Genève	CERN Scientific Policy Committee	Education & research	816
BTV Leasing Schweiz AG	Verwaltungsratspitglied	Financial industry & insurances	817
Univ Bern	Scientific Advisory Board Clinical Research Department	Education & research	818
Janser Krebs-Stiftung	NA	Pharma & health	820
Zeitschrift für Management	Mitglied im Herausgeberbeirat	Media & communication	821
Selexis	Mandat	Pharma & health	822
Canton de Vaud SIPAL	Expert/conseiller pour le suivi de questions liées à la structure porteuse de la Cathédrale de Lausanne	Politics, administration, justice system & security sector	823
Eidgenössische Finanzmarktaufsicht FINMA	Verwaltungsrat	Politics, administration, justice system & security sector	825
International Society for Business, Ethics and Economics ISBEE	Mitglied des Executive Committee	Commerce, trade & services	826
Kanton St.Gallen	Experte im Rahmen der Weiterentwicklung der schweizerischen Hochschul- und Bildungsgesetzgebung wie auch der Hochschulgesetzregelung	Politics, administration, justice system & security sector	827
Istituto Besta/Centro di Nanomedicina, Milano, Italy	Scientific advisor	Education & research	828
Swiss Re	Membre du conseil d'administration	Financial industry & insurances	829
Stiftung Haus der Universität Bern	NA	Education & research	830
Cornerstone Research (NYC)	Expert Witness Consulting	Consulting, public relations, legal & trust	831
UpToDate	Section Editor	Pharma & health	832
Fondation pour l'histoire de la poste	Membre du conseil	Society, Social, Culture & Sports	833
DNF, UNIL, Lausanne	Enseignement de cours Master	Education & research	834
CERN, Genève	Chair of the Scientific Policy Committee for the CERN Council	Education & research	835
Stiftungsrat FRIAS	Mitglied des Stiftungsrates	Education & research	836
VBG Verkehrsbetriebe Glattal AG	VR-Mandat	Energy, environment & mobility	837
Psychiatriemuseum Bern	NA	Society, Social, Culture & Sports	838
GESIS Leibniz Institut	NA	Education & research	839
The Walt Disney Company (Switzerland) GmbH	Direktor (wissenschaftlicher Co Direktor)	Society, Social, Culture & Sports	841
Sanofi, Barcelona - 17/11/2014	Advisory Board Meeting - Sanofi	Pharma & health	842
European Cardiovascular Research Institute (ECRI), Aufsichtsrat	Aufsichtsrat	Education & research	843
BSA CH, Basel	Committee Member BSA Forschungsstipendium	Industry, construction & agriculture	844
Enairys PSE, Lausanne	Conseil scientifique	Energy, environment & mobility	845
Academy of Management	Board of Governors	Education & research	846
FRM-II, Munich	Scientific Advisory Board	Education & research	847
RBA-Bankengruppe	Mitglied des Prüfungsausschusses	Financial industry & insurances	848
Olma Messen St. Gallen	Verwaltungsrat	Industry, construction & agriculture	849
Stiftung CCMT	President	Pharma & health	850
Fondation pour l’Etude des Eaux du Léman	Member of the board	Education & research	851
Scuola superiore Sant'Anna, Italy	Prof. Part-time	Education & research	852
Stiftung Institute for Value-based Enterprise, Fribourg	Mitglied des Stiftungsrates	Consulting, public relations, legal & trust	853
University of Western Australia Business School	Honorary Research Fellow	Education & research	854
Carnegie Mellow University, USA	Adjunct Professor/Prof. Titulaire (teaching)	Education & research	855
Jean-Pierre Miéville-Stiftung	NA	Education & research	856
Université de Fribourg	Cours en science de l'environnement	Education & research	857
Bernische Stiftung für krebskranke Kinder und Jugendliche	NA	Pharma & health	858
MIUR - Ministero Istruzione Università Ricerca	Participation à la Commission pour l'habilitation scientifique nationale	Education & research	859
Hoval Holding AG	VR-Mandat	Financial industry & insurances	860
PlayfulVision EPFL	Advising	Technology	861
Fondation du prix Omega, Neuchâtel	Présidence de la Fondation du Prix Omega, Prix Omega scientifique et Prix Omega Etudiants	Education & research	862
Interhoval AG	VR-Mandat	Financial industry & insurances	863
Société BioMérieux	Membre du Conseil d'Administration	Pharma & health	864
Swiss National Science Foundation - Sinergia	Member and expert to the Sinergia section	Education & research	865
Konfuzius Institut	Vorstandsmitglied	Education & research	866
Gemeinnützliches Projekt für erneuerbare Energien SunRaisers	Gründerin und Projektleiterin	Energy, environment & mobility	867
ALSTOM Inspection Robotics AG	VR-Mandat	Industry, construction & agriculture	868
Lifä Immobilien AG	VR-Mandat	Commerce, trade & services	869
Finanzmarktaufsicht Liechtenstein	Verwaltungsratsvizepräsident	Politics, administration, justice system & security sector	870
Board Foundation	Verwaltungsratsvizepräsident	Education & research	871
IGH Montpellier	Chaire du conseil scientifique	Education & research	872
Uni de Bâle	expertise examen doctorat, science de la vie	Education & research	873
G-Therapeutics SA	Création de Start-up	Pharma & health	874
Gensuisse	Membre du comité	Society, Social, Culture & Sports	875
Swiss Academy of Sciences, Bern	Membre du groupe de travail Forum for climate and global change ProClim	Education & research	876
Stiftung für klinisch-experimentelle Tumorforschung Bern	NA	Education & research	877
Schweizer Bund	Mitglied der Oberaufsichtskommission Berufliche Vorsorge	Politics, administration, justice system & security sector	878
IARDA GmbH	Geschäftsführer	Consulting, public relations, legal & trust	879
Jakob Spreng AG	NA	Financial industry & insurances	880
A*star Singapore, Inst. High Performance Computing	Scientific Advisory Board (2 days/year + some report writing)	Education & research	881
Fondation IDIAP	Member of Conseil Fondation IDIAP	Education & research	882
Elbet AG	Mitglied des Verwaltungsrats	Industry, construction & agriculture	883
BG Consulting, Lausanne	Consultancy on statistical analysis of accidents in French motorway tunnels	Consulting, public relations, legal & trust	884
SA Dominique Perrault Architecture, Chatelaine	Architecture & gestion de projets	Industry, construction & agriculture	885
Hexpol AB, Malmö, Suède	Membre du conseil d'administration	Technology	886
Contego Laboratories GmbH	Geschäftsführer	Technology	888
University of Piraeus, Grèce	Scientific Consultant in 2 projects, THALES, Greece	Education & research	889
Universität Liechtenstein	Mitglied des Universitätsrats	Education & research	890
PhytoDia, Illkirch, France	Nutrition & Phytochemistry - Founder & Consultant	Pharma & health	891
2014 IARU Congress, Copenhagen, Denmark	Member of organizing team for one session (05.2013 - 11.2014)	Education & research	892
Ricola Familienholding AG	Verwaltungsratssekretär	Industry, construction & agriculture	893
Bicycle Therapeutics, Cambridge, UK	Co-founder and shareholder of the start-up’	Technology	894
Canton de Tessin	Mandat d'expert pour un pont en matériaux composites	Politics, administration, justice system & security sector	895
Materials Center Leoben Forschung, Austria	Member International Scientific Advisory Board (ISAB) of the COMET K2 Center	Education & research	896
ANR, Paris	Evaluation Agence de la recherche, France	Education & research	897
Midatech, UK	Head, Scientific Advisory Board	Pharma & health	898
Fondazione Eccles	NA	Education & research	899
Barros, Letelier & Gonzalez Attorneys at Law, Chile	Expertise du rendement des turbines de la centrale de La Higuera, Chili, dans le cadre d'une procédure juridique	Consulting, public relations, legal & trust	900
Kanton Bern	Ersatzmitglied für das Obergericht	Politics, administration, justice system & security sector	901
Promerit Management Consulting AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	902
Chancellerie non spécifié	Mandat	Politics, administration, justice system & security sector	903
Alexander von Humboldt Institut für Internet & Society	International Advisory Board	Education & research	904
H2 Energy, Zürich	Membre du conseil	Energy, environment & mobility	905
Sanalpin AG	VR-Präsidium	Pharma & health	906
Basler Kantonalbank, Stiftung zur Förderung von Forschung und Unterricht, Basel	Mitglied des Stiftungsrates	Education & research	907
Several PhD thesis	Examiner of several PhD Thesis	Not classifiable	908
Muttoni & Fernandez Ingénieurs Conseils SA, Ecublens	Expert consulting for OFROU	Commerce, trade & services	910
Reykjavik University	Lehrauftrag Enterprise Architecture	Education & research	911
Mobiliar Genossenschaft	NA	Financial industry & insurances	912
Marcel-Benoist	Stiftungsratsvizepräsident	Education & research	913
Fondation BNP Paribas pour le mécénat	Membre du Conseil de la Fondation	Financial industry & insurances	914
PsyKo	Vizepräsidentin	Politics, administration, justice system & security sector	915
Schindler	Audit Expert Group	Industry, construction & agriculture	916
GeneGuide AG, Basel	Mitglied des Verwaltungsrates	Technology	917
Fondation Adrian et Simone Frutiger, Berne	Membre du comité de Fondation	Pharma & health	918
Institut de Chimie de Lyon	Committee member	Education & research	919
New Europe College	Mitglied im Stiftungsrat	Education & research	920
Schweizerische Studienstiftung Fonds für begabte junge Menschen	Stiftungsrat	Education & research	921
HEP Lausanne	Journée d'économie politique d'iconomix 2014. 1 cours (21.11.14)	Education & research	922
Sulzer	Angestellter Konzernforschung	Industry, construction & agriculture	923
Fondazione Monte Verità	Stiftungsrat	Commerce, trade & services	924
Osteology Stiftung Luzern	NA	Pharma & health	925
Commission internationale pour la philosophie et les sciences humaines (CIPSH)	Membre du Bureau exécutif	Education & research	926
Gerda Henkel-Stiftung	Vorsitzender wissenschaftlicher Beirat	Education & research	927
Airport Casino Basel	Präsidentin der Unabhängigen Fachkommission	Commerce, trade & services	928
CBM Severo Ochoa research Centre, Madrid	Membre du conseil scientifique	Education & research	929
Fondation Gustave Dubois als Vertretung der RW Fak.	NA	Education & research	930
Zeitschrift Die Unternehmung	Mitglied im Herausgeberbeirat	Media & communication	931
Lanta Bio Sàrl, Préverenges	Board of Directors	Technology	932
Nanyang Technological University, Singapore	Visiting Professor, Energy Research Institute	Education & research	933
Swiss Startup Monitor Stiftung	Präsident	Commerce, trade & services	934
PH Bern, Schulrat	NA	Education & research	935
EKK (Eidgenössische Konsumenten Kommission)	Vize-Präsident	Politics, administration, justice system & security sector	936
Stiftung für Leberkrankheiten	NA	Pharma & health	938
RUAG	Mitglied strategisches Advisory Board	Industry, construction & agriculture	941
Schweizer Treuhänder	Mitglied der Redaktionskommission	Consulting, public relations, legal & trust	942
Lumberjill, Basel, CH	Founder & Shareholder	Not classifiable	943
Eidgenössische Ethikkommission für Biotechnologie (EKAH)	Präsident	Politics, administration, justice system & security sector	944
G-Therapeutics EPFL PSE	Co-fondateur d'une start-up en décembre 2014	Pharma & health	945
Schweizerische Gesellschaft für Theaterkultur	Co-Präsident	Society, Social, Culture & Sports	946
CUREM	Lehrtätigkeit	Education & research	947
dsolar Ltd.	VR-Mandat	Energy, environment & mobility	950
Ministero MIUR, Rome, Italy	Member, Consulting Committee ANVUR	Education & research	951
Morphogene, Preverenges, CH	Shareholder	Pharma & health	953
Yde Foundation Kopenhagen	NA	Pharma & health	954
KEPOS Capital (NYC)	Academic Advisory Board	Financial industry & insurances	955
MAXIV Laboratory, Lund, Sweden	MAX IV Machine Advisory Committee	Education & research	956
Franz Haniel & Cie. GmbH	Mitglied des Beirats	Financial industry & insurances	957
Sincrotrone Trieste, Italy	Council President EC integrating initiative on synchrotrons (CALIPSO)	Education & research	959
SWAN Hadron AG	NA	Pharma & health	960
Spirit of Bern: wiss. Beirat	NA	Society, Social, Culture & Sports	961
Novigenix, Lausanne	Conseil scientifique	Pharma & health	962
Dyenamo AB, Start-up, Stockholm	Board Member	Energy, environment & mobility	963
Ammann BauAusrüstung AG	VR-Mandat	Commerce, trade & services	964
Fondazione Epatocentro Ticino, Lugano	NA	Education & research	965
Senn BPM AG	VR-Mandat	Not classifiable	966
Foundation for Responsible Leadership	Stiftungsrat	Society, Social, Culture & Sports	967
innoBE AG	NA	Consulting, public relations, legal & trust	968
Speiser-Bär-Stiftung, Basel	Mitglied des Stiftungsrates	Education & research	969
SAINT, SKKU	Honorary Editor of Nano Journal	Education & research	970
Frontiers Publishers, Lausanne	Editor	Media & communication	971
Bioforce AG	VR-Präsidium	Pharma & health	972
Cellestia Biotech SA, Innovation Square EPFL	Chairman of board of directors	Technology	973
CSEM: Centre Suisse d'Electronique et de Microtechnique, Neuchâtel	Membre du Scientific Advisory Board and conseil technique	Education & research	974
DARTFISH	Occasional advisor	Technology	975
CEA, Grenoble	Comité recommandation et prospective de la plateforme de nanocarctérisation	Education & research	976
EMBO, Heidelberg	EMBO YIP (Young Investigator Program) committee	Education & research	977
Nationalrat	Mandat	Politics, administration, justice system & security sector	978
Stiftung Swiss International Law School, Basel	Präsidentin des Stiftungsrates	Education & research	979
Basel Institute on Governance	Präsident des Stiftungsrates	Politics, administration, justice system & security sector	980
Stiftung gegen Leberkrebs	NA	Pharma & health	981
Fondation Claude Nobs	NA	Society, Social, Culture & Sports	982
Schweizerischer Nationalfonds, Bern	Member steering committee NFP 64 Opportunities and Risk of Nanomaterials	Education & research	983
joixes AG	Verwaltungsrat	Technology	984
Universität Tübingen	Mitglied des Universitätsrates	Education & research	985
Institute of Physics, London	Chief Editor, Journal of Physics D	Education & research	986
EPFL-TTO	Consulting	Education & research	987
EU Commission, Brussels	Reviewer Marie-Curie ITN (10 days)	Politics, administration, justice system & security sector	988
Otto's	Verwaltungsrat	Commerce, trade & services	989
Basler & Hofmann, Esslingen	Prüfung Bauvorhaben Linth 2015	Commerce, trade & services	990
Telebasel, Basel	Mitglied des Stiftungsrates	Media & communication	991
ATG Advanced Technology Group GmbH	Geschäftsführer	Consulting, public relations, legal & trust	992
Magnebotix AG	VR-Mandat	Technology	993
Stiftung Schloss Spiez	NA	Society, Social, Culture & Sports	994
Baker & McKenzie	Konsulent	Consulting, public relations, legal & trust	995
Uni StGall, St. Gallen	Expertise	Education & research	997
Schweizerische Akademie der Naturwissenschaften SCNAT Bern	Vorstandsmitglied	Education & research	998
Journal Acquatic Sciences	Co-Editor	Media & communication	999
Swiss National Bank	Consultant for Financial Literacy	Financial industry & insurances	1000
Universität Kassel	Professor	Education & research	1001
Concile de l'EMBO	Membre	Education & research	1002
ARDEX GmbH	VP des Beirates	Industry, construction & agriculture	1003
Aeon Scientific AG	VR-Mandat	Pharma & health	1004
Privately SA, Switzerland	Member of the Advisory Board	Technology	1005
AZAD Pharmaceutical Ingredients AG	VR-Mandat	Pharma & health	1006
University of the Free State	Research Fellow	Education & research	1007
Vahlen Verlag	Mitherausgeber der Zeitschrift Controlling	Media & communication	1008
Mitglied Hochschulrat Leipzig	NA	Education & research	1009
ERC Executive Agency, Brussels	ERC starting grant review panel	Education & research	1010
Commune de Payerne	Commission d'urbanisme, d'architecture et du Paysage	Politics, administration, justice system & security sector	1011
42matters AG	VR-Mandat	Technology	1012
TWZ GmbH	Beratung und Veranstaltungen im Bereich Enterprise Architecture Management	Not classifiable	1013
International Commission for Optics ICO	Vice-president (until August 2014)	Education & research	1014
Office fédéral des routes, Bern	Panoramaweg Rigi SZ : mandat de conseil pour la restoration de ponts historiques	Energy, environment & mobility	1015
Diabetes Research Institute, University of Miami, USA	Adjunct Professor (uncompensated)	Education & research	1016
Innovation Strategy Center Association	Board Member	Not classifiable	1017
Budongo Conservation Field Station (Ouganda)	Directeur scientifique	Industry, construction & agriculture	1018
Université Freiburg (Allemagne)	Expertise de projet	Education & research	1019
Institut des Sciences et Technologies, Skolkovo	Direction scientifique	Pharma & health	1020
Unitectra	NA	Consulting, public relations, legal & trust	1021
SCL-Sensor. Tech. Fabrication GesmbH, Vienna, Austria	Technical consultant	Industry, construction & agriculture	1022
ITI Stiftung Basel	NA	Education & research	1023
InfoSec Global (Schweiz) AG	VR-Mandat	Media & communication	1024
Aeroport Genève	Conseil informatique (non-payé)	Energy, environment & mobility	1025
FNS	Panel Synergia FNS	Education & research	1026
GYB Gymnase Intercantonal de la Broye, Payerne	Présidence du Jury des examens du GYB	Education & research	1027
FINT, First international Network of Trust Research	Präsidentin	Education & research	1028
Energy factory	Verwaltungsratspräsidentin und Gründerin	Consulting, public relations, legal & trust	1029
fokus AG für Wissen und Organisation, Zürich	Präsident des Verwaltungsrates	Consulting, public relations, legal & trust	1030
Universität Freiburg	Leitung des regionalen Schuldienstes des Heilpädagogischen Instituts	Education & research	1031
Athemis	Conseil externe dans l'étude d'avocats	Consulting, public relations, legal & trust	1032
Stiftung Technopark Zürich	Stiftungsrat	Education & research	1033
Appellationsgericht des Kantons Basel-Stadt	Ersatzrichterin	Politics, administration, justice system & security sector	1035
Stiftung Rechenzentrum für Krankenversicherung	Stiftungsrat	Pharma & health	1036
Rice University, Houston, Texas	Faculty Fellow	Education & research	1037
Major und Feller Stiftung	NA	Not classifiable	1038
Helmholtz Senate	Member	Education & research	1039
Landesregierung Vorarlberg	Informatik-Lenkungsausschuss	Politics, administration, justice system & security sector	1040
Schweizerischer Juristenverein	Vorstandsmitglied	Commerce, trade & services	1041
Kantonsschule am Brühl in St.Gallen	Fachlehrer für Wirtschaft & Recht	Education & research	1042
International Group of Controlling IGC	Mitglied des Geschäftsführenden Ausschusses	Commerce, trade & services	1043
Blue Brain Foundation, Epalinges, CH	President (en liquidation)	Education & research	1044
Medical Cluster	NA	Pharma & health	1045
Curt Rommel Stiftung	NA	Education & research	1046
Novartis	Consultant	Pharma & health	1047
Fondation Brocher	Part of the presidential duties	Education & research	1048
PNN Pharma Nation Network AG	VR-Präsidium	Pharma & health	1049
Migros Magazine, Zürich	Chronique mensuelle	Media & communication	1050
K-RITH, Durban, South Africa	Contrat de Conseil	Education & research	1051
Nutanix Inc. San Jose	Advisory Board	Technology	1052
Löwetz Immobilien AG	Mitglied des VR	Commerce, trade & services	1053
AISTS, EPFL-Innovation Park, Lausanne	Membre du conseil de fondation (as EPFL)	Education & research	1054
University of Bremen	Member Advisory Committee	Education & research	1055
Nano Center of Serbia, Belgrade	Chair of the Int. Advisory Board and consultant	Education & research	1056
King Abdulaziz University, Saudi Arabia	Distinguished Adjunct Professor, Chemistry	Education & research	1058
Swiss University Sports Foundation	Stiftungsrat	Society, Social, Culture & Sports	1059
Remaco AG, Basel	Mitglied des Verwaltungsrates	Consulting, public relations, legal & trust	1060
TAG Aviation, Genève	Conseil informatique	Energy, environment & mobility	1061
Avenir Suisse	Mitglied der Programmkommission	Society, Social, Culture & Sports	1062
Institute of Advanced Studies, Technical University of Munich, Garching	Hans-Fischer Senior Fellow	Education & research	1063
HES Campus Biotech, Genève	Proposal reviewing HEPIA	Education & research	1064
Seyonic SA, Neuchâtel	Conseil scientifique	Industry, construction & agriculture	1066
swissuniversities	Vertreter in der Plenarversammlung und im Vorstand	Education & research	1067
Zunft zur Meisen (Zürich)	Vierzehner	Commerce, trade & services	1068
BAK, Heimatschutz und Denkmalpflege, Bern	Quatre mandats d'expertise (en tant qu'expert fédéral), mandatés par l'Office Fédéral de la Culture	Society, Social, Culture & Sports	1069
Singapore International Advisory Committee for Biomedical Sciences	Beirat	Education & research	1070
Vetimag AG	VR-Mandat	Financial industry & insurances	1071
LS Instruments AG	Verwaltungsratspräsident	Industry, construction & agriculture	1072
Société des Ingénieurs et Architectes Suisses, SIA, Zurich	Projet de normalisation européen (Projet SIA NDP - EN 1991)	Commerce, trade & services	1073
Fondation pour l'étude des eaux du Léman	Part of the presidential duties	Education & research	1074
Immersive Vision SARL, PSE	Founder, pas de rôle exécutif	Technology	1075
The Performance Management Company PMC GmbH	Gesellschafter	Consulting, public relations, legal & trust	1076
Federazione italiana Rubgy (IT)	Board Member	Society, Social, Culture & Sports	1077
SPIE (Society)	Board Member	Education & research	1078
ME Advocat AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	1079
Association Ecoparc, Neuchâtel	Membre du comité d'une association à but non lucratif	Energy, environment & mobility	1080
Fachhochschule Kalaidos	NA	Education & research	1081
Schuh & Co.	Verwaltungsrat	Consulting, public relations, legal & trust	1082
Fondation Carnot, Neuilly s/Seine	Membre du Jury et Mentor ; domaine : promotion de la recherche scientifique	Education & research	1083
Clariant AG	VR-Mandat	Technology	1084
Kandou Bus, Lausanne	CEO (on leave from EPFL)	Industry, construction & agriculture	1085
Anadec GmbH	Ko-Geschäftsführer	Consulting, public relations, legal & trust	1086
Fédération Internationale du Béton, Lausanne	Membre du Présidium	Commerce, trade & services	1087
High Tech Factory, Enschede, NL	Conseil d'administration	Industry, construction & agriculture	1088
ERC, Brussels	Panel Chair for ERC PE4 panel	Education & research	1089
Stiftung Diaconis Bern	NA	Pharma & health	1090
Schellenberg Wittmer SA	mandats privés (expertises, analyses)	Politics, administration, justice system & security sector	1091
Patentanwalt Ter Meer Steinmeister & Partner	Scientific expert for patent firm	Consulting, public relations, legal & trust	1092
Schweizerische Stiftung für Alkoholforschung SSA	NA	Pharma & health	1093
Porto Academy, Portugal	Workshop Roman Architecture	Education & research	1094
Hochschule Esslingen	Externer Moderator Projekt Gründerhochschule Exist IV	Education & research	1095
Kerneos, France	Consultant on durability	Industry, construction & agriculture	1096
PSI	Member of the board of the Swiss Competence Center in Energy Research	Education & research	1097
Office cantonal de conciliation en matière de conflits de travail	Membre	Politics, administration, justice system & security sector	1098
National and international scientific projects	Reviewer	Not classifiable	1099
Atelier International du Grand Paris, Paris	Membre comité scientifique	Society, Social, Culture & Sports	1100
SQS Software Quality Systems (Schweiz) AG	Beirat	Consulting, public relations, legal & trust	1101
Albert Lück-Stiftung	NA	Education & research	1102
Parc Scientifique EPFL	Venture Labe	Education & research	1103
INSA, France	Committee member Labex SynOrg	Education & research	1104
Universitä della Svizzera Italiana	Mitglied des Universitätsrates	Education & research	1105
Università della Svizzera italiana, Accademia di Architettura	Professeur ordinaire	Education & research	1106
Elsevier Ltd, UK	Editor in Chief of the international journal Sustainable Energy, Grids and Networks	Education & research	1107
eTorrent GmbH	Geschäftsführer	Technology	1108
Swiss National Science Foundation	Member of the SNF Council	Education & research	1109
HuGeF, Turin	Member, Scientific Council	Education & research	1110
Scienovation	Gründer und Gesellschafter	Commerce, trade & services	1111
Centrum für Familienwissenschaften	Vorstandsmitglied und seit Januar 2015 Präsident	Education & research	1112
USI, Lugano	Member, Consiglio di Fondazione USI	Education & research	1113
Archiv der Mathematik	Membre du comité éditorial	Media & communication	1114
Centro Europeo di Nanomedicina, Milano	Member of the Scientific Advisory Board	Education & research	1115
Collegium International SMYLE en microtechnique, Besançon	Vice-président	Education & research	1116
Evangelisch-reformierte Kirche des Kantons St. Gallen	Mitglied des Kuratoriums des Universitätspfarramts	Society, Social, Culture & Sports	1117
Fondazione Neuroscienze Ticino	NA	Education & research	1118
Fondation Terre des Hommes	NA	Politics, administration, justice system & security sector	1119
LabEx Brain, Université de Bordeaux, France	Scientific Advisory Board Member	Education & research	1120
Stiftung Swiss School of Public Health plus (SSPH)	NA	Education & research	1121
MindMaze, Ecublens	Scientific Advisory Board	Technology	1122
qipp AG	VR-Mandat	Technology	1123
Université St Andrews (UK)	Enseignement	Education & research	1124
Lanta Bio, Préverenges, CH	Founder & Shareholder	Technology	1126
STUNEX SA	Président du Conseil d'administration (depuis mi-décembre 2014)	Commerce, trade & services	1127
IMD, Lausanne	Professorship at IMD, 50% work contract	Education & research	1128
Skolkovo Institute of Science & Technology	Adjunct Professor (finished Aug 2014)	Education & research	1129
Springer-Verlag, Heidelberg, Germany	Editor of Journal of High Energy Physics	Media & communication	1130
Schweizerische Theatersammlung	NA	Society, Social, Culture & Sports	1131
Ministry of Education, Singapore	Expertise scientifique, projets de recherche	Politics, administration, justice system & security sector	1132
Stiftung Dr. Ed. Müller, Beromünster	NA	Society, Social, Culture & Sports	1133
Quiartet Medicine, Boston, USA	Consulting Quartet Medicine	Technology	1134
NSF, USA	proposés référés	Education & research	1135
Hubrecht Institute Utrecht	Membre du conseil scientifique	Education & research	1136
Convida	NA	Financial industry & insurances	1137
Albert-Heim-Stiftung	NA	Society, Social, Culture & Sports	1138
u-blox AG	VR-Mandat	Industry, construction & agriculture	1139
thurmed AG / Spital Thurgau	Mitglied des Verwaltungsrats	Pharma & health	1140
Human Brain Project	Président du Board du Human Brain Project	Education & research	1141
Convergeo Lausanne, Switzerland	Co-Founder and Advisor (Design Firm), while on leave	Industry, construction & agriculture	1142
EPFL	Membre du Conseil de la Fondation Monte Verità, Ascona, représentant EPFL	Education & research	1143
Georg Fischer AG	VR-Mandat	Industry, construction & agriculture	1144
Berner Radium-Stiftung	NA	Pharma & health	1145
Creative Hub	Fachexperte und Coach für Designer Startups	Commerce, trade & services	1146
Patria Genossenschaft, Basel	Mitglied der Delegiertenversammlung	Financial industry & insurances	1147
Museum Schloss Thun	Mitglied des Stiftungsrates	Society, Social, Culture & Sports	1149
Hydropower Solutions GmbH	Fachbeirat	Energy, environment & mobility	1150
Memo St.Gallen GmbH	Verwaltungsratspräsident	Consulting, public relations, legal & trust	1151
Ivoclar Vivadent AG	Mitglied des Verwaltungsrats	Pharma & health	1152
Stiftung für die Forschung in Anästhesie und Intensivmedizin	NA	Education & research	1153
Ecole normale supérieure de Lyon	Professor of Chemistry	Education & research	1154
MPIDS, Germany	Phase-out of independent Max-Planck Research Group until 12/2014	Education & research	1155
Publica, Berne	Membre de la commission de caisse de Publica	Financial industry & insurances	1157
Schweizerische Armee, Armeestab	Offizier Recht und Konventionen	Politics, administration, justice system & security sector	1158
Paul- und Johanna Röthlisberger-Schmid-Stiftung	NA	Education & research	1160
Office national (français) d’indemnisation des accidents médicaux	Conseil d’administration	Politics, administration, justice system & security sector	1161
Asian. J. Org. Chem. Wiley	Editorial board member	Media & communication	1162
EMBA	Dozent Qualitäts- und Prozessmanagement	Education & research	1163
Intl. Computer Science Institute (ICSI), Berkeley, CA	External Fellow and Member of the Board of Trustees	Education & research	1164
Schweizer Paraplegiker Forschung	Verwaltungsratspräsident	Pharma & health	1165
International Journal of Number Theory	Membre du comité éditorial	Media & communication	1166
Berner Diabetes Stiftung	NA	Pharma & health	1167
Departement für Entwicklungshilfe und -zusammenarbeit DEZA	Diverse kleinere Tätigkeiten	Politics, administration, justice system & security sector	1168
SWITCH	Mitglied des Stiftungsrats und dessen Ausschuss	Technology	1169
AYU Association (no longer active)	Member (no longer active)	Not classifiable	1170
Komax Holding AG	VR-Mandat	Industry, construction & agriculture	1171
Uni Paris V Descartes	Prof invité	Education & research	1172
CCMT	NA	Pharma & health	1173
European Association of Percutaneous Cardiovascular Intervention (EAPCI)	Board Member	Pharma & health	1174
KIST EUROPE, Germany	Survey on sustainability (1 day)	Education & research	1175
Prosper Diagnostic, Basel	Board Member, Prosper Diagnostics an early stage EPFL start-up	Pharma & health	1176
Università di Pavia	Member, Board of Directors	Education & research	1177
SIG	Membre du conseil d'administration	Energy, environment & mobility	1178
Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	NA	Education & research	1179
Forum BGM – Betriebliches Gesundheitsmanagement Ostschweiz	Mitglied des Beirats	Pharma & health	1180
Fondation Jeantet, Genève	Conseil de fondation et Conseil Scientifique de la Fondation Jeantet	Pharma & health	1181
St. Galler Stiftung für Internationale Studien	Stiftungsrat	Education & research	1182
Zeitschrift Betriebs-Berater (BB)	Ständiger Mitarbeiter	Media & communication	1184
Detecon (Schweiz) AG	Partner	Consulting, public relations, legal & trust	1185
Spirochrome, Suisse	Consulting	Technology	1186
Strategic Research Initiative on stem cells, Stockholm	Membre du conseil scientifique	Education & research	1187
Wallenberg Institute for Regenerative Medicine, Stockholm	Membre du conseil scientifique	Education & research	1188
Fondation Latsis Internationale, Genève	Président fondation	Education & research	1189
Dr. Josef Steiner Cancer Research Foundation, Präsident	NA	Pharma & health	1190
systransis AG	VR-Mandat	Technology	1191
Airbus EADS, France	Consultant (7 jours)	Energy, environment & mobility	1192
Conferences	Member of several conferences advisory boards (unpaid)	Not classifiable	1193
Gemeinde Speicher AR	Mitglied Kommission für Planung und Gemeindeentwicklung	Politics, administration, justice system & security sector	1194
Micro-Optics lecture FSRM	Lecturer (2days)	Technology	1195
European Association of Antennas and Propoagation	Chair of the EURAAP Board (jusqu'à Dec 2015)	Education & research	1196
Vereinsvorstand BEWEST (Weiterbildungsverein)	NA	Education & research	1197
Chemical Physics Letters - Elsevier	Member of the Board	Media & communication	1198
Dacuda AG	Founder, Chairman, and CTO	Technology	1199
Bretscher Stiftung	NA	Education & research	1200
HKBB Basel	Mitglied der Life Science Kommission	Commerce, trade & services	1201
Blue Brain SA, Epalinges, CH	Chairman (en liquidation)	Education & research	1202
PET-AG Bern	NA	Pharma & health	1204
Helsana AG, Dübendorf	Präsident des Verwaltungsrates	Pharma & health	1205
ProteoMediX AG	VR-Mandat	Technology	1206
Schwyzer Kantonalbank	Bankrat	Financial industry & insurances	1207
Association pour le Concours International de Chronométrie, Le Locle	Conseiller scientifique, membre du comité d'organisation	Industry, construction & agriculture	1208
Ecole pratique des hautes études de Paris	Enseignement	Education & research	1209
EX-M, Milan	Architecte associé (10%)	Industry, construction & agriculture	1210
Verity Studios AG	VR-Präsidium	Industry, construction & agriculture	1211
CHUV	Mandat	Pharma & health	1212
Stiftung Bibliothek Werner Oechslin	Stiftungsrat	Society, Social, Culture & Sports	1213
Ethimedix SA, Nyon	Conseiller scientifique, Advisory Board	Pharma & health	1214
Zürichsee Landschaftsschutz ZSL	Vizepräsident	Energy, environment & mobility	1215
A*Star IMB Biopolis, Singapour	Consultant	Education & research	1216
Johannes Gutenberg-Universität Mainz	Lehrbeauftragter	Education & research	1217
BASF Societas Europeae (Schweden)	Aufsichtsratsmandat	Technology	1218
Swiss&Global	Vortragstätigkeit (einmalig)	Financial industry & insurances	1219
Eidgenössische Kommission für Migrationsfragen	Präsident	Politics, administration, justice system & security sector	1220
Talent Foundation, Saint-Sulpice	President of the foundation	Education & research	1221
Department of Chemistry, Angström, Uppsala University, Sweden	Visiting Professor, Physical Chemistry	Education & research	1222
Unabhängige Expertenkommission Administrative Zwangsmassnahmen	Mitglied	Politics, administration, justice system & security sector	1223
Holcim-Stiftung zur Förderung der wissenschaftlichen Fortbildung	Mitglied des Stiftungsrates	Commerce, trade & services	1224
ASG Strategy Group AG	Verwaltungsratspräsident und Gründer	Consulting, public relations, legal & trust	1225
Wyss Center	Board Member	Education & research	1226
SEFRI, Bern	Expertise	Politics, administration, justice system & security sector	1228
Dietmar Grichnik Entrepreneurial Management GmbH	Inhaber	Consulting, public relations, legal & trust	1230
American Chemical Society, USA	Associate Editor Ass. Chemical Biology	Education & research	1231
Peter Werhahn-Preis	Mitglied der Jury	Education & research	1232
Laboratory of Excellence (Labex) INFORM	Scientific Advisory Board	Education & research	1233
Politecnico di Torino	President, Evaluation Committee (Nucleo di Valutazione), Politecnico di Torino	Education & research	1234
IdeArk SA (IDIAP's technology transfer instrument)	Member (vice-president) of the Board of Directors	Consulting, public relations, legal & trust	1235
EU	Diverse gutachterliche und beratende Tätigkeiten	Politics, administration, justice system & security sector	1236
Jubiläumsstiftung Mobiliar	NA	Society, Social, Culture & Sports	1237
Shenogen Pharma Group LTD, China	Member, Scientific Advisory Board	Pharma & health	1238
St. Galler Juristenverein	Vorstandsmitglied	Commerce, trade & services	1239
ELSEVIER	Editeur en chef	Education & research	1240
Schweizerische Gesellschaft für Organisation SGO	Mitglied des Vorstandes	Education & research	1241
Paracelsus-Spital Richterswil, ZH	NA	Pharma & health	1242
MOXOFF Srl, Milan	Président du conseil d'administration et coordinateur du comité scientifique	Technology	1243
Leibniz Institute INM, Saarbrücken, Allemagne	Membre, Wissenschaftlicher Beirat	Education & research	1244
Strassen- und Kanalisationsgenossenschaft Badweidli	NA	Commerce, trade & services	1245
Frontiers, EPFL Innovation Park, Lausanne	Associate Editor, Frontiers in Behavioral Neuroscience	Education & research	1246
SRS-CSPCP	President	Energy, environment & mobility	1248
Study Center Gerzensee	NA	Education & research	1249
IHK Industrie- und Handelskammer Thurgau	Vorstand	Commerce, trade & services	1250
Staub Holding AG	VR-Mandat	Commerce, trade & services	1251
Fondation Zeno Karl Schindler	Membre du conseil de fondation	Education & research	1252
GRS Gemresearch Swisslab AG	VR-Mandat	Not classifiable	1253
JPL, Pasadena, USA	NASA/Caltech Jet Propulsion Laboratory: Visiting researcher (July-August 2014, while on leave)	Education & research	1254
Fondation pour la formation continue lausannoise	Part of the presidential duties	Education & research	1255
Genossenschaft basecamp4hightech (bc4ht)	NA	Commerce, trade & services	1256
Université de Lausanne, faculté de médecine	Professeur associé ad personam	Education & research	1257
Guggenheim-Stiftung für Geschichte der Medizin	NA	Education & research	1258
European Research Council, Brussels, Belgium	Panel member for the ERC Starting grant 2014 PE4	Education & research	1259
Elsevier Publishing, Amsterdam	Editor of Nuclear Physics B	Education & research	1260
Fondation Bullukian	Administrateur de la Fondation	Society, Social, Culture & Sports	1261
Schweiz. Gesellschaft für Volkswirtschaft und Statistik	Vorstandsmitglied	Commerce, trade & services	1262
Hans Goldmann Stiftung	NA	Pharma & health	1263
EPFL CRAG, Lausanne	Scientific Director (01.2013 - present)	Education & research	1264
Heyning-Roelli Stiftung	Zeichnungsberechtigt	Education & research	1265
oikos Konstanz	Mitgründerin	Education & research	1266
Singapore Biomedical Sciences International	NA	Education & research	1267
Precious Capital AG	Verwaltungsratspräsident	Financial industry & insurances	1268
Scrona AG	VR-Mandat	Industry, construction & agriculture	1269
Ionight	NA	Technology	1270
Ostschweizerische Finanzholding AG	NA	Financial industry & insurances	1271
Neue Bank AG	Verwaltungsrat	Financial industry & insurances	1272
OWI, Amsterdam	Advisor of crypto group	Not classifiable	1273
André und Hedy Knoll-Spring Stiftung	Stiftungsrat	Education & research	1274
Institut Curie, Paris	Membre du conseil scientifique	Education & research	1275
Lumberjill, Inc., Boston	Board of Directors	Commerce, trade & services	1276
Stifelsen Strtegisk Froskning, Sweden	Expertise de projet	Education & research	1277
Fondation Louis Jeantet, Genève	Membre conseil scientifique	Pharma & health	1278
Le Temps	Ecriture de chroniques	Media & communication	1279
Stiftung Jüdische Zeitgeschichte	Stiftungsrat	Society, Social, Culture & Sports	1280
Swisscleantech Association, Bern	Membre du conseil scientifique	Commerce, trade & services	1281
MPM Market Performance Management St. Gallen AG	Verwaltungsratspräsident	Consulting, public relations, legal & trust	1282
BEG & Partners	Associate Partner	Consulting, public relations, legal & trust	1283
Fondation Bettencourt, Paris	Conseil scientifique	Society, Social, Culture & Sports	1284
ETH Singapore SEC Ltd.	Director	Politics, administration, justice system & security sector	1285
FNRS	Mitglied des Wissenschaftsrates	Pharma & health	1286
MOLMED, Milan, Italy	Membre du conseil scientifique	Technology	1287
Eversitas LLC Cambridge, Massachussetts	Co-Founder and Advisor (Software and Service Firm), while on leave	Technology	1288
AquaDiva, Fredrich-Schiller-Universität Jena, Germany	Member, Scientific Advisory Board (10.2013 - present)	Education & research	1289
Pfizer, Inc., New York, USA	Member, Scientific Advisory Board - Cancer Therapeutic Area	Pharma & health	1290
Advances in Water Resources (Elsevier Journal)	Co-Editor	Media & communication	1291
Muttoni et Fernàndez Ingénieurs Conseils SA, Ecublens	Membre du conseil d'administration et employé (taux d'activité 10%)	Commerce, trade & services	1292
Zeno-Karl Schindler Foundation	Member Conseil of Zeno-Karl Schindler Foundation	Education & research	1293
Helvetia AG	Mitglied des Verwaltungsrats	Financial industry & insurances	1294
Schweizerischer Anwaltsverband	Konsulent	Politics, administration, justice system & security sector	1295
Centre of Continuing Dental Education AG	NA	Education & research	1296
Norwegian Business School	Professor	Education & research	1297
NSF, US	Evaluation panel for NSF	Education & research	1298
Crossing Tech, EPFL - Innovation Park	Consulting	Education & research	1299
Brot für alle	Stiftungsrat	Politics, administration, justice system & security sector	1300
Syngenta Crop Protection AG, Stein	Consulting of chemical research, 3 hours	Technology	1301
ETH Entrepreneur Club	Advisory Board	Commerce, trade & services	1302
Schweizer Armee	Oberstlt i Gst	Politics, administration, justice system & security sector	1303
Finanzmarktaufsicht FINMA, Bern	Mitglied des Verwaltungsrates	Politics, administration, justice system & security sector	1304
Fondation pour la recherche Lausanne	NA	Education & research	1305
Stiftung zur Föderung der Forschung und Ausbildung in Unternehmenswiss., ETH Zürich	Stiftungsrat	Education & research	1306
Fondation A. Peneveyre SA	NA	Financial industry & insurances	1307
Inflamalps, Switzerland	Scientific Advisory Board Member	Pharma & health	1308
Dr. A. Bretscher Stiftung	NA	Education & research	1309
NTU, Singapore	Scientific Advisor	Education & research	1310
Argo Innovations, Atlanta	Owner	Consulting, public relations, legal & trust	1311
Studienzentrum Gerzensee	Mitglied des Stiftungsrates	Education & research	1312
BCA, Singapore	EIRP Projects Evaluation Panel	Not classifiable	1313
MAS en économie et administration de la santé de HEC Lausanne	Cours	Education & research	1314
Verein Europäische Freiwilligenuniversität	Präsident	Education & research	1315
University of Bologna, Italy	Lecture for the Post-graduate program Progettazione di Impianti Oil&Gas	Education & research	1316
Basler Juristenverein, Pro Iure	Vorstandmitglied	Commerce, trade & services	1317
Asgalium Unitec SA, Cortaillod	Membre du Conseil d'administration d'Asgalium Unitec SA, Consulting et expertises	Industry, construction & agriculture	1318
Leibniz Insitute of Freshwater Ecology and Inland Fisheries, Berlin, Germany	Chair, Advisory Board (09.2009 - present)	Education & research	1319
Ebnat AG, Ebna	Verwaltungsratspräsident	Industry, construction & agriculture	1320
Hilti AG	VR-Präsidium	Industry, construction & agriculture	1321
ChromaCon AG	VR-Mandat	Technology	1322
Percipe GmbH	Mitglied des Vorstands	Consulting, public relations, legal & trust	1324
European Fund for Southeast Europe (EFSE)	Diverse kleinere Tätigkeiten	Politics, administration, justice system & security sector	1325
ANTIA Therapeutics, Bern	Board of Directors	Pharma & health	1326
Stiftung-Sammlung Schweizer Rechtsquellen	NA	Not classifiable	1327
Board Member, Global Trade Analysis Project	NA	Education & research	1328
Mitobridge, Cambridge, MA, USA	Mitochondrial metabolism and deseases - Founder & SAB member	Technology	1330
PNE Wind AG	Aufsichtsratsmandat	Energy, environment & mobility	1331
EVA Basel Life Science Start-up Agency	Mitglied des Management Board	Consulting, public relations, legal & trust	1332
Max Planck Institute of Evolutionary Anthropology	Membre du conseil scientifique	Education & research	1333
Monash University, Australia	Professor of Geomechanics (full-time), while on leave	Education & research	1334
\.


--
-- TOC entry 3465 (class 0 OID 49707)
-- Dependencies: 217
-- Data for Name: professors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professors (firstname, lastname, university, id) FROM stdin;
Karl	Aberer	ETH Lausanne	1
Karl	Aberer	ETH Lausanne	2
Karl	Aberer	ETH Lausanne	3
Karl	Aberer	ETH Lausanne	4
Reza Shokrollah	Abhari	ETH Zürich	5
Georges	Abou Jaoudé	ETH Lausanne	6
Hugues	Abriel	Uni Bern	7
Daniel	Aebersold	Uni Bern	8
Daniel	Aebersold	Uni Bern	9
Daniel	Aebersold	Uni Bern	10
Christoph	Aebi	Uni Bern	11
Christoph	Aebi	Uni Bern	12
Marcelo	Aebi	Uni Lausanne	13
Patrick	Aebischer	ETH Lausanne	14
Patrick	Aebischer	ETH Lausanne	15
Patrick	Aebischer	ETH Lausanne	16
Patrick	Aebischer	ETH Lausanne	17
Patrick	Aebischer	ETH Lausanne	18
Patrick	Aebischer	ETH Lausanne	19
Patrick	Aebischer	ETH Lausanne	20
Patrick	Aebischer	ETH Lausanne	21
Patrick	Aebischer	ETH Lausanne	22
Patrick	Aebischer	ETH Lausanne	23
Patrick	Aebischer	ETH Lausanne	24
Patrick	Aebischer	ETH Lausanne	25
Patrick	Aebischer	ETH Lausanne	26
Patrick	Aebischer	ETH Lausanne	27
Patrick	Aebischer	ETH Lausanne	28
Patrick	Aebischer	ETH Lausanne	29
Patrick	Aebischer	ETH Lausanne	30
Patrick	Aebischer	ETH Lausanne	31
Stephan	Aier	Uni St. Gallen	32
Stephan	Aier	Uni St. Gallen	33
Anastasia	Ailamaki	ETH Lausanne	34
Cesla	Amarelle	Uni Neuenburg	35
Manuel	Ammann	Uni St. Gallen	36
Manuel	Ammann	Uni St. Gallen	37
Manuel	Ammann	Uni St. Gallen	38
Christophe	Ancey	ETH Lausanne	39
Marilyne	Andersen	ETH Lausanne	40
Marilyne	Andersen	ETH Lausanne	41
Jean-Marie	Annoni	Uni Freiburg	42
John	Antonakis	Uni Lausanne	43
Omid	Aschari	Uni St. Gallen	44
Omid	Aschari	Uni St. Gallen	45
David	Atienza Alonso	ETH Lausanne	46
Jean-Jacques	Aubert	Uni Neuenburg	47
Jean-Jacques	Aubert	Uni Neuenburg	48
Drahomir	Aujesky	Uni Bern	49
Johan	Auwerx	ETH Lausanne	50
Johan	Auwerx	ETH Lausanne	51
Johan	Auwerx	ETH Lausanne	52
Johan	Auwerx	ETH Lausanne	53
Johan	Auwerx	ETH Lausanne	54
François	Avellan	ETH Lausanne	55
François	Avellan	ETH Lausanne	56
Kay Werner	Axhausen	ETH Zürich	57
Philippe	Bacchetta	Uni Lausanne	58
Andrea	Back	Uni St. Gallen	59
Andrea	Back	Uni St. Gallen	60
Andrea	Back	Uni St. Gallen	61
Andrea	Back	Uni St. Gallen	62
Marco	Bakker	ETH Lausanne	63
Artur	Baldauf	Uni Bern	64
Artur	Baldauf	Uni Bern	65
Christophe	Ballif	ETH Lausanne	66
Christophe	Ballif	ETH Lausanne	67
Christophe	Ballif	ETH Lausanne	68
Christophe	Ballif	ETH Lausanne	69
Yann	Barrandon	Uni Lausanne	70
Yann	Barrandon	Uni Lausanne	71
David Andrew	Barry	ETH Lausanne	72
David Andrew	Barry	ETH Lausanne	73
David Andrew	Barry	ETH Lausanne	74
David Andrew	Barry	ETH Lausanne	75
David Andrew	Barry	ETH Lausanne	76
Pius Eliseo	Baschera	ETH Zürich	77
Pius Eliseo	Baschera	ETH Zürich	78
Pius Eliseo	Baschera	ETH Zürich	79
Pius Eliseo	Baschera	ETH Zürich	80
Pius Eliseo	Baschera	ETH Zürich	81
Pius Eliseo	Baschera	ETH Zürich	82
David Alan	Basin	ETH Zürich	83
Claudio	Bassetti	Uni Bern	84
Claudio	Bassetti	Uni Bern	85
Claudio	Bassetti	Uni Bern	86
Iris	Baumgartner	Uni Bern	87
Iris	Baumgartner	Uni Bern	88
Aurelio	Bay	ETH Lausanne	89
Eva	Bayer Fluckiger	ETH Lausanne	90
Eva	Bayer Fluckiger	ETH Lausanne	91
Eva	Bayer Fluckiger	ETH Lausanne	92
Eva	Bayer Fluckiger	ETH Lausanne	93
Eva	Bayer Fluckiger	ETH Lausanne	94
Eva	Bayer Fluckiger	ETH Lausanne	95
Stefan	Bechtold	ETH Zürich	96
Rolf	Becker	Uni Bern	97
Christian	Belz	Uni St. Gallen	98
Christian	Belz	Uni St. Gallen	99
Christian	Belz	Uni St. Gallen	100
André	Berchtold	Uni Lausanne	101
Pietro	Beritelli	USI Lugano	102
Pietro	Beritelli	USI Lugano	103
Thomas	Berndt	Uni St. Gallen	104
Thomas	Berndt	Uni St. Gallen	105
Thomas	Berndt	Uni St. Gallen	106
Urs	Bertschinger	Uni St. Gallen	107
Katrin	Beyer	ETH Lausanne	108
Katrin	Beyer	ETH Lausanne	109
Andreas	Beyer	Uni Basel	110
Andreas	Beyer	Uni Basel	111
Andreas	Beyer	Uni Basel	112
Andreas	Beyer	Uni Basel	113
Thomas	Bieger	Uni St. Gallen	114
Thomas	Bieger	Uni St. Gallen	115
Thomas	Bieger	Uni St. Gallen	116
Thomas	Bieger	Uni St. Gallen	117
Thomas	Bieger	Uni St. Gallen	118
Thomas	Bieger	Uni St. Gallen	119
Thomas	Bieger	Uni St. Gallen	120
Thomas	Bieger	Uni St. Gallen	121
Thomas	Bieger	Uni St. Gallen	122
Thomas	Bieger	Uni St. Gallen	123
Thomas	Bieger	Uni St. Gallen	124
Anton F.H.	Bierl	Uni Basel	125
Michel	Bierlaire	ETH Lausanne	126
Michel	Bierlaire	ETH Lausanne	127
Aude	Billard	ETH Lausanne	128
Alexandre	Blanc	ETH Lausanne	129
Olaf	Blanke	Uni Genf	130
Gérard	Bless	Uni Freiburg	131
René	Bloch	Uni Bern	132
Christian	Bochet	Uni Freiburg	133
Geoffrey	Bodenhausen	Uni Lausanne	134
Christoph Hans	Boesch	Uni Bern	135
Luca	Bona	ETH Lausanne	136
Giuliano	Bonoli	Uni Lausanne	137
Giuliano	Bonoli	Uni Lausanne	138
Dominique	Bonvin	ETH Lausanne	139
Birgitt	Borkopp	Uni Bern	140
Birgitt	Borkopp	Uni Bern	141
Ioannis	Botsis	ETH Lausanne	142
Hervé	Bourlard	ETH Lausanne	143
Hervé	Bourlard	ETH Lausanne	144
Hervé	Bourlard	ETH Lausanne	145
Hervé	Bourlard	ETH Lausanne	146
Hervé	Bourlard	ETH Lausanne	147
Hervé	Bourlard	ETH Lausanne	148
Hervé	Bourlard	ETH Lausanne	149
Roman	Boutellier	ETH Zürich	150
Roman	Boutellier	ETH Zürich	151
Roman	Boutellier	ETH Zürich	152
Roman	Boutellier	ETH Zürich	153
Roman	Boutellier	ETH Zürich	154
Roman	Boutellier	ETH Zürich	155
Christian	Bovet	Uni Genf	156
Christian	Bovet	Uni Genf	157
Urs	Brägger	Uni Bern	158
Nicola	Braghieri	ETH Lausanne	159
Torsten	Braun	Uni Bern	160
Walter	Brenner	Uni St. Gallen	161
Walter	Brenner	Uni St. Gallen	162
Walter	Brenner	Uni St. Gallen	163
Martin	Brown	Uni St. Gallen	164
Martin	Brown	Uni St. Gallen	165
Martin	Brown	Uni St. Gallen	166
Martin	Brown	Uni St. Gallen	167
Martin	Brown	Uni St. Gallen	168
Martin	Brown	Uni St. Gallen	169
Martin	Brown	Uni St. Gallen	170
Heike	Bruch	Uni St. Gallen	171
Heike	Bruch	Uni St. Gallen	172
Heike	Bruch	Uni St. Gallen	173
Heike	Bruch	Uni St. Gallen	174
Jürgen	Brugger	ETH Lausanne	175
Jürgen	Brugger	ETH Lausanne	176
Eugen	Brühwiler	ETH Lausanne	177
Eugen	Brühwiler	ETH Lausanne	178
Eugen	Brühwiler	ETH Lausanne	179
Eugen	Brühwiler	ETH Lausanne	180
Eugen	Brühwiler	ETH Lausanne	181
Harald	Brune	ETH Lausanne	182
Harald	Brune	ETH Lausanne	183
Aymo	Brunetti	Uni Basel	184
Stefan	Bühler	Uni Zürich	185
Andreas	Burg	ETH Lausanne	186
Daniel	Buser	Uni Bern	187
Daniel	Buser	Uni Bern	188
Daniel	Buser	Uni Bern	189
George	Candea	ETH Lausanne	190
Daniel	Candinas	Uni Bern	191
Daniel	Candinas	Uni Bern	192
Daniel	Candinas	Uni Bern	193
Daniel	Candinas	Uni Bern	194
Daniel	Candinas	Uni Bern	195
Daniel	Candinas	Uni Bern	196
Srdan	Capkun	ETH Zürich	197
Basile	Cardinaux	Uni Freiburg	198
Basile	Cardinaux	Uni Freiburg	199
Erick Moran	Carreira	ETH Zürich	200
Erick Moran	Carreira	ETH Zürich	201
Thierry	Carrel	Uni Bern	202
Marina Silva	Cattaruzza	Uni Bern	203
Marco	Celio	Uni Freiburg	204
Marco	Celio	Uni Freiburg	205
Volkan	Cevher	ETH Lausanne	206
Peter	Chen	ETH Zürich	207
Majed	Chergui	ETH Lausanne	208
Olivier	Christin	Uni Neuenburg	209
Gerhard M.	Christofori	Uni Basel	210
Stewart	Cole	ETH Lausanne	211
Stewart	Cole	ETH Lausanne	212
Pierre	Collin Dufresne	ETH Lausanne	213
Pierre	Collin Dufresne	ETH Lausanne	214
Pierre	Collin Dufresne	ETH Lausanne	215
Pierre	Collin Dufresne	ETH Lausanne	216
Edwin Charles	Constable	Uni Basel	217
Edwin Charles	Constable	Uni Basel	218
Edwin Charles	Constable	Uni Basel	219
Edwin Charles	Constable	Uni Basel	220
Edwin Charles	Constable	Uni Basel	221
Achim	Conzelmann	Uni Bern	222
Achim	Conzelmann	Uni Bern	223
Grégoire	Courtine	ETH Lausanne	224
Grégoire	Courtine	ETH Lausanne	225
Gianluca	Crippa	Uni Basel	226
William	Curtin	ETH Lausanne	227
William	Curtin	ETH Lausanne	228
William	Curtin	ETH Lausanne	229
Raffaello	D'Andrea	ETH Zürich	230
Robert	Danon	Uni Lausanne	231
James W.	Davis	Uni St. Gallen	232
James W.	Davis	Uni St. Gallen	233
Anthony C.	Davison	ETH Lausanne	234
Anthony C.	Davison	ETH Lausanne	235
Enrico	De Giorgi	Uni St. Gallen	236
Giovanni	de Micheli	ETH Lausanne	237
Giovanni	de Micheli	ETH Lausanne	238
Giovanni	de Micheli	ETH Lausanne	239
Michele	De Palma	ETH Lausanne	240
Michele	De Palma	ETH Lausanne	241
Dominique	de Quervain	Uni Basel	242
Nico	de Rooij	ETH Lausanne	243
Nico	de Rooij	ETH Lausanne	244
Nico	de Rooij	ETH Lausanne	245
Nico	de Rooij	ETH Lausanne	246
Nico	de Rooij	ETH Lausanne	247
Nico	de Rooij	ETH Lausanne	248
Harris	Dellas	Uni Bern	249
Bart	Deplancke	ETH Lausanne	250
Inès	Devanthéry-Lamunière	ETH Lausanne	251
Benoît	Deveaud	ETH Lausanne	252
Benoît	Deveaud	ETH Lausanne	253
Pascal	Dey	Uni St. Gallen	254
François	Diederich	ETH Zürich	255
Giovanni	Dietler	ETH Lausanne	256
Giovanni	Dietler	ETH Lausanne	257
Giovanni	Dietler	ETH Lausanne	258
Giovanni	Dietler	ETH Lausanne	259
Dieter	Dietz	ETH Lausanne	260
Dieter	Dietz	ETH Lausanne	261
Pierre	Dillenbourg	ETH Lausanne	262
Pierre	Dillenbourg	ETH Lausanne	263
Valentin	Djonov	Uni Bern	264
Minyue	Dong	Uni Lausanne	265
Gian-Paulo	Dotto	Uni Lausanne	266
Jacques	Dubey	Uni Freiburg	267
Denis	Duboule	Uni Genf	268
Denis	Duboule	Uni Genf	269
Denis	Duboule	Uni Genf	270
Denis	Duboule	Uni Genf	271
Denis	Duboule	Uni Genf	272
Denis	Duboule	Uni Genf	273
Denis	Duboule	Uni Genf	274
Denis	Duboule	Uni Genf	275
Denis	Duboule	Uni Genf	276
Denis	Duboule	Uni Genf	277
Denis	Duboule	Uni Genf	278
Denis	Duboule	Uni Genf	279
Denis	Duboule	Uni Genf	280
Denis	Duboule	Uni Genf	281
Denis	Duboule	Uni Genf	282
Denis	Duboule	Uni Genf	283
Denis	Duboule	Uni Genf	284
Denis	Duboule	Uni Genf	285
Jean-François	Dufour	Uni Bern	286
Jean-François	Dufour	Uni Bern	287
François	Dufresne	Uni Lausanne	288
André-Gilles	Dumont	ETH Lausanne	289
Jean-Philippe	Dunand	Uni Neuenburg	290
Thomas	Dyllick	Uni St. Gallen	291
Thomas	Dyllick	Uni St. Gallen	292
Thomas	Dyllick	Uni St. Gallen	293
Thomas	Dyllick	Uni St. Gallen	294
Paul Joseph	Dyson	ETH Lausanne	295
Paul Joseph	Dyson	ETH Lausanne	296
Paul Joseph	Dyson	ETH Lausanne	297
Paul Joseph	Dyson	ETH Lausanne	298
Dietmar	Eberle	ETH Zürich	299
Anna	Ebers	Uni St. Gallen	300
Anna	Ebers	Uni St. Gallen	301
Matthias	Egger	Uni Bern	302
Matthias	Egger	Uni Bern	303
Matthias	Egger	Uni Bern	304
Patricia	Egli	Uni St. Gallen	305
Bernhard	Ehrenzeller	Uni St. Gallen	306
Bernhard	Ehrenzeller	Uni St. Gallen	307
Bernhard	Ehrenzeller	Uni St. Gallen	308
Bernhard	Ehrenzeller	Uni St. Gallen	309
Reiner	Eichenberger	Uni Freiburg	310
Reiner	Eichenberger	Uni Freiburg	311
Friedrich	Eisenbrand	ETH Lausanne	312
Florian	Elliker	Uni St. Gallen	313
Patrick	Emmenegger	Uni St. Gallen	314
Patrick	Emmenegger	Uni St. Gallen	315
David Lyndon	Emsley	ETH Lausanne	316
David Lyndon	Emsley	ETH Lausanne	317
David Lyndon	Emsley	ETH Lausanne	318
Christian	Enz	ETH Lausanne	319
Astrid	Epiney	Uni Freiburg	320
Thomas	Epper	Uni St. Gallen	321
Paolo	Ermanni	ETH Zürich	322
Beatrix	Eugster	Uni St. Gallen	323
Rüdiger	Fahlenbrach	ETH Lausanne	324
Rüdiger	Fahlenbrach	ETH Lausanne	325
Rüdiger	Fahlenbrach	ETH Lausanne	326
Jérôme Jean-Constant	Faist	ETH Zürich	327
Jérôme Jean-Constant	Faist	ETH Zürich	328
Boi	Faltings	ETH Lausanne	329
Boi	Faltings	ETH Lausanne	330
Boi	Faltings	ETH Lausanne	331
Roland	Fankhauser	Uni Basel	332
Roland	Fankhauser	Uni Basel	333
Roland	Fankhauser	Uni Basel	334
Roland	Fankhauser	Uni Basel	335
Roland	Fankhauser	Uni Basel	336
Roland	Fankhauser	Uni Basel	337
Roland	Fankhauser	Uni Basel	338
Roland	Fankhauser	Uni Basel	339
Roland	Fankhauser	Uni Basel	340
Georg	Fantner	ETH Lausanne	341
Georg	Fantner	ETH Lausanne	342
Pierre-André	Farine	Uni Neuenburg	343
Pierre-André	Farine	Uni Neuenburg	344
Pierre-André	Farine	Uni Neuenburg	345
Pierre-André	Farine	Uni Neuenburg	346
Pierre-André	Farine	Uni Neuenburg	347
Pierre-André	Farine	Uni Neuenburg	348
Pierre-André	Farine	Uni Neuenburg	349
Pierre-André	Farine	Uni Neuenburg	350
Pierre-André	Farine	Uni Neuenburg	351
Ambrogio	Fasoli	ETH Lausanne	352
Anne-Christine	Favre	Uni Lausanne	353
Martin	Fey	Uni Bern	354
Damir	Filipovic	ETH Lausanne	355
Matthias	Finger	ETH Lausanne	356
Matthias	Finger	ETH Lausanne	357
Matthias	Finger	ETH Lausanne	358
Peter Mathias	Fischer	Uni St. Gallen	359
Peter Mathias	Fischer	Uni St. Gallen	360
Alexander	Fust	Uni St. Gallen	361
Peter Mathias	Fischer	Uni St. Gallen	362
Elgar	Fleisch	Uni St. Gallen	363
Elgar	Fleisch	Uni St. Gallen	364
Elgar	Fleisch	Uni St. Gallen	365
Elgar	Fleisch	Uni St. Gallen	366
Elgar	Fleisch	Uni St. Gallen	367
Elgar	Fleisch	Uni St. Gallen	368
Elgar	Fleisch	Uni St. Gallen	369
Elgar	Fleisch	Uni St. Gallen	370
Elgar	Fleisch	Uni St. Gallen	371
Elgar	Fleisch	Uni St. Gallen	372
Elgar	Fleisch	Uni St. Gallen	373
Dario	Floreano	ETH Lausanne	374
Dario	Floreano	ETH Lausanne	375
Gerd	Folkers	Uni Basel	376
Gerd	Folkers	Uni Basel	377
Reto	Föllmi	Uni St. Gallen	378
Reto	Föllmi	Uni St. Gallen	379
Reto	Föllmi	Uni St. Gallen	380
Reto	Föllmi	Uni St. Gallen	381
Reto	Föllmi	Uni St. Gallen	382
Reto	Föllmi	Uni St. Gallen	383
Reto	Föllmi	Uni St. Gallen	384
Mario	Fontana	ETH Zürich	385
Anna	Fontcuberta Morral	ETH Lausanne	386
Anna	Fontcuberta Morral	ETH Lausanne	387
Anna	Fontcuberta Morral	ETH Lausanne	388
Anna	Fontcuberta Morral	ETH Lausanne	389
Anna	Fontcuberta Morral	ETH Lausanne	390
Dominique	Foray	ETH Lausanne	391
Dominique	Foray	ETH Lausanne	392
Dominique	Foray	ETH Lausanne	393
Dominique	Foray	ETH Lausanne	394
Dominique	Foray	ETH Lausanne	395
Peter	Fornaro	Uni Basel	396
László	Forró	ETH Lausanne	397
Till	Förster	Uni Basel	398
Joseph	Francois	Uni Bern	399
Joseph	Francois	Uni Bern	400
Joseph	Francois	Uni Bern	401
Geraldine	Frei	Uni St. Gallen	402
Geraldine	Frei	Uni St. Gallen	403
Geraldine	Frei	Uni St. Gallen	404
Thomas	Friedli	Uni St. Gallen	405
Thomas	Friedli	Uni St. Gallen	406
Thomas	Friedli	Uni St. Gallen	407
Thomas	Friedli	Uni St. Gallen	408
Thomas	Friedli	Uni St. Gallen	409
Martin	Fröhlich	ETH Lausanne	410
Emmanuel	Frossard	ETH Zürich	411
Pascal	Fua	ETH Lausanne	412
Pascal	Fua	ETH Lausanne	413
Roland	Füss	Uni St. Gallen	414
Roland	Füss	Uni St. Gallen	415
Roland	Füss	Uni St. Gallen	416
Alexander	Fust	Uni St. Gallen	417
Alexander	Fust	Uni St. Gallen	418
Karl	Gademann	Uni Zürich	419
Pascal	Gantenbein	Uni Basel	420
Oliver	Gassmann	Uni St. Gallen	421
Oliver	Gassmann	Uni St. Gallen	422
Oliver	Gassmann	Uni St. Gallen	423
Oliver	Gassmann	Uni St. Gallen	424
Oliver	Gassmann	Uni St. Gallen	425
Oliver	Gassmann	Uni St. Gallen	426
Oliver	Gassmann	Uni St. Gallen	427
Oliver	Gassmann	Uni St. Gallen	428
Oliver	Gassmann	Uni St. Gallen	429
Michael	Gastpar	ETH Lausanne	430
Michael	Gastpar	ETH Lausanne	431
Kersten	Geers	ETH Lausanne	432
Kersten	Geers	ETH Lausanne	433
Kersten	Geers	ETH Lausanne	434
Kersten	Geers	ETH Lausanne	435
Kersten	Geers	ETH Lausanne	436
Thomas	Geiser	Uni St. Gallen	437
Nikolaos	Geroliminis	ETH Lausanne	438
Nikolaos	Geroliminis	ETH Lausanne	439
Wulfram	Gerstner	ETH Lausanne	440
Rajna Nicole	Gibson Brandon	Uni Genf	441
Martinus	Gijs	ETH Lausanne	442
Philippe	Gillet	ETH Lausanne	443
Philippe	Gillet	ETH Lausanne	444
Philippe	Gillet	ETH Lausanne	445
Philippe	Gillet	ETH Lausanne	446
Philippe	Gillet	ETH Lausanne	447
Philippe	Gillet	ETH Lausanne	448
Philippe	Gillet	ETH Lausanne	449
Philippe	Gillet	ETH Lausanne	450
Hubert	Girault	ETH Lausanne	451
Hubert	Girault	ETH Lausanne	452
Hubert	Girault	ETH Lausanne	453
Hubert	Girault	ETH Lausanne	454
Nicolas	Gisin	Uni Genf	455
Rémy	Glardon	ETH Lausanne	456
Pierre	Gönczy	ETH Lausanne	457
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	458
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	459
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	460
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	461
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	462
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	463
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	464
Bruno	Gottstein	Uni Bern	465
Michael	Graetzel	ETH Lausanne	466
Michael	Graetzel	ETH Lausanne	467
Michael	Graetzel	ETH Lausanne	468
Michael	Graetzel	ETH Lausanne	469
Franz	Graf	USI Lugano	470
Franz	Graf	USI Lugano	471
Fabio Matteo	Gramazio	ETH Zürich	472
Nicolas	Grandjean	ETH Lausanne	473
Nicolas	Grandjean	ETH Lausanne	474
Nicolas	Grandjean	ETH Lausanne	475
Nicolas	Grandjean	ETH Lausanne	476
Dietmar	Grichnik	Uni St. Gallen	477
Dietmar	Grichnik	Uni St. Gallen	478
Dietmar	Grichnik	Uni St. Gallen	479
Dietmar	Grichnik	Uni St. Gallen	480
Dietmar	Grichnik	Uni St. Gallen	481
Markus Hans	Gross	ETH Zürich	482
Markus Hans	Gross	ETH Zürich	483
Markus Hans	Gross	ETH Zürich	484
Gudela	Grote	ETH Zürich	485
Marc	Gruber	ETH Lausanne	486
Marc	Gruber	ETH Lausanne	487
Marc	Gruber	ETH Lausanne	488
Marc	Gruber	ETH Lausanne	489
Marc	Gruber	ETH Lausanne	490
Marc	Gruber	ETH Lausanne	491
Nicolas	Gruber	ETH Zürich	492
Wilhelm	Gruissem	ETH Zürich	493
Andreas	Grüner	Uni St. Gallen	494
Lukas	Gschwend	Uni St. Gallen	495
Lukas	Gschwend	Uni St. Gallen	496
Lukas	Gschwend	Uni St. Gallen	497
Lukas	Gschwend	Uni St. Gallen	498
Rachid	Guerraoui	ETH Lausanne	499
David	Gugerli	Uni Zürich	500
Harry	Gugger	ETH Lausanne	501
Harry	Gugger	ETH Lausanne	502
Harry	Gugger	ETH Lausanne	503
Harry	Gugger	ETH Lausanne	504
Harry	Gugger	ETH Lausanne	505
Carlotta	Guiducci	ETH Lausanne	506
Olivier	Guillod	Uni Neuenburg	507
Olivier	Guillod	Uni Neuenburg	508
Olivier	Guillod	Uni Neuenburg	509
Olivier	Guillod	Uni Neuenburg	510
Detlef	Günther	ETH Zürich	511
Detlef	Günther	ETH Zürich	512
Detlef	Günther	ETH Zürich	513
Detlef	Günther	ETH Zürich	514
Detlef	Günther	ETH Zürich	515
Detlef	Günther	ETH Zürich	516
Detlef	Günther	ETH Zürich	517
Detlef	Günther	ETH Zürich	518
Lino	Guzzella	ETH Zürich	519
Lino	Guzzella	ETH Zürich	520
Lino	Guzzella	ETH Zürich	521
Lino	Guzzella	ETH Zürich	522
Lino	Guzzella	ETH Zürich	523
Lino	Guzzella	ETH Zürich	524
Lino	Guzzella	ETH Zürich	525
Lino	Guzzella	ETH Zürich	526
Lino	Guzzella	ETH Zürich	527
Lino	Guzzella	ETH Zürich	528
Lino	Guzzella	ETH Zürich	529
Lino	Guzzella	ETH Zürich	530
Lino	Guzzella	ETH Zürich	531
Lino	Guzzella	ETH Zürich	532
Lino	Guzzella	ETH Zürich	533
Lino	Guzzella	ETH Zürich	534
Lino	Guzzella	ETH Zürich	535
Lino	Guzzella	ETH Zürich	536
Ina	Habermann	Uni Basel	537
Ernst	Hafen	ETH Zürich	538
Albert	Hafner	Uni Bern	539
Anders	Hagfeldt	ETH Lausanne	540
Anders	Hagfeldt	ETH Lausanne	541
Anders	Hagfeldt	ETH Lausanne	542
Anders	Hagfeldt	ETH Lausanne	543
Anders	Hagfeldt	ETH Lausanne	544
Philippe A.	Halban	Uni Genf	545
Douglas	Hanahan	ETH Lausanne	546
Douglas	Hanahan	ETH Lausanne	547
Olivier	Hari	Uni Neuenburg	548
Andreas	Härter	Uni St. Gallen	549
Andreas	Härter	Uni St. Gallen	550
Vassily	Hatzimanikatis	ETH Lausanne	551
Vassily	Hatzimanikatis	ETH Lausanne	552
Vassily	Hatzimanikatis	ETH Lausanne	553
Sophia	Haussener	ETH Lausanne	554
Cécile	Hébert	ETH Lausanne	555
Cécile	Hébert	ETH Lausanne	556
Cécile	Hébert	ETH Lausanne	557
Cécile	Hébert	ETH Lausanne	558
Cécile	Hébert	ETH Lausanne	559
Christian	Heinis	ETH Lausanne	560
Christoph	Heinrich	ETH Zürich	561
Stefanie	Hellweg	ETH Zürich	562
Simon	Henein	ETH Lausanne	563
Simon	Henein	ETH Lausanne	564
Elke	Hentschel	Uni Bern	565
Janet	Hering	ETH Lausanne	566
Janet	Hering	ETH Lausanne	567
Janet	Hering	ETH Lausanne	568
Janet	Hering	ETH Lausanne	569
Janet	Hering	ETH Lausanne	570
Janet	Hering	ETH Lausanne	571
Janet	Hering	ETH Lausanne	572
Janet	Hering	ETH Lausanne	573
Janet	Hering	ETH Lausanne	574
Janet	Hering	ETH Lausanne	575
Janet	Hering	ETH Lausanne	576
Janet	Hering	ETH Lausanne	577
Janet	Hering	ETH Lausanne	578
Janet	Hering	ETH Lausanne	579
Janet	Hering	ETH Lausanne	580
Janet	Hering	ETH Lausanne	581
Hans Peter	Herzig	ETH Lausanne	582
Hans Peter	Herzig	ETH Lausanne	583
Hans Peter	Herzig	ETH Lausanne	584
Hans Peter	Herzig	ETH Lausanne	585
Hans Peter	Herzig	ETH Lausanne	586
Hans Peter	Herzig	ETH Lausanne	587
Christian	Hesse	Uni Bern	588
Jan Sickmann	Hesthaven	ETH Lausanne	589
Jan Sickmann	Hesthaven	ETH Lausanne	590
Jan Sickmann	Hesthaven	ETH Lausanne	591
Johannes	Heverhagen	Uni Bern	592
Hans H.	Hirsch	Uni Basel	593
Roland	Hodler	Uni St. Gallen	594
Maarten J.F.M.	Hoenen	Uni Basel	595
Maarten J.F.M.	Hoenen	Uni Basel	596
Sibylle	Hofer	Uni Bern	597
Sibylle	Hofer	Uni Bern	598
Christian Pieter	Hoffmann	Uni St. Gallen	599
Christian Pieter	Hoffmann	Uni St. Gallen	600
Christian Pieter	Hoffmann	Uni St. Gallen	601
Christian Pieter	Hoffmann	Uni St. Gallen	602
Christian Pieter	Hoffmann	Uni St. Gallen	603
Heinrich	Hofmann	ETH Lausanne	604
Heinrich	Hofmann	ETH Lausanne	605
Heinrich	Hofmann	ETH Lausanne	606
Heinrich	Hofmann	ETH Lausanne	607
Heinrich	Hofmann	ETH Lausanne	608
Heinrich	Hofmann	ETH Lausanne	609
Joerg	Hofstetter	Uni St. Gallen	610
Joerg	Hofstetter	Uni St. Gallen	611
Ottmar	Holdenrieder	ETH Zürich	612
André	Holenstein	Uni Bern	613
André	Holenstein	Uni Bern	614
André	Holenstein	Uni Bern	615
Christof	Holliger	ETH Lausanne	616
Stephanie	Hrubesch	Uni Bern	617
Xile	Hu	ETH Lausanne	618
Jeffrey	Huang	ETH Lausanne	619
Jeffrey	Huang	ETH Lausanne	620
Jeffrey	Huang	ETH Lausanne	621
Jean-Pierre	Hubaux	ETH Lausanne	622
Jeffrey Alan	Hubbell	ETH Lausanne	623
Jeffrey Alan	Hubbell	ETH Lausanne	624
Jeffrey Alan	Hubbell	ETH Lausanne	625
Jeffrey Alan	Hubbell	ETH Lausanne	626
Jeffrey Alan	Hubbell	ETH Lausanne	627
Jeffrey Alan	Hubbell	ETH Lausanne	628
Jeffrey Alan	Hubbell	ETH Lausanne	629
Jeffrey Alan	Hubbell	ETH Lausanne	630
Jeffrey Alan	Hubbell	ETH Lausanne	631
Jeffrey Alan	Hubbell	ETH Lausanne	632
Konrad	Hungerbühler	ETH Zürich	633
Thomas	Hunkeler	Uni Freiburg	634
Thomas	Hunkeler	Uni Freiburg	635
Thomas	Hunkeler	Uni Freiburg	636
Thomas	Hunkeler	Uni Freiburg	637
Thomas	Hunkeler	Uni Freiburg	638
Bettina	Hürlimann-Kaup	Uni Freiburg	639
Paolo	Ienne	ETH Lausanne	640
Paolo	Ienne	ETH Lausanne	641
Paolo	Ienne	ETH Lausanne	642
Alexander	Ilic	Uni St. Gallen	643
Alexander	Ilic	Uni St. Gallen	644
Alexander	Ilic	Uni St. Gallen	645
Alexander	Ilic	Uni St. Gallen	646
Alexander	Ilic	Uni St. Gallen	647
Karin Mirjam	Ingold	Uni Bern	648
Rolf	Ingold	Uni Freiburg	649
Mihai Adrian	Ionescu	ETH Lausanne	650
Mihai Adrian	Ionescu	ETH Lausanne	651
Mihai Adrian	Ionescu	ETH Lausanne	652
Mihai Adrian	Ionescu	ETH Lausanne	653
Christian	Jackowski	Uni Zürich	654
Wolfgang	Jenewein	Uni St. Gallen	655
Patrick	Jenny	ETH Zürich	656
Patrick	Jenny	ETH Zürich	657
Titus Andreas	Jenny	Uni Freiburg	658
Kai	Johnsson	ETH Lausanne	659
Kai	Johnsson	ETH Lausanne	660
Kai	Johnsson	ETH Lausanne	661
Kai	Johnsson	ETH Lausanne	662
Colin	Jones	ETH Lausanne	663
Reinhard	Jung	Uni St. Gallen	664
Reinhard	Jung	Uni St. Gallen	665
Reinhard	Jung	Uni St. Gallen	666
Bettina	Kahil	Uni Lausanne	667
Hedwig J.	Kaiser	Uni Basel	668
Hedwig J.	Kaiser	Uni Basel	669
Hedwig J.	Kaiser	Uni Basel	670
Frédéric	Kaplan	ETH Lausanne	671
Frédéric	Kaplan	ETH Lausanne	672
Frédéric	Kaplan	ETH Lausanne	673
Frédéric	Kaplan	ETH Lausanne	674
Elyahou	Kapon	ETH Lausanne	675
Elyahou	Kapon	ETH Lausanne	676
Christos	Katsaros	Uni Bern	677
Vincent	Kaufmann	ETH Lausanne	678
Vincent	Kaufmann	ETH Lausanne	679
Vincent	Kaufmann	ETH Lausanne	680
Walter Hans Jakob	Kaufmann	ETH Zürich	681
Thomas	Keller	ETH Lausanne	682
Thomas	Keller	ETH Lausanne	683
Klaus	Kern	ETH Lausanne	684
Harm-Anton	Klok	ETH Lausanne	685
Hubert	Klumpner	ETH Zürich	686
Matthias	Kohler	ETH Zürich	687
Tamar	Kohn Johnson	ETH Lausanne	688
Tamar	Kohn Johnson	ETH Lausanne	689
Tamar	Kohn Johnson	ETH Lausanne	690
Thomas	Koller	Uni Bern	691
Andreas	Kotte	Uni Bern	692
Andreas	Kotte	Uni Bern	693
Fréderic	Krauskopf	Uni Bern	694
Fréderic	Krauskopf	Uni Bern	695
Fréderic	Krauskopf	Uni Bern	696
Wilhelm	Krek	ETH Zürich	697
Markus	Kreutzer	Uni St. Gallen	698
Harley	Krohmer	Uni Bern	699
Harley	Krohmer	Uni Bern	700
Daniel	Kuhn	ETH Lausanne	701
Peter Viktor	Kunz	Uni Bern	702
Peter Viktor	Kunz	Uni Bern	703
Peter Viktor	Kunz	Uni Bern	704
Tomi	Laamanen	Uni St. Gallen	705
Tomi	Laamanen	Uni St. Gallen	706
Tomi	Laamanen	Uni St. Gallen	707
Stéphanie	Lacour	ETH Lausanne	708
Andreas	Ladner	Uni Bern	709
Rafael	Lalive	Uni Lausanne	710
Lyesse	Laloui	ETH Lausanne	711
Lyesse	Laloui	ETH Lausanne	712
Lyesse	Laloui	ETH Lausanne	713
Lyesse	Laloui	ETH Lausanne	714
Lyesse	Laloui	ETH Lausanne	715
Stuart	Lane	Uni Lausanne	716
Antonio	Lanzavecchia	ETH Zürich	717
James	Larus	ETH Lausanne	718
Hilal	Lashuel	ETH Lausanne	719
Hilal	Lashuel	ETH Lausanne	720
Hilal	Lashuel	ETH Lausanne	721
Theo	Lasser	ETH Lausanne	722
Anna	Lauber-Biason	Uni Freiburg	723
Yusuf	Leblebici	ETH Lausanne	724
Christoph	Lechner	Uni St. Gallen	725
Christoph	Lechner	Uni St. Gallen	726
Tosso	Leeb	Uni Bern	727
Dirk	Lehmkuhl	Uni St. Gallen	728
Dirk	Lehmkuhl	Uni St. Gallen	729
Michael	Lehning	ETH Lausanne	730
Peter	Leibfried	Uni St. Gallen	731
Peter	Leibfried	Uni St. Gallen	732
Peter	Leibfried	Uni St. Gallen	733
Peter	Leibfried	Uni St. Gallen	734
Peter	Leibfried	Uni St. Gallen	735
Peter	Leibfried	Uni St. Gallen	736
Jan Marco	Leimeister	Uni St. Gallen	737
Jan Marco	Leimeister	Uni St. Gallen	738
Jan Marco	Leimeister	Uni St. Gallen	739
Jan Marco	Leimeister	Uni St. Gallen	740
Jan Marco	Leimeister	Uni St. Gallen	741
Jan Marco	Leimeister	Uni St. Gallen	742
Walter	Leimgruber	Uni Freiburg	743
Martin	Lengwiler	Uni Basel	744
Martin	Lengwiler	Uni Basel	745
Yvan	Lengwiler	Uni Basel	746
Yvan	Lengwiler	Uni Basel	747
Yvan	Lengwiler	Uni Basel	748
Yvan	Lengwiler	Uni Basel	749
Arjen	Lenstra	ETH Lausanne	750
Christian	Leumann	Uni Bern	751
Christian	Leumann	Uni Bern	752
Christian	Leumann	Uni Bern	753
Christian	Leumann	Uni Bern	754
Jonathan	Levine	ETH Zürich	755
Andreas	Lienhard	Uni Bern	756
Joachim	Lingner	ETH Lausanne	757
Claudio	Loderer	Uni Bern	758
Hans-Andrea	Loeliger	ETH Zürich	759
Hans-Andrea	Loeliger	ETH Zürich	760
Roland	Logé	ETH Lausanne	761
Antonio	Loprieno	Uni Basel	762
Antonio	Loprieno	Uni Basel	763
Antonio	Loprieno	Uni Basel	764
Antonio	Loprieno	Uni Basel	765
Antonio	Loprieno	Uni Basel	766
Scott	Loren	Uni St. Gallen	767
Oliver	Lubrich	Uni Bern	768
Matthias	Lütolf	ETH Lausanne	769
Matthias	Lütolf	ETH Lausanne	770
Elisio	Macamo	Uni Basel	771
Sebastian	Maerkl	ETH Lausanne	772
Pierre	Magistretti	ETH Lausanne	773
Pierre	Magistretti	ETH Lausanne	774
Pascal	Mahon	Uni Neuenburg	775
Pascal	Mahon	Uni Neuenburg	776
Pascal	Mahon	Uni Neuenburg	777
Pascal	Mahon	Uni Neuenburg	778
Pascal	Mahon	Uni Neuenburg	779
Pascal	Mahon	Uni Neuenburg	780
Semyon	Malamud	ETH Lausanne	781
Semyon	Malamud	ETH Lausanne	782
Jan-Anders	Manson	ETH Lausanne	783
Jan-Anders	Manson	ETH Lausanne	784
Jan-Anders	Manson	ETH Lausanne	785
Jan-Anders	Manson	ETH Lausanne	786
Adriano	Marantelli	Uni Bern	787
Adriano	Marantelli	Uni Bern	788
Adriano	Marantelli	Uni Bern	789
Bruno	Marchand	ETH Lausanne	790
Bruno	Marchand	ETH Lausanne	791
Bruno	Marchand	ETH Lausanne	792
Bruno	Marchand	ETH Lausanne	793
Bruno	Marchand	ETH Lausanne	794
Bruno	Marchand	ETH Lausanne	795
Bruno	Marchand	ETH Lausanne	796
Julia	Marewski	Uni Lausanne	797
Giorgio	Margaritondo	ETH Lausanne	798
Giorgio	Margaritondo	ETH Lausanne	799
Giorgio	Margaritondo	ETH Lausanne	800
Giorgio	Margaritondo	ETH Lausanne	801
Giorgio	Margaritondo	ETH Lausanne	802
Giorgio	Margaritondo	ETH Lausanne	803
Giorgio	Margaritondo	ETH Lausanne	804
Giorgio	Margaritondo	ETH Lausanne	805
Giorgio	Margaritondo	ETH Lausanne	806
Giorgio	Margaritondo	ETH Lausanne	807
Pierre-Alain	Mariaux	Uni Neuenburg	808
Henry	Markram	ETH Lausanne	809
Henry	Markram	ETH Lausanne	810
Henry	Markram	ETH Lausanne	811
Henry	Markram	ETH Lausanne	812
Olivier	Martin	ETH Lausanne	813
Ulrich	Maurer	ETH Zürich	814
Ulrich	Maurer	ETH Zürich	815
Heike	Mayer	Uni Bern	816
Mirko	Meboldt	ETH Zürich	817
Anders	Meibom	ETH Lausanne	818
Andreas	Meier	Uni Freiburg	819
Andreas	Meier	Uni Freiburg	820
Andreas	Meier	Uni Freiburg	821
Philippe	Meier	Uni Lausanne	822
Marcel	Meili	ETH Zürich	823
Marcel	Meili	ETH Zürich	824
Marcel	Meili	ETH Zürich	825
Marcel	Meili	ETH Zürich	826
Marcel	Meili	ETH Zürich	827
Marcel	Meili	ETH Zürich	828
Sacha Leo Cornel	Menz	ETH Zürich	829
Sacha Leo Cornel	Menz	ETH Zürich	830
Nicolas	Mermod	Uni Lausanne	831
Joël	Mesot	ETH Lausanne	832
Ulrich	Mosch	Uni Genf	833
Joël	Mesot	ETH Lausanne	834
Joël	Mesot	ETH Lausanne	835
Joël	Mesot	ETH Lausanne	836
Joël	Mesot	ETH Lausanne	837
Joël	Mesot	ETH Lausanne	838
Joël	Mesot	ETH Lausanne	839
Joël	Mesot	ETH Lausanne	840
Joël	Mesot	ETH Lausanne	841
Jean-Pierre	Métraux	Uni Freiburg	842
Tobias	Mettler	Uni St. Gallen	843
Meike	Mevissen	Uni Bern	844
Klaus	Mezger	Uni Bern	845
Silvestro	Micera	ETH Lausanne	846
Frédéric	Mila	ETH Lausanne	847
Frédéric	Mila	ETH Lausanne	848
José del Rocío	Millán Ruiz	ETH Lausanne	849
José del Rocío	Millán Ruiz	ETH Lausanne	850
José del Rocío	Millán Ruiz	ETH Lausanne	851
Paul	Mohacsi	Uni Bern	852
Ernst	Mohr	Uni St. Gallen	853
Ernst	Mohr	Uni St. Gallen	854
Ernst	Mohr	Uni St. Gallen	855
Jean-François	Molinari	ETH Lausanne	856
Klaus	Möller	Uni St. Gallen	857
Klaus	Möller	Uni St. Gallen	858
Klaus	Möller	Uni St. Gallen	859
Klaus	Möller	Uni St. Gallen	860
Klaus	Möller	Uni St. Gallen	861
Josef	Mondl	Uni St. Gallen	862
Nicolas	Monod	ETH Lausanne	863
Nicolas	Monod	ETH Lausanne	864
Manfred	Morari	ETH Zürich	865
Massimo	Morbidelli	ETH Zürich	866
Erwan	Morellec	ETH Lausanne	867
Erwan	Morellec	ETH Lausanne	868
Bruno	Moretti	Uni Bern	869
Bruno	Moretti	Uni Bern	870
Bruno	Moretti	Uni Bern	871
Stephan	Morgenthaler	ETH Lausanne	872
Stephan	Morgenthaler	ETH Lausanne	873
Stephan	Morgenthaler	ETH Lausanne	874
Stefan	Morkötter	Uni St. Gallen	875
Stefan	Morkötter	Uni St. Gallen	876
Stefan	Morkötter	Uni St. Gallen	877
Andreas	Mortensen	ETH Lausanne	878
Andreas	Mortensen	ETH Lausanne	879
Andreas	Mortensen	ETH Lausanne	880
Andreas	Mortensen	ETH Lausanne	881
Andreas	Mortensen	ETH Lausanne	882
Andreas	Mortensen	ETH Lausanne	883
Andreas	Mortensen	ETH Lausanne	884
Andreas	Mortensen	ETH Lausanne	885
Andreas	Mortensen	ETH Lausanne	886
Ulrich	Mosch	Uni Genf	887
Christophe	Moser	ETH Lausanne	888
Christophe	Moser	ETH Lausanne	889
Roger	Moser	Uni St. Gallen	890
Roger	Moser	Uni St. Gallen	891
Roger	Moser	Uni St. Gallen	892
Juan Ramon	Mosig	ETH Lausanne	893
Juan Ramon	Mosig	ETH Lausanne	894
Urs Peter	Mosimann	Uni Bern	895
Thomas	Mountford	ETH Lausanne	896
Christoph	Müller	Uni Bern	897
Christoph A.	Müller	Uni St. Gallen	898
Christoph A.	Müller	Uni St. Gallen	899
Christoph A.	Müller	Uni St. Gallen	900
Christoph A.	Müller	Uni St. Gallen	901
Christoph A.	Müller	Uni St. Gallen	902
Christoph A.	Müller	Uni St. Gallen	903
Christoph A.	Müller	Uni St. Gallen	904
Christoph A.	Müller	Uni St. Gallen	905
Christoph A.	Müller	Uni St. Gallen	906
Christoph A.	Müller	Uni St. Gallen	907
Roland	Müller	Uni St. Gallen	908
Roland	Müller	Uni St. Gallen	909
Roland	Müller	Uni St. Gallen	910
Roland	Müller	Uni St. Gallen	911
Roland	Müller	Uni St. Gallen	912
Roland	Müller	Uni St. Gallen	913
Roland	Müller	Uni St. Gallen	914
Roland	Müller	Uni St. Gallen	915
Roland	Müller	Uni St. Gallen	916
Roland	Müller	Uni St. Gallen	917
Roland	Müller	Uni St. Gallen	918
Günter	Müller-Stewens	Uni St. Gallen	919
Günter	Müller-Stewens	Uni St. Gallen	920
Günter	Müller-Stewens	Uni St. Gallen	921
Günter	Müller-Stewens	Uni St. Gallen	922
Günter	Müller-Stewens	Uni St. Gallen	923
Günter	Müller-Stewens	Uni St. Gallen	924
Günter	Müller-Stewens	Uni St. Gallen	925
Günter	Müller-Stewens	Uni St. Gallen	926
Günter	Müller-Stewens	Uni St. Gallen	927
Günter	Müller-Stewens	Uni St. Gallen	928
Primus-Eugen	Mullis	Uni Bern	929
Primus-Eugen	Mullis	Uni Bern	930
Primus-Eugen	Mullis	Uni Bern	931
Simone	Munsch	Uni Freiburg	932
Simone	Munsch	Uni Freiburg	933
Simone	Munsch	Uni Freiburg	934
Simone	Munsch	Uni Freiburg	935
Aurelio	Muttoni	ETH Lausanne	936
Aurelio	Muttoni	ETH Lausanne	937
Aurelio	Muttoni	ETH Lausanne	938
Aurelio	Muttoni	ETH Lausanne	939
Felix	Naef	ETH Lausanne	940
Felix	Naef	ETH Lausanne	941
Peter	Nagel	Uni Basel	942
Tatsuya	Nakada	ETH Lausanne	943
Tatsuya	Nakada	ETH Lausanne	944
Tatsuya	Nakada	ETH Lausanne	945
Tatsuya	Nakada	ETH Lausanne	946
Tatsuya	Nakada	ETH Lausanne	947
Tatsuya	Nakada	ETH Lausanne	948
Tatsuya	Nakada	ETH Lausanne	949
Tobias	Nef	Uni Bern	950
Bradley	Nelson	ETH Zürich	951
Bradley	Nelson	ETH Zürich	952
Bradley	Nelson	ETH Zürich	953
Dario	Neri	ETH Zürich	954
Dario	Neri	ETH Zürich	955
Klaus	Neumann-Braun	Uni Basel	956
Georg	Nöldeke	Uni Basel	957
Georg	Nöldeke	Uni Basel	958
Lutz-Peter	Nolte	Uni Bern	959
Lutz-Peter	Nolte	Uni Bern	960
Daniel	Odermatt	Uni Bern	961
Daniel	Odermatt	Uni Bern	962
Daniel	Odermatt	Uni Bern	963
Daniel	Odermatt	Uni Bern	964
Daniel	Odermatt	Uni Bern	965
Daniel	Odermatt	Uni Bern	966
Daniel	Odermatt	Uni Bern	967
Daniel	Odermatt	Uni Bern	968
Daniel	Odermatt	Uni Bern	969
Daniel	Odermatt	Uni Bern	970
Daniel	Odermatt	Uni Bern	971
Martin	Odersky	ETH Lausanne	972
Luca	Ortelli	ETH Lausanne	973
Luca	Ortelli	ETH Lausanne	974
Luca	Ortelli	ETH Lausanne	975
Daniel	Oyon	Uni Lausanne	976
Daniel	Oyon	Uni Lausanne	977
Daniel	Oyon	Uni Lausanne	978
Jànos	Pach	ETH Lausanne	979
Mario	Paolone	ETH Lausanne	980
Mario	Paolone	ETH Lausanne	981
Mario	Paolone	ETH Lausanne	982
Ioannis	Papadopoulos	Uni Lausanne	983
Andreas	Papassotiropoulos	Uni Basel	984
Marc	Parlange	ETH Lausanne	985
Mark	Pauly	ETH Lausanne	986
Andreas	Pautz	ETH Lausanne	987
Dominique	Perrault	ETH Lausanne	988
Dominique	Perrault	ETH Lausanne	989
Walter	Perrig	Uni Bern	990
Walter	Perrig	Uni Bern	991
Bertrand	Perrin	Uni Freiburg	992
Bertrand	Perrin	Uni Freiburg	993
Hans Jörg	Peter	Uni Lausanne	994
Georg	Pfleiderer	Uni Basel	995
Pascal	Pichonnaz	Uni Freiburg	996
Pascal	Pichonnaz	Uni Freiburg	997
Pascal	Pichonnaz	Uni Freiburg	998
Mark	Pieth	Uni Basel	999
Yves	Pigneur	Uni Lausanne	1000
Denis	Piotet	Uni Lausanne	1001
Fernando	Porte Agel	ETH Lausanne	1002
Alexandre	Pouget	Uni Genf	1003
Dimos	Poulikakos	ETH Zürich	1004
Dimos	Poulikakos	ETH Zürich	1005
Demetri	Psaltis	ETH Lausanne	1006
Demetri	Psaltis	ETH Lausanne	1007
Alfio	Quarteroni	ETH Lausanne	1008
Nicolas	Queloz	Uni Freiburg	1009
Aleksandra	Radenovic	ETH Lausanne	1010
Freddy	Radtke	ETH Lausanne	1011
Freddy	Radtke	ETH Lausanne	1012
Michel	Rappaz	ETH Lausanne	1013
Michel	Rappaz	ETH Lausanne	1014
Michel	Rappaz	ETH Lausanne	1015
Michel	Rappaz	ETH Lausanne	1016
Michel	Rappaz	ETH Lausanne	1017
Björn	Rasch	Uni Basel	1018
Stefan	Rebenich	Uni Bern	1019
Sven	Reinecke	Uni St. Gallen	1020
Sven	Reinecke	Uni St. Gallen	1021
Philippe	Renaud	ETH Lausanne	1022
Philippe	Renaud	ETH Lausanne	1023
Jean-Claude	Reubi	Uni Bern	1024
Emmanuel	Rey	ETH Lausanne	1025
Emmanuel	Rey	ETH Lausanne	1026
Emmanuel	Rey	ETH Lausanne	1027
Cyrill P.	Rigamonti	Uni Bern	1028
Andrea	Rinaldo	ETH Lausanne	1029
Andrea	Rinaldo	ETH Lausanne	1030
Andrea	Rinaldo	ETH Lausanne	1031
Andrea	Rinaldo	ETH Lausanne	1032
Leonid	Rivkin	ETH Lausanne	1033
Leonid	Rivkin	ETH Lausanne	1034
Leonid	Rivkin	ETH Lausanne	1035
Leonid	Rivkin	ETH Lausanne	1036
Leonid	Rivkin	ETH Lausanne	1037
Thomas	Rizzo	ETH Lausanne	1038
Vito	Roberto	Uni St. Gallen	1039
Vito	Roberto	Uni St. Gallen	1040
Vito	Roberto	Uni St. Gallen	1041
Johan Olof Anders	Robertsson	ETH Zürich	1042
Ivan	Rodriguez	Uni Genf	1043
Ivan	Rodriguez	Uni Genf	1044
Peter	Rohner	Uni St. Gallen	1045
Peter	Rohner	Uni St. Gallen	1046
Peter	Rohner	Uni St. Gallen	1047
Peter	Rohner	Uni St. Gallen	1048
Peter	Rohner	Uni St. Gallen	1049
Peter	Rohner	Uni St. Gallen	1050
Peter	Rohner	Uni St. Gallen	1051
Stephan	Rohr	Uni Bern	1052
Pascal	Roman	Uni Lausanne	1053
Ursula	Röthlisberger	ETH Lausanne	1054
Ursula	Röthlisberger	ETH Lausanne	1055
Ursula	Röthlisberger	ETH Lausanne	1056
Ursula	Röthlisberger	ETH Lausanne	1057
Ursula	Röthlisberger	ETH Lausanne	1058
Ursula	Röthlisberger	ETH Lausanne	1059
Philipp	Rudolf von Rohr	ETH Zürich	1060
Thomas	Rudolph	Uni St. Gallen	1061
Thomas	Rudolph	Uni St. Gallen	1062
Thomas	Rudolph	Uni St. Gallen	1063
Curzio	Rüegg	Uni Freiburg	1064
Johannes	Rüegg-Stürm	Uni St. Gallen	1065
Alfred	Rufer	ETH Lausanne	1066
Alfred	Rufer	ETH Lausanne	1067
Alfred	Rufer	ETH Lausanne	1068
Alfred	Rufer	ETH Lausanne	1069
Alfred	Rufer	ETH Lausanne	1070
Alfred	Rufer	ETH Lausanne	1071
Flemming	Ruud	Uni St. Gallen	1072
Peter	Ryser	ETH Lausanne	1073
Peter	Ryser	ETH Lausanne	1074
Peter	Ryser	ETH Lausanne	1075
Peter	Ryser	ETH Lausanne	1076
Peter	Ryser	ETH Lausanne	1077
Martin O.	Saar	ETH Zürich	1078
Ian	Sanders	Uni Lausanne	1079
Maria del Carmen	Sandi Perez	ETH Lausanne	1080
Maria del Carmen	Sandi Perez	ETH Lausanne	1081
Maria del Carmen	Sandi Perez	ETH Lausanne	1082
Maria del Carmen	Sandi Perez	ETH Lausanne	1083
Maria del Carmen	Sandi Perez	ETH Lausanne	1084
Jean-Louis	Scartezzini	ETH Lausanne	1085
Jean-Louis	Scartezzini	ETH Lausanne	1086
Jean-Louis	Scartezzini	ETH Lausanne	1087
Dirk	Schäfer	Uni St. Gallen	1088
Dirk	Schäfer	Uni St. Gallen	1089
Kuno	Schedler	Uni St. Gallen	1090
Kuno	Schedler	Uni St. Gallen	1091
Kuno	Schedler	Uni St. Gallen	1092
Markus	Schefer	Uni Basel	1093
Frank	Scheffold	Uni Freiburg	1094
Laurent	Schild	Uni Lausanne	1095
Benjamin	Schindler	Uni St. Gallen	1096
Benjamin	Schindler	Uni St. Gallen	1097
Benjamin	Schindler	Uni St. Gallen	1098
Benjamin	Schindler	Uni St. Gallen	1099
Benjamin	Schindler	Uni St. Gallen	1100
Benjamin	Schindler	Uni St. Gallen	1101
Benjamin	Schindler	Uni St. Gallen	1102
Benjamin	Schindler	Uni St. Gallen	1103
Benjamin	Schindler	Uni St. Gallen	1104
Anton	Schleiss	ETH Lausanne	1105
Anton	Schleiss	ETH Lausanne	1106
Anton	Schleiss	ETH Lausanne	1107
Anton	Schleiss	ETH Lausanne	1108
Anton	Schleiss	ETH Lausanne	1109
Anton	Schleiss	ETH Lausanne	1110
Fritz	Schlunegger	Uni Bern	1111
Arno	Schlüter	ETH Zürich	1112
Arno	Schlüter	ETH Zürich	1113
Hato	Schmeiser	Uni St. Gallen	1114
Hato	Schmeiser	Uni St. Gallen	1115
Matthias	Schmidt	Uni Basel	1116
Peter	Schneemann	Uni Bern	1117
Peter	Schneemann	Uni Bern	1118
Olivier	Schneider	ETH Lausanne	1119
Olivier	Schneider	ETH Lausanne	1120
Olivier	Schneider	ETH Lausanne	1121
Olivier	Schneider	ETH Lausanne	1122
Tobias	Schneider	ETH Lausanne	1123
André	Schneider	Uni Neuenburg	1124
Paul	Schönsleben	ETH Zürich	1125
Paul	Schönsleben	ETH Zürich	1126
Renate	Schubert	ETH Zürich	1127
Rainer	Schulin	ETH Zürich	1128
Reinhard	Schulze	Uni Bern	1129
Torsten	Schwede	Uni Basel	1130
Ingeborg	Schwenzer	Uni Basel	1131
Karen	Scrivener	ETH Lausanne	1132
Karen	Scrivener	ETH Lausanne	1133
Karen	Scrivener	ETH Lausanne	1134
Ralf	Seifert	ETH Lausanne	1135
Nava	Setter	ETH Lausanne	1136
Kay	Severin	ETH Lausanne	1137
Mohammad Amin	Shokrollahi	ETH Lausanne	1138
Roland Yves	Siegwart	ETH Zürich	1139
Roland Yves	Siegwart	ETH Zürich	1140
Roland Yves	Siegwart	ETH Zürich	1141
Roland Yves	Siegwart	ETH Zürich	1142
Joseph	Sifakis	ETH Lausanne	1143
Joseph	Sifakis	ETH Lausanne	1144
Hans-Uwe	Simon	Uni Bern	1145
Hans-Uwe	Simon	Uni Bern	1146
Hans-Uwe	Simon	Uni Bern	1147
Stanislav	Smirnov	Uni Genf	1148
Stanislav	Smirnov	Uni Genf	1149
Berend	Smit	ETH Lausanne	1150
Berend	Smit	ETH Lausanne	1151
Ian	Smith	ETH Lausanne	1152
Paul	Söderlind	Uni St. Gallen	1153
Nils	Soguel	Uni Lausanne	1154
Fabien	Sorin	ETH Lausanne	1155
Fabien	Sorin	ETH Lausanne	1156
Didier	Sornette	ETH Zürich	1157
David	Spreng	Uni Bern	1158
Laurent	Stalder	ETH Zürich	1159
Leo	Staub	Uni St. Gallen	1160
Leo	Staub	Uni St. Gallen	1161
Leo	Staub	Uni St. Gallen	1162
Leo	Staub	Uni St. Gallen	1163
Leo	Staub	Uni St. Gallen	1164
Leo	Staub	Uni St. Gallen	1165
Aldo	Steinfeld	ETH Zürich	1166
Aldo	Steinfeld	ETH Zürich	1167
Daniel	Steingruber	Uni St. Gallen	1168
Hubert	Steinke	Uni Bern	1169
Hubert	Steinke	Uni Bern	1170
Hubert	Steinke	Uni Bern	1171
Hubert	Steinke	Uni Bern	1172
Hubert	Steinke	Uni Bern	1173
Hubert	Steinke	Uni Bern	1174
Francesco	Stellacci	ETH Lausanne	1175
Francesco	Stellacci	ETH Lausanne	1176
Francesco	Stellacci	ETH Lausanne	1177
Francesco	Stellacci	ETH Lausanne	1178
Francesco	Stellacci	ETH Lausanne	1179
Francesco	Stellacci	ETH Lausanne	1180
Francesco	Stellacci	ETH Lausanne	1181
Gunter	Stephan	Uni Bern	1182
Nikolaos	Stergiopulos	ETH Lausanne	1183
Nikolaos	Stergiopulos	ETH Lausanne	1184
Thomas	Stocker	Uni Bern	1185
Thomas	Stocker	Uni Bern	1186
Werner	Strik	Uni Bern	1187
Anthony	Strittmatter	Uni St. Gallen	1188
Frank	Stüber	Uni Bern	1189
Sabine	Süsstrunk	ETH Lausanne	1190
David	Suter	ETH Lausanne	1191
Michèle F.	Sutter-Rüdisser	Uni St. Gallen	1192
Michèle F.	Sutter-Rüdisser	Uni St. Gallen	1193
Melody	Swartz	ETH Lausanne	1194
Melody	Swartz	ETH Lausanne	1195
Melody	Swartz	ETH Lausanne	1196
Melody	Swartz	ETH Lausanne	1197
Melody	Swartz	ETH Lausanne	1198
Melody	Swartz	ETH Lausanne	1199
Gábor	Székely	ETH Zürich	1200
Thomas	Szucs	Uni Zürich	1201
Thomas	Szucs	Uni Zürich	1202
Thomas	Szucs	Uni Zürich	1203
Denis	Tappy	Uni Lausanne	1204
Martin G.	Täuber	Uni Bern	1205
Martin G.	Täuber	Uni Bern	1206
Martin G.	Täuber	Uni Bern	1207
Martin G.	Täuber	Uni Bern	1208
Martin G.	Täuber	Uni Bern	1209
Martin G.	Täuber	Uni Bern	1210
Martin G.	Täuber	Uni Bern	1211
Martin G.	Täuber	Uni Bern	1212
Martin G.	Täuber	Uni Bern	1213
Martin G.	Täuber	Uni Bern	1214
Martin G.	Täuber	Uni Bern	1215
Stephanie	Teufel	Uni Freiburg	1216
Philippe	Thalmann	ETH Lausanne	1217
Philippe	Thalmann	ETH Lausanne	1218
Philippe	Thalmann	ETH Lausanne	1219
Philippe	Thalmann	ETH Lausanne	1220
Philippe	Thalmann	ETH Lausanne	1221
Philippe	Thalmann	ETH Lausanne	1222
Philippe	Thalmann	ETH Lausanne	1223
Philippe	Thalmann	ETH Lausanne	1224
Philippe	Thalmann	ETH Lausanne	1225
Philippe	Thalmann	ETH Lausanne	1226
Philippe	Thalmann	ETH Lausanne	1227
Philippe	Thalmann	ETH Lausanne	1228
Philippe	Thalmann	ETH Lausanne	1229
Patrick	Thiran	ETH Lausanne	1230
Patrick	Thiran	ETH Lausanne	1231
Jean-Philippe	Thiran	Uni Lausanne	1232
Jean-Philippe	Thiran	Uni Lausanne	1233
Bernard	Thorens	Uni Lausanne	1234
Christina	Thurner	Uni Bern	1235
Daniela	Thurnherr Keller	Uni Basel	1236
Daniela	Thurnherr Keller	Uni Basel	1237
Laurent	Tissot	Uni Neuenburg	1238
Laurent	Tissot	Uni Neuenburg	1239
Laurent	Tissot	Uni Neuenburg	1240
Laurent	Tissot	Uni Neuenburg	1241
Laurent	Tissot	Uni Neuenburg	1242
Torsten	Tomczak	Uni St. Gallen	1243
Torsten	Tomczak	Uni St. Gallen	1244
Didier	Trono	ETH Lausanne	1245
Didier	Trono	ETH Lausanne	1246
Didier	Trono	ETH Lausanne	1247
Didier	Trono	ETH Lausanne	1248
Didier	Trono	ETH Lausanne	1249
Gerhard	Tröster	ETH Zürich	1250
Gerhard	Tröster	ETH Zürich	1251
Christopher	Tucci	ETH Lausanne	1252
Christopher	Tucci	ETH Lausanne	1253
Christopher	Tucci	ETH Lausanne	1254
Christopher	Tucci	ETH Lausanne	1255
Christopher	Tucci	ETH Lausanne	1256
Christopher	Tucci	ETH Lausanne	1257
Christopher	Tucci	ETH Lausanne	1258
Falk	Uebernickel	Uni St. Gallen	1259
Michaël	Unser	ETH Lausanne	1260
Pierre	Vandergheynst	ETH Lausanne	1261
Pierre	Vandergheynst	ETH Lausanne	1262
Pierre	Vandergheynst	ETH Lausanne	1263
Adrian	Vatter	Uni Bern	1264
Serge	Vaudenay	ETH Lausanne	1265
Serge	Vaudenay	ETH Lausanne	1266
Serge	Vaudenay	ETH Lausanne	1267
Martin	Vetterli	ETH Lausanne	1268
Martin	Vetterli	ETH Lausanne	1269
Martin	Vetterli	ETH Lausanne	1270
Paola	Viganò	ETH Lausanne	1271
Paola	Viganò	ETH Lausanne	1272
Paola	Viganò	ETH Lausanne	1273
Paola	Viganò	ETH Lausanne	1274
Paola	Viganò	ETH Lausanne	1275
Thomas	Vogel	ETH Zürich	1276
Thomas	Vogel	ETH Zürich	1277
Thierry	Volery	Uni St. Gallen	1278
Thierry	Volery	Uni St. Gallen	1279
Thierry	Volery	Uni St. Gallen	1280
Georg Fredrik	von Krogh	ETH Zürich	1281
Georg	von Schnurbein	Uni Basel	1282
Georg	von Schnurbein	Uni Basel	1283
Georg	von Schnurbein	Uni Basel	1284
Georg	von Schnurbein	Uni Basel	1285
Georg	von Schnurbein	Uni Basel	1286
Rico	von Wyss	Uni St. Gallen	1287
Laurent	Vulliet	ETH Lausanne	1288
Simone	Walther	Uni St. Gallen	1289
Doris	Wastl	Uni Bern	1290
Stefan	Weber	Uni Bern	1291
Stefan	Weber	Uni Bern	1292
Konrad	Wegener	ETH Zürich	1293
Konrad	Wegener	ETH Zürich	1294
Alain	Wegmann	ETH Lausanne	1295
Alain	Wegmann	ETH Lausanne	1296
Antoinette	Weibel	Uni St. Gallen	1297
Antoinette	Weibel	Uni St. Gallen	1298
Antoinette	Weibel	Uni St. Gallen	1299
Antoinette	Weibel	Uni St. Gallen	1300
Antoinette	Weibel	Uni St. Gallen	1301
Antoinette	Weibel	Uni St. Gallen	1302
Ulrich Alois	Weidmann	ETH Zürich	1303
Ulrich Alois	Weidmann	ETH Zürich	1304
Ulrich Alois	Weidmann	ETH Zürich	1305
Roland	Weiger	Uni Basel	1306
Hannes	Weigt	Uni Basel	1307
Yves	Weinand	ETH Lausanne	1308
Helma Barblin	Wennemers	ETH Zürich	1309
Franz	Werro	Uni Freiburg	1310
Florian	Wettstein	Uni St. Gallen	1311
Florian	Wettstein	Uni St. Gallen	1312
Florian	Wettstein	Uni St. Gallen	1313
Florian	Wettstein	Uni St. Gallen	1314
Florian	Wettstein	Uni St. Gallen	1315
Florian	Wettstein	Uni St. Gallen	1316
Peter	Widmayer	ETH Zürich	1317
Alexander	Widmer	ETH Zürich	1318
Alexander	Widmer	ETH Zürich	1319
Martin	Wilks	Uni Genf	1320
Stephan	Windecker	Uni Bern	1321
Stephan	Windecker	Uni Bern	1322
Sebastian	Wolf	Uni Bern	1323
Sebastian	Wolf	Uni Bern	1324
Sebastian	Wolf	Uni Bern	1325
Stephan	Wolf	Uni Bern	1326
Ursula	Wolf	Uni Bern	1327
Ursula	Wolf	Uni Bern	1328
Ursula	Wolf	Uni Bern	1329
Ursula	Wolf	Uni Bern	1330
Ursula	Wolf	Uni Bern	1331
Ursula	Wolf	Uni Bern	1332
Ursula	Wolf	Uni Bern	1333
Christian Gerhard	Wolfrum	ETH Zürich	1334
Alfred	Wüest	ETH Zürich	1335
Alfred	Wüest	ETH Zürich	1336
Alfred	Wüest	ETH Zürich	1337
Alfred	Wüest	ETH Zürich	1338
Matthias P.	Wymann	Uni Basel	1339
Paul	Xirouchakis	ETH Lausanne	1340
Paul	Xirouchakis	ETH Lausanne	1341
Paul	Xirouchakis	ETH Lausanne	1342
Hugo	Zbinden	Uni Genf	1343
Thomas Markus	Zellweger	Uni St. Gallen	1344
Thomas Markus	Zellweger	Uni St. Gallen	1345
Thomas Markus	Zellweger	Uni St. Gallen	1346
Jian	Zhao	ETH Lausanne	1347
Jian	Zhao	ETH Lausanne	1348
Jian	Zhao	ETH Lausanne	1349
Jieping	Zhu	ETH Lausanne	1350
Jieping	Zhu	ETH Lausanne	1351
Jieping	Zhu	ETH Lausanne	1352
Jieping	Zhu	ETH Lausanne	1353
Jieping	Zhu	ETH Lausanne	1354
Jieping	Zhu	ETH Lausanne	1355
Jieping	Zhu	ETH Lausanne	1356
Jieping	Zhu	ETH Lausanne	1357
Heinz	Zimmermann	Uni Basel	1358
Heinz	Zimmermann	Uni Basel	1359
Heinz	Zimmermann	Uni Basel	1360
Heinz	Zimmermann	Uni Basel	1361
Heinz	Zimmermann	Uni Basel	1362
Heinz	Zimmermann	Uni Basel	1363
Alexander	Zimmermann	Uni St. Gallen	1364
Klaus	Zuberbühler	Uni Neuenburg	1365
Klaus	Zuberbühler	Uni Neuenburg	1366
Klaus	Zuberbühler	Uni Neuenburg	1367
Klaus	Zuberbühler	Uni Neuenburg	1368
Jean-Baptiste	Zufferey	Uni Freiburg	1369
Andreas	Züttel	ETH Lausanne	1370
Andreas	Züttel	ETH Lausanne	1371
Willy	Zwaenepoel	ETH Lausanne	1372
Willy	Zwaenepoel	ETH Lausanne	1373
Willy	Zwaenepoel	ETH Lausanne	1374
Willy	Zwaenepoel	ETH Lausanne	1375
Willy	Zwaenepoel	ETH Lausanne	1376
Pascal	Zysset	Uni Bern	1377
\.


--
-- TOC entry 3464 (class 0 OID 49704)
-- Dependencies: 216
-- Data for Name: universities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.universities (university_shortname, university_city, id, university) FROM stdin;
EPF	Lausanne	1	\N
UZH	Zurich	2	\N
USG	Saint Gallen	3	\N
UFR	Fribourg	4	\N
USI	Lugano	5	\N
ETH	Zurich	6	\N
ULA	Lausanne	7	\N
UGE	Geneva	8	\N
UBA	Basel	9	\N
UBE	Bern	10	\N
UNE	Neuchâtel	11	\N
EPF	Lausanne	67	ETH Lausanne
UZH	Zurich	68	Uni Zürich
USG	Saint Gallen	69	Uni St. Gallen
UFR	Fribourg	70	Uni Freiburg
USI	Lugano	71	USI Lugano
ETH	Zurich	72	ETH Zürich
ULA	Lausanne	73	Uni Lausanne
UGE	Geneva	74	Uni Genf
UBA	Basel	75	Uni Basel
UBE	Bern	76	Uni Bern
UNE	Neuchâtel	77	Uni Neuenburg
\.


--
-- TOC entry 3463 (class 0 OID 49695)
-- Dependencies: 215
-- Data for Name: university_professors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.university_professors (firstname, lastname, university, university_shortname, university_city, function, organization, organization_sector) FROM stdin;
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Chairman of L3S Advisory Board	L3S Advisory Board	Education & research
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Member Conseil of Zeno-Karl Schindler Foundation	Zeno-Karl Schindler Foundation	Education & research
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Member of Conseil Fondation IDIAP	Fondation IDIAP	Education & research
Karl	Aberer	ETH Lausanne	EPF	Lausanne	Panel Member	SNF Ambizione Program	Education & research
Reza Shokrollah	Abhari	ETH Zürich	ETH	Zurich	Aufsichtsratsmandat	PNE Wind AG	Energy, environment & mobility
Georges	Abou Jaoudé	ETH Lausanne	EPF	Lausanne	Professeur invité (2 interventions d'une semaine)	Kazan Federal University, Russia	Education & research
Hugues	Abriel	Uni Bern	UBE	Bern	NA	Cloetta Stiftung	Education & research
Daniel	Aebersold	Uni Bern	UBE	Bern	NA	Berner Radium-Stiftung	Pharma & health
Daniel	Aebersold	Uni Bern	UBE	Bern	NA	Janser Krebs-Stiftung	Pharma & health
Daniel	Aebersold	Uni Bern	UBE	Bern	NA	SWAN Isotopen AG	Technology
Christoph	Aebi	Uni Bern	UBE	Bern	NA	Bernische Stiftung für krebskranke Kinder und Jugendliche	Pharma & health
Christoph	Aebi	Uni Bern	UBE	Bern	NA	Ronald McDonald Stiftung	Society, Social, Culture & Sports
Marcelo	Aebi	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Beirat	Singapore International Advisory Committee for Biomedical Sciences	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Chairman, Beirat	Advisory Board Novartis Venture Fund	Financial industry & insurances
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Founder & Chairman of the BOD	Amazentis	Technology
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	NA	Fondation Claude Nobs	Society, Social, Culture & Sports
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	NA	Fondation Terre des Hommes	Politics, administration, justice system & security sector
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	NA	Italian Institute of Technology	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	NA	Singapore Biomedical Sciences International	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	NA	World Economic Forum	Commerce, trade & services
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	CSEM	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation Brocher	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation Campus Biotech Geneva	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation Claude Verdan	Society, Social, Culture & Sports
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation EPFL+	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation les Bois Chamblard	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation pour l'étude des eaux du Léman	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Part of the presidential duties	Fondation pour la formation continue lausannoise	Education & research
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Verwaltungsrat	Lonza Group	Technology
Patrick	Aebischer	ETH Lausanne	EPF	Lausanne	Verwaltungsrat	Nestlé	Industry, construction & agriculture
Stephan	Aier	Uni St. Gallen	USG	Saint Gallen	Beratung und Veranstaltungen im Bereich Enterprise Architecture Management	TWZ GmbH	Not classifiable
Stephan	Aier	Uni St. Gallen	USG	Saint Gallen	Lehrauftrag Enterprise Architecture	Reykjavik University	Education & research
Anastasia	Ailamaki	ETH Lausanne	EPF	Lausanne	Consulting on data mgmt	S2P Lion, Germany	Not classifiable
Cesla	Amarelle	Uni Neuenburg	UNE	Neuchâtel	Mandat	Nationalrat	Politics, administration, justice system & security sector
Manuel	Ammann	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Neue Bank AG	Financial industry & insurances
Manuel	Ammann	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	St. Galler Kantonalbank AG	Financial industry & insurances
Manuel	Ammann	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Algofin AG	Consulting, public relations, legal & trust
Christophe	Ancey	ETH Lausanne	EPF	Lausanne	Prise en compte du risque de reptation sur la télécabine du Lys, pylônes P9-11	Espace Cauterets, Mairie, Cauterets	Politics, administration, justice system & security sector
Marilyne	Andersen	ETH Lausanne	EPF	Lausanne	Board member	ECOVEST SA	Commerce, trade & services
Marilyne	Andersen	ETH Lausanne	EPF	Lausanne	Member of Industry Agenda Council for Real Estate and Urbanization	World Economic Forum	Commerce, trade & services
Jean-Marie	Annoni	Uni Freiburg	UFR	Fribourg	Neurologe	Freiburger Spital	Pharma & health
John	Antonakis	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Omid	Aschari	Uni St. Gallen	USG	Saint Gallen	Mitglied	Nationaler Geistiger Rat der Bahá'í der Schweiz	Society, Social, Culture & Sports
Omid	Aschari	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident und Gründer	ASG Strategy Group AG	Consulting, public relations, legal & trust
David	Atienza Alonso	ETH Lausanne	EPF	Lausanne	Consultancy on embedded systems uses for swallowing and chewing monitoring	Nestec SA	Industry, construction & agriculture
Jean-Jacques	Aubert	Uni Neuenburg	UNE	Neuchâtel	Député	Grand Conseil NE	Politics, administration, justice system & security sector
Jean-Jacques	Aubert	Uni Neuenburg	UNE	Neuchâtel	Vice-président	Académie suisse des sciences humaines et sociales	Society, Social, Culture & Sports
Drahomir	Aujesky	Uni Bern	UBE	Bern	NA	Schweizerische Gesellschaft für allgemeine innere Medizin	Pharma & health
Johan	Auwerx	ETH Lausanne	EPF	Lausanne	Biomedical consulting - Founder and BOD (Director - approved by EPFL)	Reamol Biomedical Consultung, Buchillon, CH	Consulting, public relations, legal & trust
Johan	Auwerx	ETH Lausanne	EPF	Lausanne	Mitochondrial metabolism and deseases - Founder & SAB member	Mitobridge, Cambridge, MA, USA	Technology
Johan	Auwerx	ETH Lausanne	EPF	Lausanne	NAD metabolism - SAB member	Metro Mid-Atalantic Biotech, Birmingham, MI, USA	Technology
Johan	Auwerx	ETH Lausanne	EPF	Lausanne	Nutraceuticals - SAB member	Amazentis, Ecublens, Switzerland	Technology
Johan	Auwerx	ETH Lausanne	EPF	Lausanne	Nutrition & Phytochemistry - Founder & Consultant	PhytoDia, Illkirch, France	Pharma & health
François	Avellan	ETH Lausanne	EPF	Lausanne	Associé minoritaire dans la start-up d'un ancien doctorant	Power Vision Engineering Sàrl, Ecublens	Industry, construction & agriculture
François	Avellan	ETH Lausanne	EPF	Lausanne	Expertise du rendement des turbines de la centrale de La Higuera, Chili, dans le cadre d'une procédure juridique	Barros, Letelier & Gonzalez Attorneys at Law, Chile	Consulting, public relations, legal & trust
Kay Werner	Axhausen	ETH Zürich	ETH	Zurich	VR-Mandat der Spin-Off-Firma	Senozon (Schweiz) AG	Consulting, public relations, legal & trust
Philippe	Bacchetta	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Andrea	Back	Uni St. Gallen	USG	Saint Gallen	Beirätin	Crosswalk AG	Consulting, public relations, legal & trust
Andrea	Back	Uni St. Gallen	USG	Saint Gallen	Beirätin, Beratung	CID GmbH	Technology
Andrea	Back	Uni St. Gallen	USG	Saint Gallen	Gutachterin	Marie Heim-Vögtlin-Programm des Schweizerischen Nationalfonds, Abteilung Geistes- und Sozialwissenschaften	Education & research
Andrea	Back	Uni St. Gallen	USG	Saint Gallen	Wissenschaftliche Beirätin	Leibniz-Informationszentrum Wirtschaft	Education & research
Marco	Bakker	ETH Lausanne	EPF	Lausanne	CEO, Architect	Bakker & Blanc Architectes Lausanne, Zurich	Industry, construction & agriculture
Artur	Baldauf	Uni Bern	UBE	Bern	NA	International School of Bern	Education & research
Artur	Baldauf	Uni Bern	UBE	Bern	NA	Securitas AG	Politics, administration, justice system & security sector
Christophe	Ballif	ETH Lausanne	EPF	Lausanne	Chef de division CSEM PV-center, officiellement depuis 1.10.2012	CSEM, Neuchâtel	Education & research
Christophe	Ballif	ETH Lausanne	EPF	Lausanne	Consultant technologique et membre du conseil d'administration	Asgalium Unitec SA, Cortaillod	Industry, construction & agriculture
Christophe	Ballif	ETH Lausanne	EPF	Lausanne	Membre comité de conseil Active Niche Funds (fonds dédié au Solaire)	ANF SA, Lausanne	Financial industry & insurances
Christophe	Ballif	ETH Lausanne	EPF	Lausanne	Panel, clean energy research program, Singapour	Economic development Board (EDB), Raffles Tower, Singapour	Commerce, trade & services
Yann	Barrandon	Uni Lausanne	ULA	Lausanne	Conseil d'administration	gyMetrics SA, Ecublens	Technology
Yann	Barrandon	Uni Lausanne	ULA	Lausanne	Consultant	A*Star IMB Biopolis, Singapour	Education & research
David Andrew	Barry	ETH Lausanne	EPF	Lausanne	Co-Editor	Advances in Water Resources (Elsevier Journal)	Media & communication
David Andrew	Barry	ETH Lausanne	EPF	Lausanne	Fellowships Committee	Royal Society of Edinburgh, UK	Education & research
David Andrew	Barry	ETH Lausanne	EPF	Lausanne	Member and expert to the Sinergia section	Swiss National Science Foundation - Sinergia	Education & research
David Andrew	Barry	ETH Lausanne	EPF	Lausanne	Member of the SNF Council	Swiss National Science Foundation	Education & research
David Andrew	Barry	ETH Lausanne	EPF	Lausanne	Visiting Professor	University of Edinburgh, UK	Education & research
Pius Eliseo	Baschera	ETH Zürich	ETH	Zurich	VP des Beirates	ARDEX GmbH	Industry, construction & agriculture
Pius Eliseo	Baschera	ETH Zürich	ETH	Zurich	VP des Beirates	Vorwerk & Co. KG	Commerce, trade & services
Pius Eliseo	Baschera	ETH Zürich	ETH	Zurich	VR-Mandat	Roche Holding AG	Pharma & health
Pius Eliseo	Baschera	ETH Zürich	ETH	Zurich	VR-Mandat	Schindler Holding AG	Industry, construction & agriculture
Pius Eliseo	Baschera	ETH Zürich	ETH	Zurich	VR-Präsidium	Hilti AG	Industry, construction & agriculture
Pius Eliseo	Baschera	ETH Zürich	ETH	Zurich	VR-Präsidium	Venture Incubator AG	Financial industry & insurances
David Alan	Basin	ETH Zürich	ETH	Zurich	Vorsitzender der Geschäftsführung	Contego Laboratories GmbH	Technology
Claudio	Bassetti	Uni Bern	UBE	Bern	NA	Fondazione Eccles	Education & research
Claudio	Bassetti	Uni Bern	UBE	Bern	NA	Fondazione Neuroscienze Ticino	Education & research
Claudio	Bassetti	Uni Bern	UBE	Bern	NA	SITEM	Pharma & health
Iris	Baumgartner	Uni Bern	UBE	Bern	NA	Spital Thun AG	Pharma & health
Iris	Baumgartner	Uni Bern	UBE	Bern	NA	Unitectra	Consulting, public relations, legal & trust
Aurelio	Bay	ETH Lausanne	EPF	Lausanne	Présidence du Jury des examens du GYB	GYB Gymnase Intercantonal de la Broye, Payerne	Education & research
Eva	Bayer Fluckiger	ETH Lausanne	EPF	Lausanne	Editrice en chef de la revue Commentarii Mathematici Helvetici	Société Mathématique Suisse	Education & research
Eva	Bayer Fluckiger	ETH Lausanne	EPF	Lausanne	Membre	Stiftung zur Förderung der mathematischen Wissenschaften in der Schweiz	Education & research
Eva	Bayer Fluckiger	ETH Lausanne	EPF	Lausanne	Membre du comité éditorial	Archiv der Mathematik	Media & communication
Eva	Bayer Fluckiger	ETH Lausanne	EPF	Lausanne	Membre du comité éditorial	International Journal of Number Theory	Media & communication
Eva	Bayer Fluckiger	ETH Lausanne	EPF	Lausanne	Membre du comité éditorial	Journal of Algebra	Media & communication
Eva	Bayer Fluckiger	ETH Lausanne	EPF	Lausanne	Membre du conseil de la recherche Division II	FNS, Berne	Education & research
Stefan	Bechtold	ETH Zürich	ETH	Zurich	NA	Fondation Professeur Walther Hug	Education & research
Rolf	Becker	Uni Bern	UBE	Bern	NA	GESIS Leibniz Institut	Education & research
Christian	Belz	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Création Baumann	Industry, construction & agriculture
Christian	Belz	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Olma Messen St. Gallen	Industry, construction & agriculture
Christian	Belz	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Starrag	Industry, construction & agriculture
André	Berchtold	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Pietro	Beritelli	USI Lugano	USI	Lugano	Verwaltungsratspräsident	Heidiland Tourismus AG	Commerce, trade & services
Pietro	Beritelli	USI Lugano	USI	Lugano	Verwaltungsratspräsident	Tourismus Services Ostschweiz AG	Commerce, trade & services
Thomas	Berndt	Uni St. Gallen	USG	Saint Gallen	Mitglied im Fachbeirat	Zeitschrift für Corporate Governance (ZCG)	Media & communication
Thomas	Berndt	Uni St. Gallen	USG	Saint Gallen	Ständiger Mitarbeiter	Zeitschrift Betriebs-Berater (BB)	Media & communication
Thomas	Berndt	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	equia AG, Zürich	Consulting, public relations, legal & trust
Urs	Bertschinger	Uni St. Gallen	USG	Saint Gallen	Partner	Prager Dreifuss AG	Consulting, public relations, legal & trust
Katrin	Beyer	ETH Lausanne	EPF	Lausanne	Board member	Swiss Society for Earthquake Engineering and Structural Dynamic, Zürich	Commerce, trade & services
Katrin	Beyer	ETH Lausanne	EPF	Lausanne	Expert consulting for OFROU	Muttoni & Fernandez Ingénieurs Conseils SA, Ecublens	Commerce, trade & services
Andreas	Beyer	Uni Basel	UBA	Basel	Mitglied des Auswahlausschusses	Alexander von Humboldt Stiftung	Education & research
Andreas	Beyer	Uni Basel	UBA	Basel	Präsident der wissenschaftlichen Kommission	Schweizerisches Institut für Kunstwissenschaft	Education & research
Andreas	Beyer	Uni Basel	UBA	Basel	Sprecher des Forschugnsverbunds Bilderfahrzeuge - Aby Warbug's Legacy and the Future of Iconology	Bundesministerium für Bildung und Forschung	Politics, administration, justice system & security sector
Andreas	Beyer	Uni Basel	UBA	Basel	Vorsitzender wissenschaftlicher Beirat	Gerda Henkel-Stiftung	Education & research
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Mitglied	Genossenschaft Olma Messen St. Gallen	Industry, construction & agriculture
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Präsident	SBB Forschungsfonds	Education & research
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	Dr. Heinrich Wachter zur Förderung der wissenschaftlichen Forschung an der Hochschule St. Gallen für Wirtschafts- und Sozialwissenschaften	Education & research
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	ITS Foundation. International Tourism Symposium	Commerce, trade & services
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	Max Schmidheiny zugunsten der Universität St. Gallen und ihrer Institute	Education & research
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	St. Galler Stiftung für Internationale Studien	Education & research
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	Swiss Luftfahrtstiftung	Energy, environment & mobility
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Jungfraubahn Holding AG	Energy, environment & mobility
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Jungfraubahnen Management AG	Energy, environment & mobility
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Schweizer Gesellschaft für Hotelkredit	Commerce, trade & services
Thomas	Bieger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratsvizepräsident	Bergbahnen Disentis	Energy, environment & mobility
Anton F.H.	Bierl	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Vischer-Heusler Stiftung	Not classifiable
Michel	Bierlaire	ETH Lausanne	EPF	Lausanne	Conseil d'administration ENTPE (non rémunéré)	Etat français, Lyon	Not classifiable
Michel	Bierlaire	ETH Lausanne	EPF	Lausanne	Consultance Technique en optimisation	OPTIMIS HCM Echandens	Consulting, public relations, legal & trust
Aude	Billard	ETH Lausanne	EPF	Lausanne	Présidente	Association Amies et Amis de la Fondation EPFL-WISH	Education & research
Alexandre	Blanc	ETH Lausanne	EPF	Lausanne	Architecte EPFL-FAS-SIA	Bakker & Blanc Architectes, Lausanne	Industry, construction & agriculture
Olaf	Blanke	Uni Genf	UGE	Geneva	Professeur à 20%	Université de Genève	Education & research
Gérard	Bless	Uni Freiburg	UFR	Fribourg	Leitung des regionalen Schuldienstes des Heilpädagogischen Instituts	Universität Freiburg	Education & research
René	Bloch	Uni Bern	UBE	Bern	NA	Jakob und Werner Wyler-Stiftung Zürich	Society, Social, Culture & Sports
Christian	Bochet	Uni Freiburg	UFR	Fribourg	Präsident	Atlas Photonics Sàrl	Technology
Geoffrey	Bodenhausen	Uni Lausanne	ULA	Lausanne	Professeur	ENS Paris	Education & research
Christoph Hans	Boesch	Uni Bern	UBE	Bern	NA	Jubiläumsstiftung Mobiliar	Society, Social, Culture & Sports
Luca	Bona	ETH Lausanne	EPF	Lausanne	Directeur (form directly submitted to ETH Board)	EMPA	Education & research
Giuliano	Bonoli	Uni Lausanne	ULA	Lausanne	Mandat	Centre de formation professionnel spécialisé ORIF	Education & research
Giuliano	Bonoli	Uni Lausanne	ULA	Lausanne	Mandat	Commission fédérale des questions familiales	Society, Social, Culture & Sports
Dominique	Bonvin	ETH Lausanne	EPF	Lausanne	Consulting, conseil scientifique	ONLINE Control Sàrl, Lausanne	Technology
Birgitt	Borkopp	Uni Bern	UBE	Bern	Mitglied des Dachstiftungsrates	Kunstmuseum Bern	Society, Social, Culture & Sports
Birgitt	Borkopp	Uni Bern	UBE	Bern	Mitglied des Stiftungsrates	Museum Schloss Thun	Society, Social, Culture & Sports
Ioannis	Botsis	ETH Lausanne	EPF	Lausanne	Scientific Consultant in 2 projects, THALES, Greece	University of Piraeus, Grèce	Education & research
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	Board of directors and shareholder	Koemei, SA (Idiap's spin-off)	Technology
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	Director	Idiap Research Institute	Education & research
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	External Fellow and Member of the Board of Trustees	Intl. Computer Science Institute (ICSI), Berkeley, CA	Education & research
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	Member (vice-president) of the Board of Directors	IdeArk SA (IDIAP's technology transfer instrument)	Consulting, public relations, legal & trust
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	Member of the Advisory Board	Privately SA, Switzerland	Technology
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	Member of the Advisory Board	Voxta Inc., India	Media & communication
Hervé	Bourlard	ETH Lausanne	EPF	Lausanne	Member of the Foundation Council	Fondation Dalle Molle	Society, Social, Culture & Sports
Roman	Boutellier	ETH Zürich	ETH	Zurich	NA	Stiftung Swiss Innovation Park	Commerce, trade & services
Roman	Boutellier	ETH Zürich	ETH	Zurich	Stiftungsrat	Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	Education & research
Roman	Boutellier	ETH Zürich	ETH	Zurich	VR-Mandat	Ammann BauAusrüstung AG	Commerce, trade & services
Roman	Boutellier	ETH Zürich	ETH	Zurich	VR-Mandat	Appenzeller Kantonalbank	Financial industry & insurances
Roman	Boutellier	ETH Zürich	ETH	Zurich	VR-Mandat	Georg Fischer AG	Industry, construction & agriculture
Roman	Boutellier	ETH Zürich	ETH	Zurich	VR-Mandat	Rychiger AG	Industry, construction & agriculture
Christian	Bovet	Uni Genf	UGE	Geneva	Membre et Président du conseil	Fondation Professeur Walther Hug	Education & research
Christian	Bovet	Uni Genf	UGE	Geneva	Président du comité d'audit et membre du conseil d'adminstration	BPN Paribas (Suisse) SA	Financial industry & insurances
Urs	Brägger	Uni Bern	UBE	Bern	NA	ub-invent GmbH	Pharma & health
Nicola	Braghieri	ETH Lausanne	EPF	Lausanne	Architecte associé (10%)	EX-M, Milan	Industry, construction & agriculture
Torsten	Braun	Uni Bern	UBE	Bern	Mitglied des Stiftungsrats und dessen Ausschuss	SWITCH	Technology
Walter	Brenner	Uni St. Gallen	USG	Saint Gallen	Beratungstätigkeit	ITMC AG	Technology
Walter	Brenner	Uni St. Gallen	USG	Saint Gallen	Informatik-Lenkungsausschuss	Landesregierung Vorarlberg	Politics, administration, justice system & security sector
Walter	Brenner	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	ITMP AG	Consulting, public relations, legal & trust
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Background Note on the Impact of Banking Crises on Households in Emerging Europe for World Development Report 2014	World Bank	Financial industry & insurances
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Consultant for Financial Literacy	Swiss National Bank	Financial industry & insurances
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Consultant for Financial Literacy	Verband der Schweizerischen Kantonalbanken	Financial industry & insurances
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Diverse Gutachten	KfW Development Bank	Financial industry & insurances
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Diverse kleinere Tätigkeiten	Departement für Entwicklungshilfe und -zusammenarbeit DEZA	Politics, administration, justice system & security sector
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Diverse kleinere Tätigkeiten	European Fund for Southeast Europe (EFSE)	Politics, administration, justice system & security sector
Martin	Brown	Uni St. Gallen	USG	Saint Gallen	Member of Technical Assistance Committee	ResponsAbility	Financial industry & insurances
Heike	Bruch	Uni St. Gallen	USG	Saint Gallen	Mitglied des Fachrates	Schweizer Kaderorganisation SKO	Commerce, trade & services
Heike	Bruch	Uni St. Gallen	USG	Saint Gallen	Mitglied des Vorstandes	Das Demographienetzwerk ddn	Society, Social, Culture & Sports
Heike	Bruch	Uni St. Gallen	USG	Saint Gallen	Mitglied des Vorstandes	Deutsche Gesellschaft für Personalführung DGFP	Commerce, trade & services
Heike	Bruch	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsidentin und Gründerin	Energy factory	Consulting, public relations, legal & trust
Jürgen	Brugger	ETH Lausanne	EPF	Lausanne	Proposal reviewing ARGOVIA	Swiss Nanoscience Institute, Basel	Education & research
Jürgen	Brugger	ETH Lausanne	EPF	Lausanne	Proposal reviewing HEPIA	HES Campus Biotech, Genève	Education & research
Eugen	Brühwiler	ETH Lausanne	EPF	Lausanne	Expert/conseiller pour le suivi de questions liées à la structure porteuse de la Cathédrale de Lausanne	Canton de Vaud SIPAL	Politics, administration, justice system & security sector
Eugen	Brühwiler	ETH Lausanne	EPF	Lausanne	Ingénieur-expert dans le cadre du bétonnage du Tunnel Eyholz à Visp VS	Office fédéral des routes, Sion	Energy, environment & mobility
Eugen	Brühwiler	ETH Lausanne	EPF	Lausanne	Panoramaweg Rigi SZ : mandat de conseil pour la restoration de ponts historiques	Office fédéral des routes, Bern	Energy, environment & mobility
Eugen	Brühwiler	ETH Lausanne	EPF	Lausanne	Projet de normalisation européen (Projet SIA NDP - EN 1991)	Société des Ingénieurs et Architectes Suisses, SIA, Zurich	Commerce, trade & services
Eugen	Brühwiler	ETH Lausanne	EPF	Lausanne	Quatre mandats d'expertise (en tant qu'expert fédéral), mandatés par l'Office Fédéral de la Culture	BAK, Heimatschutz und Denkmalpflege, Bern	Society, Social, Culture & Sports
Harald	Brune	ETH Lausanne	EPF	Lausanne	Conseiller national, Présedent de la division 2 du Fond National	Fond National pour la Recherche en Suisse, Bern	Education & research
Harald	Brune	ETH Lausanne	EPF	Lausanne	Hans-Fischer Senior Fellow	Institute of Advanced Studies, Technical University of Munich, Garching	Education & research
Aymo	Brunetti	Uni Basel	UBA	Basel	NA	Fachhochschule Kalaidos	Education & research
Stefan	Bühler	Uni Zürich	UZH	Zurich	Vizepräsident	Wettbewerbskommission	Politics, administration, justice system & security sector
Andreas	Burg	ETH Lausanne	EPF	Lausanne	Technical consulting	ACP Advanced Circuit Pursuit AG, Zürich	Industry, construction & agriculture
Daniel	Buser	Uni Bern	UBE	Bern	NA	ITI Stiftung Basel	Education & research
Daniel	Buser	Uni Bern	UBE	Bern	NA	Kursaal Bern AG	Commerce, trade & services
Daniel	Buser	Uni Bern	UBE	Bern	NA	Osteology Stiftung Luzern	Pharma & health
George	Candea	ETH Lausanne	EPF	Lausanne	CEO and President (while on leave)	CodeTickler, CA, USA	Technology
Daniel	Candinas	Uni Bern	UBE	Bern	NA	CAScination AG	Pharma & health
Daniel	Candinas	Uni Bern	UBE	Bern	NA	Fondazione Epatocentro Ticino, Lugano	Education & research
Daniel	Candinas	Uni Bern	UBE	Bern	NA	Forschungsstiftung Genaxen	Education & research
Daniel	Candinas	Uni Bern	UBE	Bern	NA	Insula Stiftung	Education & research
Daniel	Candinas	Uni Bern	UBE	Bern	NA	Ruth & Arthur Scherbarth Stiftung, Bern	Society, Social, Culture & Sports
Daniel	Candinas	Uni Bern	UBE	Bern	NA	Solothurner Spitäler AG	Pharma & health
Srdan	Capkun	ETH Zürich	ETH	Zurich	Geschäftsführer	Contego Laboratories GmbH	Technology
Basile	Cardinaux	Uni Freiburg	UFR	Fribourg	Anwalt	Selbstständig	Not classifiable
Basile	Cardinaux	Uni Freiburg	UFR	Fribourg	Vorstand	Pensionskasse des Staatspersonals Freiburg	Financial industry & insurances
Erick Moran	Carreira	ETH Zürich	ETH	Zurich	VR-Mandat	Glycemicon AG	Technology
Erick Moran	Carreira	ETH Zürich	ETH	Zurich	VR-Mandat	SpiroChem AG	Technology
Thierry	Carrel	Uni Bern	UBE	Bern	NA	Mobiliar Genossenschaft	Financial industry & insurances
Marina Silva	Cattaruzza	Uni Bern	UBE	Bern	NA	Universita della Svizzera Italiana	Education & research
Marco	Celio	Uni Freiburg	UFR	Fribourg	Verwaltungsratspräsident	Frimorfo S.A.	Technology
Marco	Celio	Uni Freiburg	UFR	Fribourg	Verwaltungsratspräsident	SWANT (Swiss antibodies) SA	Pharma & health
Volkan	Cevher	ETH Lausanne	EPF	Lausanne	Faculty Fellow	Rice University, Houston, Texas	Education & research
Peter	Chen	ETH Zürich	ETH	Zurich	VR-Mandat	Clariant AG	Technology
Majed	Chergui	ETH Lausanne	EPF	Lausanne	Editeur in chief of Structural Dynamics	American Institute of Phyiscs Publishing (AIPP), NY, USA	Media & communication
Olivier	Christin	Uni Neuenburg	UNE	Neuchâtel	Enseignement	Ecole pratique des hautes études de Paris	Education & research
Gerhard M.	Christofori	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Hans Buss-Stiftung Basel	Education & research
Stewart	Cole	ETH Lausanne	EPF	Lausanne	Contrat de Conseil	K-RITH, Durban, South Africa	Education & research
Stewart	Cole	ETH Lausanne	EPF	Lausanne	Membre du Conseil d'Administration	Institut Pasteur Paris, France	Education & research
Pierre	Collin Dufresne	ETH Lausanne	EPF	Lausanne	Academic Advisory Board	KEPOS Capital (NYC)	Financial industry & insurances
Pierre	Collin Dufresne	ETH Lausanne	EPF	Lausanne	Advisory Board	Lombard Odier, Geneva	Financial industry & insurances
Pierre	Collin Dufresne	ETH Lausanne	EPF	Lausanne	Advisory Board	SANCUS Capital (NYC)	Financial industry & insurances
Pierre	Collin Dufresne	ETH Lausanne	EPF	Lausanne	Expert Witness Consulting	Cornerstone Research (NYC)	Consulting, public relations, legal & trust
Edwin Charles	Constable	Uni Basel	UBA	Basel	Mitglied der Life Science Kommission	HKBB Basel	Commerce, trade & services
Edwin Charles	Constable	Uni Basel	UBA	Basel	Mitglied des Management Board	Biovalley Basel	Commerce, trade & services
Edwin Charles	Constable	Uni Basel	UBA	Basel	Mitglied des Management Board	EVA Basel Life Science Start-up Agency	Consulting, public relations, legal & trust
Edwin Charles	Constable	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Universitätsspital Basel, Forschungsstiftung	Pharma & health
Edwin Charles	Constable	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Unitectra AG	Education & research
Achim	Conzelmann	Uni Bern	UBE	Bern	NA	Foundation of Talents	Society, Social, Culture & Sports
Achim	Conzelmann	Uni Bern	UBE	Bern	NA	PH Bern, Schulrat	Education & research
Grégoire	Courtine	ETH Lausanne	EPF	Lausanne	Création de Start-up	G-Therapeutics SA	Pharma & health
Grégoire	Courtine	ETH Lausanne	EPF	Lausanne	Enseignement de cours Master	DNF, UNIL, Lausanne	Education & research
Gianluca	Crippa	Uni Basel	UBA	Basel	Vizepräsident	Bernoulli-Euler-Gesellschaft Basel	Education & research
William	Curtin	ETH Lausanne	EPF	Lausanne	Adjunct Professor (collaborations on US-funded research. Currently 10% is charged to one grant)	School of Engineering, Brown University	Education & research
William	Curtin	ETH Lausanne	EPF	Lausanne	Editor-in-Chief (no contract, modest honorarium for professional activity)	Modelling and Simulation in Materials Sci. and Eng., Inst. of Physics, UK	Education & research
William	Curtin	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board (2 days/year + some report writing)	A*star Singapore, Inst. High Performance Computing	Education & research
Raffaello	D'Andrea	ETH Zürich	ETH	Zurich	VR-Präsidium	Verity Studios AG	Industry, construction & agriculture
Robert	Danon	Uni Lausanne	ULA	Lausanne	Mandat	Activités académiques	Education & research
James W.	Davis	Uni St. Gallen	USG	Saint Gallen	Mitglied der Parlamentarischen Kommission zur Überprüfung und Sicherung der Parlamentsrechte bei der Mandatierung von Auslandseinsätzen der Bundeswehr	Deutscher Bundestag	Politics, administration, justice system & security sector
James W.	Davis	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrates	Paradigm Capital Partners	Financial industry & insurances
Anthony C.	Davison	ETH Lausanne	EPF	Lausanne	Consultancy on statistical analysis of accidents in French motorway tunnels	BG Consulting, Lausanne	Consulting, public relations, legal & trust
Anthony C.	Davison	ETH Lausanne	EPF	Lausanne	Editor, Biometrika (editor of a major statistics journal)	Biometrika Trust, University College London	Media & communication
Enrico	De Giorgi	Uni St. Gallen	USG	Saint Gallen	Partner	Behavioural Finance Solutions GmbH	Technology
Giovanni	de Micheli	ETH Lausanne	EPF	Lausanne	ALARI / Instructor	USI, Lugano, CH	Education & research
Giovanni	de Micheli	ETH Lausanne	EPF	Lausanne	CfAED Techn. Advisory board	Dresden, D	Politics, administration, justice system & security sector
Giovanni	de Micheli	ETH Lausanne	EPF	Lausanne	IMEC Techn. Advisory board	IMEC, Leuven, B	Education & research
Michele	De Palma	ETH Lausanne	EPF	Lausanne	Advisory Board Meeting - Sanofi	Sanofi, Barcelona - 17/11/2014	Pharma & health
Michele	De Palma	ETH Lausanne	EPF	Lausanne	Seminar-Roche	Roche, Basel - 10/01/2014	Pharma & health
Dominique	de Quervain	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	GeneGuide AG, Basel	Technology
Nico	de Rooij	ETH Lausanne	EPF	Lausanne	Conseil d'administration	High Tech Factory, Enschede, NL	Industry, construction & agriculture
Nico	de Rooij	ETH Lausanne	EPF	Lausanne	Conseil d'administration	Silatech SA, Neuchâtel	Commerce, trade & services
Nico	de Rooij	ETH Lausanne	EPF	Lausanne	Conseil d'administration	SwissScientific SA, Neuchâtel	Financial industry & insurances
Nico	de Rooij	ETH Lausanne	EPF	Lausanne	Conseil scientifique	Seyonic SA, Neuchâtel	Industry, construction & agriculture
Nico	de Rooij	ETH Lausanne	EPF	Lausanne	Conseil scientifique du CSEM SA	CSEM SA, Neuchâtel	Education & research
Nico	de Rooij	ETH Lausanne	EPF	Lausanne	Président du conseil d'administration	Contrôle officiel suisse des chronomètres (COSC), La Chaux-de-Fonds	Industry, construction & agriculture
Harris	Dellas	Uni Bern	UBE	Bern	NA	Study Center Gerzensee	Education & research
Bart	Deplancke	ETH Lausanne	EPF	Lausanne	Board Member	GeNohm SA, EPFL Innovation Park, Lausanne	Technology
Inès	Devanthéry-Lamunière	ETH Lausanne	EPF	Lausanne	Associée	dl-a, designlab-architecture SA, Genève	Industry, construction & agriculture
Benoît	Deveaud	ETH Lausanne	EPF	Lausanne	Assesseur à la Commission de Conciliation en matière de baux	Préfecture de Lausanne	Politics, administration, justice system & security sector
Benoît	Deveaud	ETH Lausanne	EPF	Lausanne	Membre du comité de Fondation	Fondation Adrian et Simone Frutiger, Berne	Pharma & health
Pascal	Dey	Uni St. Gallen	USG	Saint Gallen	Dozent	Fachhochschule Nordwestschweiz	Education & research
François	Diederich	ETH Zürich	ETH	Zurich	Aufsichtsratsmandat	BASF Societas Europeae (Schweden)	Technology
Giovanni	Dietler	ETH Lausanne	EPF	Lausanne	Membre de la commission d'evaluation des profs boursiers SNF	SNF, Berne	Education & research
Giovanni	Dietler	ETH Lausanne	EPF	Lausanne	Membre du Conseil Communal	Echandens	Politics, administration, justice system & security sector
Giovanni	Dietler	ETH Lausanne	EPF	Lausanne	Membre du Conseil de la Fondation Monte Verità, Ascona, représentant EPFL	EPFL	Education & research
Giovanni	Dietler	ETH Lausanne	EPF	Lausanne	Membre du Conseil Scientifique	Adolphe Merkle Institute, Université de Fribourg	Education & research
Dieter	Dietz	ETH Lausanne	EPF	Lausanne	Architecture, agence d'architecture	dieterdietz.org	Industry, construction & agriculture
Dieter	Dietz	ETH Lausanne	EPF	Lausanne	RATP, audit des espaces	RATP, Paris	Energy, environment & mobility
Pierre	Dillenbourg	ETH Lausanne	EPF	Lausanne	Mandat d'études sur la stratégie MOOC des universités Flamandes	Koninklijke Vlaamse Academie van België voor Wetenschappen en Kusten, Brussel	Education & research
Pierre	Dillenbourg	ETH Lausanne	EPF	Lausanne	Membre indépendant du conseil d'administration de l'établissement scolaire privé Haut-Lac (1 séance)	Haut-Lac Ecole internationale bilingue, St-Légier, CH	Education & research
Valentin	Djonov	Uni Bern	UBE	Bern	NA	SWISSENDOS Stiftungsrat	Pharma & health
Minyue	Dong	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Gian-Paulo	Dotto	Uni Lausanne	ULA	Lausanne	NA	Massachusetts General Hospital	Pharma & health
Jacques	Dubey	Uni Freiburg	UFR	Fribourg	Rechtsberater	Selbstständig	Not classifiable
Denis	Duboule	Uni Genf	UGE	Geneva	Membre	Concile de l'EMBO	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre	Conseil de l'EMBL	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre conseil scientifique	Fondation Louis Jeantet, Genève	Pharma & health
Denis	Duboule	Uni Genf	UGE	Geneva	Membre de comité scientifique	Institut Curie Paris	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre de comité scientifique	Institut génomique Montpellier	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre de comité scientifique	Institute Imagine Paris	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre du comité steering	IGBMC Strasbourg	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre du conseil scientifique	CBM Severo Ochoa research Centre, Madrid	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre du conseil scientifique	Hubrecht Institute Utrecht	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre du conseil scientifique	Institut Curie, Paris	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre du conseil scientifique	Strategic Research Initiative on stem cells, Stockholm	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Membre du conseil scientifique	Wallenberg Institute for Regenerative Medicine, Stockholm	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Président de comité scientifique	Biozentrum Basel	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Président de panel	Fonds National Suisse	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Président Division III	Fonds National Suisse, Berne	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Président du conseil scientifique	Ecole Normale de Paris (ENS)	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Président fondation	Fondation Latsis Internationale, Genève	Education & research
Denis	Duboule	Uni Genf	UGE	Geneva	Professeur (50%)	Université de Genève	Education & research
Jean-François	Dufour	Uni Bern	UBE	Bern	NA	Stiftung für Leberkrankheiten	Pharma & health
Jean-François	Dufour	Uni Bern	UBE	Bern	NA	Stiftung gegen Leberkrebs	Pharma & health
François	Dufresne	Uni Lausanne	ULA	Lausanne	Conseil d'administration	Etablissement Cantonal d'Assurance	Society, Social, Culture & Sports
André-Gilles	Dumont	ETH Lausanne	EPF	Lausanne	Conseil d'administration	Infralab SA Romanel, Lausanne	Commerce, trade & services
Jean-Philippe	Dunand	Uni Neuenburg	UNE	Neuchâtel	Conseil externe dans l'étude d'avocats	Athemis	Consulting, public relations, legal & trust
Thomas	Dyllick	Uni St. Gallen	USG	Saint Gallen	Aufsichtsrat	oekom Research AG	Financial industry & insurances
Thomas	Dyllick	Uni St. Gallen	USG	Saint Gallen	Beirat	SQS Software Quality Systems (Schweiz) AG	Consulting, public relations, legal & trust
Thomas	Dyllick	Uni St. Gallen	USG	Saint Gallen	Berater	BSL Lausanne	Education & research
Thomas	Dyllick	Uni St. Gallen	USG	Saint Gallen	Kommanditist	Brenzinger Grundstücksverwaltungs KG	Commerce, trade & services
Paul Joseph	Dyson	ETH Lausanne	EPF	Lausanne	Editorial board member of several journals (unpaid)	Journals	Not classifiable
Paul Joseph	Dyson	ETH Lausanne	EPF	Lausanne	Examiner of several PhD Thesis	Several PhD thesis	Not classifiable
Paul Joseph	Dyson	ETH Lausanne	EPF	Lausanne	Member of several conferences advisory boards (unpaid)	Conferences	Not classifiable
Paul Joseph	Dyson	ETH Lausanne	EPF	Lausanne	Member of the board of the Swiss Competence Center in Energy Research	PSI	Education & research
Dietmar	Eberle	ETH Zürich	ETH	Zurich	VR-Mandat	Senn BPM AG	Not classifiable
Anna	Ebers	Uni St. Gallen	USG	Saint Gallen	Gründerin und Projektleiterin	Gemeinnützliches Projekt für erneuerbare Energien SunRaisers	Energy, environment & mobility
Anna	Ebers	Uni St. Gallen	USG	Saint Gallen	Mitgründerin	oikos Konstanz	Education & research
Matthias	Egger	Uni Bern	UBE	Bern	NA	Krebsforschung Schweiz	Pharma & health
Matthias	Egger	Uni Bern	UBE	Bern	NA	SNF Forschungsrat	Education & research
Matthias	Egger	Uni Bern	UBE	Bern	NA	WHO, Geneva	Pharma & health
Patricia	Egli	Uni St. Gallen	USG	Saint Gallen	Ersatzrichterin	Verwaltungsgericht Zürich	Politics, administration, justice system & security sector
Bernhard	Ehrenzeller	Uni St. Gallen	USG	Saint Gallen	Experte im Rahmen der Weiterentwicklung der schweizerischen Hochschul- und Bildungsgesetzgebung wie auch der Hochschulgesetzregelung	Kanton St.Gallen	Politics, administration, justice system & security sector
Bernhard	Ehrenzeller	Uni St. Gallen	USG	Saint Gallen	Korrespondierendes Mitglied der philosophisch-historischen Klasse im Ausland	Österreichische Akademie der Wissenschaften	Education & research
Bernhard	Ehrenzeller	Uni St. Gallen	USG	Saint Gallen	Mitglied des Stiftungsrats	Stiftung für Schweizerische Rechtspflege	Politics, administration, justice system & security sector
Bernhard	Ehrenzeller	Uni St. Gallen	USG	Saint Gallen	Richter	Staatsgerichtshof des Fürstentums Liechtenstein	Politics, administration, justice system & security sector
Reiner	Eichenberger	Uni Freiburg	UFR	Fribourg	Mitglied	Eidgenössische Kommunikationskommission	Commerce, trade & services
Reiner	Eichenberger	Uni Freiburg	UFR	Fribourg	Mitglied Stiftungsrat Ombudsmann	Postfinance	Financial industry & insurances
Friedrich	Eisenbrand	ETH Lausanne	EPF	Lausanne	Membre du conseil national de la recherche	FNS division IV, Berne	Education & research
Florian	Elliker	Uni St. Gallen	USG	Saint Gallen	Research Fellow	University of the Free State	Education & research
Patrick	Emmenegger	Uni St. Gallen	USG	Saint Gallen	NA	Eidgenössischen Berufsbildungskommission (EBBK)	Politics, administration, justice system & security sector
Patrick	Emmenegger	Uni St. Gallen	USG	Saint Gallen	Präsident	Schweizerische Vereinigung für Politikwissenschaft	Education & research
David Lyndon	Emsley	ETH Lausanne	EPF	Lausanne	Associate Editor, Journal of the American Chemical Society	American Chemical Society	Technology
David Lyndon	Emsley	ETH Lausanne	EPF	Lausanne	Invited Professor	KAUST, Jeddah	Education & research
David Lyndon	Emsley	ETH Lausanne	EPF	Lausanne	Professor of Chemistry	Ecole normale supérieure de Lyon	Education & research
Christian	Enz	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board: Cooperation CSEM-EPF	CSEM, Neuchatel	Education & research
Astrid	Epiney	Uni Freiburg	UFR	Fribourg	Präsidentin	Schweizer Wissenschafts- und Innovationsrat	Education & research
Thomas	Epper	Uni St. Gallen	USG	Saint Gallen	Department of Economics	Universität Zürich	Education & research
Paolo	Ermanni	ETH Zürich	ETH	Zurich	VR-Mandat	Acutronic Schweiz AG	Industry, construction & agriculture
Beatrix	Eugster	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Raiffeisen Diepoldsau-Schmitter	Financial industry & insurances
Rüdiger	Fahlenbrach	ETH Lausanne	EPF	Lausanne	10-hour PhD class	University of Vienna	Education & research
Rüdiger	Fahlenbrach	ETH Lausanne	EPF	Lausanne	15-hour MBA class	European School of Management and Technology	Education & research
Rüdiger	Fahlenbrach	ETH Lausanne	EPF	Lausanne	2-hour Exec. Education International Wealth Management Retreat	SFI, Zürich	Education & research
Jérôme Jean-Constant	Faist	ETH Zürich	ETH	Zurich	NA	Centre Suisse d’Electronique et de Microtechnique (CSEM)	Education & research
Jérôme Jean-Constant	Faist	ETH Zürich	ETH	Zurich	VR-Mandat	Alpes Lasers S.A.	Industry, construction & agriculture
Boi	Faltings	ETH Lausanne	EPF	Lausanne	Scientific Advisor / Consultant	Fairnez Inc., USA	Consulting, public relations, legal & trust
Boi	Faltings	ETH Lausanne	EPF	Lausanne	Scientific Advisor / Consultant	Livelyplanet, SAS, Versailles, France	Technology
Boi	Faltings	ETH Lausanne	EPF	Lausanne	Scientific Advisor / Consultant	Prediggo SA, PSE, Ecublens	Technology
Roland	Fankhauser	Uni Basel	UBA	Basel	Konsulent	Schweizerischer Anwaltsverband	Politics, administration, justice system & security sector
Roland	Fankhauser	Uni Basel	UBA	Basel	Mitglied	Advokatenkammer Basel-Stadt	Politics, administration, justice system & security sector
Roland	Fankhauser	Uni Basel	UBA	Basel	Mitglied	Freiwillige Akademische Gesellschaft (FAG)	Education & research
Roland	Fankhauser	Uni Basel	UBA	Basel	Mitglied	Liatowitsch & Partner	Politics, administration, justice system & security sector
Roland	Fankhauser	Uni Basel	UBA	Basel	Mitglied	Zivilprozessrechtslehrervereinigung	Politics, administration, justice system & security sector
Roland	Fankhauser	Uni Basel	UBA	Basel	Mitglied	Zivilrechtslehrervereinigung	Politics, administration, justice system & security sector
Roland	Fankhauser	Uni Basel	UBA	Basel	Vorstandmitglied	Basler Juristenverein, Pro Iure	Commerce, trade & services
Roland	Fankhauser	Uni Basel	UBA	Basel	Vorstandsmitglied	Verein Fachanwältinnen und Fachanwälte SAV Familienrecht	Politics, administration, justice system & security sector
Roland	Fankhauser	Uni Basel	UBA	Basel	Vorstandsmitglied und seit Januar 2015 Präsident	Centrum für Familienwissenschaften	Education & research
Georg	Fantner	ETH Lausanne	EPF	Lausanne	Technical consultant	GETec KG, Langenlois, Austria	Industry, construction & agriculture
Georg	Fantner	ETH Lausanne	EPF	Lausanne	Technical consultant	SCL-Sensor. Tech. Fabrication GesmbH, Vienna, Austria	Industry, construction & agriculture
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Conseil scientifique	Fondation Ch.-Ed. Guillaume, La Chaux-de-Fonds	Education & research
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Conseiller scientifique, Advisory Board	Ethimedix SA, Nyon	Pharma & health
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Conseiller scientifique, membre du comité d'organisation	Association pour le Concours International de Chronométrie, Le Locle	Industry, construction & agriculture
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Membre	SSC (Société Suisse de Chronométrie), Neuchâtel	Industry, construction & agriculture
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Membre de l'assemblée générale AG du COSC	Contrôle officiel suisse des chronomètres (COSC), La Chaux-de-Fonds	Industry, construction & agriculture
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Membre du Conseil d'administration d'Asgalium Unitec SA, Consulting et expertises	Asgalium Unitec SA, Cortaillod	Industry, construction & agriculture
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Présidence de la commission technique CT du COSC	COSC (Contrôle Officiel Suisse des Chronomètres), La Chaux-de-Fonds	Industry, construction & agriculture
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Présidence de la Fondation du Prix Omega, Prix Omega scientifique et Prix Omega Etudiants	Fondation du prix Omega, Neuchâtel	Education & research
Pierre-André	Farine	Uni Neuenburg	UNE	Neuchâtel	Vice-président	Collegium International SMYLE en microtechnique, Besançon	Education & research
Ambrogio	Fasoli	ETH Lausanne	EPF	Lausanne	Editor-in-Chief, Nuclear Fusion Journal	IAEA, Vienna, Austria	Energy, environment & mobility
Anne-Christine	Favre	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Martin	Fey	Uni Bern	UBE	Bern	NA	Berger-Janser-Stiftung, Bern	Pharma & health
Damir	Filipovic	ETH Lausanne	EPF	Lausanne	Member of the Board of Directors	Swiss Life Holding Ltd	Financial industry & insurances
Matthias	Finger	ETH Lausanne	EPF	Lausanne	Florence School of regulation, Transport Area (organisation de 6 workshops en 2013)	European University Institute, Florence, Italy	Education & research
Matthias	Finger	ETH Lausanne	EPF	Lausanne	Membre	EICom, Commission Fédérale de la Régulation du Marché de l'Electricté, Bern	Politics, administration, justice system & security sector
Matthias	Finger	ETH Lausanne	EPF	Lausanne	Vice-président	SKE, Commission Fédérale d'Arbitrage dans le Secteur du Rail, Berne	Energy, environment & mobility
Peter Mathias	Fischer	Uni St. Gallen	USG	Saint Gallen	Co-Founder	Sound Leadership LLC	Consulting, public relations, legal & trust
Peter Mathias	Fischer	Uni St. Gallen	USG	Saint Gallen	Gründer und Leiter der Regionalgruppe Ostschweiz/Vorarlberg	AbsolventUM	Education & research
Alexander	Fust	Uni St. Gallen	USG	Saint Gallen	Dozent	CTI-Entrepreneurship	Commerce, trade & services
Peter Mathias	Fischer	Uni St. Gallen	USG	Saint Gallen	National Representative Switzerland and Member of the Executive Committee	European Marketing Academy EMAC	Education & research
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	42matters AG	Technology
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	BEN Energy AG	Technology
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	coresystems ag	Technology
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	Dacuda AG	Technology
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	Elgar Fleisch Management Services AG	Consulting, public relations, legal & trust
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	Hoval Holding AG	Financial industry & insurances
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	Interhoval AG	Financial industry & insurances
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	qipp AG	Technology
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	Schweizerische Mobiliar Genossenschaft	Financial industry & insurances
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	Schweizerische Mobiliar Holding AG	Financial industry & insurances
Elgar	Fleisch	Uni St. Gallen	USG	Saint Gallen	VR-Mandat	UCTec Beteiligungsgesellschaft AG	Financial industry & insurances
Dario	Floreano	ETH Lausanne	EPF	Lausanne	Harvard Wyss Institute: Visiting Professor (September-December 2014, while on leave)	SEAS Harvard, Cambridge, USA	Education & research
Dario	Floreano	ETH Lausanne	EPF	Lausanne	NASA/Caltech Jet Propulsion Laboratory: Visiting researcher (July-August 2014, while on leave)	JPL, Pasadena, USA	Education & research
Gerd	Folkers	Uni Basel	UBA	Basel	VR-Mandat	AZAD Pharmaceutical Ingredients AG	Pharma & health
Gerd	Folkers	Uni Basel	UBA	Basel	VR-Präsidium	PNN Pharma Nation Network AG	Pharma & health
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Bankrat	Schwyzer Kantonalbank	Financial industry & insurances
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Mitglied der Programmkommission	Avenir Suisse	Society, Social, Culture & Sports
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Mitglied des geschäftsleitenden Ausschusses	SEW-HSG	Education & research
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Mitglied des VR	Löwetz Immobilien AG	Commerce, trade & services
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	R&M Immobilien AG	Commerce, trade & services
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Vorsitz EG Wirtschaftsstatistik	Bundesamt für Statistik	Politics, administration, justice system & security sector
Reto	Föllmi	Uni St. Gallen	USG	Saint Gallen	Vorstandsmitglied	Schweiz. Gesellschaft für Volkswirtschaft und Statistik	Commerce, trade & services
Mario	Fontana	ETH Zürich	ETH	Zurich	Geschäftsführer	F-Ingenieur GmbH	Commerce, trade & services
Anna	Fontcuberta Morral	ETH Lausanne	EPF	Lausanne	Expertise de projet	Fonds de Recherche Luxembourg	Education & research
Anna	Fontcuberta Morral	ETH Lausanne	EPF	Lausanne	Expertise de projet	Science Foundation Ireland	Education & research
Anna	Fontcuberta Morral	ETH Lausanne	EPF	Lausanne	Expertise de projet	Stifelsen Strtegisk Froskning, Sweden	Education & research
Anna	Fontcuberta Morral	ETH Lausanne	EPF	Lausanne	Expertise de projet	Université Freiburg (Allemagne)	Education & research
Anna	Fontcuberta Morral	ETH Lausanne	EPF	Lausanne	Participation au conseil scientifique	CSEM, Neuchâtel	Education & research
Dominique	Foray	ETH Lausanne	EPF	Lausanne	Consulting	EPFL-TTO	Education & research
Dominique	Foray	ETH Lausanne	EPF	Lausanne	Expertise	Gesellschaft für Wissenschaftstatistik, EFI, Berlin	Education & research
Dominique	Foray	ETH Lausanne	EPF	Lausanne	Expertise	SEFRI, Bern	Politics, administration, justice system & security sector
Dominique	Foray	ETH Lausanne	EPF	Lausanne	Expertise	SNF, Bern	Education & research
Dominique	Foray	ETH Lausanne	EPF	Lausanne	Expertise	Uni StGall, St. Gallen	Education & research
Peter	Fornaro	Uni Basel	UBA	Basel	Präsident des Verwaltungsrates	Bitsave AG, Kehrsatz	Technology
László	Forró	ETH Lausanne	EPF	Lausanne	Chair of the Int. Advisory Board and consultant	Nano Center of Serbia, Belgrade	Education & research
Till	Förster	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Basel Institute on Governance	Politics, administration, justice system & security sector
Joseph	Francois	Uni Bern	UBE	Bern	NA	Board Member, European Trade Study Group	Education & research
Joseph	Francois	Uni Bern	UBE	Bern	NA	Board Member, Global Trade Analysis Project	Education & research
Joseph	Francois	Uni Bern	UBE	Bern	NA	Board Member, Institute for Int'l & Development Econ.	Education & research
Geraldine	Frei	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrates	NeueBank AG	Financial industry & insurances
Geraldine	Frei	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrates	St. Galler Kantonalbank AG	Financial industry & insurances
Geraldine	Frei	Uni St. Gallen	USG	Saint Gallen	Vorsitzender des Verwaltungsrates	Algofin AG	Consulting, public relations, legal & trust
Thomas	Friedli	Uni St. Gallen	USG	Saint Gallen	Dozent Qualitäts- und Prozessmanagement	EMBA	Education & research
Thomas	Friedli	Uni St. Gallen	USG	Saint Gallen	Dozent Qualitäts- und Prozessmanagement	SMBS	Education & research
Thomas	Friedli	Uni St. Gallen	USG	Saint Gallen	Dozent Qualitäts- und Prozessmanagement	Universität Salzburg	Education & research
Thomas	Friedli	Uni St. Gallen	USG	Saint Gallen	Mitglied strategisches Advisory Board	RUAG	Industry, construction & agriculture
Thomas	Friedli	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Schuh & Co.	Consulting, public relations, legal & trust
Martin	Fröhlich	ETH Lausanne	EPF	Lausanne	Bureau d'architecture, Fondateur	AFF Architekten, Berlin, Germany	Industry, construction & agriculture
Emmanuel	Frossard	ETH Zürich	ETH	Zurich	Stiftungsrat	Walter Hochstrasser-Stiftung	Education & research
Pascal	Fua	ETH Lausanne	EPF	Lausanne	Advising	PlayfulVision EPFL	Technology
Pascal	Fua	ETH Lausanne	EPF	Lausanne	Consulting	Pix4D EPFL Innovation Park	Technology
Roland	Füss	Uni St. Gallen	USG	Saint Gallen	Lehrtätigkeit	CUREM	Education & research
Roland	Füss	Uni St. Gallen	USG	Saint Gallen	Lehrtätigkeit	EBS Universität	Education & research
Roland	Füss	Uni St. Gallen	USG	Saint Gallen	Vortragstätigkeit (einmalig)	Swiss&Global	Financial industry & insurances
Alexander	Fust	Uni St. Gallen	USG	Saint Gallen	Dozent	FHS St. Gallen	Education & research
Alexander	Fust	Uni St. Gallen	USG	Saint Gallen	Fachexperte und Coach für Designer Startups	Creative Hub	Commerce, trade & services
Karl	Gademann	Uni Zürich	UZH	Zurich	Vorstandsmitglied	Schweizerische Akademie der Naturwissenschaften SCNAT Bern	Education & research
Pascal	Gantenbein	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Hoffmann & Co. AG, Basel	Consulting, public relations, legal & trust
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Audit Expert Group	Schindler	Industry, construction & agriculture
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Gründer und Verwaltungsrat	Avatarion Technology	Technology
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Gründer und Verwaltungsrat	BGW Management Advisory Group	Consulting, public relations, legal & trust
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Gründer und Verwaltungsrat	BMI-Lab	Education & research
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Gründer, Co-Director	GLORAD	Education & research
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	International Advisory Board	Alexander von Humboldt Institut für Internet & Society	Education & research
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Miglied Forschungs- und Bildungskommission	Economiesuisse	Commerce, trade & services
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Hoffmann Neopac	Industry, construction & agriculture
Oliver	Gassmann	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Zühlke	Consulting, public relations, legal & trust
Michael	Gastpar	ETH Lausanne	EPF	Lausanne	Academic Affiliation (unpaid)	Delft University of Technology	Education & research
Michael	Gastpar	ETH Lausanne	EPF	Lausanne	Academic Affiliation (unpaid)	University of California, Berkeley	Education & research
Kersten	Geers	ETH Lausanne	EPF	Lausanne	Founding Member	San Rocco Magazine, Milano, Italy	Media & communication
Kersten	Geers	ETH Lausanne	EPF	Lausanne	Founding Partner	Office KGDVS, Brussels	Industry, construction & agriculture
Kersten	Geers	ETH Lausanne	EPF	Lausanne	Residency	Canadian Centre for Architecture, Montréal, Canada	Industry, construction & agriculture
Kersten	Geers	ETH Lausanne	EPF	Lausanne	Workshop	Faculty of Architecture, Slipakorn University, Bankok	Education & research
Kersten	Geers	ETH Lausanne	EPF	Lausanne	Workshop Roman Architecture	Porto Academy, Portugal	Education & research
Thomas	Geiser	Uni St. Gallen	USG	Saint Gallen	NA	Rehaklinik Heiligenschwendi	Pharma & health
Nikolaos	Geroliminis	ETH Lausanne	EPF	Lausanne	Advising on traffic management for the city of Sydney	UNSW Australia, Australian Center for Commercial Mathematics, Sydney	Education & research
Nikolaos	Geroliminis	ETH Lausanne	EPF	Lausanne	Development of analysis tools	Minnesota Traffic Observatory, University of Minnesota, USA	Education & research
Wulfram	Gerstner	ETH Lausanne	EPF	Lausanne	Scientific advisory board	Center for Integrative Neuroscience (CIN), University of Tübingen	Education & research
Rajna Nicole	Gibson Brandon	Uni Genf	UGE	Geneva	Membre du conseil d'administration	Swiss Re	Financial industry & insurances
Martinus	Gijs	ETH Lausanne	EPF	Lausanne	Project review work, proposal evaluation	European Commission	Politics, administration, justice system & security sector
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Administrateur de la Fondation	Fondation Bullukian	Society, Social, Culture & Sports
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Membre du Conseil d'Administration	Société BioMérieux	Pharma & health
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Membre du Conseil de la Fondation	Fondation BNP Paribas pour le mécénat	Financial industry & insurances
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Membre du Conseil de la Fondation	Fondation Elemo	Education & research
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Président de la Fondation	Fondation IQRGC	Not classifiable
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Président du Board du Human Brain Project	Human Brain Project	Education & research
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Président du conseil d'Administration	Institut de Physique du Globe de Paris	Education & research
Philippe	Gillet	ETH Lausanne	EPF	Lausanne	Président du Conseil de l'Ecole	Ecole VetAgro Sup	Education & research
Hubert	Girault	ETH Lausanne	EPF	Lausanne	Associate Editor - Chemical Science	Royal Society of Chemistry, Cambridge, UK	Education & research
Hubert	Girault	ETH Lausanne	EPF	Lausanne	Membre de la commission fédérale d'examen, nommé par le Conseil Fédéral ; domaine : électrochimie	Direction générale des douanes, Berne	Politics, administration, justice system & security sector
Hubert	Girault	ETH Lausanne	EPF	Lausanne	Membre du Conseil de Fondation, vice-président ; domaine : éditions scientifiques	PPUR - EPFL	Education & research
Hubert	Girault	ETH Lausanne	EPF	Lausanne	Membre du Jury et Mentor ; domaine : promotion de la recherche scientifique	Fondation Carnot, Neuilly s/Seine	Education & research
Nicolas	Gisin	Uni Genf	UGE	Geneva	Membre du conseil d'administraiton	ID Quantique SA	Technology
Rémy	Glardon	ETH Lausanne	EPF	Lausanne	Conseil en gestion d'entreprise	NGL Cleaning Technology SA, Nyon	Technology
Pierre	Gönczy	ETH Lausanne	EPF	Lausanne	Scientific Board (no income)	Novartis Consumer Health Foundation, Nyon	Pharma & health
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	Conseil de fondation et Conseil Scientifique de la Fondation Jeantet	Fondation Jeantet, Genève	Pharma & health
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	Conseil scientifique	Fondation Bettencourt, Paris	Society, Social, Culture & Sports
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	Conseil Suisse de la Science et de l'Innovation	CSSI Bern	Politics, administration, justice system & security sector
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	Diverses commissions du SNF	SNF Bern	Education & research
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	EMBO YIP (Young Investigator Program) committee	EMBO, Heidelberg	Education & research
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board	Laboratory of Excellence (Labex) INFORM	Education & research
Françoise Gisou van der	Goot Grunberg	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board Clinical Research Department	Univ Bern	Education & research
Bruno	Gottstein	Uni Bern	UBE	Bern	NA	Jean-Pierre Miéville-Stiftung	Education & research
Michael	Graetzel	ETH Lausanne	EPF	Lausanne	Honorary Editor of Nano Journal	SAINT, SKKU	Education & research
Michael	Graetzel	ETH Lausanne	EPF	Lausanne	Scientific Advisor	DYESOL	Energy, environment & mobility
Michael	Graetzel	ETH Lausanne	EPF	Lausanne	Scientific Advisor	G24 Power	Energy, environment & mobility
Michael	Graetzel	ETH Lausanne	EPF	Lausanne	Scientific Advisor	NTU, Singapore	Education & research
Franz	Graf	USI Lugano	USI	Lugano	Architecte indépendant à Genève	F. Graf & J. Menoud, Carouge	Industry, construction & agriculture
Franz	Graf	USI Lugano	USI	Lugano	Professeur ordinaire	Università della Svizzera italiana, Accademia di Architettura	Education & research
Fabio Matteo	Gramazio	ETH Zürich	ETH	Zurich	VR-Mandat	ROB Technologies AG	Commerce, trade & services
Nicolas	Grandjean	ETH Lausanne	EPF	Lausanne	Conseil scientifique	CEA-LETI, France	Education & research
Nicolas	Grandjean	ETH Lausanne	EPF	Lausanne	Conseil scientifique	Nanodimension AG, Suisse	Financial industry & insurances
Nicolas	Grandjean	ETH Lausanne	EPF	Lausanne	Expertise scientifique, Institut de recherche	Leibnitz Association, Germany	Education & research
Nicolas	Grandjean	ETH Lausanne	EPF	Lausanne	Expertise scientifique, projets de recherche	Ministry of Education, Singapore	Politics, administration, justice system & security sector
Dietmar	Grichnik	Uni St. Gallen	USG	Saint Gallen	Gesellschafter	Particulate	Not classifiable
Dietmar	Grichnik	Uni St. Gallen	USG	Saint Gallen	Gründer und Gesellschafter	Scienovation	Commerce, trade & services
Dietmar	Grichnik	Uni St. Gallen	USG	Saint Gallen	Inhaber	Dietmar Grichnik Entrepreneurial Management GmbH	Consulting, public relations, legal & trust
Dietmar	Grichnik	Uni St. Gallen	USG	Saint Gallen	Mitglied des Beirats	Stiftung Social Funders	Politics, administration, justice system & security sector
Dietmar	Grichnik	Uni St. Gallen	USG	Saint Gallen	Präsident	Swiss Startup Monitor Stiftung	Commerce, trade & services
Markus Hans	Gross	ETH Zürich	ETH	Zurich	Direktor (wissenschaftlicher Co Direktor)	The Walt Disney Company (Switzerland) GmbH	Society, Social, Culture & Sports
Markus Hans	Gross	ETH Zürich	ETH	Zurich	VR-Mandat	Dybuster AG	Technology
Markus Hans	Gross	ETH Zürich	ETH	Zurich	VR-Präsidium	Gimalon AG	Technology
Gudela	Grote	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung zur Föderung der Forschung und Ausbildung in Unternehmenswiss., ETH Zürich	Education & research
Marc	Gruber	ETH Lausanne	EPF	Lausanne	Bern-Rochester MBA, Teaching	University of Bern	Education & research
Marc	Gruber	ETH Lausanne	EPF	Lausanne	Mitglied	SNF Forschungsrat	Education & research
Marc	Gruber	ETH Lausanne	EPF	Lausanne	University of Liechtenstein, Teaching	University of Liechtenstein, Vaduz, Lichtenstein	Education & research
Marc	Gruber	ETH Lausanne	EPF	Lausanne	Venture Lab - Teaching	Institut fuer Jungunternehmen, St. Gallen	Consulting, public relations, legal & trust
Marc	Gruber	ETH Lausanne	EPF	Lausanne	Venture Labe	Parc Scientifique EPFL	Education & research
Marc	Gruber	ETH Lausanne	EPF	Lausanne	Visiting Professor	Imperial College Business School	Education & research
Nicolas	Gruber	ETH Zürich	ETH	Zurich	Vertreter der ETH im Leitorgan	Association Climate-KIC	Energy, environment & mobility
Wilhelm	Gruissem	ETH Zürich	ETH	Zurich	VR-Mandat	Nebion AG	Technology
Andreas	Grüner	Uni St. Gallen	USG	Saint Gallen	Gutachter	Akkreditierungsagentur FIBAA	Politics, administration, justice system & security sector
Lukas	Gschwend	Uni St. Gallen	USG	Saint Gallen	Mitglied	Unabhängige Expertenkommission Administrative Zwangsmassnahmen	Politics, administration, justice system & security sector
Lukas	Gschwend	Uni St. Gallen	USG	Saint Gallen	Präsident der Rechtsquellenstiftung	Schweizerischen Juristenvereins	Commerce, trade & services
Lukas	Gschwend	Uni St. Gallen	USG	Saint Gallen	Titularprofessor für Rechtsgeschichte und Rechtsphilosophie	Universität Zürich	Education & research
Lukas	Gschwend	Uni St. Gallen	USG	Saint Gallen	Vizepräsident	Zürichsee Landschaftsschutz ZSL	Energy, environment & mobility
Rachid	Guerraoui	ETH Lausanne	EPF	Lausanne	Evaluation Agence de la recherche, France	ANR, Paris	Education & research
David	Gugerli	Uni Zürich	UZH	Zurich	Stiftungsrat	Stiftung Jüdische Zeitgeschichte	Society, Social, Culture & Sports
Harry	Gugger	ETH Lausanne	EPF	Lausanne	Board Director	HGS (Harry Gugger Studio), Basel	Industry, construction & agriculture
Harry	Gugger	ETH Lausanne	EPF	Lausanne	Board Member, Academic Committee Member Holcim Foundation	Holcim Group Services Ltd/ Holcim Technology Ltd, Zurich	Commerce, trade & services
Harry	Gugger	ETH Lausanne	EPF	Lausanne	Committee Member BSA Forschungsstipendium	BSA CH, Basel	Industry, construction & agriculture
Harry	Gugger	ETH Lausanne	EPF	Lausanne	Member of Advisory Board, The Circle at Zurich Airport	Flughafen ZHAG, Zurich	Energy, environment & mobility
Harry	Gugger	ETH Lausanne	EPF	Lausanne	Member of the Advisory Board, Studiengang Kulturmanagement Uni Basel	SKM, UniBasel, Basel	Education & research
Carlotta	Guiducci	ETH Lausanne	EPF	Lausanne	expertise examen doctorat, science de la vie	Uni de Bâle	Education & research
Olivier	Guillod	Uni Neuenburg	UNE	Neuchâtel	Conseil d’administration	Office national (français) d’indemnisation des accidents médicaux	Politics, administration, justice system & security sector
Olivier	Guillod	Uni Neuenburg	UNE	Neuchâtel	Conseil d’administration	Swissmedic	Pharma & health
Olivier	Guillod	Uni Neuenburg	UNE	Neuchâtel	Cours	MAS en économie et administration de la santé de HEC Lausanne	Education & research
Olivier	Guillod	Uni Neuenburg	UNE	Neuchâtel	Prof invité	Uni Paris V Descartes	Education & research
Detlef	Günther	ETH Zürich	ETH	Zurich	Director	ETH Singapore SEC Ltd.	Politics, administration, justice system & security sector
Detlef	Günther	ETH Zürich	ETH	Zurich	NA	Verein Euresearch	Education & research
Detlef	Günther	ETH Zürich	ETH	Zurich	Stiftungsrat	Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	Education & research
Detlef	Günther	ETH Zürich	ETH	Zurich	Stiftungsrat	SIB Swiss Institute of Bioinformatics, Lausanne	Education & research
Detlef	Günther	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung Technopark Zürich	Education & research
Detlef	Günther	ETH Zürich	ETH	Zurich	Verwaltungsrat	ETH Zürich SEC AG	Politics, administration, justice system & security sector
Detlef	Günther	ETH Zürich	ETH	Zurich	Verwaltungsrat	inspire AG	Technology
Detlef	Günther	ETH Zürich	ETH	Zurich	VR-Mandat	GRS Gemresearch Swisslab AG	Not classifiable
Lino	Guzzella	ETH Zürich	ETH	Zurich	Angestellter Konzernforschung	Sulzer	Industry, construction & agriculture
Lino	Guzzella	ETH Zürich	ETH	Zurich	Director	ETH Singapore SEC Ltd.	Politics, administration, justice system & security sector
Lino	Guzzella	ETH Zürich	ETH	Zurich	Leitung der Entwicklungsabteilung für Mechatronik	Hilti	Industry, construction & agriculture
Lino	Guzzella	ETH Zürich	ETH	Zurich	Mitglied	Schweizerischen Akademie der Technischen Wissenschaften	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Präsident	ETH Zürich	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Erich Degen-Stiftung	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Fondazione Monte Verità	Commerce, trade & services
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Huber-Kudlich-Stiftung an der Eidgenössischen Technischen Hochschule Zürich	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	International Federation of Automatic Control (IFAC) Stiftung	Commerce, trade & services
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Kinderbetreuung im Hochschulraum Zürich (kihz)	Society, Social, Culture & Sports
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Schweizerische Studienstiftung Fonds für begabte junge Menschen	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Swiss University Sports Foundation	Society, Social, Culture & Sports
Lino	Guzzella	ETH Zürich	ETH	Zurich	Stiftungsrat	Walter Hochstrasser-Stiftung	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Vertreter in der Plenarversammlung und im Vorstand	swissuniversities	Education & research
Lino	Guzzella	ETH Zürich	ETH	Zurich	Verwaltungsrat	Kistler Holding AG	Industry, construction & agriculture
Lino	Guzzella	ETH Zürich	ETH	Zurich	Verwaltungsrat	Kistler Instrumente AG	Industry, construction & agriculture
Lino	Guzzella	ETH Zürich	ETH	Zurich	Verwaltungsrat	Venture Incubator Ltd	Financial industry & insurances
Lino	Guzzella	ETH Zürich	ETH	Zurich	Zeichnungsberechtigt	Heyning-Roelli Stiftung	Education & research
Ina	Habermann	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Telebasel, Basel	Media & communication
Ernst	Hafen	ETH Zürich	ETH	Zurich	VR-Mandat	EvalueScience AG	Consulting, public relations, legal & trust
Albert	Hafner	Uni Bern	UBE	Bern	NA	Stiftung Charles Neuhaus Biel	Society, Social, Culture & Sports
Anders	Hagfeldt	ETH Lausanne	EPF	Lausanne	Board Member	Dyenamo AB, Start-up, Stockholm	Energy, environment & mobility
Anders	Hagfeldt	ETH Lausanne	EPF	Lausanne	Chairman of the Committee for Development Research	Swedish Research Council	Education & research
Anders	Hagfeldt	ETH Lausanne	EPF	Lausanne	Distinguished Adjunct Professor, Chemistry	King Abdulaziz University, Saudi Arabia	Education & research
Anders	Hagfeldt	ETH Lausanne	EPF	Lausanne	Visiting Professor, Energy Research Institute	Nanyang Technological University, Singapore	Education & research
Anders	Hagfeldt	ETH Lausanne	EPF	Lausanne	Visiting Professor, Physical Chemistry	Department of Chemistry, Angström, Uppsala University, Sweden	Education & research
Philippe A.	Halban	Uni Genf	UGE	Geneva	Conseil scientifique et orateur	sanofi-aventis	Pharma & health
Douglas	Hanahan	ETH Lausanne	EPF	Lausanne	Member, Scientific Advisory Board	Shenogen Pharma Group LTD, China	Pharma & health
Douglas	Hanahan	ETH Lausanne	EPF	Lausanne	Member, Scientific Advisory Board - Cancer Therapeutic Area	Pfizer, Inc., New York, USA	Pharma & health
Olivier	Hari	Uni Neuenburg	UNE	Neuchâtel	mandats privés (expertises, analyses)	Schellenberg Wittmer SA	Politics, administration, justice system & security sector
Andreas	Härter	Uni St. Gallen	USG	Saint Gallen	Co-Präsident	Schweizerische Gesellschaft für Theaterkultur	Society, Social, Culture & Sports
Andreas	Härter	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Konzert und Theater St. Gallen	Society, Social, Culture & Sports
Vassily	Hatzimanikatis	ETH Lausanne	EPF	Lausanne	Consulting	AMYRIS, California, USA	Technology
Vassily	Hatzimanikatis	ETH Lausanne	EPF	Lausanne	Consulting	Gevo, Colorado, USA	Energy, environment & mobility
Vassily	Hatzimanikatis	ETH Lausanne	EPF	Lausanne	Consulting	TOTAL, Paris, France	Commerce, trade & services
Sophia	Haussener	ETH Lausanne	EPF	Lausanne	Associate Editor for Journal of Renewable & Sustainable Energy	AIP Publishing Center, Melville, NY, USA	Media & communication
Cécile	Hébert	ETH Lausanne	EPF	Lausanne	Comité d'expert	Centre de microscopie de l'Université de Saragosse, Espagne	Education & research
Cécile	Hébert	ETH Lausanne	EPF	Lausanne	Comité HCERES, évaluation de laboratoire INAC, CEA Grenoble	HCERES, France	Education & research
Cécile	Hébert	ETH Lausanne	EPF	Lausanne	Comité recommandation et prospective de la plateforme de nanocarctérisation	CEA, Grenoble	Education & research
Cécile	Hébert	ETH Lausanne	EPF	Lausanne	Expert projet accès transnationaux	Projet européen ESTEEM	Education & research
Cécile	Hébert	ETH Lausanne	EPF	Lausanne	Trésorière. Aide à l'enseignement en Tanzanie.	Foundation TALENT	Education & research
Christian	Heinis	ETH Lausanne	EPF	Lausanne	Co-founder and shareholder of the start-up’	Bicycle Therapeutics, Cambridge, UK	Technology
Christoph	Heinrich	ETH Zürich	ETH	Zurich	Präsident	Paul Niggli-Stiftung	Education & research
Stefanie	Hellweg	ETH Zürich	ETH	Zurich	Vorstandsmitglied	Ecoinvent	Industry, construction & agriculture
Simon	Henein	ETH Lausanne	EPF	Lausanne	Enseignement de cours de formation continue	FSRM: Fondation Suisse pour la Recherche en Microtechnique, Neuchâtel	Education & research
Simon	Henein	ETH Lausanne	EPF	Lausanne	Membre du Scientific Advisory Board and conseil technique	CSEM: Centre Suisse d'Electronique et de Microtechnique, Neuchâtel	Education & research
Elke	Hentschel	Uni Bern	UBE	Bern	Präsidentin	Jaberg-Stiftung	Society, Social, Culture & Sports
Janet	Hering	ETH Lausanne	EPF	Lausanne	Chair, Advisory Board (09.2009 - present)	Leibniz Insitute of Freshwater Ecology and Inland Fisheries, Berlin, Germany	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member	Swiss Hydrological Commission, Swiss Academy of Sciences	Politics, administration, justice system & security sector
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member	U.S. National Academy of Engineering	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member (11.2009 - present)	ETH Board Committee on Competence Centers (BCC)	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member of organizing team for one session (05.2013 - 11.2014)	2014 IARU Congress, Copenhagen, Denmark	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member of the board	Fondation pour l’Etude des Eaux du Léman	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member Scientific Advisory Board	Helmholtz Zentrum für Umweltforschung (UFZ)	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member visiting committee (09.2011 - present)	MIT Dept. of Civil and Environmental Engineering, USA	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member, Advisory Board (11.2012 - present)	Water institute, Stellenbosch University	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member, Board of reviewing editors (01.2010 - present)	Science	Not classifiable
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member, GAIA Advisory Board (06.2008 - present)	GAIA	Not classifiable
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member, Scientific Advisory Board (10.2013 - present)	AquaDiva, Fredrich-Schiller-Universität Jena, Germany	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member, Scientific and Technical Council (01.2013 - present)	IRGC, EPFL, Lausanne	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Member, Steering Board (01.2007 - present)	CCES Competence Center Environment and Sustainability	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Scientific Director (01.2013 - present)	EPFL CRAG, Lausanne	Education & research
Janet	Hering	ETH Lausanne	EPF	Lausanne	Vice President	ETH Women Professors Forum	Society, Social, Culture & Sports
Hans Peter	Herzig	ETH Lausanne	EPF	Lausanne	Board member	Swiss Society for Optics and Microscopy SSOM	Education & research
Hans Peter	Herzig	ETH Lausanne	EPF	Lausanne	Chairman of the editorial board	Journal of the Europ. Opt. Soc. (JEOS: RP)	Media & communication
Hans Peter	Herzig	ETH Lausanne	EPF	Lausanne	Lecturer (2days)	Micro-Optics lecture FSRM	Technology
Hans Peter	Herzig	ETH Lausanne	EPF	Lausanne	Member of different program committees	Various international conferences	Not classifiable
Hans Peter	Herzig	ETH Lausanne	EPF	Lausanne	Reviewer	National and international scientific projects	Not classifiable
Hans Peter	Herzig	ETH Lausanne	EPF	Lausanne	Vice-president (until August 2014)	International Commission for Optics ICO	Education & research
Christian	Hesse	Uni Bern	UBE	Bern	NA	Dr. Josephine de Karman-Stiftung	Education & research
Jan Sickmann	Hesthaven	ETH Lausanne	EPF	Lausanne	Evaluation committee for INRIA	INRIA, France	Education & research
Jan Sickmann	Hesthaven	ETH Lausanne	EPF	Lausanne	Evaluation panel for NSF	NSF, US	Education & research
Jan Sickmann	Hesthaven	ETH Lausanne	EPF	Lausanne	Scientific advisory board	SRI-UQ, KAUST, KSA	Education & research
Johannes	Heverhagen	Uni Bern	UBE	Bern	NA	PET-AG Bern	Pharma & health
Hans H.	Hirsch	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Stiftung Infektiologie beider Basel	Technology
Roland	Hodler	Uni St. Gallen	USG	Saint Gallen	Malmsten Visiting Professor, Department of Economics	University of Gothenburg	Education & research
Maarten J.F.M.	Hoenen	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Swisspeace Bern	Politics, administration, justice system & security sector
Maarten J.F.M.	Hoenen	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Volkshochschule beider Basel	Education & research
Sibylle	Hofer	Uni Bern	UBE	Bern	NA	Moser-Nef-Stiftung	Education & research
Sibylle	Hofer	Uni Bern	UBE	Bern	NA	Stiftung-Sammlung Schweizer Rechtsquellen	Not classifiable
Christian Pieter	Hoffmann	Uni St. Gallen	USG	Saint Gallen	Dozent	Hochschule für Wirtschaft Zürich	Education & research
Christian Pieter	Hoffmann	Uni St. Gallen	USG	Saint Gallen	Lehrbeauftragter	Johannes Gutenberg-Universität Mainz	Education & research
Christian Pieter	Hoffmann	Uni St. Gallen	USG	Saint Gallen	Lehrbeauftragter	Singapore Management University	Education & research
Christian Pieter	Hoffmann	Uni St. Gallen	USG	Saint Gallen	Mitglied des Beirats, Geschäftsberichte	HSG Symposium	Education & research
Christian Pieter	Hoffmann	Uni St. Gallen	USG	Saint Gallen	Mitglied des Vorstands	Percipe GmbH	Consulting, public relations, legal & trust
Heinrich	Hofmann	ETH Lausanne	EPF	Lausanne	Board of Directors	ANTIA Therapeutics, Bern	Pharma & health
Heinrich	Hofmann	ETH Lausanne	EPF	Lausanne	Expert Nanotechnology and Nanomaterials, Nanoregulation (Nanoreg WP1)	Federal Office of Public Health	Pharma & health
Heinrich	Hofmann	ETH Lausanne	EPF	Lausanne	Expert Nanotechnology and Nanomaterials, Nanoregulation (Nanoreg WP2)	Federal Office for the Environment FOEN	Energy, environment & mobility
Heinrich	Hofmann	ETH Lausanne	EPF	Lausanne	Member Advisory Committee	Nanotec, Thailand Science Park, Thailand	Education & research
Heinrich	Hofmann	ETH Lausanne	EPF	Lausanne	Member Advisory Committee	University of Bremen	Education & research
Heinrich	Hofmann	ETH Lausanne	EPF	Lausanne	Member steering committee NFP 64 Opportunities and Risk of Nanomaterials	Schweizerischer Nationalfonds, Bern	Education & research
Joerg	Hofstetter	Uni St. Gallen	USG	Saint Gallen	Präsident	International Forum on Sustainable Value Chains ISVC	Education & research
Joerg	Hofstetter	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratsmitglied	Inneco AG (link)	Consulting, public relations, legal & trust
Ottmar	Holdenrieder	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung Geobotanisches Forschungsinstitut Rübel	Education & research
André	Holenstein	Uni Bern	UBE	Bern	NA	Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	Education & research
André	Holenstein	Uni Bern	UBE	Bern	NA	Stiftung Schloss Spiez	Society, Social, Culture & Sports
André	Holenstein	Uni Bern	UBE	Bern	NA	Universität Bern, Forschungsstiftung	Education & research
Christof	Holliger	ETH Lausanne	EPF	Lausanne	Membre du FNS Panel Sinergia	FNS, Berne	Education & research
Stephanie	Hrubesch	Uni Bern	UBE	Bern	NA	Ostschweizerische Finanzholding AG	Financial industry & insurances
Xile	Hu	ETH Lausanne	EPF	Lausanne	Consulting of chemical research, 3 hours	Syngenta Crop Protection AG, Stein	Technology
Jeffrey	Huang	ETH Lausanne	EPF	Lausanne	Co-Founder and Advisor (Design Firm), while on leave	Convergeo Lausanne, Switzerland	Industry, construction & agriculture
Jeffrey	Huang	ETH Lausanne	EPF	Lausanne	Co-Founder and Advisor (Software and Service Firm), while on leave	Eversitas LLC Cambridge, Massachussetts	Technology
Jeffrey	Huang	ETH Lausanne	EPF	Lausanne	Head of Pillar and Advisor (Educational Institution), while on leave	SUTD Architecture and Sustainable Design Singapore	Education & research
Jean-Pierre	Hubaux	ETH Lausanne	EPF	Lausanne	Membre du régulateur fédéral des télécoms	ComCom, Berne	Politics, administration, justice system & security sector
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Adjunct Professor (uncompensated)	Diabetes Research Institute, University of Miami, USA	Education & research
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Board of Directors	Lanta Bio Sàrl, Préverenges	Technology
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Board of Directors	Lumberjack, AG, Basel	Pharma & health
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Board of Directors	Lumberjill, Inc., Boston	Commerce, trade & services
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Board of Directors	Morphogene, SA, Préverenges	Pharma & health
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Board of Directors, Chief Scientific Advisor	Kuros Biosurgery, Zürich	Technology
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Chief Scientific Advisor, Board of Directors	Anokion SA, Lausanne	Pharma & health
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Legal consulting	McAndrews, Held and Malloy, Chicago, USA	Consulting, public relations, legal & trust
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Legal consulting	Taylor Wessing, London	Consulting, public relations, legal & trust
Jeffrey Alan	Hubbell	ETH Lausanne	EPF	Lausanne	Owner	Argo Innovations, Atlanta	Consulting, public relations, legal & trust
Konrad	Hungerbühler	ETH Zürich	ETH	Zurich	VR-Mandat	Ernst Hungerbühler AG (in Liquidation)	Technology
Thomas	Hunkeler	Uni Freiburg	UFR	Fribourg	Jurypräsident	Kollegium Gambach	Education & research
Thomas	Hunkeler	Uni Freiburg	UFR	Fribourg	Mitglied der Fachkommission & Jurymitglied	Pro Helvetia	Society, Social, Culture & Sports
Thomas	Hunkeler	Uni Freiburg	UFR	Fribourg	Mitglied des Stiftungsrates	Bell AG	Industry, construction & agriculture
Thomas	Hunkeler	Uni Freiburg	UFR	Fribourg	Mitglied des Stiftungsrates	Holcim-Stiftung zur Förderung der wissenschaftlichen Fortbildung	Commerce, trade & services
Thomas	Hunkeler	Uni Freiburg	UFR	Fribourg	Mitglied des Wissenschaftsrates	FNRS	Pharma & health
Bettina	Hürlimann-Kaup	Uni Freiburg	UFR	Fribourg	Justizrat	Kanton Freiburg	Politics, administration, justice system & security sector
Paolo	Ienne	ETH Lausanne	EPF	Lausanne	Guest lecturer (spring 2014)	Technical University München, Germany	Education & research
Paolo	Ienne	ETH Lausanne	EPF	Lausanne	Guest lecturer, summer 2014	University of Oulu	Education & research
Paolo	Ienne	ETH Lausanne	EPF	Lausanne	Member of evaluation panel	FNS, Bern	Education & research
Alexander	Ilic	Uni St. Gallen	USG	Saint Gallen	Advisory Board	ETH Entrepreneur Club	Commerce, trade & services
Alexander	Ilic	Uni St. Gallen	USG	Saint Gallen	Advisory Board	Swiss Energy and Climate Summit	Energy, environment & mobility
Alexander	Ilic	Uni St. Gallen	USG	Saint Gallen	Advisory Board	Swiss Start-up Monitor	Commerce, trade & services
Alexander	Ilic	Uni St. Gallen	USG	Saint Gallen	Expert Committee	Kommission für Technologie und Innovation	Politics, administration, justice system & security sector
Alexander	Ilic	Uni St. Gallen	USG	Saint Gallen	Founder, Chairman, and CTO	Dacuda AG	Technology
Karin Mirjam	Ingold	Uni Bern	UBE	Bern	NA	Spirit of Bern: wiss. Beirat	Society, Social, Culture & Sports
Rolf	Ingold	Uni Freiburg	UFR	Fribourg	Stiftungsrat	Hasler Stiftung	Technology
Mihai Adrian	Ionescu	ETH Lausanne	EPF	Lausanne	Lecture IMEC /Beyond CMOS (0.5 day)	IMEC Belgium	Education & research
Mihai Adrian	Ionescu	ETH Lausanne	EPF	Lausanne	Review projet EC SOI-HITS (1 jour)	European Commission, Brussels	Politics, administration, justice system & security sector
Mihai Adrian	Ionescu	ETH Lausanne	EPF	Lausanne	SATW technology out-look (non-remuneré)	SATW	Education & research
Mihai Adrian	Ionescu	ETH Lausanne	EPF	Lausanne	SNF professorship review	SNF	Education & research
Christian	Jackowski	Uni Zürich	UZH	Zurich	NA	Schweizerische Stiftung für Alkoholforschung SSA	Pharma & health
Wolfgang	Jenewein	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Leadership & Endurance AG	Consulting, public relations, legal & trust
Patrick	Jenny	ETH Zürich	ETH	Zurich	VR-Mandat	Fritz + Caspar Jenny AG	Commerce, trade & services
Patrick	Jenny	ETH Zürich	ETH	Zurich	VR-Mandat	Ziegelbrücke Energie AG	Energy, environment & mobility
Titus Andreas	Jenny	Uni Freiburg	UFR	Fribourg	Analyse von Spektren für dritte	Unbekannt	Not classifiable
Kai	Johnsson	ETH Lausanne	EPF	Lausanne	Associate Editor Ass. Chemical Biology	American Chemical Society, USA	Education & research
Kai	Johnsson	ETH Lausanne	EPF	Lausanne	Consulting	Spirochrome, Suisse	Technology
Kai	Johnsson	ETH Lausanne	EPF	Lausanne	Consulting Quartet Medicine	Quiartet Medicine, Boston, USA	Technology
Kai	Johnsson	ETH Lausanne	EPF	Lausanne	Research Council Member of SNSF	SNSF Bern	Education & research
Colin	Jones	ETH Lausanne	EPF	Lausanne	SNF SCOPES evaluation panel	SNSF Bern	Education & research
Reinhard	Jung	Uni St. Gallen	USG	Saint Gallen	Geschäftsführer	IARDA GmbH	Consulting, public relations, legal & trust
Reinhard	Jung	Uni St. Gallen	USG	Saint Gallen	Mitglied des Innovationsbeirats	Haas Food Equipment GmbH	Industry, construction & agriculture
Reinhard	Jung	Uni St. Gallen	USG	Saint Gallen	Vorstandsmitglied/Kassierer	Swiss Informatics Research Association	Education & research
Bettina	Kahil	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Hedwig J.	Kaiser	Uni Basel	UBA	Basel	Mitglied des Aufsichtsrates	Universitätsklinikum Heidelberg	Pharma & health
Hedwig J.	Kaiser	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Stiftungsrat FRIAS	Education & research
Hedwig J.	Kaiser	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	UKBB	Pharma & health
Frédéric	Kaplan	ETH Lausanne	EPF	Lausanne	Ecriture de chroniques	Le Temps	Media & communication
Frédéric	Kaplan	ETH Lausanne	EPF	Lausanne	Enseignement	HEAD Genève	Education & research
Frédéric	Kaplan	ETH Lausanne	EPF	Lausanne	Enseignement	Université de Berne	Education & research
Frédéric	Kaplan	ETH Lausanne	EPF	Lausanne	Gérance	OZWE, Lausanne	Technology
Elyahou	Kapon	ETH Lausanne	EPF	Lausanne	Member of Board of Directors	BeamExpress SA	Not classifiable
Elyahou	Kapon	ETH Lausanne	EPF	Lausanne	Member of Exert Panel	ERC (consolidators)	Education & research
Christos	Katsaros	Uni Bern	UBE	Bern	NA	Stiftung Papavramidès	Education & research
Vincent	Kaufmann	ETH Lausanne	EPF	Lausanne	Associé dans un bureau d'étude	Gt-bureau de recherche, Paris	Education & research
Vincent	Kaufmann	ETH Lausanne	EPF	Lausanne	Charge d'enseignement (7h)	Université catholique de Louvain-la-Neuve (B)	Education & research
Vincent	Kaufmann	ETH Lausanne	EPF	Lausanne	Chronique mensuelle	Migros Magazine, Zürich	Media & communication
Walter Hans Jakob	Kaufmann	ETH Zürich	ETH	Zurich	VR-Mandat	dsp Ingenieure & Planer AG	Commerce, trade & services
Thomas	Keller	ETH Lausanne	EPF	Lausanne	Conseil d'administration (jusqu'au 31.12.2014)	F.J. Aschwanden AG, Lyss	Commerce, trade & services
Thomas	Keller	ETH Lausanne	EPF	Lausanne	Mandat d'expert pour un pont en matériaux composites	Canton de Tessin	Politics, administration, justice system & security sector
Klaus	Kern	ETH Lausanne	EPF	Lausanne	Directeur Max-Planck-Institut (occupation principale) et fonctions associés	MPI Max-Planck-Institut für Festkörperforschung, Stuttgart	Education & research
Harm-Anton	Klok	ETH Lausanne	EPF	Lausanne	Teaching/Guest professor	Soochow University, China	Education & research
Hubert	Klumpner	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung Bibliothek Werner Oechslin	Society, Social, Culture & Sports
Matthias	Kohler	ETH Zürich	ETH	Zurich	NA	Erich Degen-Stiftung	Education & research
Tamar	Kohn Johnson	ETH Lausanne	EPF	Lausanne	Adjunct scientist	Eawag	Education & research
Tamar	Kohn Johnson	ETH Lausanne	EPF	Lausanne	Associate Editor	Royal Society of Chemistry, Cambridge, UK	Education & research
Tamar	Kohn Johnson	ETH Lausanne	EPF	Lausanne	Member of Independent Advisory Committee	WHO, Geneva	Pharma & health
Thomas	Koller	Uni Bern	UBE	Bern	NA	Fondation Gustave Dubois als Vertretung der RW Fak.	Education & research
Andreas	Kotte	Uni Bern	UBE	Bern	NA	Schweizerische Theatersammlung	Society, Social, Culture & Sports
Andreas	Kotte	Uni Bern	UBE	Bern	NA	Seniorenuniversität Bern	Education & research
Fréderic	Krauskopf	Uni Bern	UBE	Bern	NA	A. Peneveyre SA	Industry, construction & agriculture
Fréderic	Krauskopf	Uni Bern	UBE	Bern	NA	Fondation A. Peneveyre SA	Financial industry & insurances
Fréderic	Krauskopf	Uni Bern	UBE	Bern	NA	Stiftung für Rechtsausbildung Luzern	Education & research
Wilhelm	Krek	ETH Zürich	ETH	Zurich	VR-Mandat	ProteoMediX AG	Technology
Markus	Kreutzer	Uni St. Gallen	USG	Saint Gallen	Lehrstuhl für Strategisches und Internationales Management	EBS Universität	Education & research
Harley	Krohmer	Uni Bern	UBE	Bern	NA	Brandinvest AG, Verwaltungsrat	Financial industry & insurances
Harley	Krohmer	Uni Bern	UBE	Bern	NA	Stiftung Haus der Universität Bern	Education & research
Daniel	Kuhn	ETH Lausanne	EPF	Lausanne	PhD course on Financial Optimization and Risk Management under Uncertainty	Norwegian University of Science & Technology, Trondheim, Norway	Education & research
Peter Viktor	Kunz	Uni Bern	UBE	Bern	NA	Bayer Wartmann AG	Not classifiable
Peter Viktor	Kunz	Uni Bern	UBE	Bern	NA	Convida	Financial industry & insurances
Peter Viktor	Kunz	Uni Bern	UBE	Bern	NA	Walder	Commerce, trade & services
Tomi	Laamanen	Uni St. Gallen	USG	Saint Gallen	Chairman of the Board	Stratwin AG	Consulting, public relations, legal & trust
Tomi	Laamanen	Uni St. Gallen	USG	Saint Gallen	Gutachtertätigkeit	Unbekannt	Not classifiable
Tomi	Laamanen	Uni St. Gallen	USG	Saint Gallen	Member of the Board	Oy Halton Group Ltd	Industry, construction & agriculture
Stéphanie	Lacour	ETH Lausanne	EPF	Lausanne	Co-fondateur d'une start-up en décembre 2014	G-Therapeutics EPFL PSE	Pharma & health
Andreas	Ladner	Uni Bern	UBE	Bern	NA	Activités académiques	Education & research
Rafael	Lalive	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Lyesse	Laloui	ETH Lausanne	EPF	Lausanne	Adjunct professor	School of Civil and Environmental Engineering, Duke University, USA	Education & research
Lyesse	Laloui	ETH Lausanne	EPF	Lausanne	Distingushed Adjunct professor (Jusqu'à Octobre 2014)	King Abdulaziz University (KAU), Jeddah, Saudi Arabia	Education & research
Lyesse	Laloui	ETH Lausanne	EPF	Lausanne	Editeur en chef	ELSEVIER	Education & research
Lyesse	Laloui	ETH Lausanne	EPF	Lausanne	ERC Consolidator Grants panel dealing with Products and Processes Engineering	Union Européenne	Politics, administration, justice system & security sector
Lyesse	Laloui	ETH Lausanne	EPF	Lausanne	Président du Conseil d'administration (depuis mi-décembre 2014)	STUNEX SA	Commerce, trade & services
Stuart	Lane	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Antonio	Lanzavecchia	ETH Zürich	ETH	Zurich	Geschäftsführer	Humabs Holding GmbH	Pharma & health
James	Larus	ETH Lausanne	EPF	Lausanne	Huawei Distributed Computing Lab Advisory Board	America Software Lab, Santa Clara, CA	Technology
Hilal	Lashuel	ETH Lausanne	EPF	Lausanne	Executive Committee Member	IBRO	Education & research
Hilal	Lashuel	ETH Lausanne	EPF	Lausanne	Executive Director, Qatar Biomedical Research Institute (while on leave)	Qatar Foundation, Doha Qatar	Education & research
Hilal	Lashuel	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board Member	Brain forum	Education & research
Theo	Lasser	ETH Lausanne	EPF	Lausanne	President Board Abionic	Abionic, Innovation Park	Pharma & health
Anna	Lauber-Biason	Uni Freiburg	UFR	Fribourg	Oberassistentin an der Abteilung für Endokrinologie und Diabetologie	Universitätskinderklinik Zürich	Pharma & health
Yusuf	Leblebici	ETH Lausanne	EPF	Lausanne	Founder	Immersive Vision Technologies, PSE, Lausanne	Technology
Christoph	Lechner	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Helvetia AG	Financial industry & insurances
Christoph	Lechner	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Hügli AG	Industry, construction & agriculture
Tosso	Leeb	Uni Bern	UBE	Bern	NA	Albert-Heim-Stiftung	Society, Social, Culture & Sports
Dirk	Lehmkuhl	Uni St. Gallen	USG	Saint Gallen	Mitglied im Stiftungsrat	Center for Advanced Studies	Education & research
Dirk	Lehmkuhl	Uni St. Gallen	USG	Saint Gallen	Mitglied im Stiftungsrat	New Europe College	Education & research
Michael	Lehning	ETH Lausanne	EPF	Lausanne	Politecnico di Milano	Politecnico di Milano, Milano	Education & research
Peter	Leibfried	Uni St. Gallen	USG	Saint Gallen	Mitglied der Oberaufsichtskommission Berufliche Vorsorge	Schweizer Bund	Politics, administration, justice system & security sector
Peter	Leibfried	Uni St. Gallen	USG	Saint Gallen	Mitglied der Redaktionskommission	Schweizer Treuhänder	Consulting, public relations, legal & trust
Peter	Leibfried	Uni St. Gallen	USG	Saint Gallen	Mitglied des Fachbeirats	KoR Zeitschrift für internationale und kapitalmarktorientierte Rechnungslegung	Media & communication
Peter	Leibfried	Uni St. Gallen	USG	Saint Gallen	Mitglied des Prüfungsausschusses	RBA-Bankengruppe	Financial industry & insurances
Peter	Leibfried	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Ivoclar Vivadent AG	Pharma & health
Peter	Leibfried	Uni St. Gallen	USG	Saint Gallen	Präsident der Fachkommission	Swiss GAAP FER	Not classifiable
Jan Marco	Leimeister	Uni St. Gallen	USG	Saint Gallen	Beirat	United Digital Group UDG	Consulting, public relations, legal & trust
Jan Marco	Leimeister	Uni St. Gallen	USG	Saint Gallen	Diverse gutachterliche und beratende Tätigkeiten	EQT	Financial industry & insurances
Jan Marco	Leimeister	Uni St. Gallen	USG	Saint Gallen	Diverse gutachterliche und beratende Tätigkeiten	EU	Politics, administration, justice system & security sector
Jan Marco	Leimeister	Uni St. Gallen	USG	Saint Gallen	Diverse gutachterliche und beratende Tätigkeiten	High Tech Gründerfonds	Financial industry & insurances
Jan Marco	Leimeister	Uni St. Gallen	USG	Saint Gallen	Diverse gutachterliche und beratende Tätigkeiten	Volkswagen	Energy, environment & mobility
Jan Marco	Leimeister	Uni St. Gallen	USG	Saint Gallen	Professor	Universität Kassel	Education & research
Walter	Leimgruber	Uni Freiburg	UFR	Fribourg	Präsident	Eidgenössische Kommission für Migrationsfragen	Politics, administration, justice system & security sector
Martin	Lengwiler	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Seismo Verlags AG, Zürich	Media & communication
Martin	Lengwiler	Uni Basel	UBA	Basel	Präsident des Verwaltungsrates	fokus AG für Wissen und Organisation, Zürich	Consulting, public relations, legal & trust
Yvan	Lengwiler	Uni Basel	UBA	Basel	Mitglied der Delegiertenversammlung	Patria Genossenschaft, Basel	Financial industry & insurances
Yvan	Lengwiler	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Max Geldner-Stiftung, Basel	Society, Social, Culture & Sports
Yvan	Lengwiler	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Studienzentrum Gerzensee	Education & research
Yvan	Lengwiler	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Finanzmarktaufsicht FINMA, Bern	Politics, administration, justice system & security sector
Arjen	Lenstra	ETH Lausanne	EPF	Lausanne	Advisor of crypto group	OWI, Amsterdam	Not classifiable
Christian	Leumann	Uni Bern	UBE	Bern	NA	Schweizerischer Nationalfonds, Stiftungsrat	Education & research
Christian	Leumann	Uni Bern	UBE	Bern	NA	Synthena AG	Pharma & health
Christian	Leumann	Uni Bern	UBE	Bern	NA	Unitectra	Consulting, public relations, legal & trust
Christian	Leumann	Uni Bern	UBE	Bern	NA	Verein Euresearch	Education & research
Jonathan	Levine	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung Geobotanisches Forschungsinstitut Rübel	Education & research
Andreas	Lienhard	Uni Bern	UBE	Bern	Vizepräsident des Verwaltungsrates	VR Verkehrsbetriebe Biel	Energy, environment & mobility
Joachim	Lingner	ETH Lausanne	EPF	Lausanne	ERC starting grant review panel	ERC Executive Agency, Brussels	Education & research
Claudio	Loderer	Uni Bern	UBE	Bern	NA	OLZ & Partners	Financial industry & insurances
Hans-Andrea	Loeliger	ETH Zürich	ETH	Zurich	Ko-Geschäftsführer	Anadec GmbH	Consulting, public relations, legal & trust
Hans-Andrea	Loeliger	ETH Zürich	ETH	Zurich	VR-Mandat	Endora Tech AG	Technology
Roland	Logé	ETH Lausanne	EPF	Lausanne	Conseil scientifique, domaine de la métallurgie	Association ARMINES, Paris, France	Education & research
Antonio	Loprieno	Uni Basel	UBA	Basel	Mitglied des Hochschulrates	Pädagogische Hochschule Freiburg	Education & research
Antonio	Loprieno	Uni Basel	UBA	Basel	Mitglied des Universitätsrates	Universitä della Svizzera Italiana	Education & research
Antonio	Loprieno	Uni Basel	UBA	Basel	Mitglied des Universitätsrates	Universität Tübingen	Education & research
Antonio	Loprieno	Uni Basel	UBA	Basel	Präsident des Stiftungsrates	Schweizerische Studienstiftung	Education & research
Antonio	Loprieno	Uni Basel	UBA	Basel	Vorstandsmitglied	Konfuzius Institut	Education & research
Scott	Loren	Uni St. Gallen	USG	Saint Gallen	Dozent für Englische Sprache und Literatur	Pädagogische Hochschule St.Gallen	Education & research
Oliver	Lubrich	Uni Bern	UBE	Bern	NA	Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	Education & research
Matthias	Lütolf	ETH Lausanne	EPF	Lausanne	Board member and advisor	QGel SA, PSE, Lausanne	Technology
Matthias	Lütolf	ETH Lausanne	EPF	Lausanne	President of the Board	Morphodyne SA, EPFL	Pharma & health
Elisio	Macamo	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	UBUNTU, Zürich; Share for Food Alliance, Basel	Not classifiable
Sebastian	Maerkl	ETH Lausanne	EPF	Lausanne	Board Member, Prosper Diagnostics an early stage EPFL start-up	Prosper Diagnostic, Basel	Pharma & health
Pierre	Magistretti	ETH Lausanne	EPF	Lausanne	Consultant	Dana Foundation, New York	Education & research
Pierre	Magistretti	ETH Lausanne	EPF	Lausanne	Consultant	Price Foundation, Genève	Not classifiable
Pascal	Mahon	Uni Neuenburg	UNE	Neuchâtel	Enseignement	Académie suisse de la magistrature	Education & research
Pascal	Mahon	Uni Neuenburg	UNE	Neuchâtel	Membre	Office cantonal de conciliation en matière de conflits de travail	Politics, administration, justice system & security sector
Pascal	Mahon	Uni Neuenburg	UNE	Neuchâtel	Membre du Comité	Association suisse du droit public de l'organisation (ASDPO)	Politics, administration, justice system & security sector
Pascal	Mahon	Uni Neuenburg	UNE	Neuchâtel	Membre du Comité suisse	Commission internationale des juristes (ICJ)	Politics, administration, justice system & security sector
Pascal	Mahon	Uni Neuenburg	UNE	Neuchâtel	membre du Directoire	Schweizerisches Kompetenzzentrum für Menschenrechte (SKMR)	Education & research
Pascal	Mahon	Uni Neuenburg	UNE	Neuchâtel	Président	Académie suisse de la magistrature	Education & research
Semyon	Malamud	ETH Lausanne	EPF	Lausanne	Academic consulting	Quantica Capital, Schaffausen	Financial industry & insurances
Semyon	Malamud	ETH Lausanne	EPF	Lausanne	Teaching a PhD class	Dublin City University	Education & research
Jan-Anders	Manson	ETH Lausanne	EPF	Lausanne	Membre du conseil d'administration	EELCEE Ltd., Korea	Industry, construction & agriculture
Jan-Anders	Manson	ETH Lausanne	EPF	Lausanne	Membre du conseil d'administration	Hexpol AB, Malmö, Suède	Technology
Jan-Anders	Manson	ETH Lausanne	EPF	Lausanne	Membre du conseil de fondation (as EPFL)	AISTS, EPFL-Innovation Park, Lausanne	Education & research
Jan-Anders	Manson	ETH Lausanne	EPF	Lausanne	Membre du conseil de fondation (as EPFL)	Antidoping Suisse, Berne	Pharma & health
Adriano	Marantelli	Uni Bern	UBE	Bern	NA	Curt Rommel Stiftung	Education & research
Adriano	Marantelli	Uni Bern	UBE	Bern	NA	Stiftung Archiv für schweizerisches Abgaberecht	Society, Social, Culture & Sports
Adriano	Marantelli	Uni Bern	UBE	Bern	NA	Vereinsvorstand BEWEST (Weiterbildungsverein)	Education & research
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Bruno Marchand Architecture Urbanisme et aménagement du territoire	Bruno Marchand, Lausanne	Not classifiable
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Commission consultative d'urbanisme et d'architecture	Canton de Vaud	Politics, administration, justice system & security sector
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Commission d'architecture et d'urbanisme	Commune de Pully	Politics, administration, justice system & security sector
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Commission d'urbanisme et architecture	Commune de Prengins	Politics, administration, justice system & security sector
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Commission d'Urbanisme et Architecture	Canton de Fribourg	Politics, administration, justice system & security sector
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Commission d'urbanisme et d'architecture	Commune de Gland	Politics, administration, justice system & security sector
Bruno	Marchand	ETH Lausanne	EPF	Lausanne	Commission d'urbanisme, d'architecture et du Paysage	Commune de Payerne	Politics, administration, justice system & security sector
Julia	Marewski	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Chief Editor, Journal of Physics D	Institute of Physics, London	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Council President EC integrating initiative on synchrotrons (CALIPSO)	Sincrotrone Trieste, Italy	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Member, Board of Directors	Università di Pavia	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Member, Consiglio di Fondazione USI	USI, Lugano	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Member, Consulting Committee ANVUR	Ministero MIUR, Rome, Italy	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Member, Scientific Council	HuGeF, Turin	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	Membre de l'international advisory board	Scuola Sant'Anna, Pisa, Italy	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	President, Evaluation Committee (Nucleo di Valutazione), Politecnico di Torino	Politecnico di Torino	Education & research
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	President, Parish Council	Mission catholique anglophone du canton de Vaud	Society, Social, Culture & Sports
Giorgio	Margaritondo	ETH Lausanne	EPF	Lausanne	President, Scientific and Technological Committee	Istituto Italiano di Tecnololgia (IIT)	Education & research
Pierre-Alain	Mariaux	Uni Neuenburg	UNE	Neuchâtel	Membre	Commission scientifique du Trésor abbatial de l'Abbaye St-Maurice	Society, Social, Culture & Sports
Henry	Markram	ETH Lausanne	EPF	Lausanne	Chairman (en liquidation)	Blue Brain SA, Epalinges, CH	Education & research
Henry	Markram	ETH Lausanne	EPF	Lausanne	Frontiers Research Foundation, President	PSE-D, Ecublens, CH	Politics, administration, justice system & security sector
Henry	Markram	ETH Lausanne	EPF	Lausanne	President (en liquidation)	Blue Brain Foundation, Epalinges, CH	Education & research
Henry	Markram	ETH Lausanne	EPF	Lausanne	University of Massachussetts: Paid consultant on ONR research project	Amherst - USA	Not classifiable
Olivier	Martin	ETH Lausanne	EPF	Lausanne	Reviewing	Various funding agencies and universities	Not classifiable
Ulrich	Maurer	ETH Zürich	ETH	Zurich	Geschäftsführer	ATG Advanced Technology Group GmbH	Consulting, public relations, legal & trust
Ulrich	Maurer	ETH Zürich	ETH	Zurich	VR-Mandat	InfoSec Global (Schweiz) AG	Media & communication
Heike	Mayer	Uni Bern	UBE	Bern	NA	Rat für Raumordnung	Politics, administration, justice system & security sector
Mirko	Meboldt	ETH Zürich	ETH	Zurich	Verwaltungsrat	inspire AG	Technology
Anders	Meibom	ETH Lausanne	EPF	Lausanne	Chairman of the Board	Institute of Translational Molecular Imaging Foundation, Genève	Education & research
Andreas	Meier	Uni Freiburg	UFR	Fribourg	Geschäftsführer	eTorrent GmbH	Technology
Andreas	Meier	Uni Freiburg	UFR	Fribourg	Stiftungsrat	Stiftung Rechenzentrum für Krankenversicherung	Pharma & health
Andreas	Meier	Uni Freiburg	UFR	Fribourg	Verwaltungsrat	Centris AG	Technology
Philippe	Meier	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Marcel	Meili	ETH Zürich	ETH	Zurich	VR-Mandat	Datwoma AG	Financial industry & insurances
Marcel	Meili	ETH Zürich	ETH	Zurich	VR-Mandat	Lifä Immobilien AG	Commerce, trade & services
Marcel	Meili	ETH Zürich	ETH	Zurich	VR-Mandat	Vetimag AG	Financial industry & insurances
Marcel	Meili	ETH Zürich	ETH	Zurich	VR-Mandat	Zypresse AG	Commerce, trade & services
Marcel	Meili	ETH Zürich	ETH	Zurich	VR-Präsidium	Park Book AG	Media & communication
Marcel	Meili	ETH Zürich	ETH	Zurich	VR-Präsidium	Verlag Scheidegger und Spiess AG	Media & communication
Sacha Leo Cornel	Menz	ETH Zürich	ETH	Zurich	VR-Mandat	SAM Architekten und Partner AG	Industry, construction & agriculture
Sacha Leo Cornel	Menz	ETH Zürich	ETH	Zurich	VR-Mandat	Staub Holding AG	Commerce, trade & services
Nicolas	Mermod	Uni Lausanne	ULA	Lausanne	Mandat	Selexis	Pharma & health
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Int. Science Policy Comm.	Kurchatov Institute, Russia	Education & research
Ulrich	Mosch	Uni Genf	UGE	Geneva	Membre du conseil scientifique	HEM Bâle	Education & research
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Member	European Association of National Research Facilities Laboratories	Education & research
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Member	Helmholtz Senate	Education & research
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Member	VR Trägerschaft ParkInnovAARE	Commerce, trade & services
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Neutron Adv. Board	Oak Ridge National Lab. USA	Education & research
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board	FRM-II, Munich	Education & research
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Steering Committee	ESS	Not classifiable
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Stiftungrat	Technopark Aargau	Commerce, trade & services
Joël	Mesot	ETH Lausanne	EPF	Lausanne	Stiftungsratsvizepräsident	Marcel-Benoist	Education & research
Jean-Pierre	Métraux	Uni Freiburg	UFR	Fribourg	Forschungsrat der Abteilung Biologie und Medizin	Schweizer Nationalfonds SNF	Education & research
Tobias	Mettler	Uni St. Gallen	USG	Saint Gallen	Associate Partner	BEG & Partners	Consulting, public relations, legal & trust
Meike	Mevissen	Uni Bern	UBE	Bern	NA	Stiftung Tierärztliche Hochschule Hannover	Education & research
Klaus	Mezger	Uni Bern	UBE	Bern	NA	Ionight	Technology
Silvestro	Micera	ETH Lausanne	EPF	Lausanne	Prof. Part-time	Scuola superiore Sant'Anna, Italy	Education & research
Frédéric	Mila	ETH Lausanne	EPF	Lausanne	Committe member - Advanced Post-doc mobility	SNSF, Berne	Education & research
Frédéric	Mila	ETH Lausanne	EPF	Lausanne	Editeur associé	Europhysics Letters, Mulhouse, France	Media & communication
José del Rocío	Millán Ruiz	ETH Lausanne	EPF	Lausanne	Science Advisory Board	Nielsen Neuro. New York, USA	Consulting, public relations, legal & trust
José del Rocío	Millán Ruiz	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board	MindMaze, Ecublens	Technology
José del Rocío	Millán Ruiz	ETH Lausanne	EPF	Lausanne	Sociétaire sans droit de signature	ADREAM, Crans-Montana, Switzerland	Education & research
Paul	Mohacsi	Uni Bern	UBE	Bern	NA	Katharina Huber-Steiner Stiftung	Education & research
Ernst	Mohr	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	AtlanticLux Lebensversicherung S.A.	Financial industry & insurances
Ernst	Mohr	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	joixes AG	Technology
Ernst	Mohr	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Premiumselect Lux S.A.	Financial industry & insurances
Jean-François	Molinari	ETH Lausanne	EPF	Lausanne	Panel Synergia FNS	FNS	Education & research
Klaus	Möller	Uni St. Gallen	USG	Saint Gallen	Gesellschafter	The Performance Management Company PMC GmbH	Consulting, public relations, legal & trust
Klaus	Möller	Uni St. Gallen	USG	Saint Gallen	Mitglied des Geschäftsführenden Ausschusses	International Group of Controlling IGC	Commerce, trade & services
Klaus	Möller	Uni St. Gallen	USG	Saint Gallen	Mitglied im Forschungsnetzwerk	Center for Performance Research & Analytics CEPRA	Education & research
Klaus	Möller	Uni St. Gallen	USG	Saint Gallen	Mitherausgeber der Zeitschrift Board - Zeitschrift für Aufsichtsräte	Bundesanzeiger Verlag	Media & communication
Klaus	Möller	Uni St. Gallen	USG	Saint Gallen	Mitherausgeber der Zeitschrift Controlling	Vahlen Verlag	Media & communication
Josef	Mondl	Uni St. Gallen	USG	Saint Gallen	Redner, Berater	Selbstständig	Not classifiable
Nicolas	Monod	ETH Lausanne	EPF	Lausanne	Expertises	Fond National Suisse, Berne	Education & research
Nicolas	Monod	ETH Lausanne	EPF	Lausanne	Travail éditorial (non lucratif)	L'enseignement Mathématique, Genève	Media & communication
Manfred	Morari	ETH Zürich	ETH	Zurich	Verwaltungsrat	inspire AG	Technology
Massimo	Morbidelli	ETH Zürich	ETH	Zurich	VR-Mandat	ChromaCon AG	Technology
Erwan	Morellec	ETH Lausanne	EPF	Lausanne	Cours (1 jour): Derivatives for Central Bankers	Swiss National Bank	Financial industry & insurances
Erwan	Morellec	ETH Lausanne	EPF	Lausanne	Directeur du SFI PhD Program	Swiss Finance Institute	Financial industry & insurances
Bruno	Moretti	Uni Bern	UBE	Bern	NA	Forum du Bilinguisme Bienne	Society, Social, Culture & Sports
Bruno	Moretti	Uni Bern	UBE	Bern	NA	Jaberg-Stiftung	Society, Social, Culture & Sports
Bruno	Moretti	Uni Bern	UBE	Bern	NA	Stiftung Kinderbetreuung im Hochschulraum Bern KIHOB	Society, Social, Culture & Sports
Stephan	Morgenthaler	ETH Lausanne	EPF	Lausanne	Conseil d'administration, membre actuaire de Michgenossenschaft Reitnau	AICOS Technologies AG, Bâle	Technology
Stephan	Morgenthaler	ETH Lausanne	EPF	Lausanne	Conseil scientifique	Novigenix, Lausanne	Pharma & health
Stephan	Morgenthaler	ETH Lausanne	EPF	Lausanne	Divers contrats d'expertises	Firmenich, Nestlé, Touring Club Suisse	Not classifiable
Stefan	Morkötter	Uni St. Gallen	USG	Saint Gallen	Fachbeirat	Hydropower Solutions GmbH	Energy, environment & mobility
Stefan	Morkötter	Uni St. Gallen	USG	Saint Gallen	Geschäftsführer	IBEF GmbH	Technology
Stefan	Morkötter	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Infrastruktur SK	Not classifiable
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Member International Scientific Advisory Board (ISAB) of the COMET K2 Center	Materials Center Leoben Forschung, Austria	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Membre (nommé par l'EPFL), Conseil de Fondation	FNS de la Recherche Scientifique	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Membre Board of Trustees & research center’s scientific advisory board	IMDEA-Materials, Madrid, Espagne	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Membre de la commission d'accréditation d'institution de DTU	DTU, Institution d'accréditation du Danemark	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Membre de la commission de sélection des SNSF, Starting Grants 2014	Fonds National Suisse	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Membre du conseil de fondation	Fondation Zeno Karl Schindler	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	Membre, Wissenschaftlicher Beirat	Leibniz Institute INM, Saarbrücken, Allemagne	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	proposés référés	EPSRC, UK	Education & research
Andreas	Mortensen	ETH Lausanne	EPF	Lausanne	proposés référés	NSF, USA	Education & research
Ulrich	Mosch	Uni Genf	UGE	Geneva	Membre du conseil	HEM Genève	Education & research
Christophe	Moser	ETH Lausanne	EPF	Lausanne	Board observer (resigned on 25.12.14)	Ondax Corp., USA	Industry, construction & agriculture
Christophe	Moser	ETH Lausanne	EPF	Lausanne	Founder Composyt Light Lab	PSE A, EPFL	Education & research
Roger	Moser	Uni St. Gallen	USG	Saint Gallen	Board Member	Think Tank Thurgau	Society, Social, Culture & Sports
Roger	Moser	Uni St. Gallen	USG	Saint Gallen	Board Member	Timor Foundation	Society, Social, Culture & Sports
Roger	Moser	Uni St. Gallen	USG	Saint Gallen	Founder & Partner	Industry Intelligence GmbH	Consulting, public relations, legal & trust
Juan Ramon	Mosig	ETH Lausanne	EPF	Lausanne	Chair of the EURAAP Board (jusqu'à Dec 2015)	European Association of Antennas and Propoagation	Education & research
Juan Ramon	Mosig	ETH Lausanne	EPF	Lausanne	Organisation de conférences scientifiques en Europe	AISBL (non-profit Association)	Not classifiable
Urs Peter	Mosimann	Uni Bern	UBE	Bern	NA	Stiftung Diaconis Bern	Pharma & health
Thomas	Mountford	ETH Lausanne	EPF	Lausanne	Visit to UFRJ Rio Brésil	UFRJ	Education & research
Christoph	Müller	Uni Bern	UBE	Bern	NA	Stiftung für klinisch-experimentelle Tumorforschung Bern	Education & research
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Aufsichtsratsvorsitzender	Promerit Holding AG	Consulting, public relations, legal & trust
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Beirat	MÖRK GmbH & Co. KG, Leonberg	Commerce, trade & services
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Expertenjury Startfeld und Vorjury	Startfeld Diamant	Commerce, trade & services
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Externer Moderator Projekt Gründerhochschule Exist IV	Hochschule Esslingen	Education & research
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Fachbeirat	Clairfield International GmbH, Frankfurt/Main	Consulting, public relations, legal & trust
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Geschäftsführender Gesellschafter	UEC gemeinnützige GmbH	Education & research
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Präsidium	Förderkreis Gründungsforschung FGF e.V.	Education & research
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Memo St.Gallen GmbH	Consulting, public relations, legal & trust
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Promerit Management Consulting AG	Consulting, public relations, legal & trust
Christoph A.	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Virtuell Bau Holding, St.Gallen	Commerce, trade & services
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Fluglehrer	Fliegerschule St.Gallen-Altenrhein	Energy, environment & mobility
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Seniorpartner	Rechtsanwaltskanzlei ME Advocat AG	Consulting, public relations, legal & trust
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Titularprofessor für Arbeitsrecht	Universität Bern	Education & research
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspitglied	BTV Leasing Schweiz AG	Financial industry & insurances
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Ebnat AG, Ebna	Industry, construction & agriculture
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	ME Advocat AG	Consulting, public relations, legal & trust
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Nussbaum Gruppe	Industry, construction & agriculture
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Peka Pinselfabrik AG	Industry, construction & agriculture
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratssekretär	Ricola Familienholding AG	Industry, construction & agriculture
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratsvizepräsident	Board Foundation	Education & research
Roland	Müller	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratsvizepräsident	Finanzmarktaufsicht Liechtenstein	Politics, administration, justice system & security sector
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Herausgeber	M&A Review	Media & communication
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied der Jury	Peter Werhahn-Preis	Education & research
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied der Leitung	Verein Katholisches Akademikerhaus/Katholisches Studentenhaus	Society, Social, Culture & Sports
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied der Vor-und Hauptjury	St. Gallen Symposium	Education & research
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied des Aufsichtsrats	EGT AG	Energy, environment & mobility
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied des Stiftungsrates	Master of Law and Economics	Not classifiable
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Elbet AG	Industry, construction & agriculture
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied des Vorstandes	Schweizerische Gesellschaft für Organisation SGO	Education & research
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied im Herausgeberbeirat	Zeitschrift Die Unternehmung	Media & communication
Günter	Müller-Stewens	Uni St. Gallen	USG	Saint Gallen	Mitglied im Herausgeberbeirat	Zeitschrift für Management	Media & communication
Primus-Eugen	Mullis	Uni Bern	UBE	Bern	NA	Berner Diabetes Gesellschaft	Pharma & health
Primus-Eugen	Mullis	Uni Bern	UBE	Bern	NA	Berner Diabetes Stiftung	Pharma & health
Primus-Eugen	Mullis	Uni Bern	UBE	Bern	NA	Fondazione Ettore e Valeria Rossi	Society, Social, Culture & Sports
Simone	Munsch	Uni Freiburg	UFR	Fribourg	Forschungsrätin	Schweizerischer Nationalfonds (SNF)	Education & research
Simone	Munsch	Uni Freiburg	UFR	Fribourg	Präsidentin der Unabhängigen Fachkommission	Airport Casino Basel	Commerce, trade & services
Simone	Munsch	Uni Freiburg	UFR	Fribourg	Vizepräsidentin	PsyKo	Politics, administration, justice system & security sector
Simone	Munsch	Uni Freiburg	UFR	Fribourg	Wissenschaftlicher Beriat des Zentrums für Psychotherapie	Universität Zürich	Education & research
Aurelio	Muttoni	ETH Lausanne	EPF	Lausanne	Membre du conseil d'administration et employé (taux d'activité 10%)	Muttoni et Fernàndez Ingénieurs Conseils SA, Ecublens	Commerce, trade & services
Aurelio	Muttoni	ETH Lausanne	EPF	Lausanne	Membre du Conseil d'administration et employé (taux d'activité 10%)	Lurati Muttoni Partner, Studio d'ingegneria SA, Mendrisio	Commerce, trade & services
Aurelio	Muttoni	ETH Lausanne	EPF	Lausanne	Membre du conseil de fondation	CEB Trust Fund, Genève	Education & research
Aurelio	Muttoni	ETH Lausanne	EPF	Lausanne	Membre du Présidium	Fédération Internationale du Béton, Lausanne	Commerce, trade & services
Felix	Naef	ETH Lausanne	EPF	Lausanne	Executive Board	SystemsX.ch	Technology
Felix	Naef	ETH Lausanne	EPF	Lausanne	Member of evaluation committee Advanced Postdoc Mobility	SNF	Education & research
Peter	Nagel	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Pro Entomologia, Naturhistorisches Museum, Basel	Society, Social, Culture & Sports
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Chair of a B-factory Programme Advisory Committee	High Energy Accelerator Organization, Tsukuba, Japan	Education & research
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Chair of the Scientific Advisory Committee	National Institute for Subatomic Physics, Amsterdam	Education & research
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Chair of the Scientific Committee (from September 2016)	INFN, Italie	Education & research
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Chair of the Scientific Policy Committee for the CERN Council	CERN, Genève	Education & research
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Editor of Journal of High Energy Physics	Springer-Verlag, Heidelberg, Germany	Media & communication
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Editor of Nuclear Physics B	Elsevier Publishing, Amsterdam	Education & research
Tatsuya	Nakada	ETH Lausanne	EPF	Lausanne	Member of the Scientific Advisory Committee for the Next Einstein Forum	African Institute for Mathematical Science, Cape Town, South Africa	Education & research
Tobias	Nef	Uni Bern	UBE	Bern	NA	Alterniity GmbH	Technology
Bradley	Nelson	ETH Zürich	ETH	Zurich	VR-Mandat	Aeon Scientific AG	Pharma & health
Bradley	Nelson	ETH Zürich	ETH	Zurich	VR-Mandat	Femtotools AG	Industry, construction & agriculture
Bradley	Nelson	ETH Zürich	ETH	Zurich	VR-Mandat	Magnebotix AG	Technology
Dario	Neri	ETH Zürich	ETH	Zurich	Mitarbeit in Projekt	Philochem AG	Technology
Dario	Neri	ETH Zürich	ETH	Zurich	VR-Mandat	Philogen S.P.A.	Pharma & health
Klaus	Neumann-Braun	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Baimedia AG, Basel	Not classifiable
Georg	Nöldeke	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Basler Kantonalbank, Stiftung zur Förderung von Forschung und Unterricht, Basel	Education & research
Georg	Nöldeke	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Speiser-Bär-Stiftung, Basel	Education & research
Lutz-Peter	Nolte	Uni Bern	UBE	Bern	NA	CCMT	Pharma & health
Lutz-Peter	Nolte	Uni Bern	UBE	Bern	NA	Medical Cluster	Pharma & health
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Campus Muristalden AG	Education & research
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Centre of Continuing Dental Education AG	Education & research
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Forschungsstiftung Genaxen	Education & research
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Genossenschaft basecamp4hightech (bc4ht)	Commerce, trade & services
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	innoBE AG	Consulting, public relations, legal & trust
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Stiftung für technologische Innovation - STI	Commerce, trade & services
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Stiftung Haus der Universität Bern	Education & research
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Stiftung Mensabetriebe der Universität Bern	Commerce, trade & services
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Stiftung Sozialkasse der Universität Bern	Society, Social, Culture & Sports
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Unitectra AG	Education & research
Daniel	Odermatt	Uni Bern	UBE	Bern	NA	Verein Berner Studentenlogierhäuser VBSL	Commerce, trade & services
Martin	Odersky	ETH Lausanne	EPF	Lausanne	Board-Observer (former Chairman)	Typesafe Sarl, Lausanne	Technology
Luca	Ortelli	ETH Lausanne	EPF	Lausanne	Participation à la Commission pour l'habilitation scientifique nationale	MIUR - Ministero Istruzione Università Ricerca	Education & research
Luca	Ortelli	ETH Lausanne	EPF	Lausanne	Participation, en tant que président, au Jury du concours d'architecture Campus RTS sur le site de EPFL	RTS - Radio Télévision Suisse	Media & communication
Luca	Ortelli	ETH Lausanne	EPF	Lausanne	Participation, en tant que vice-président, au Jury du concours d'architecture Vergers à Meyrin	Coopératives Codha et Voisinage - Genève	Commerce, trade & services
Daniel	Oyon	Uni Lausanne	ULA	Lausanne	Mandat	Académie internationale des sciences et technique du sport	Education & research
Daniel	Oyon	Uni Lausanne	ULA	Lausanne	Mandat	Autorité fédérale de surveillance en matière de révision	Commerce, trade & services
Daniel	Oyon	Uni Lausanne	ULA	Lausanne	Mandat	Etablissement Cantonal d'Assurance	Society, Social, Culture & Sports
Jànos	Pach	ETH Lausanne	EPF	Lausanne	Editor-in-chief of Discrete & Computational Geometry (pays a stipend)	Springer-Verlag, New York	Media & communication
Mario	Paolone	ETH Lausanne	EPF	Lausanne	Editor in Chief of the international journal Sustainable Energy, Grids and Networks	Elsevier Ltd, UK	Education & research
Mario	Paolone	ETH Lausanne	EPF	Lausanne	Evaluation of the candidates for the Professorship/Associate professorship, Dept of Electric Power Eng	Norwegian University of Science and Technology, Norway	Education & research
Mario	Paolone	ETH Lausanne	EPF	Lausanne	Lecture for the Post-graduate program Progettazione di Impianti Oil&Gas	University of Bologna, Italy	Education & research
Ioannis	Papadopoulos	Uni Lausanne	ULA	Lausanne	Mandat	Schweizerischer Nationalfonds (SNF)	Education & research
Andreas	Papassotiropoulos	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	GeneGuide AG, Basel	Technology
Marc	Parlange	ETH Lausanne	EPF	Lausanne	Dean and Prof. Faculté Applied Sciences	Leave at UBC	Education & research
Mark	Pauly	ETH Lausanne	EPF	Lausanne	Member of the board	Faceshift AG, Zurich	Technology
Andreas	Pautz	ETH Lausanne	EPF	Lausanne	Member of review panel of a Helmoltz Program	Helmholtz Society of German Research Centers, Berlin	Education & research
Dominique	Perrault	ETH Lausanne	EPF	Lausanne	Architecture & gestion de projets	Dominique Perrault Libérale c/o Architram, Renens	Industry, construction & agriculture
Dominique	Perrault	ETH Lausanne	EPF	Lausanne	Architecture & gestion de projets	SA Dominique Perrault Architecture, Chatelaine	Industry, construction & agriculture
Walter	Perrig	Uni Bern	UBE	Bern	NA	Rochester Bern Foundation Board	Education & research
Walter	Perrig	Uni Bern	UBE	Bern	NA	Seniorenuniversität Bern	Education & research
Bertrand	Perrin	Uni Freiburg	UFR	Fribourg	Ersatzmitglied für das Obergericht	Kanton Bern	Politics, administration, justice system & security sector
Bertrand	Perrin	Uni Freiburg	UFR	Fribourg	Rechtsberater	Selbstständig	Not classifiable
Hans Jörg	Peter	Uni Lausanne	ULA	Lausanne	Mandat	Une administration de faillite non spécifié	Media & communication
Georg	Pfleiderer	Uni Basel	UBA	Basel	Präsident	Eidgenössische Ethikkommission für Biotechnologie (EKAH)	Politics, administration, justice system & security sector
Pascal	Pichonnaz	Uni Freiburg	UFR	Fribourg	Gutachter	Selbstständig	Not classifiable
Pascal	Pichonnaz	Uni Freiburg	UFR	Fribourg	Schiedsrichter	Handelsschiedsgericht	Politics, administration, justice system & security sector
Pascal	Pichonnaz	Uni Freiburg	UFR	Fribourg	Vize-Präsident	EKK (Eidgenössische Konsumenten Kommission)	Politics, administration, justice system & security sector
Mark	Pieth	Uni Basel	UBA	Basel	Präsident des Stiftungsrates	Basel Institute on Governance	Politics, administration, justice system & security sector
Yves	Pigneur	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Denis	Piotet	Uni Lausanne	ULA	Lausanne	Mandat	Chancellerie non spécifié	Politics, administration, justice system & security sector
Fernando	Porte Agel	ETH Lausanne	EPF	Lausanne	Consulting work	Qatar fondation	Education & research
Alexandre	Pouget	Uni Genf	UGE	Geneva	Membre du Scientific Advisory Board	NERF (Leuwen)	Pharma & health
Dimos	Poulikakos	ETH Zürich	ETH	Zurich	VR-Mandat	Hylomorph AG	Pharma & health
Dimos	Poulikakos	ETH Zürich	ETH	Zurich	VR-Mandat	Scrona AG	Industry, construction & agriculture
Demetri	Psaltis	ETH Lausanne	EPF	Lausanne	Board Member	SPIE (Society)	Education & research
Demetri	Psaltis	ETH Lausanne	EPF	Lausanne	Board Member	Wyss Center	Education & research
Alfio	Quarteroni	ETH Lausanne	EPF	Lausanne	Président du conseil d'administration et coordinateur du comité scientifique	MOXOFF Srl, Milan	Technology
Nicolas	Queloz	Uni Freiburg	UFR	Fribourg	Rechtsberater	Selbstständig	Not classifiable
Aleksandra	Radenovic	ETH Lausanne	EPF	Lausanne	Sponsored research agreement from Roche	Head of research Roche Sequencing	Pharma & health
Freddy	Radtke	ETH Lausanne	EPF	Lausanne	Chairman of board of directors	Cellestia Biotech SA, Innovation Square EPFL	Technology
Freddy	Radtke	ETH Lausanne	EPF	Lausanne	Member of the scientific committee	Swiss Cancer League, Bern	Pharma & health
Michel	Rappaz	ETH Lausanne	EPF	Lausanne	Actionnaire et Membre du Conseil d'administration	Ycoor Systems SA, Sierre	Technology
Michel	Rappaz	ETH Lausanne	EPF	Lausanne	Associé	Novamet Sarl, Lausanne	Consulting, public relations, legal & trust
Michel	Rappaz	ETH Lausanne	EPF	Lausanne	Membre du conseil scientifique	Alcoa Howmet, Whitehall, USA	Industry, construction & agriculture
Michel	Rappaz	ETH Lausanne	EPF	Lausanne	Président du conseil de fondation	Fondation R&R Haenny, SAV, Lausanne	Education & research
Michel	Rappaz	ETH Lausanne	EPF	Lausanne	Président du Conseil de fondation	PPUR, RLC, Lausanne	Media & communication
Björn	Rasch	Uni Basel	UBA	Basel	Betreuung von Studenten und Doktoranden	Universität Zürich	Education & research
Stefan	Rebenich	Uni Bern	UBE	Bern	NA	Jacob Burckhardt-Stiftung	Society, Social, Culture & Sports
Sven	Reinecke	Uni St. Gallen	USG	Saint Gallen	Mitglied im Stiftungsrat	Stiftung Kinderdorf Pestalozzi	Politics, administration, justice system & security sector
Sven	Reinecke	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	MPM Market Performance Management St. Gallen AG	Consulting, public relations, legal & trust
Philippe	Renaud	ETH Lausanne	EPF	Lausanne	Conseil scientifique + CA	Mimotec SA, Sion	Industry, construction & agriculture
Philippe	Renaud	ETH Lausanne	EPF	Lausanne	Conseil scientifique, membre	CSEM SA, Neuchâtel	Education & research
Jean-Claude	Reubi	Uni Bern	UBE	Bern	NA	Yde Foundation Kopenhagen	Pharma & health
Emmanuel	Rey	ETH Lausanne	EPF	Lausanne	Associé et partenaire d'un bureau d'architecture et d'urbanisme	Bauart Architekten und Planer AG, Bern	Industry, construction & agriculture
Emmanuel	Rey	ETH Lausanne	EPF	Lausanne	Membre du comité d'une association à but non lucratif	Association Ecoparc, Neuchâtel	Energy, environment & mobility
Emmanuel	Rey	ETH Lausanne	EPF	Lausanne	Membre du conseil d'administration	Bauart Architekten und Planer Holding AG, Bern	Industry, construction & agriculture
Cyrill P.	Rigamonti	Uni Bern	UBE	Bern	NA	Hans-Sigrist-Stiftung	Education & research
Andrea	Rinaldo	ETH Lausanne	EPF	Lausanne	Board Member	European Professional Club Rugby (CH)	Society, Social, Culture & Sports
Andrea	Rinaldo	ETH Lausanne	EPF	Lausanne	Board Member	Federazione italiana Rubgy (IT)	Society, Social, Culture & Sports
Andrea	Rinaldo	ETH Lausanne	EPF	Lausanne	Chair of hydraulic constructions, part-time (10%)	Università di Padova, Italie	Education & research
Andrea	Rinaldo	ETH Lausanne	EPF	Lausanne	Secretary, Class of Sciences	Istituto Veneto di Scienze, Lettere e Arti (IT)	Education & research
Leonid	Rivkin	ETH Lausanne	EPF	Lausanne	CERN Scientific Policy Committee	CERN Council, Genève	Education & research
Leonid	Rivkin	ETH Lausanne	EPF	Lausanne	Interim Chair of the International Collaboration Board of the Future Circular Collider (FCC) study	CERN, Genève	Education & research
Leonid	Rivkin	ETH Lausanne	EPF	Lausanne	IRFU Scientific Council, CEA	Irfu, CEA, Gif sur Yvette, France	Education & research
Leonid	Rivkin	ETH Lausanne	EPF	Lausanne	MAX IV Machine Advisory Committee	MAXIV Laboratory, Lund, Sweden	Education & research
Leonid	Rivkin	ETH Lausanne	EPF	Lausanne	Scientific Committee, Frascati INFN National Laboratories	INFN, Italie	Education & research
Thomas	Rizzo	ETH Lausanne	EPF	Lausanne	Panel Chair for ERC PE4 panel	ERC, Brussels	Education & research
Vito	Roberto	Uni St. Gallen	USG	Saint Gallen	Konsulent	Baker & McKenzie	Consulting, public relations, legal & trust
Vito	Roberto	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	HSG Stiftung	Education & research
Vito	Roberto	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Precious Capital AG	Financial industry & insurances
Johan Olof Anders	Robertsson	ETH Zürich	ETH	Zurich	Geschäftsführer	Robertsson Industrial Geoscience Innovation GmbH	Industry, construction & agriculture
Ivan	Rodriguez	Uni Genf	UGE	Geneva	Membre du comité	Gensuisse	Society, Social, Culture & Sports
Ivan	Rodriguez	Uni Genf	UGE	Geneva	Membre du comité	Wright Foundation	Society, Social, Culture & Sports
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	«Pate» für Jungunternehmer	Startnetzwerk Thurgau	Commerce, trade & services
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	Mitglied des Investment Committee	IST Funds Swiss Healthcare Loans	Financial industry & insurances
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	International School Schaffhausen ISSH	Education & research
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	BEG & Partners AG	Consulting, public relations, legal & trust
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	BEG Business Engineering Group AG	Consulting, public relations, legal & trust
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	BEG Management AG	Consulting, public relations, legal & trust
Peter	Rohner	Uni St. Gallen	USG	Saint Gallen	Vorstand	IHK Industrie- und Handelskammer Thurgau	Commerce, trade & services
Stephan	Rohr	Uni Bern	UBE	Bern	NA	Dr. Josef Steiner Cancer Research Foundation, Präsident	Pharma & health
Pascal	Roman	Uni Lausanne	ULA	Lausanne	Mandat	CHUV	Pharma & health
Ursula	Röthlisberger	ETH Lausanne	EPF	Lausanne	Associate Editor, American Chemical Society Journal Journal of Chemical Theory and Computation	American Chemical Society, Washington, USA	Education & research
Ursula	Röthlisberger	ETH Lausanne	EPF	Lausanne	Head of the sub panel Life Sciences of the PRACE Access Committee	PRACE AISBL, Brussels, Belgium	Education & research
Ursula	Röthlisberger	ETH Lausanne	EPF	Lausanne	Member of the Board	Chemical Physics Letters - Elsevier	Media & communication
Ursula	Röthlisberger	ETH Lausanne	EPF	Lausanne	Member of the Editorial Board	Journal of Physics D: Applied Physics, UK	Media & communication
Ursula	Röthlisberger	ETH Lausanne	EPF	Lausanne	Member of the Scientific Advisory Committee as part of the selection of CECAM workshop annual program	Centre Européen de Calcul Atomique et Moléculaire (CECAM), Lausanne, CH	Education & research
Ursula	Röthlisberger	ETH Lausanne	EPF	Lausanne	Panel member for the ERC Starting grant 2014 PE4	European Research Council, Brussels, Belgium	Education & research
Philipp	Rudolf von Rohr	ETH Zürich	ETH	Zurich	Stiftungsrat	André und Hedy Knoll-Spring Stiftung	Education & research
Thomas	Rudolph	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	McOptik	Commerce, trade & services
Thomas	Rudolph	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Migros	Commerce, trade & services
Thomas	Rudolph	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Otto's	Commerce, trade & services
Curzio	Rüegg	Uni Freiburg	UFR	Fribourg	Mitglied der Wissenschaftlichen Kommission	Krebsliga Schweiz	Pharma & health
Johannes	Rüegg-Stürm	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Raiffeisen Schweiz	Financial industry & insurances
Alfred	Rufer	ETH Lausanne	EPF	Lausanne	Conseil scientifique	Enairys PSE, Lausanne	Energy, environment & mobility
Alfred	Rufer	ETH Lausanne	EPF	Lausanne	Conseil scientifique	Imperix SA, Sion	Energy, environment & mobility
Alfred	Rufer	ETH Lausanne	EPF	Lausanne	Expertise	AERES, Paris	Education & research
Alfred	Rufer	ETH Lausanne	EPF	Lausanne	Expertise	ANR, Paris	Education & research
Alfred	Rufer	ETH Lausanne	EPF	Lausanne	Expertise	Ministère de la Recherche, Paris	Education & research
Alfred	Rufer	ETH Lausanne	EPF	Lausanne	Membre du Comité Electrosuisse	Electrosuisse	Commerce, trade & services
Flemming	Ruud	Uni St. Gallen	USG	Saint Gallen	Professor	Norwegian Business School	Education & research
Peter	Ryser	ETH Lausanne	EPF	Lausanne	Administrateur vice-président	Sensile Technologies SA, Morges	Industry, construction & agriculture
Peter	Ryser	ETH Lausanne	EPF	Lausanne	associé gérant président (dès le 03.11.2014)	Sinartis Sàrl, Le Mont-sur-Lausanne	Technology
Peter	Ryser	ETH Lausanne	EPF	Lausanne	Gérant entreprise personnel	Rycons GmbH, Stäfa	Consulting, public relations, legal & trust
Peter	Ryser	ETH Lausanne	EPF	Lausanne	Membre de la commission de la formation et de la recherche	Economiesuisse, Zürich	Commerce, trade & services
Peter	Ryser	ETH Lausanne	EPF	Lausanne	Non-executive director	Cranes Sofrwares International Limited, India	Technology
Martin O.	Saar	ETH Zürich	ETH	Zurich	Geschäftsführer	Geofluidics LLC	Industry, construction & agriculture
Ian	Sanders	Uni Lausanne	ULA	Lausanne	Mandat	Schweizerischer Nationalfonds (SNF)	Education & research
Maria del Carmen	Sandi Perez	ETH Lausanne	EPF	Lausanne	Associate Editor, Frontiers in Behavioral Neuroscience	Frontiers, EPFL Innovation Park, Lausanne	Education & research
Maria del Carmen	Sandi Perez	ETH Lausanne	EPF	Lausanne	Consulting	Amazentis, Ecublens	Technology
Maria del Carmen	Sandi Perez	ETH Lausanne	EPF	Lausanne	Review Editor	eNeuro, Society for Neuroscience, USA	Education & research
Maria del Carmen	Sandi Perez	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board Member	LabEx Brain, Université de Bordeaux, France	Education & research
Maria del Carmen	Sandi Perez	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board Member	Leibniz Institute for Neurobiology, LIN, Magdeburg, Germany	Education & research
Jean-Louis	Scartezzini	ETH Lausanne	EPF	Lausanne	EIRP Projects Evaluation Panel	BCA, Singapore	Not classifiable
Jean-Louis	Scartezzini	ETH Lausanne	EPF	Lausanne	IPCC Working group III (mitigation)	PROCLIM/SCNAT, Berne	Energy, environment & mobility
Jean-Louis	Scartezzini	ETH Lausanne	EPF	Lausanne	VELUX Foundation Workshop	VELUX Stiftung, Zurich	Education & research
Dirk	Schäfer	Uni St. Gallen	USG	Saint Gallen	Partner	Detecon (Schweiz) AG	Consulting, public relations, legal & trust
Dirk	Schäfer	Uni St. Gallen	USG	Saint Gallen	Unternehmensberater	Selbständig	Not classifiable
Kuno	Schedler	Uni St. Gallen	USG	Saint Gallen	Präsident	Compass Alters- und Pflegeverein	Pharma & health
Kuno	Schedler	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	Schweizer Paraplegiker Stiftung	Pharma & health
Kuno	Schedler	Uni St. Gallen	USG	Saint Gallen	Verwaltungsratspräsident	Schweizer Paraplegiker Forschung	Pharma & health
Markus	Schefer	Uni Basel	UBA	Basel	Mitglied des Kontrollorgans über den Staatsschutz	Kanton Basel-Stadt	Politics, administration, justice system & security sector
Frank	Scheffold	Uni Freiburg	UFR	Fribourg	Verwaltungsratspräsident	LS Instruments AG	Industry, construction & agriculture
Laurent	Schild	Uni Lausanne	ULA	Lausanne	Mandat	Swissmedic	Pharma & health
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Ersatzmitglied der Rekurskommission	Evangelisch-reformierte Landeskirche beider Appenzell	Society, Social, Culture & Sports
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Ersatzrichter	Staatsgerichtshof, Fürstentum Liechtenstein	Politics, administration, justice system & security sector
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Mitglied des Kuratoriums des Universitätspfarramts	Evangelisch-reformierte Kirche des Kantons St. Gallen	Society, Social, Culture & Sports
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Mitglied Kommission für Planung und Gemeindeentwicklung	Gemeinde Speicher AR	Politics, administration, justice system & security sector
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Offizier Recht und Konventionen	Schweizerische Armee, Armeestab	Politics, administration, justice system & security sector
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Vierzehner	Zunft zur Meisen (Zürich)	Commerce, trade & services
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Vizepräsident des Stiftungsrats	Peter Häberle-Stiftung an der Universität St. Gallen	Education & research
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Vorstandsmitglied	Schweizerischer Juristenverein	Commerce, trade & services
Benjamin	Schindler	Uni St. Gallen	USG	Saint Gallen	Vorstandsmitglied	St. Galler Juristenverein	Commerce, trade & services
Anton	Schleiss	ETH Lausanne	EPF	Lausanne	Beratung, vidange de fonds - surélévation du barrage Cambambe, Angola	Stucky SA, Renens	Commerce, trade & services
Anton	Schleiss	ETH Lausanne	EPF	Lausanne	Beratung, Wasserkraftwerk Chippis VS	FMV SA, Sion	Energy, environment & mobility
Anton	Schleiss	ETH Lausanne	EPF	Lausanne	Expertise Druckstollen, Xe-Pian Xe-Namnoy, Laos	SK Engineering & Constructions, South Korea	Commerce, trade & services
Anton	Schleiss	ETH Lausanne	EPF	Lausanne	Panel of experts, Haraz Dam & HPP	Mahab Ghoods, Theran, Iran	Consulting, public relations, legal & trust
Anton	Schleiss	ETH Lausanne	EPF	Lausanne	Prüfung Bauvorhaben Linth 2015	Basler & Hofmann, Esslingen	Commerce, trade & services
Anton	Schleiss	ETH Lausanne	EPF	Lausanne	Schiedsgericht Nant de Dranse	Nant de Dranse SA, Martigny	Commerce, trade & services
Fritz	Schlunegger	Uni Bern	UBE	Bern	NA	Bretscher Stiftung	Education & research
Arno	Schlüter	ETH Zürich	ETH	Zurich	Mitglied des Nachhaltigkeitsbeirats	Herzog Kull Group	Consulting, public relations, legal & trust
Arno	Schlüter	ETH Zürich	ETH	Zurich	VR-Mandat	keoto AG	Industry, construction & agriculture
Hato	Schmeiser	Uni St. Gallen	USG	Saint Gallen	Beratungstätigkeiten für Mitglieder	I.VW-Forschungskreis	Education & research
Hato	Schmeiser	Uni St. Gallen	USG	Saint Gallen	Präsident	European Group of Risk and Insurance Economist EGRIE	Education & research
Matthias	Schmidt	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Ernst Krenek Privatstiftung, Krems, Österreich	Society, Social, Culture & Sports
Peter	Schneemann	Uni Bern	UBE	Bern	NA	CIHA	Not classifiable
Peter	Schneemann	Uni Bern	UBE	Bern	NA	Kiefer Hablitzel Stiftung	Society, Social, Culture & Sports
Olivier	Schneider	ETH Lausanne	EPF	Lausanne	Administrateur	Coopérative St-Thomas, Lausanne	Society, Social, Culture & Sports
Olivier	Schneider	ETH Lausanne	EPF	Lausanne	Membre du conseil du CERN	SEFRI, CERN, Genève	Education & research
Olivier	Schneider	ETH Lausanne	EPF	Lausanne	Président de l'association CHIPP	Swiss Institute of Particle Physics (CHIPP)	Education & research
Olivier	Schneider	ETH Lausanne	EPF	Lausanne	Vice-président du Conseil paroissial, Ecublens-St.Sulpice	EERV, paroisse d'Ecublens-St.Sulpice, Ecublens	Society, Social, Culture & Sports
Tobias	Schneider	ETH Lausanne	EPF	Lausanne	Phase-out of independent Max-Planck Research Group until 12/2014	MPIDS, Germany	Education & research
André	Schneider	Uni Neuenburg	UNE	Neuchâtel	NA	Universität Bern, Forschungsstiftung	Education & research
Paul	Schönsleben	ETH Zürich	ETH	Zurich	VR-Präsidium	Bioforce AG	Pharma & health
Paul	Schönsleben	ETH Zürich	ETH	Zurich	VR-Präsidium	Sanalpin AG	Pharma & health
Renate	Schubert	ETH Zürich	ETH	Zurich	Stiftungsrat	Kinderbetreuung im Hochschulraum Zürich (kihz)	Society, Social, Culture & Sports
Rainer	Schulin	ETH Zürich	ETH	Zurich	Präsident	Stiftung Geobotanisches Forschungsinstitut Rübel	Education & research
Reinhard	Schulze	Uni Bern	UBE	Bern	NA	Mitglied Hochschulrat Leipzig	Education & research
Torsten	Schwede	Uni Basel	UBA	Basel	Mitglied des Board of Directors	SIB Swiss Institute of Bioinformatics, Lausanne	Education & research
Ingeborg	Schwenzer	Uni Basel	UBA	Basel	Präsidentin des Stiftungsrates	Stiftung Swiss International Law School, Basel	Education & research
Karen	Scrivener	ETH Lausanne	EPF	Lausanne	Consultant on durability	Kerneos, France	Industry, construction & agriculture
Karen	Scrivener	ETH Lausanne	EPF	Lausanne	Consultant to innovation committee	Holcim, CH	Industry, construction & agriculture
Karen	Scrivener	ETH Lausanne	EPF	Lausanne	Editor in chief, Cement and Concrete Research	Elsevier, UK	Education & research
Ralf	Seifert	ETH Lausanne	EPF	Lausanne	Professorship at IMD, 50% work contract	IMD, Lausanne	Education & research
Nava	Setter	ETH Lausanne	EPF	Lausanne	President of the foundation	Talent Foundation, Saint-Sulpice	Education & research
Kay	Severin	ETH Lausanne	EPF	Lausanne	Scientific expert for patent firm	Patentanwalt Ter Meer Steinmeister & Partner	Consulting, public relations, legal & trust
Mohammad Amin	Shokrollahi	ETH Lausanne	EPF	Lausanne	CEO (on leave from EPFL)	Kandou Bus, Lausanne	Industry, construction & agriculture
Roland Yves	Siegwart	ETH Zürich	ETH	Zurich	Stiftungsrat	BlueLion Stiftung	Technology
Roland Yves	Siegwart	ETH Zürich	ETH	Zurich	VR-Mandat	ALSTOM Inspection Robotics AG	Industry, construction & agriculture
Roland Yves	Siegwart	ETH Zürich	ETH	Zurich	VR-Mandat	EVATEC Holding und EVATEC AG	Financial industry & insurances
Roland Yves	Siegwart	ETH Zürich	ETH	Zurich	VR-Mandat	Komax Holding AG	Industry, construction & agriculture
Joseph	Sifakis	ETH Lausanne	EPF	Lausanne	Consulting	CEA/DRT, Grenoble, France	Education & research
Joseph	Sifakis	ETH Lausanne	EPF	Lausanne	Consulting	Crossing Tech, EPFL - Innovation Park	Education & research
Hans-Uwe	Simon	Uni Bern	UBE	Bern	NA	Fondation pour la recherche Lausanne	Education & research
Hans-Uwe	Simon	Uni Bern	UBE	Bern	NA	Novartis, Forschungsstiftung	Pharma & health
Hans-Uwe	Simon	Uni Bern	UBE	Bern	NA	Universität Bern, Forschungsstiftung	Education & research
Stanislav	Smirnov	Uni Genf	UGE	Geneva	Direction scientifique	Centre de mathématiques, Université d'Etat de Saint Petersburg	Pharma & health
Stanislav	Smirnov	Uni Genf	UGE	Geneva	Direction scientifique	Institut des Sciences et Technologies, Skolkovo	Pharma & health
Berend	Smit	ETH Lausanne	EPF	Lausanne	Editor	Frontiers Publishers, Lausanne	Media & communication
Berend	Smit	ETH Lausanne	EPF	Lausanne	Teaching and Research	University of California, Berkeley	Education & research
Ian	Smith	ETH Lausanne	EPF	Lausanne	Adjunct Professor/Prof. Titulaire (teaching)	Carnegie Mellow University, USA	Education & research
Paul	Söderlind	Uni St. Gallen	USG	Saint Gallen	Forschungsrat Abteilung 1	Schweizer Nationalfonds SNF	Education & research
Nils	Soguel	Uni Lausanne	ULA	Lausanne	President	SRS-CSPCP	Energy, environment & mobility
Fabien	Sorin	ETH Lausanne	EPF	Lausanne	Expert externe pour 3 projets de recherche	Swedish Foundation for Strategic Research, Sweden	Education & research
Fabien	Sorin	ETH Lausanne	EPF	Lausanne	Membre du conseil scientifique du Laboratoire d'excellence SEAM (non rémunéré)	SEAM, France	Society, Social, Culture & Sports
Didier	Sornette	ETH Zürich	ETH	Zurich	Vorsitzender der Geschäftsführung	Sentiment Studies GmbH	Education & research
David	Spreng	Uni Bern	UBE	Bern	NA	Jakob Spreng AG	Financial industry & insurances
Laurent	Stalder	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung Bibliothek Werner Oechslin	Society, Social, Culture & Sports
Leo	Staub	Uni St. Gallen	USG	Saint Gallen	Mitglied Aufsichtsrat	Farby KABE Polska GmbH	Industry, construction & agriculture
Leo	Staub	Uni St. Gallen	USG	Saint Gallen	Mitglied Verwaltungsrat	ALID AG	Financial industry & insurances
Leo	Staub	Uni St. Gallen	USG	Saint Gallen	Mitglied Verwaltungsrat	Karl Bubenhofer AG	Industry, construction & agriculture
Leo	Staub	Uni St. Gallen	USG	Saint Gallen	Präsident des Verwaltungsrates	CRS Holding AGn	Financial industry & insurances
Leo	Staub	Uni St. Gallen	USG	Saint Gallen	Präsident Verwaltungsrat	Genossenschaft Migros Ostschweiz	Commerce, trade & services
Leo	Staub	Uni St. Gallen	USG	Saint Gallen	Präsident Verwaltungsrat	Selectchemie AG	Technology
Aldo	Steinfeld	ETH Zürich	ETH	Zurich	VR-Mandat	dsolar Ltd.	Energy, environment & mobility
Aldo	Steinfeld	ETH Zürich	ETH	Zurich	VR-Mandat	Sunbiotec AG (Solar Biofuel technology)	Energy, environment & mobility
Daniel	Steingruber	Uni St. Gallen	USG	Saint Gallen	Fachlehrer für Wirtschaft & Recht	Kantonsschule am Brühl in St.Gallen	Education & research
Hubert	Steinke	Uni Bern	UBE	Bern	NA	Albrecht-von-Haller-Stiftung der Burgergemeinde Bern	Education & research
Hubert	Steinke	Uni Bern	UBE	Bern	NA	Fondation Gustave Dubois	Education & research
Hubert	Steinke	Uni Bern	UBE	Bern	NA	Guggenheim-Stiftung für Geschichte der Medizin	Education & research
Hubert	Steinke	Uni Bern	UBE	Bern	NA	Paul- und Johanna Röthlisberger-Schmid-Stiftung	Education & research
Hubert	Steinke	Uni Bern	UBE	Bern	NA	Psychiatrie-Museum Bern	Society, Social, Culture & Sports
Hubert	Steinke	Uni Bern	UBE	Bern	NA	Stiftung Dr. Ed. Müller, Beromünster	Society, Social, Culture & Sports
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Co-editor in Chief, Nanoscale	Royal Chemistry Society, UK	Education & research
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Editorial Board Member, Nature Communications	Nature Publishing Group, London, UD	Media & communication
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Head, Scientific Advisory Board	Midatech, UK	Pharma & health
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Invited Member, Scientific Advisory Board	Constellium, France	Industry, construction & agriculture
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Legal consultant	Foley Hoag, Boston, USA	Consulting, public relations, legal & trust
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Member of the Scientific Advisory Board	Centro Europeo di Nanomedicina, Milano	Education & research
Francesco	Stellacci	ETH Lausanne	EPF	Lausanne	Scientific advisor	Istituto Besta/Centro di Nanomedicina, Milano, Italy	Education & research
Gunter	Stephan	Uni Bern	UBE	Bern	NA	phw bern	Education & research
Nikolaos	Stergiopulos	ETH Lausanne	EPF	Lausanne	Administrateur et director ad interim	Rheon Medical SA, Préverenges	Pharma & health
Nikolaos	Stergiopulos	ETH Lausanne	EPF	Lausanne	CSO et administrateur	Antlia SA, Lausanne	Pharma & health
Thomas	Stocker	Uni Bern	UBE	Bern	NA	Johanna Dürmüller-Bol Stiftung	Society, Social, Culture & Sports
Thomas	Stocker	Uni Bern	UBE	Bern	NA	Nachhaltigkeitsbeirat Swisscanto	Energy, environment & mobility
Werner	Strik	Uni Bern	UBE	Bern	NA	Psychiatriemuseum Bern	Society, Social, Culture & Sports
Anthony	Strittmatter	Uni St. Gallen	USG	Saint Gallen	Affiliated	Albert-Ludwigs-University	Education & research
Frank	Stüber	Uni Bern	UBE	Bern	NA	Stiftung für die Forschung in Anästhesie und Intensivmedizin	Education & research
Sabine	Süsstrunk	ETH Lausanne	EPF	Lausanne	Start-up advisor to Kokko Inc.	Kokko Inc, USA	Technology
David	Suter	ETH Lausanne	EPF	Lausanne	Evaluation de projets de recherche	Agence Nationale de la Recherche (ANR), Paris	Education & research
Michèle F.	Sutter-Rüdisser	Uni St. Gallen	USG	Saint Gallen	Mitglied des Universitätsrats	Universität Liechtenstein	Education & research
Michèle F.	Sutter-Rüdisser	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	thurmed AG / Spital Thurgau	Pharma & health
Melody	Swartz	ETH Lausanne	EPF	Lausanne	Consultant	Merck, DE	Pharma & health
Melody	Swartz	ETH Lausanne	EPF	Lausanne	Founder & Shareholder	Anokion, Ecublens, CH	Pharma & health
Melody	Swartz	ETH Lausanne	EPF	Lausanne	Founder & Shareholder	Lanta Bio, Préverenges, CH	Technology
Melody	Swartz	ETH Lausanne	EPF	Lausanne	Founder & Shareholder	Lumberjack, USA	Not classifiable
Melody	Swartz	ETH Lausanne	EPF	Lausanne	Founder & Shareholder	Lumberjill, Basel, CH	Not classifiable
Melody	Swartz	ETH Lausanne	EPF	Lausanne	Shareholder	Morphogene, Preverenges, CH	Pharma & health
Gábor	Székely	ETH Zürich	ETH	Zurich	VR-Mandat	Virtamed AG	Pharma & health
Thomas	Szucs	Uni Zürich	UZH	Zurich	Mitglied des Aufsichtsrats	Biovertis AG, Wien	Pharma & health
Thomas	Szucs	Uni Zürich	UZH	Zurich	Mitglied des Spitalrats	Kantonsspital Uri	Pharma & health
Thomas	Szucs	Uni Zürich	UZH	Zurich	Präsident des Verwaltungsrates	Helsana AG, Dübendorf	Pharma & health
Denis	Tappy	Uni Lausanne	ULA	Lausanne	Juge suppléant	Tribunal cantonal vaudois	Politics, administration, justice system & security sector
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Fondation pour la recherche dans le cadre de l'Etude Suisse de Cohorte VIH	Education & research
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Forschungsstiftung Genaxen	Education & research
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Hans-Sigrist-Stiftung	Education & research
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Schweizerische Akademie der Medizinischen Wissenschaften (SAMW)	Pharma & health
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Spital-Management Bern AG	Pharma & health
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Stiftung Swiss School of Public Health plus (SSPH)	Education & research
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Stiftung Universität und Gesellschaft	Education & research
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	SWAN Hadron AG	Pharma & health
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	SWAN Isotopen AG	Technology
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	SWANtec Holding AG	Financial industry & insurances
Martin G.	Täuber	Uni Bern	UBE	Bern	NA	Übergangsrat der UPD	Pharma & health
Stephanie	Teufel	Uni Freiburg	UFR	Fribourg	Aufsichtsrat	Exelsis Business Technology AG	Technology
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Comité de direction du PNR 66 Ressource bois	Schweizerischer Nationalfonds	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Cours (26.03.14) La réforme fiscale écologique dans le cadre d'une formation continue	IDHEAP, Université de Lausanne	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Expert externe, Réseau de compétence Economie et Management	Mission HES-SO, Delémont	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Journée d'économie politique d'iconomix 2014. 1 cours (21.11.14)	HEP Lausanne	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Mandat privé pour l'évaluation de la durabilité de projets - Aspects économiques	ARE, Office fédéral du développement territorial, Berne	Energy, environment & mobility
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Membre de la commission de caisse de Publica	Publica, Berne	Financial industry & insurances
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Membre de la commission fédérale consultative pour la recherche environnementale	Off. féd. de l'Environnement, Berne-Ittigen	Politics, administration, justice system & security sector
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Membre du conseil de fondation	IDHEAP, Chavannes-près-Renens	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Membre du conseil scientifique	Swisscleantech Association, Bern	Commerce, trade & services
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Membre du groupe de travail Forum for climate and global change ProClim	Swiss Academy of Sciences, Bern	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Panel d'évaluation des pôles de compétence suisses en recherche énergétique	Kommission für Technologie und Innovation	Politics, administration, justice system & security sector
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Partenariat pour organiser une journée de séminaire/année	SVIT Swiss Real Estate School SA, Lausanne	Education & research
Philippe	Thalmann	ETH Lausanne	EPF	Lausanne	Président le la Commission fédérale de logement	Office fédéral du logement, Granges	Politics, administration, justice system & security sector
Patrick	Thiran	ETH Lausanne	EPF	Lausanne	Expertise pour projet panel VR NT-14	Swedish Research Council, Suède	Education & research
Patrick	Thiran	ETH Lausanne	EPF	Lausanne	Membre du comité scientifique du LINCS	Institut Mines-Télécom, France	Education & research
Jean-Philippe	Thiran	Uni Lausanne	ULA	Lausanne	Consultant (7 jours)	Airbus EADS, France	Energy, environment & mobility
Jean-Philippe	Thiran	Uni Lausanne	ULA	Lausanne	Professeur associé ad personam	Université de Lausanne, faculté de médecine	Education & research
Bernard	Thorens	Uni Lausanne	ULA	Lausanne	NA	Activités académiques	Education & research
Christina	Thurner	Uni Bern	UBE	Bern	NA	Schweizer Tanzarchiv	Society, Social, Culture & Sports
Daniela	Thurnherr Keller	Uni Basel	UBA	Basel	Ersatzrichterin	Appellationsgericht des Kantons Basel-Stadt	Politics, administration, justice system & security sector
Daniela	Thurnherr Keller	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	BVB, Basler Verkehrsbetriebe Basel	Energy, environment & mobility
Laurent	Tissot	Uni Neuenburg	UNE	Neuchâtel	Membre du Bureau exécutif	Commission internationale pour la philosophie et les sciences humaines (CIPSH)	Education & research
Laurent	Tissot	Uni Neuenburg	UNE	Neuchâtel	Membre du conseil	Fondation pour l'histoire de la poste	Society, Social, Culture & Sports
Laurent	Tissot	Uni Neuenburg	UNE	Neuchâtel	Membre du conseil scientifique	Association pour l'histoire des chemins de fer en France	Society, Social, Culture & Sports
Laurent	Tissot	Uni Neuenburg	UNE	Neuchâtel	Membre du conseil scientifique	Maison des sciences de l'homme de l'Université de Tours	Education & research
Laurent	Tissot	Uni Neuenburg	UNE	Neuchâtel	Membre titulaire étranger	Comité des travaux historiques et scientifiques	Society, Social, Culture & Sports
Torsten	Tomczak	Uni St. Gallen	USG	Saint Gallen	Mitglied des Verwaltungsrats	Ammarkt	Consulting, public relations, legal & trust
Torsten	Tomczak	Uni St. Gallen	USG	Saint Gallen	Vorstandsmitglied	Schweizerische Gesellschaft für Marketing	Media & communication
Didier	Trono	ETH Lausanne	EPF	Lausanne	Chaire du conseil scientifique	IGH Montpellier	Education & research
Didier	Trono	ETH Lausanne	EPF	Lausanne	Membre du conseil	Fondation Giorgi-Cavaglieri	Technology
Didier	Trono	ETH Lausanne	EPF	Lausanne	Membre du conseil	Fondation ISREC, Lausanne	Education & research
Didier	Trono	ETH Lausanne	EPF	Lausanne	Membre du Conseil de la Recherche	Fonds National Scientifique Suisse	Education & research
Didier	Trono	ETH Lausanne	EPF	Lausanne	Membre du conseil scientifique	MOLMED, Milan, Italy	Technology
Gerhard	Tröster	ETH Zürich	ETH	Zurich	VR-Mandat	Amphiro AG	Industry, construction & agriculture
Gerhard	Tröster	ETH Zürich	ETH	Zurich	VR-Mandat	u-blox AG	Industry, construction & agriculture
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Adjunct Professor (finished Aug 2014)	Skolkovo Institute of Science & Technology	Education & research
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Board Member	EAMSA	Education & research
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Board Member	Innovation Strategy Center Association	Not classifiable
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Board Member	Lean Analytical Association	Consulting, public relations, legal & trust
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Board Member	Powzy	Media & communication
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Board of Governors	Academy of Management	Education & research
Christopher	Tucci	ETH Lausanne	EPF	Lausanne	Member (no longer active)	AYU Association (no longer active)	Not classifiable
Falk	Uebernickel	Uni St. Gallen	USG	Saint Gallen	Geschäftsführender Partner und Mitglied des Verwaltungsrates	IT Management Partner St. Gallen AG	Consulting, public relations, legal & trust
Michaël	Unser	ETH Lausanne	EPF	Lausanne	Comité d'expertise Ambizione	FNS, Bern	Education & research
Pierre	Vandergheynst	ETH Lausanne	EPF	Lausanne	Consulting	Advanced Silicon SA, Lausanne	Industry, construction & agriculture
Pierre	Vandergheynst	ETH Lausanne	EPF	Lausanne	Consulting	Nestlé Research, Vevey	Industry, construction & agriculture
Pierre	Vandergheynst	ETH Lausanne	EPF	Lausanne	Founder, pas de rôle exécutif	Immersive Vision SARL, PSE	Technology
Adrian	Vatter	Uni Bern	UBE	Bern	NA	Büro Vatter AG	Consulting, public relations, legal & trust
Serge	Vaudenay	ETH Lausanne	EPF	Lausanne	Droits d'auteur	PPUR, Lausanne	Media & communication
Serge	Vaudenay	ETH Lausanne	EPF	Lausanne	Droits d'auteur	Springer USA	Media & communication
Serge	Vaudenay	ETH Lausanne	EPF	Lausanne	Expertise	Ingenico Paris	Technology
Martin	Vetterli	ETH Lausanne	EPF	Lausanne	Membre du conseil d'administration (jusqu'à Juin 2014, puis occasional advisor)	VIDINOTI	Consulting, public relations, legal & trust
Martin	Vetterli	ETH Lausanne	EPF	Lausanne	Occasional advisor	DARTFISH	Technology
Martin	Vetterli	ETH Lausanne	EPF	Lausanne	President du Conseil National de la Recherche	FNS (Fonds National Suisse)	Education & research
Paola	Viganò	ETH Lausanne	EPF	Lausanne	Membre comité scientifique	Atelier International du Grand Paris, Paris	Society, Social, Culture & Sports
Paola	Viganò	ETH Lausanne	EPF	Lausanne	Membre comité scientifique	Ecole Nationale Supérieure d'architecture et de paysage de Lille, France	Education & research
Paola	Viganò	ETH Lausanne	EPF	Lausanne	Membre comité scientifique	Ecole Nationale Supérieure du Paysage, Versailles, France	Education & research
Paola	Viganò	ETH Lausanne	EPF	Lausanne	Partenaire associée	Secchi-Viganò Studio, Italie	Industry, construction & agriculture
Paola	Viganò	ETH Lausanne	EPF	Lausanne	Prof. ordinaire part-time	Université IUAV, Italie	Education & research
Thomas	Vogel	ETH Zürich	ETH	Zurich	NA	Albert Lück-Stiftung	Education & research
Thomas	Vogel	ETH Zürich	ETH	Zurich	NA	Erich Degen-Stiftung	Education & research
Thierry	Volery	Uni St. Gallen	USG	Saint Gallen	Honorary Research Fellow	University of Western Australia Business School	Education & research
Thierry	Volery	Uni St. Gallen	USG	Saint Gallen	Mitglied des Beirats	Forum BGM – Betriebliches Gesundheitsmanagement Ostschweiz	Pharma & health
Thierry	Volery	Uni St. Gallen	USG	Saint Gallen	Vorsitzender des Beirats	EXIST – Existenzgründungen aus der Wissenschaft	Commerce, trade & services
Georg Fredrik	von Krogh	ETH Zürich	ETH	Zurich	Geschäftsführer	Innovative Strategies GmbH	Consulting, public relations, legal & trust
Georg	von Schnurbein	Uni Basel	UBA	Basel	Board member	European Research Network on Philanthropy	Education & research
Georg	von Schnurbein	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Roland von Hoesslin Gedenkstiftung, Augsburg, Deutschland	Not classifiable
Georg	von Schnurbein	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Stiftung Institute for Value-based Enterprise, Fribourg	Consulting, public relations, legal & trust
Georg	von Schnurbein	Uni Basel	UBA	Basel	Präsident	Verein Europäische Freiwilligenuniversität	Education & research
Georg	von Schnurbein	Uni Basel	UBA	Basel	Präsident des Stiftungsrates	Stiftung zur Förderung des Antikenmuseums Basel	Society, Social, Culture & Sports
Rico	von Wyss	Uni St. Gallen	USG	Saint Gallen	Oberstlt i Gst	Schweizer Armee	Politics, administration, justice system & security sector
Laurent	Vulliet	ETH Lausanne	EPF	Lausanne	CEO et Administrateur	BG Ingénieurs Conseils, Lausanne	Commerce, trade & services
Simone	Walther	Uni St. Gallen	USG	Saint Gallen	Rechtsanwältin	Schärer Rechtsanwälte	Consulting, public relations, legal & trust
Doris	Wastl	Uni Bern	UBE	Bern	NA	Dr. A. Bretscher Stiftung	Education & research
Stefan	Weber	Uni Bern	UBE	Bern	Board Member	CAScination AG	Pharma & health
Stefan	Weber	Uni Bern	UBE	Bern	President	Stiftung CCMT	Pharma & health
Konrad	Wegener	ETH Zürich	ETH	Zurich	Mitglied im Hochschulrat	FHS St. Gallen	Education & research
Konrad	Wegener	ETH Zürich	ETH	Zurich	VR-Mandat	Meyer Burger Technology AG	Financial industry & insurances
Alain	Wegmann	ETH Lausanne	EPF	Lausanne	Conseil informatique	TAG Aviation, Genève	Energy, environment & mobility
Alain	Wegmann	ETH Lausanne	EPF	Lausanne	Conseil informatique (non-payé)	Aeroport Genève	Energy, environment & mobility
Antoinette	Weibel	Uni St. Gallen	USG	Saint Gallen	Beiratsmitglied	Deutsches Forschungsinstitutes für öffentliche Verwaltung	Education & research
Antoinette	Weibel	Uni St. Gallen	USG	Saint Gallen	Beiratsmitglied	Schweizerische Vereinigung für Führungsausbildung	Commerce, trade & services
Antoinette	Weibel	Uni St. Gallen	USG	Saint Gallen	Beiratsmitglied	Trust Management Institut e.V.	Consulting, public relations, legal & trust
Antoinette	Weibel	Uni St. Gallen	USG	Saint Gallen	Geschäftsführerin	BTiO GmbH	Consulting, public relations, legal & trust
Antoinette	Weibel	Uni St. Gallen	USG	Saint Gallen	Präsidentin	FINT, First international Network of Trust Research	Education & research
Antoinette	Weibel	Uni St. Gallen	USG	Saint Gallen	Stiftungsratmitglied	Schweizerische Gesellschaft für Organisation	Education & research
Ulrich Alois	Weidmann	ETH Zürich	ETH	Zurich	VR-Mandat	systransis AG	Technology
Ulrich Alois	Weidmann	ETH Zürich	ETH	Zurich	VR-Mandat	VBG Verkehrsbetriebe Glattal AG	Energy, environment & mobility
Ulrich Alois	Weidmann	ETH Zürich	ETH	Zurich	VR-Mandat	Verkehrsbetrieb LIECHTENSTEINmobil	Energy, environment & mobility
Roland	Weiger	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Coltene, Altstätten	Pharma & health
Hannes	Weigt	Uni Basel	UBA	Basel	Mitglied des Beirats	Energieagentur Landkreis Lörrach GmbH	Energy, environment & mobility
Yves	Weinand	ETH Lausanne	EPF	Lausanne	Parlement vaudois, mission de stabilité	Canton de Vaud, Service Immeubles, Patrimoine et Logistique, Lausanne	Politics, administration, justice system & security sector
Helma Barblin	Wennemers	ETH Zürich	ETH	Zurich	VR-Mandat	Bachem Holding AG	Pharma & health
Franz	Werro	Uni Freiburg	UFR	Fribourg	Rechtsberater	Selbstständig	Not classifiable
Florian	Wettstein	Uni St. Gallen	USG	Saint Gallen	Co-Editor-in-Chief	Business and Human Rights Journal	Media & communication
Florian	Wettstein	Uni St. Gallen	USG	Saint Gallen	Mitglied des Editorial Advisory Boards	Business Ethics Journal Review	Media & communication
Florian	Wettstein	Uni St. Gallen	USG	Saint Gallen	Mitglied des Executive Committee	International Society for Business, Ethics and Economics ISBEE	Commerce, trade & services
Florian	Wettstein	Uni St. Gallen	USG	Saint Gallen	Mitglied des Initiativkommitees	Konzernverantwortungsinitiative	Society, Social, Culture & Sports
Florian	Wettstein	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	Brot für alle	Politics, administration, justice system & security sector
Florian	Wettstein	Uni St. Gallen	USG	Saint Gallen	Stiftungsrat	Foundation for Responsible Leadership	Society, Social, Culture & Sports
Peter	Widmayer	ETH Zürich	ETH	Zurich	VR-Mandat	NEBION AG	Technology
Alexander	Widmer	ETH Zürich	ETH	Zurich	Stiftungsrat	Kinderbetreuung im Hochschulraum Zürich (kihz)	Society, Social, Culture & Sports
Alexander	Widmer	ETH Zürich	ETH	Zurich	Stiftungsrat	Stiftung Geobotanisches Forschungsinstitut Rübel	Education & research
Martin	Wilks	Uni Genf	UGE	Geneva	Mitglied des Stiftungsrates	Institut de Sante au Travail, Lausanne	Pharma & health
Stephan	Windecker	Uni Bern	UBE	Bern	Aufsichtsrat	European Cardiovascular Research Institute (ECRI), Aufsichtsrat	Education & research
Stephan	Windecker	Uni Bern	UBE	Bern	Verwaltungsrat	Kardiologie Interlaken - Unterseen AG, Verwaltungsrat	Pharma & health
Sebastian	Wolf	Uni Bern	UBE	Bern	NA	Haag Streit Stiftung	Pharma & health
Sebastian	Wolf	Uni Bern	UBE	Bern	NA	Hans Goldmann Stiftung	Pharma & health
Sebastian	Wolf	Uni Bern	UBE	Bern	NA	Major und Feller Stiftung	Not classifiable
Stephan	Wolf	Uni Bern	UBE	Bern	NA	Curt Rommel-Stiftung (Grundauftrag)	Education & research
Ursula	Wolf	Uni Bern	UBE	Bern	Associated Editor	Journal of the American College of Cardiology Cardiovascular Interventions	Pharma & health
Ursula	Wolf	Uni Bern	UBE	Bern	Board Member	European Association of Percutaneous Cardiovascular Intervention (EAPCI)	Pharma & health
Ursula	Wolf	Uni Bern	UBE	Bern	Board Member	European Society of Cardiology (ESC)	Pharma & health
Ursula	Wolf	Uni Bern	UBE	Bern	Course Director	EuroPCR	Pharma & health
Ursula	Wolf	Uni Bern	UBE	Bern	NA	Paracelsus-Spital Richterswil, ZH	Pharma & health
Ursula	Wolf	Uni Bern	UBE	Bern	Section Editor	UpToDate	Pharma & health
Ursula	Wolf	Uni Bern	UBE	Bern	Stiftungsrat	REHA Klinik Heiligenschwendi	Pharma & health
Christian Gerhard	Wolfrum	ETH Zürich	ETH	Zurich	VR-Mandat	Glycemicon AG	Technology
Alfred	Wüest	ETH Zürich	ETH	Zurich	Advisory Board Forschungsstelle Nachhaltige Energie-und Wasserversorgung	Uni Basel	Education & research
Alfred	Wüest	ETH Zürich	ETH	Zurich	Berater	Contour Global, New York, für Methan Extraktion Lake Kivu	Energy, environment & mobility
Alfred	Wüest	ETH Zürich	ETH	Zurich	Co-Editor	Journal Acquatic Sciences	Media & communication
Alfred	Wüest	ETH Zürich	ETH	Zurich	Externer Reviewer	Tahoe Environmental Research Facility, UC Davies	Education & research
Matthias P.	Wymann	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	PIQUR Therapeutics AG, Basel	Pharma & health
Paul	Xirouchakis	ETH Lausanne	EPF	Lausanne	Reviewer Marie-Curie ITN (10 days)	EU Commission, Brussels	Politics, administration, justice system & security sector
Paul	Xirouchakis	ETH Lausanne	EPF	Lausanne	Reviewer MATENG (9.5 days)	EU Commission	Politics, administration, justice system & security sector
Paul	Xirouchakis	ETH Lausanne	EPF	Lausanne	Survey on sustainability (1 day)	KIST EUROPE, Germany	Education & research
Hugo	Zbinden	Uni Genf	UGE	Geneva	Membre du conseil d'administration	SIG	Energy, environment & mobility
Thomas Markus	Zellweger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Hasler Transport AG	Energy, environment & mobility
Thomas Markus	Zellweger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Tisca Tiara AG	Industry, construction & agriculture
Thomas Markus	Zellweger	Uni St. Gallen	USG	Saint Gallen	Verwaltungsrat	Welz AG	Industry, construction & agriculture
Jian	Zhao	ETH Lausanne	EPF	Lausanne	Editor in chief, Tunnelling and Underground Space Technology, while on leave	Elsevier, Oxford, UK	Media & communication
Jian	Zhao	ETH Lausanne	EPF	Lausanne	Independent director (non-executive), while on leave	Terratech Group Ltd	Financial industry & insurances
Jian	Zhao	ETH Lausanne	EPF	Lausanne	Professor of Geomechanics (full-time), while on leave	Monash University, Australia	Education & research
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Committee member	Institut de Chimie de Lyon	Education & research
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Committee member Labex SynOrg	INSA, France	Education & research
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Consultant	Novartis	Pharma & health
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Editorial board member	Asian. J. Org. Chem. Wiley	Media & communication
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Editorial board member	Beistein J Org Chem, Beilstin Institute, Germany	Media & communication
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Editorial board member	Eur. J. Org. Chem., Wiley	Media & communication
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Editorial board member	J. Antibiotics, Nature Publisher	Media & communication
Jieping	Zhu	ETH Lausanne	EPF	Lausanne	Scientific Advisory Board Member	Inflamalps, Switzerland	Pharma & health
Heinz	Zimmermann	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	BIZ-Stiftung c/o Dr. Carlo Bertossa, Basel	Not classifiable
Heinz	Zimmermann	Uni Basel	UBA	Basel	Mitglied des Stiftungsrates	Stiftung zur Förderung des Schweizerischen Wirtschaftsarchivs am WWZ der Universität Basel	Education & research
Heinz	Zimmermann	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Remaco AG, Basel	Consulting, public relations, legal & trust
Heinz	Zimmermann	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	Versicherung der Schweizer Ärzte, Bern	Financial industry & insurances
Heinz	Zimmermann	Uni Basel	UBA	Basel	Mitglied des Verwaltungsrates	vescore Solutions, St. Gallen	Consulting, public relations, legal & trust
Heinz	Zimmermann	Uni Basel	UBA	Basel	Verwaltungsrat inkl. Präsidium Vorsorgestiftung	Viollier AG, Allschwil	Pharma & health
Alexander	Zimmermann	Uni St. Gallen	USG	Saint Gallen	Mitglied des Beirats	Franz Haniel & Cie. GmbH	Financial industry & insurances
Klaus	Zuberbühler	Uni Neuenburg	UNE	Neuchâtel	Co-directeur	Tai Monkey Project (Côte d'Ivoire)	Education & research
Klaus	Zuberbühler	Uni Neuenburg	UNE	Neuchâtel	Directeur scientifique	Budongo Conservation Field Station (Ouganda)	Industry, construction & agriculture
Klaus	Zuberbühler	Uni Neuenburg	UNE	Neuchâtel	Enseignement	Université St Andrews (UK)	Education & research
Klaus	Zuberbühler	Uni Neuenburg	UNE	Neuchâtel	Membre du conseil scientifique	Max Planck Institute of Evolutionary Anthropology	Education & research
Jean-Baptiste	Zufferey	Uni Freiburg	UFR	Fribourg	Verwaltungsrat	Eidgenössische Finanzmarktaufsicht FINMA	Politics, administration, justice system & security sector
Andreas	Züttel	ETH Lausanne	EPF	Lausanne	Cours en science de l'environnement	Université de Fribourg	Education & research
Andreas	Züttel	ETH Lausanne	EPF	Lausanne	Membre du conseil	H2 Energy, Zürich	Energy, environment & mobility
Willy	Zwaenepoel	ETH Lausanne	EPF	Lausanne	Advisory board	SPartners Asia (Hongkong)	Society, Social, Culture & Sports
Willy	Zwaenepoel	ETH Lausanne	EPF	Lausanne	Advisory Board	Midokura, Japan	Technology
Willy	Zwaenepoel	ETH Lausanne	EPF	Lausanne	Advisory Board	Nutanix Inc. San Jose	Technology
Willy	Zwaenepoel	ETH Lausanne	EPF	Lausanne	Advisory Board	Typesafe, Inc. Lausanne	Technology
Willy	Zwaenepoel	ETH Lausanne	EPF	Lausanne	Chief Scientist	BugBuster SA, Lausanne	Technology
Pascal	Zysset	Uni Bern	UBE	Bern	NA	Strassen- und Kanalisationsgenossenschaft Badweidli	Commerce, trade & services
\.


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 221
-- Name: affiliations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.affiliations_id_seq', 1377, true);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 220
-- Name: organizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organizations_id_seq', 1334, true);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 223
-- Name: professors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professors_id_seq', 1377, true);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 222
-- Name: universities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.universities_id_seq', 77, true);


--
-- TOC entry 3317 (class 2606 OID 57788)
-- Name: affiliations affiliations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliations
    ADD CONSTRAINT affiliations_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 57778)
-- Name: organizations organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 57850)
-- Name: professors professors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 57902)
-- Name: organizations unique_organization; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT unique_organization UNIQUE (organization);


--
-- TOC entry 3307 (class 2606 OID 57806)
-- Name: universities universities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 57812)
-- Name: universities universities_university_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_university_key UNIQUE (university);


--
-- TOC entry 3318 (class 2606 OID 57903)
-- Name: affiliations fk_organizations; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliations
    ADD CONSTRAINT fk_organizations FOREIGN KEY (organization) REFERENCES public.organizations(organization);


--
-- TOC entry 3319 (class 2606 OID 57894)
-- Name: affiliations fk_professors; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.affiliations
    ADD CONSTRAINT fk_professors FOREIGN KEY (professor_id) REFERENCES public.professors(id);


-- Completed on 2025-01-19 19:44:26 PKT

--
-- PostgreSQL database dump complete
--

