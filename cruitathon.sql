--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: offers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offers (
    player_id numeric(6,0),
    team_offered character varying
);


ALTER TABLE public.offers OWNER TO postgres;

--
-- Name: TABLE offers; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.offers IS 'Offers master file';


--
-- Name: recruits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recruits (
    id integer NOT NULL,
    name character varying(50),
    "position" character varying(50),
    team character varying(30),
    score numeric(6,5),
    hometown character varying(100),
    state character varying(3),
    url character varying(80)
);


ALTER TABLE public.recruits OWNER TO postgres;

--
-- Name: recruits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recruits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recruits_id_seq OWNER TO postgres;

--
-- Name: recruits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recruits_id_seq OWNED BY public.recruits.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_name character varying(20) NOT NULL,
    conference character varying(8)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: TABLE teams; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.teams IS 'List of teams in CFB';


--
-- Name: recruits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruits ALTER COLUMN id SET DEFAULT nextval('public.recruits_id_seq'::regclass);


--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offers (player_id, team_offered) FROM stdin;
1965	Alabama
1965	USC
1965	Arizona State
1965	Auburn
1965	Baylor
1965	Colorado
1965	Georgia
1965	Hawaii
1965	Louisville
1965	Miami
1965	Mississippi State
1965	Nebraska
1965	Ohio State
1965	Oklahoma
1965	Ole Miss
1965	Oregon
1965	Oregon State
1965	Penn State
1965	San Jose State
1965	TCU
1965	Tennessee
1965	Texas
1965	Texas Tech
1965	UCLA
1965	Utah
1965	Utah State
1965	Washington
1965	Washington State
1965	Arkansas
1966	Alabama
1966	Clemson
1966	LSU
1966	Duke
1966	Florida
1966	Georgia
1966	Maryland
1966	Michigan
1966	Navy
1966	Nebraska
1966	North Carolina
1966	Notre Dame
1966	Ohio State
1966	Oklahoma
1966	Penn State
1966	South Carolina
1966	Syracuse
1966	Tennessee
1966	Texas A&M
1966	Vanderbilt
1966	Virginia Tech
1966	Wake Forest
1966	West Virginia
1966	Wisconsin
1967	Alabama
1967	LSU
1967	Oklahoma
1967	Arizona State
1967	Arkansas
1967	Baylor
1967	Georgia
1967	Houston
1967	Notre Dame
1967	Oklahoma State
1967	Oregon
1967	Penn State
1967	Stanford
1967	TCU
1967	Texas
1967	Texas A&M
1967	Tulsa
1967	USC
1967	Utah
1967	Washington
1968	Alabama
1968	LSU
1968	Auburn
1968	Bowling Green
1968	Florida Atlantic
1968	Florida State
1968	Georgia
1968	Georgia Tech
1968	Kansas
1968	Kentucky
1968	Louisville
1968	Mississippi State
1968	Ole Miss
1968	Southern Miss
1968	TCU
1968	Tennessee
1968	Texas A&M
1968	Memphis
1969	Alabama
1969	Auburn
1969	Kentucky
1969	Florida
1969	Georgia Tech
1969	LSU
1969	Memphis
1969	Mississippi State
1969	Nebraska
1969	Ole Miss
1969	Oregon
1969	South Carolina
1969	Tennessee
1969	Virginia Tech
1969	Clemson
1970	Alabama
1970	Georgia
1970	Georgia Tech
1970	Oklahoma
1970	Cincinnati
1970	Duke
1970	East Carolina
1970	Florida
1970	Florida State
1970	Georgia State
1970	Indiana
1970	Jacksonville State
1970	Kent State
1970	Kentucky
1970	Louisville
1970	LSU
1970	Michigan
1970	Michigan State
1970	Nebraska
1970	Ohio State
1970	South Alabama
1970	South Carolina
1970	Tennessee
1970	Texas A&M
1970	Wake Forest
1970	West Virginia
1970	Wisconsin
1970	Coastal Carolina
1971	Alabama
1971	Georgia Tech
1971	Auburn
1971	Boston College
1971	Chattanooga
1971	Cincinnati
1971	Florida
1971	Florida Gulf Coast
1971	Florida State
1971	Georgia State
1971	Indiana
1971	Jacksonville State
1971	Kentucky
1971	Louisville
1971	LSU
1971	Maryland
1971	Memphis
1971	Mercer
1971	Miami
1971	Michigan State
1971	Missouri
1971	NC State
1971	Nebraska
1971	Purdue
1971	South Alabama
1971	South Carolina
1971	Southern Miss
1971	Syracuse
1971	Tennessee
1971	UAB
1971	UCF
1971	USF
1971	Vanderbilt
1971	Virginia
1971	Virginia Tech
1971	West Virginia
1971	Western Carolina
1971	Western Kentucky
1971	Wisconsin
1972	Alabama
1972	Florida
1972	Clemson
1972	FIU
1972	Florida Atlantic
1972	Florida State
1972	Georgia
1972	Indiana
1972	Kansas
1972	Louisville
1972	Maryland
1972	Miami
1972	Middle Tennessee State
1972	NC State
1972	Nebraska
1972	Ole Miss
1972	Oregon
1972	Pittsburgh
1972	Purdue
1972	South Carolina
1972	UCF
1973	Alabama
1973	Kentucky
1973	Auburn
1973	Florida
1973	Florida State
1973	Georgia Tech
1973	Memphis
1973	Mississippi State
1973	Oklahoma State
1973	Ole Miss
1973	Southern Miss
1973	Tennessee
1973	Clemson
1974	Alabama
1974	FIU
1974	Florida
1974	Florida Atlantic
1974	Florida State
1974	Georgia
1974	Kentucky
1974	Louisville
1974	LSU
1974	Marshall
1974	Maryland
1974	Miami
1974	Oregon
1974	Penn State
1974	Pittsburgh
1974	Southern Miss
1974	Syracuse
1974	Tennessee
1974	Texas Tech
1974	UAB
1974	UCF
1975	Alabama
1975	Arkansas
1975	Auburn
1975	Florida
1975	Florida State
1975	Georgia Tech
1975	Kentucky
1975	Louisville
1975	Michigan
1975	Mississippi State
1975	Nebraska
1975	Ohio State
1975	Ole Miss
1975	Pittsburgh
1975	South Carolina
1975	Tennessee
1975	Troy
1975	Virginia Tech
1975	Clemson
1975	Georgia
1975	Vanderbilt
1976	Alabama
1976	Nebraska
1976	Ole Miss
1976	Clemson
1976	Auburn
1976	Jacksonville State
1976	Kentucky
1976	Mississippi State
1976	Tennessee
1976	Texas A&M
1976	Southern Miss
1977	Alabama
1977	Georgia
1977	Arkansas
1977	Auburn
1977	Chattanooga
1977	Clemson
1977	East Carolina
1977	Florida
1977	Georgia Tech
1977	Jacksonville State
1977	Kent State
1977	Kentucky
1977	Louisville
1977	LSU
1977	Memphis
1977	Michigan
1977	Middle Tennessee State
1977	Mississippi State
1977	Ole Miss
1977	Oregon
1977	Samford
1977	Tennessee
1977	Texas A&M
1977	UAB
1977	Vanderbilt
1977	Alabama A&M
1977	Auburn
1977	South Alabama
1977	Troy
1977	UAB
1978	Alabama
1978	Ole Miss
1978	Georgia Tech
1978	Maryland
1978	Tennessee
1978	Nebraska
1978	South Carolina
1978	UAB
1978	Memphis
1978	Tennessee
1978	UAB
1979	Alabama
1979	Arizona State
1979	Oregon
1979	USC
1979	Clemson
1979	Houston
1979	Boston College
1979	Colorado
1979	Florida
1979	Florida State
1979	Georgia Tech
1979	Kentucky
1979	LSU
1979	Maryland
1979	Massachusetts
1979	Michigan
1979	Michigan State
1979	Ohio State
1979	Pittsburgh
1979	Temple
1979	Tennessee
1979	Vanderbilt
1979	Virginia
1979	Virginia Tech
1979	West Virginia
1980	Alabama
1980	Texas A&M
1980	Tennessee
1980	Duke
1980	Florida
1980	Florida Atlantic
1980	Georgia
1980	Georgia Tech
1980	Jacksonville State
1980	Kentucky
1980	Louisville
1980	LSU
1980	Maryland
1980	Michigan
1980	Mississippi State
1980	Nebraska
1980	Notre Dame
1980	Oregon
1980	Penn State
1980	Southern Miss
1980	Troy
1980	Virginia
1980	Clemson
1980	Florida State
1981	Alabama
1981	Georgia Tech
1981	Oregon
1981	Florida
1981	Michigan
1981	Ole Miss
1981	Auburn
1981	Eastern Kentucky
1981	Florida State
1981	Georgia
1981	LSU
1981	Memphis
1981	Mississippi State
1981	Nebraska
1981	South Carolina
1981	Southern Miss
1981	Tennessee
1981	Texas A&M
1981	Virginia Tech
1981	Clemson
1981	UAB
1982	Alabama
1982	Oklahoma
1982	South Carolina
1982	Florida
1982	LSU
1982	Ole Miss
1982	Oregon
1982	NC State
1982	Arkansas
1982	Bethune-Cookman
1982	Duke
1982	FIU
1982	Florida Atlantic
1982	Florida State
1982	Georgia
1982	Georgia Tech
1982	Kentucky
1982	Louisville
1982	Mercer
1982	Miami
1982	Michigan
1982	Mississippi State
1982	Nebraska
1982	Oregon
1982	Penn State
1982	Purdue
1982	Rutgers
1982	Syracuse
1982	Tennessee
1982	Texas
1982	UCF
1982	Vanderbilt
1982	Virginia Tech
1982	Wake Forest
1982	West Virginia
1982	Georgia Tech
2023	Alabama
2023	Auburn
2023	Georgia Tech
2023	South Carolina
2023	Alabama A&M
2023	Alabama State
2023	Arkansas
2023	Coastal Carolina
2023	Florida
2023	Florida Atlantic
2023	Florida State
2023	Illinois
2023	Jackson State
2023	Kentucky
2023	Louisville
2023	LSU
2023	Memphis
2023	Mississippi State
2023	Missouri
2023	Oklahoma
2023	Oklahoma State
2023	Ole Miss
2023	Oregon
2023	Southern Miss
2023	Tennessee
2023	Texas A&M
2023	Troy
2023	Tulane
2023	UAB
2023	Virginia
2023	Virginia Tech
2023	Wake Forest
2023	West Virginia
2023	Western Kentucky
2023	Georgia
2204	Alabama
2204	Georgia
2204	Arkansas
2204	Boston College
2204	Clemson
2204	Florida
2204	Florida State
2204	Georgia Tech
2204	Kentucky
2204	Louisville
2204	LSU
2204	Michigan
2204	Michigan State
2204	Mississippi State
2204	Nebraska
2204	North Carolina
2204	Notre Dame
2204	Ohio State
2204	Oklahoma
2204	Ole Miss
2204	Oregon
2204	South Carolina
2204	Tennessee
2204	Virginia Tech
1983	Alabama
1983	Kentucky
1983	Mississippi State
1983	Texas A&M
1983	Akron
1983	Arkansas
1983	Auburn
1983	Houston
1983	Kansas State
1983	Massachusetts
1983	Miami
1983	Nebraska
1983	New Mexico State
1983	Oklahoma
1983	Oklahoma State
1983	Ole Miss
1983	Oregon State
1983	Purdue
1983	Tennessee
1983	Texas Tech
1983	West Virginia
1984	Alabama
1984	Arizona
1984	Colorado
1984	Colorado State
1984	Houston
1984	Kentucky
1984	Lafayette
1984	Louisville
1984	Michigan
1984	Mississippi State
1984	Notre Dame
1984	Penn State
1984	South Alabama
1984	Texas A&M
1984	Utah
1984	Virginia
1985	Alabama
1985	Auburn
1985	Colorado State
1985	Florida
1985	Florida State
1985	Georgia
1985	Houston
1985	LSU
1985	Miami
1985	Mississippi State
1985	Missouri
1985	Nevada
1985	Ohio State
1985	Oklahoma
1985	Oklahoma State
1985	Ole Miss
1985	Oregon
1985	SMU
1985	South Alabama
1985	Tennessee
1985	Texas
1985	Texas A&M
1985	Tulsa
1985	USC
1985	Virginia Tech
1985	Virginia Tech
1985	Arkansas
1986	Alabama
1986	Arkansas
1986	Auburn
1986	Clemson
1986	Florida State
1986	Georgia
1986	Georgia State
1986	Georgia Tech
1986	Louisville
1986	LSU
1986	Miami
1986	Michigan
1986	Mississippi State
1986	NC State
1986	North Carolina
1986	Oklahoma
1986	Ole Miss
1986	Princeton
1986	South Carolina
1986	Texas
1986	Arizona State
1987	Alabama
1987	Iowa
1987	LSU
1987	Miami
1987	Ohio State
1987	Pittsburgh
1987	Boston College
1987	Cincinnati
1987	Kentucky
1987	Michigan
1987	Michigan State
1987	West Virginia
1987	Clemson
1987	Ohio State
1987	Penn State
1988	Arizona State
1988	Oklahoma
1988	USC
1988	Alabama
1988	Auburn
1988	Colorado
1988	Florida
1988	LSU
1988	Ohio State
1988	Oregon
1988	Penn State
1988	San Jose State
1988	Tennessee
1988	Texas A&M
1988	Utah
1988	Washington
1989	Arizona State
1989	Ohio State
1989	Penn State
1989	Wisconsin
1989	Boston College
1989	Florida
1989	LSU
1989	Michigan
1989	Notre Dame
1989	Purdue
1989	Rutgers
1989	Stanford
1989	Toledo
1989	Vanderbilt
1989	Virginia
1989	West Virginia
1989	Alabama
1989	Clemson
1990	Arizona State
1990	Florida Atlantic
1990	Oregon State
1990	Stanford
1990	USC
1990	Washington
1991	Arizona State
1991	Arizona
1991	Boise State
1991	Colorado
1991	Colorado State
1991	Kansas
1991	Kansas State
1991	Oregon State
1991	TCU
1991	Texas A&M
1991	USC
1991	UCLA
1992	Arizona State
1992	Minnesota
1992	North Carolina
1992	Arizona
1992	Ball State
1992	Bowling Green
1992	California
1992	Cincinnati
1992	Illinois
1992	Indiana
1992	Iowa
1992	Iowa State
1992	Kansas
1992	Kansas State
1992	Kent State
1992	Louisville
1992	Memphis
1992	Missouri
1992	Nebraska
1992	Oregon
1992	Purdue
1992	Rutgers
1992	San Diego State
1992	Southern Miss
1992	Toledo
1992	West Virginia
1992	Western Michigan
1992	Wisconsin
1993	Arizona State
1993	Louisville
1993	Appalachian State
1993	Bowling Green
1993	Buffalo
1993	Cincinnati
1993	Colorado State
1993	Duke
1993	East Carolina
1993	FIU
1993	Illinois
1993	Iowa State
1993	Kansas State
1993	Kent State
1993	Liberty
1993	Marshall
1993	Michigan State
1993	Nebraska
1993	North Carolina
1993	Old Dominion
1993	Pittsburgh
1993	Rutgers
1993	South Carolina
1993	Southern Miss
1993	Syracuse
1993	Temple
1993	Tennessee State
1993	Toledo
1993	Troy
1993	Tulane
1993	UCF
1993	USF
1993	Wake Forest
1993	West Virginia
1993	Western Michigan
1994	Arizona State
1994	Boise State
1994	Nebraska
1994	Arizona
1994	California
1994	Colorado State
1994	Fresno State
1994	Hawaii
1994	Kansas
1994	Oregon
1994	Pennsylvania
1994	Princeton
1994	San Diego State
1994	UCLA
1994	UNLV
1994	USC
1994	Utah
1994	Utah State
1994	Washington State
1994	Yale
1995	Arizona State
1995	North Carolina
1995	Alabama
1995	Louisville
1995	Maryland
1995	Miami
1995	Michigan State
1995	Missouri
1995	NC State
1995	Notre Dame
1995	Oregon
1995	Texas
1995	Troy
1995	Vanderbilt
1995	Arizona
1995	Boston College
1995	Charlotte
1995	Cincinnati
1995	FIU
1995	Georgia State
1995	Kentucky
1995	Marshall
1995	Nebraska
1995	Pittsburgh
1995	Southern Miss
1995	Syracuse
1995	Temple
1995	Tennessee
1995	UCF
1995	Virginia
1995	Virginia Tech
1996	Arizona State
1996	Hawaii
1996	Louisville
1996	Nevada
1996	Oregon
1996	Rutgers
1996	South Carolina
1996	Tennessee
1996	Florida
1996	LSU
1996	USC
1996	Washington
1997	Arizona State
1997	Arizona
1997	Washington State
1997	Colorado State
1997	Fresno State
1997	Hawaii
1997	Nevada
1997	New Mexico
1997	New Mexico State
1997	Sacramento State
1997	San Diego State
1997	San Jose State
1997	Tulane
1997	USC
1997	Wyoming
1997	Youngstown State
1998	Arizona State
1998	Air Force
1998	Memphis
1998	Northern Arizona
1998	Texas State
1998	UTEP
1998	Arizona
1998	Hawaii
1998	Iowa State
1998	Nebraska
1998	UNLV
1999	Arizona State
1999	Air Force
1999	Arizona
1999	Boise State
1999	California
1999	Colgate
1999	Columbia
1999	Harvard
1999	New Mexico State
1999	Northern Arizona
1999	Oregon State
1999	San Diego State
1999	UC Davis
1999	Utah State
1999	Yale
1999	Colorado State
2000	Arizona State
2000	Dartmouth
2000	Hawaii
2000	Nevada
2000	New Mexico
2000	Oregon State
2000	San Jose State
2000	UNLV
2000	USC
2000	Utah
2000	Washington State
2001	Arizona State
2001	Wyoming
2001	UNLV
2002	Arizona State
2002	Oregon
2002	Arizona
2002	Arkansas
2002	Baylor
2002	Boise State
2002	California
2002	Colorado
2002	Colorado State
2002	Florida
2002	Florida State
2002	Fresno State
2002	Georgia
2002	Indiana
2002	Kansas
2002	Kansas State
2002	Louisville
2002	LSU
2002	Michigan
2002	Michigan State
2002	Nebraska
2002	Northwestern
2002	Notre Dame
2002	Ohio State
2002	Oregon State
2002	Penn State
2002	San Diego State
2002	SMU
2002	Tennessee
2002	Texas
2002	Texas A&M
2002	UCLA
2002	USC
2002	Utah State
2002	Virginia
2002	Washington
2002	Washington State
2003	Auburn
2003	LSU
2003	South Carolina
2003	Alabama
2003	Arkansas
2003	Cincinnati
2003	Clemson
2003	Florida
2003	Florida State
2003	Georgia
2003	Georgia Tech
2003	Kentucky
2003	Louisville
2003	Maryland
2003	Miami
2003	Michigan
2003	Michigan State
2003	Minnesota
2003	Mississippi State
2003	NC State
2003	Nebraska
2003	North Carolina
2003	Notre Dame
2003	Ohio State
2003	Ole Miss
2003	Oregon
2003	Pittsburgh
2003	Purdue
2003	Southern Miss
2003	Temple
2003	Tennessee
2003	USC
2003	Virginia Tech
2003	West Virginia
2004	Auburn
2004	Alabama
2004	Appalachian State
2004	Arkansas
2004	Clemson
2004	Florida
2004	Florida State
2004	Georgia
2004	Georgia Southern
2004	Georgia Tech
2004	Kentucky
2004	Louisville
2004	LSU
2004	Miami
2004	Michigan
2004	Michigan State
2004	Mississippi State
2004	NC State
2004	South Carolina
2004	Syracuse
2004	Troy
2004	Vanderbilt
2005	Auburn
2005	Georgia Tech
2005	LSU
2005	Alabama
2005	Georgia Southern
2005	Kentucky
2005	Michigan State
2005	Ole Miss
2005	Stanford
2006	Auburn
2006	Georgia Tech
2006	Tennessee
2006	Alabama
2006	Arizona
2006	Arkansas
2006	Charlotte
2006	Chattanooga
2006	Duke
2006	FIU
2006	Florida
2006	Georgia
2006	Georgia State
2006	Indiana
2006	Kentucky
2006	Louisville
2006	LSU
2006	Michigan
2006	Mississippi State
2006	North Carolina
2006	Northwestern
2006	Notre Dame
2006	Ohio State
2006	Oklahoma
2006	Ole Miss
2006	Penn State
2006	South Carolina
2006	Stanford
2006	TCU
2006	Texas A&M
2006	Texas Tech
2006	Tulane
2006	Vanderbilt
2006	Virginia
2006	Virginia Tech
2006	Wake Forest
2006	West Virginia
2006	Western Kentucky
2007	Auburn
2007	Alabama
2007	Florida
2007	Georgia
2007	Akron
2007	Boston College
2007	Chattanooga
2007	Duke
2007	Florida State
2007	Georgia Tech
2007	Kentucky
2007	LSU
2007	Mercer
2007	Miami
2007	Mississippi State
2007	NC State
2007	Nebraska
2007	Ole Miss
2007	South Carolina
2007	Tennessee
2007	Texas A&M
2007	UCF
2007	Wake Forest
2008	Auburn
2008	South Carolina
2008	Arkansas
2008	Boston College
2008	Clemson
2008	Duke
2008	East Carolina
2008	Florida
2008	Georgia Tech
2008	Louisville
2008	Michigan State
2008	Missouri
2008	North Carolina
2008	Pittsburgh
2008	Purdue
2008	Syracuse
2008	Tennessee
2008	Virginia
2008	Virginia Tech
2008	West Virginia
2008	Florida State
2008	Georgia
2008	NC State
2008	Notre Dame
2008	Ohio State
2008	Vanderbilt
2009	Auburn
2009	Alabama
2009	Arkansas
2009	Clemson
2009	Georgia
2009	Georgia Tech
2009	Indiana
2009	Liberty
2009	LSU
2009	Memphis
2009	Mississippi State
2009	Ole Miss
2009	Tennessee
2009	Texas A&M
2009	Troy
2009	UAB
2009	USC
2009	Virginia
2009	Virginia Tech
2009	Nebraska
2010	Auburn
2010	Miami
2010	Baylor
2010	Boston College
2010	Clemson
2010	Florida
2010	Florida State
2010	Georgia
2010	Georgia Tech
2010	Kentucky
2010	Louisville
2010	Michigan
2010	Missouri
2010	NC State
2010	Nebraska
2010	North Carolina
2010	Ole Miss
2010	Penn State
2010	Rutgers
2010	South Alabama
2010	South Carolina
2010	Texas A&M
2010	Toledo
2010	West Virginia
2011	Auburn
2011	Ohio State
2011	Texas
2011	USC
2011	Alabama
2011	Arkansas
2011	Baylor
2011	Clemson
2011	Colorado
2011	Colorado State
2011	Florida
2011	Florida State
2011	Georgia
2011	Georgia Tech
2011	Grambling State
2011	Illinois
2011	Kansas
2011	Kansas State
2011	LSU
2011	Miami
2011	Michigan
2011	Michigan State
2011	Missouri
2011	Nebraska
2011	North Texas
2011	Notre Dame
2011	Oklahoma State
2011	Ole Miss
2011	Purdue
2011	SMU
2011	Stanford
2011	TCU
2011	Tennessee
2011	Texas A&M
2011	Texas Tech
2011	Virginia Tech
2012	Auburn
2012	Texas A&M
2012	LSU
2012	Oklahoma
2012	Alabama State
2012	Central Michigan
2012	Duke
2012	Florida Atlantic
2012	Georgia Tech
2012	Indiana
2012	Iowa
2012	Jacksonville State
2012	Kansas
2012	Kentucky
2012	Louisiana
2012	Louisville
2012	Memphis
2012	Middle Tennessee State
2012	Mississippi State
2012	Nebraska
2012	Ole Miss
2012	Purdue
2012	Samford
2012	South Alabama
2012	TCU
2012	Tennessee
2012	Tennessee State
2012	Toledo
2012	Troy
2012	UAB
2012	UCF
2012	Vanderbilt
2012	Virginia
2012	Virginia Tech
2012	West Virginia
2012	Alabama
2013	Auburn
2013	Kentucky
2013	LSU
2013	Alabama
2013	Arkansas
2013	Colorado
2013	Houston
2013	Kansas State
2013	Louisiana
2013	Mississippi State
2013	Nebraska
2013	Oklahoma
2013	SMU
2013	Tennessee
2013	Texas A&M
2013	Texas State
2013	Texas Tech
2013	Troy
2013	Utah
2014	Auburn
2014	Florida State
2014	Kentucky
2014	Louisville
2014	Nebraska
2014	South Carolina
2014	Vanderbilt
2014	Clemson
2014	Georgia
2014	Georgia Tech
2015	Auburn
2015	TCU
2015	Arizona State
2015	Buffalo
2015	California
2015	Florida
2015	Florida State
2015	Indiana
2015	Kansas State
2015	Old Dominion
2015	Oregon
2015	South Dakota
2015	UCLA
2015	USC
2015	Utah
2015	Washington State
2015	Youngstown State
2016	Auburn
2016	Oregon
2016	Arizona State
2016	Nevada
2016	Utah
2017	Auburn
2017	Georgia Tech
2017	Boston College
2017	Cincinnati
2017	Coastal Carolina
2017	East Carolina
2017	Florida
2017	Florida State
2017	Georgia State
2017	Indiana
2017	Louisiana
2017	Louisville
2017	Michigan State
2017	Missouri
2017	Ole Miss
2017	Pittsburgh
2017	Purdue
2017	South Alabama
2017	Troy
2017	Vanderbilt
2017	Wake Forest
2017	West Virginia
2018	Auburn
2018	Kansas
2018	LSU
2018	Mississippi State
2018	Rutgers
2018	Virginia Tech
2018	Alabama
2018	Clemson
2018	Florida State
2018	Georgia
2018	Georgia Tech
2018	LSU
2018	Troy
2019	Auburn
2019	Florida
2019	USC
2019	Arkansas
2019	Cincinnati
2019	Florida Atlantic
2019	Florida State
2019	Georgia
2019	Georgia Tech
2019	Indiana
2019	Kentucky
2019	Lehigh
2019	Maryland
2019	Miami
2019	Michigan
2019	Notre Dame
2019	Ole Miss
2019	Oregon
2019	Penn State
2019	Pittsburgh
2019	Purdue
2019	Texas Tech
2019	Wagner
2019	West Virginia
2019	Wisconsin
2020	Auburn
2020	Georgia Tech
2020	Jackson State
2020	Jacksonville State
2020	Memphis
2020	Samford
2020	South Alabama
2020	Southern Miss
2020	Tennessee
2020	Troy
2020	Tulane
2020	Georgia
2020	Ole Miss
2020	Tulane
2021	Auburn
2021	South Carolina
2021	TCU
2021	Texas A&M
2022	Auburn
2022	Bowling Green
2022	Central Michigan
2022	Charlotte
2022	Coastal Carolina
2022	Cornell
2022	Dartmouth
2022	Duke
2022	Florida Atlantic
2022	Harvard
2022	Kent State
2022	Louisiana
2022	Southern Miss
2022	Temple
2022	Toledo
2022	UCF
2022	USF
2022	Western Michigan
2022	Duke
2022	Florida State
2022	West Virginia
2024	Auburn
2024	FIU
2024	Florida
2024	Georgia Southern
2024	Georgia State
2024	Georgia Tech
2024	Kentucky
2024	Mercer
2024	Ole Miss
2024	South Carolina
2024	Tennessee
2024	UCF
2024	USF
2024	Western Kentucky
2024	Florida State
2024	Georgia
2024	North Carolina
2025	Auburn
2025	Alabama
2025	Ole Miss
2025	Kansas
2025	LSU
2025	Mississippi State
2025	South Carolina
2025	Southern Miss
2025	Georgia
2025	Nebraska
2026	Auburn
2026	Kentucky
2026	Miami
2026	Arizona State
2026	Cincinnati
2026	Coastal Carolina
2026	East Carolina
2026	Florida
2026	Georgia Southern
2026	Georgia State
2026	Georgia Tech
2026	Kansas
2026	Kent State
2026	Liberty
2026	Louisville
2026	Missouri
2026	Ole Miss
2026	Rutgers
2026	South Carolina
2026	Syracuse
2026	Tennessee
2026	Tulane
2026	UCF
2026	USC
2026	USF
2026	Vanderbilt
2026	Virginia
2026	Western Kentucky
2027	California
2027	Arizona State
2027	Alabama
2027	Arizona
2027	Arkansas
2027	Auburn
2027	Boise State
2027	Colorado
2027	Florida
2027	Florida State
2027	Georgia
2027	Georgia Tech
2027	Kansas
2027	Louisville
2027	LSU
2027	Miami
2027	Michigan
2027	Missouri
2027	NC State
2027	Nebraska
2027	Notre Dame
2027	Ohio State
2027	Oregon
2027	Oregon State
2027	Penn State
2027	TCU
2027	Tennessee
2027	Texas
2027	UCLA
2027	USC
2027	Utah
2027	Washington State
2027	West Virginia
2027	Wisconsin
2027	Stanford
2027	Washington
2028	California
2028	Fresno State
2028	Alabama
2028	Arizona State
2028	Arkansas
2028	Colorado
2028	Colorado State
2028	Indiana
2028	Iowa State
2028	Kansas State
2028	Oregon State
2028	Purdue
2028	Rice
2028	San Diego State
2028	San Jose State
2028	SMU
2028	Southern Miss
2028	Utah
2028	Utah State
2028	Washington State
2028	Yale
2028	Florida State
2028	New Mexico
2028	UCLA
2028	USC
2028	Washington
2029	California
2029	Oregon
2029	Arizona State
2029	Oregon State
2029	Fresno State
2029	Hawaii
2029	Nevada
2029	San Jose State
2030	California
2030	Air Force
2030	Boston College
2030	Colorado State
2030	Duke
2030	Houston
2030	Kansas
2030	Liberty
2030	Michigan
2030	Nevada
2030	New Mexico
2030	North Texas
2030	Northwestern
2030	Notre Dame
2030	Ole Miss
2030	Oregon State
2030	Princeton
2030	Rhode Island
2030	Rice
2030	Rutgers
2030	Southern Miss
2030	Texas State
2030	Texas Tech
2030	Tulane
2030	Tulsa
2030	Utah
2030	UTSA
2030	Washington State
2031	California
2031	USC
2031	Arizona State
2031	Boston College
2031	Colorado State
2031	Florida
2031	Oregon
2031	Oregon State
2031	San Jose State
2031	Utah
2031	Utah State
2031	Wyoming
2031	Alabama
2031	UCLA
2032	California
2032	Boston College
2032	Duke
2032	Iowa
2032	Michigan
2032	Nebraska
2032	Oregon
2032	Penn State
2032	Tennessee
2032	Utah
2032	Virginia
2033	California
2033	Air Force
2033	Army
2033	Brigham Young
2033	Colorado State
2033	Cornell
2033	Dartmouth
2033	Hawaii
2033	Iowa State
2033	Navy
2033	Nebraska
2033	Nevada
2033	Oregon State
2033	Pennsylvania
2033	San Diego State
2033	Tulane
2033	UC Davis
2033	Utah State
2033	Wyoming
2033	Brown
2033	California
2033	Colorado
2033	Cornell
2033	Fresno State
2033	Montana
2033	Navy
2033	Rice
2033	Yale
2034	California
2034	UCLA
2034	Boise State
2034	Cal Poly
2034	Colorado State
2034	Fresno State
2034	Hawaii
2034	Howard
2034	Sacramento State
2034	San Diego State
2034	San Jose State
2034	UNLV
2035	California
2035	Air Force
2035	Oregon
2035	Oregon State
2035	Utah
2035	Stanford
2036	California
2036	Arizona
2036	Fresno State
2036	Nevada
2036	Oregon
2036	San Diego State
2036	San Jose State
2036	UCLA
2036	Utah
2036	Washington
2036	Colorado
2036	USC
2037	California
2037	Oregon
2037	Arizona
2037	Brigham Young
2037	Nebraska
2037	Oregon State
2037	USC
2037	Utah
2037	Hawaii
2038	California
2038	Arkansas
2038	Boston College
2038	Colorado
2038	Columbia
2038	Furman
2038	Illinois
2038	Louisiana
2038	Pennsylvania
2038	SMU
2038	Tulane
2038	Vanderbilt
2039	California
2039	Arizona
2039	Arizona State
2039	Colorado
2039	UCLA
2039	USC
2039	Washington
2040	California
2040	Arizona
2040	Cal Poly
2040	Oregon
2040	UNLV
2040	Washington State
2040	Boise State
2040	Notre Dame
2040	Stanford
2040	Washington
2041	California
2041	Oregon State
2041	San Jose State
2041	Utah State
2041	Fresno State
2042	California
2042	Princeton
2042	Air Force
2042	Arizona
2042	Arizona State
2042	Arkansas
2042	Army
2042	Colorado
2042	Harvard
2042	Iowa State
2042	Memphis
2042	Michigan State
2042	Nebraska
2042	Northern Arizona
2042	Purdue
2042	San Diego State
2042	UNLV
2042	Utah
2042	Yale
2042	Brigham Young
2042	Kansas State
2042	Louisville
2042	North Carolina
2042	UCLA
2042	Washington
2043	California
2043	Air Force
2043	Arizona
2043	Boise State
2043	Colorado
2043	Nebraska
2043	Oregon State
2043	Sacramento State
2043	Utah State
2043	Eastern Washington
2043	San Jose State
2044	California
2044	Arizona
2044	Boise State
2044	Central Michigan
2044	Hawaii
2044	Oregon
2044	Oregon State
2044	San Jose State
2044	UNLV
2044	Virginia
2044	Stanford
2044	UCLA
2044	Utah
2045	California
2045	Boise State
2045	Hawaii
2045	New Mexico
2045	Oregon State
2045	UTEP
2045	Washington State
2046	California
2046	Utah State
2047	California
2047	Arizona
2047	Arizona State
2047	Army
2047	Colorado
2047	Columbia
2047	Fresno State
2047	Kansas State
2047	New Mexico
2047	Oregon State
2047	Pennsylvania
2047	UC Davis
2047	Utah State
2047	Alabama
2047	Arkansas
2047	Auburn
2047	South Carolina
2047	Stanford
2047	UCLA
2047	UNLV
2047	USC
2047	Utah
2047	Vanderbilt
2047	Washington
2132	California
2132	William & Mary
2132	Boise State
2132	Fresno State
2132	Harvard
2132	Montana State
2132	Princeton
2132	UCLA
2132	Washington State
2132	Yale
2048	California
2048	Abilene Christian
2048	Army
2048	Montana State
2048	New Mexico State
2048	Northern Arizona
2048	South Dakota State
2048	Arizona State
2048	UCLA
2049	California
2049	Arizona State
2049	Colorado State
2049	Nevada
2049	Utah
2049	Utah State
2049	Michigan
2049	Washington
2049	Washington State
2050	California
2050	Fresno State
2050	Kansas State
2050	Nevada
2050	Oregon State
2050	San Diego State
2050	UNLV
2050	Utah State
2050	Wyoming
2050	Yale
2050	Oregon
2050	UCLA
2051	Clemson
2051	Alabama
2051	Auburn
2051	Boston College
2051	Duke
2051	Florida
2051	Florida State
2051	Georgia
2051	Georgia Tech
2051	Kentucky
2051	Louisville
2051	Maryland
2051	Miami
2051	Michigan
2051	Michigan State
2051	Nebraska
2051	North Carolina
2051	Notre Dame
2051	Ohio
2051	Ohio State
2051	Oklahoma
2051	Oregon
2051	Penn State
2051	Pittsburgh
2051	Purdue
2051	Rutgers
2051	South Carolina
2051	Syracuse
2051	Tennessee
2051	Texas A&M
2051	USC
2051	Virginia
2051	Virginia Tech
2051	West Virginia
2051	Wisconsin
2052	Clemson
2052	Alabama
2052	Auburn
2052	Florida
2052	Georgia
2052	Georgia Tech
2052	Kentucky
2052	Louisville
2052	Michigan
2052	Nebraska
2052	Ole Miss
2052	Penn State
2052	South Carolina
2052	Tennessee
2052	Virginia Tech
2052	Wisconsin
2052	Arkansas
2052	Oregon
2053	Clemson
2053	Alabama
2053	Arizona
2053	Arizona State
2053	Arkansas
2053	Auburn
2053	Brigham Young
2053	California
2053	Florida
2053	Florida State
2053	Fresno State
2053	Georgia
2053	Louisville
2053	LSU
2053	Michigan
2053	Ohio State
2053	Oklahoma
2053	Ole Miss
2053	Oregon
2053	Oregon State
2053	San Jose State
2053	South Carolina
2053	Tennessee
2053	Texas
2053	Texas A&M
2053	USC
2053	Utah
2053	Washington
2053	Washington State
2053	West Virginia
2054	Clemson
2054	Alabama
2054	Arkansas
2054	Auburn
2054	Florida
2054	Florida State
2054	Georgia
2054	Miami
2054	Michigan
2054	Nebraska
2054	North Carolina
2054	Ohio State
2054	Oregon
2054	South Carolina
2054	Syracuse
2054	Tennessee
2054	Texas
2055	Clemson
2055	Georgia
2055	NC State
2055	Duke
2055	Florida
2055	North Carolina
2055	South Carolina
2055	Tennessee
2056	Clemson
2056	Alabama
2056	Arizona
2056	Auburn
2056	Colorado
2056	Duke
2056	FIU
2056	Florida
2056	Florida State
2056	Georgia
2056	Illinois
2056	Kansas
2056	Kentucky
2056	Louisville
2056	Maryland
2056	Miami
2056	Michigan
2056	Michigan State
2056	Mississippi State
2056	Nebraska
2056	North Carolina
2056	Notre Dame
2056	Ohio State
2056	Oklahoma
2056	Ole Miss
2056	Oregon
2056	Penn State
2056	Purdue
2056	Rutgers
2056	South Carolina
2056	Tennessee
2056	Texas
2056	UCF
2056	USF
2056	Valdosta State
2056	Virginia Tech
2056	Georgia Tech
2057	Clemson
2057	Auburn
2057	North Carolina
2057	Charlotte
2057	Colorado State
2057	Duke
2057	Florida
2057	Georgia
2057	Kent State
2057	Kentucky
2057	LSU
2057	Miami
2057	Michigan
2057	NC State
2057	Nebraska
2057	Notre Dame
2057	Oklahoma
2057	Purdue
2057	South Carolina
2057	Tennessee
2057	Virginia
2057	Virginia Tech
2057	Wake Forest
2057	West Virginia
2057	Wisconsin
2057	Penn State
2058	Clemson
2058	Auburn
2058	Cincinnati
2058	Eastern Kentucky
2058	Kentucky
2058	Louisville
2058	Northwestern
2058	Notre Dame
2058	Purdue
2058	Tennessee
2058	Vanderbilt
2058	Virginia Tech
2058	West Virginia
2058	Alabama
2058	Miami (OH)
2058	Penn State
2058	South Carolina
2059	Clemson
2059	Alabama
2059	Arizona
2059	Baylor
2059	Boston College
2059	Buffalo
2059	Connecticut
2059	Florida
2059	Florida Atlantic
2059	Florida State
2059	Georgia
2059	Iowa
2059	Kentucky
2059	LSU
2059	Maryland
2059	Michigan
2059	Michigan State
2059	Nebraska
2059	North Carolina
2059	Ohio State
2059	Penn State
2059	Pittsburgh
2059	Rutgers
2059	San Jose State
2059	Syracuse
2059	Tennessee
2059	Texas A&M
2059	Virginia
2059	Virginia Tech
2059	Wisconsin
2060	Clemson
2060	Auburn
2060	LSU
2060	Tennessee
2060	Alabama
2060	Arkansas
2060	Cincinnati
2060	Florida
2060	Florida Atlantic
2060	Florida State
2060	Georgia
2060	Georgia Tech
2060	Kentucky
2060	Memphis
2060	Mississippi State
2060	Nebraska
2060	Oklahoma
2060	Ole Miss
2060	Oregon
2060	South Carolina
2060	Texas A&M
2060	Virginia
2060	Virginia Tech
2060	West Virginia
2060	Georgia Tech
2061	Clemson
2061	Georgia Tech
2061	Alabama
2061	Florida
2061	Florida State
2061	Georgia
2061	Louisville
2061	Maryland
2061	Memphis
2061	Ohio State
2061	South Alabama
2061	Tennessee
2061	Virginia
2062	Clemson
2062	Alabama
2062	Arizona
2062	Arkansas
2062	Baylor
2062	Duke
2062	Florida
2062	Georgia
2062	Houston
2062	LSU
2062	Miami
2062	Michigan
2062	Mississippi State
2062	Nebraska
2062	New Mexico
2062	Notre Dame
2062	Ohio State
2062	Oklahoma
2062	Oklahoma State
2062	Ole Miss
2062	Oregon
2062	Penn State
2062	Rutgers
2062	San Diego State
2062	SMU
2062	South Carolina
2062	Stanford
2062	Tennessee
2062	Texas A&M
2062	Vanderbilt
2062	Wisconsin
2063	Clemson
2063	Appalachian State
2063	Auburn
2063	Boston College
2063	Colorado
2063	Duke
2063	East Carolina
2063	Florida State
2063	Georgia
2063	Georgia Tech
2063	Louisville
2063	Mississippi State
2063	NC State
2063	North Carolina
2063	Penn State
2063	Syracuse
2063	Tennessee
2063	Vanderbilt
2063	Virginia
2063	Virginia Tech
2063	Wake Forest
2063	West Virginia
2064	Clemson
2064	Alabama
2064	Auburn
2064	Florida
2064	Georgia
2064	LSU
2064	Michigan
2064	Ole Miss
2064	Penn State
2064	South Carolina
2064	Tennessee
2064	Vanderbilt
2064	Georgia Tech
2065	Clemson
2065	Stanford
2065	Alabama
2065	Auburn
2065	Florida
2065	Georgia
2065	Georgia Tech
2065	Indiana
2065	Kentucky
2065	Louisville
2065	LSU
2065	Memphis
2065	Miami
2065	Michigan
2065	Missouri
2065	Nebraska
2065	Notre Dame
2065	Ohio State
2065	South Carolina
2065	Tennessee
2065	Texas A&M
2065	UCF
2065	Wake Forest
2065	Wisconsin
2066	Clemson
2066	Alabama
2066	Auburn
2066	Florida
2066	Florida State
2066	Georgia
2066	Georgia Tech
2066	Louisville
2066	LSU
2066	Memphis
2066	Mississippi State
2066	Nebraska
2066	Notre Dame
2066	Ohio State
2066	Oklahoma
2066	Ole Miss
2066	Purdue
2066	South Carolina
2066	Tennessee
2066	Vanderbilt
2066	Virginia
2066	Virginia Tech
2066	Arkansas
2066	Florida State
2066	Georgia
2066	Kentucky
2067	Clemson
2067	Maryland
2067	Memphis
2067	NC State
2067	North Carolina
2067	Ole Miss
2067	Tennessee
2067	Virginia
2067	Wake Forest
2067	Wisconsin
2067	Furman
2067	Georgia Tech
2067	South Carolina
2067	Tulane
2067	Vanderbilt
2205	Clemson
2205	Nebraska
2205	Alabama
2205	Auburn
2205	Buffalo
2205	Coastal Carolina
2205	Florida
2205	Florida Atlantic
2205	Florida State
2205	Illinois
2205	Indiana
2205	Iowa
2205	Iowa State
2205	Kansas
2205	Kentucky
2205	Miami
2205	Minnesota
2205	Ole Miss
2205	Oregon
2205	Penn State
2205	Pittsburgh
2205	Syracuse
2205	Tennessee
2205	Texas A&M
2205	UCF
2205	Virginia
2205	Washington State
2205	West Virginia
2068	Clemson
2068	Appalachian State
2068	Auburn
2068	Central Michigan
2068	Duke
2068	East Carolina
2068	Georgia Southern
2068	Georgia Tech
2068	Kent State
2068	Michigan
2068	NC State
2068	Nebraska
2068	Notre Dame
2068	Purdue
2068	South Carolina
2068	Texas
2068	West Virginia
2069	Clemson
2069	Air Force
2069	Appalachian State
2069	Cincinnati
2069	Coastal Carolina
2069	Columbia
2069	Cornell
2069	Dartmouth
2069	Eastern Michigan
2069	FIU
2069	Florida A&M
2069	Florida Atlantic
2069	Florida State
2069	Georgia Southern
2069	Georgia State
2069	Harvard
2069	Jacksonville State
2069	Louisville
2069	Marshall
2069	Maryland
2069	Memphis
2069	Miami
2069	NC State
2069	Ole Miss
2069	Penn State
2069	Princeton
2069	Rice
2069	Rutgers
2069	South Alabama
2069	South Carolina
2069	Southern Miss
2069	Tennessee State
2069	Troy
2069	Tulane
2069	UAB
2069	UCF
2069	USF
2069	West Virginia
2069	William & Mary
2069	Yale
2069	Ole Miss
2070	Clemson
2070	Coastal Carolina
2070	Jacksonville State
2070	Nevada
2070	Wake Forest
2070	Arizona State
2070	Miami
2070	Oklahoma
2070	SMU
2071	Clemson
2071	Georgia Tech
2071	Air Force
2071	Appalachian State
2071	Arkansas State
2071	Boston College
2071	Chattanooga
2071	Coastal Carolina
2071	Dartmouth
2071	Eastern Kentucky
2071	Florida Atlantic
2071	Georgia State
2071	Liberty
2071	Louisiana
2071	Louisville
2071	Maryland
2071	Miami
2071	Navy
2071	South Alabama
2071	Southern Miss
2071	Troy
2071	Tulane
2071	UAB
2071	Wake Forest
2072	Colorado
2072	Kansas
2072	Alabama
2072	Arkansas
2072	Auburn
2072	Georgia
2072	Houston
2072	LSU
2072	Nebraska
2072	Tennessee
2072	Texas
2072	Texas A&M
2072	Tulane
2072	UTSA
2072	Virginia
2072	Western Kentucky
2072	Georgia Tech
2073	Colorado
2073	Arizona State
2073	Notre Dame
2073	Purdue
2073	Alabama
2073	Arkansas
2073	Baylor
2073	Boston College
2073	Duke
2073	Hawaii
2073	Illinois
2073	Kansas
2073	Kansas State
2073	Miami
2073	Michigan State
2073	Minnesota
2073	Missouri
2073	North Texas
2073	Northwestern
2073	Ohio State
2073	Oklahoma State
2073	Ole Miss
2073	Rutgers
2073	SMU
2073	Southern Miss
2073	TCU
2073	Texas Tech
2073	Toledo
2073	Tulane
2073	Tulsa
2073	Utah
2073	Washington State
2074	Colorado
2074	Boston College
2074	Houston
2074	Kansas
2074	Mississippi State
2074	Missouri
2074	Nebraska
2074	Nevada
2074	North Texas
2074	SMU
2074	Syracuse
2074	TCU
2074	Texas Tech
2074	Vanderbilt
2074	Washington State
2075	Colorado
2075	Michigan
2075	Arizona
2075	Arizona State
2075	California
2075	Iowa State
2075	Louisville
2075	Nebraska
2075	Northern Arizona
2075	Oklahoma State
2075	Ole Miss
2075	Oregon
2075	Oregon State
2075	Purdue
2075	San Diego State
2075	Texas A&M
2075	UCLA
2075	USC
2075	Utah
2075	Washington State
2075	Wisconsin
2075	Washington
2076	Colorado
2076	LSU
2076	Arizona
2076	Boston College
2076	Florida
2076	Georgia
2076	Oregon
2076	Oregon State
2076	USC
2077	Colorado
2077	Ohio State
2077	Alabama
2077	Arkansas
2077	Colorado State
2077	Florida
2077	Florida State
2077	Georgia
2077	Illinois
2077	Kentucky
2077	Louisville
2077	LSU
2077	Memphis
2077	Miami
2077	Michigan
2077	Michigan State
2077	Mississippi State
2077	Notre Dame
2077	Ole Miss
2077	Oregon
2077	Pittsburgh
2077	South Carolina
2077	Tennessee
2077	Texas
2077	Texas A&M
2077	Utah
2077	Vanderbilt
2077	Washington State
2077	Washington State
2077	Clemson
2077	Memphis
2078	Colorado
2078	Boston College
2078	Connecticut
2078	Iowa
2078	Louisville
2078	LSU
2078	Maryland
2078	Massachusetts
2078	Ole Miss
2078	Pittsburgh
2078	Rutgers
2078	Syracuse
2078	TCU
2078	Wisconsin
2078	Arizona State
2078	Georgia Tech
2078	Tulane
2079	Colorado
2079	California
2079	Kansas State
2079	LSU
2079	Nebraska
2079	UCLA
2080	Colorado
2080	Arizona
2080	Arizona State
2080	Boise State
2080	Colorado State
2080	Duke
2080	Indiana
2080	Iowa State
2080	Kansas
2080	Kansas State
2080	Michigan
2080	Missouri
2080	Nebraska
2080	Oklahoma State
2080	Purdue
2080	Utah
2080	Virginia
2080	Washington State
2080	Wyoming
2080	Yale
2080	Auburn
2080	Texas A&M
2081	Colorado
2081	Arkansas
2081	Arkansas State
2081	Baylor
2081	Nevada
2081	Tulsa
2081	UTSA
2082	Colorado
2082	Maryland
2082	Arkansas State
2082	Bethune-Cookman
2082	Louisiana-Monroe
2083	Colorado
2083	Arizona
2083	Auburn
2083	Boise State
2083	Brigham Young
2083	Colorado State
2083	Fresno State
2083	Nevada
2083	New Mexico
2083	San Diego State
2083	San Jose State
2083	Utah State
2083	Wyoming
2083	Yale
2083	Arizona
2083	California
2083	Oregon State
2083	Utah
2083	Washington
2083	Washington State
2084	Colorado
2084	Air Force
2084	Army
2084	Boston College
2084	Colorado State
2084	Duke
2084	FIU
2084	Houston Baptist
2084	Illinois State
2084	Incarnate Word
2084	Iowa State
2084	Kansas
2084	Liberty
2084	Oklahoma State
2084	Rice
2084	Southern Miss
2084	Stephen F. Austin
2084	Texas State
2084	Tulane
2084	Utah
2084	UTEP
2084	UTSA
2084	West Virginia
2084	SMU
2085	Colorado
2085	Baylor
2085	Central Michigan
2085	Coastal Carolina
2085	East Carolina
2085	Florida Atlantic
2085	Georgia State
2085	Jacksonville State
2085	Kansas State
2085	Kent State
2085	Kentucky
2085	Liberty
2085	Louisville
2085	Memphis
2085	Michigan State
2085	Troy
2085	Tulane
2085	UAB
2085	USF
2085	Wake Forest
2085	Western Kentucky
2085	Georgia Tech
2085	Wisconsin
2086	Colorado
2086	Kansas
2086	Texas Tech
2086	Boise State
2086	Boston College
2086	Connecticut
2086	Georgia Tech
2086	Illinois
2086	Kansas State
2086	Louisiana Tech
2086	Nevada
2086	North Texas
2086	Purdue
2086	San Diego State
2086	SMU
2086	Southern Miss
2086	Troy
2086	Tulane
2086	Tulsa
2086	Utah
2086	Wake Forest
2086	Washington State
2086	Arkansas
2086	Baylor
2086	Florida
2086	Iowa State
2086	Oklahoma State
2086	Ole Miss
2086	TCU
2086	Texas
2086	Texas State
2086	UTSA
2087	Colorado
2087	North Texas
2087	Air Force
2087	Arizona State
2087	Arkansas
2087	Arkansas State
2087	Boise State
2087	Colorado State
2087	Houston
2087	Lamar
2087	Louisiana
2087	Louisiana Tech
2087	Louisiana-Monroe
2087	Memphis
2087	Oklahoma State
2087	Oregon
2087	Southern Miss
2087	Tulsa
2087	Virginia
2087	Louisiana Tech
2087	TCU
2088	Colorado
2088	Southern Miss
2088	West Virginia
2088	Auburn
2088	Liberty
2088	Louisiana-Monroe
2088	Memphis
2088	Troy
2088	UAB
2089	Colorado
2089	Illinois
2090	Colorado
2091	Colorado
2091	Nevada
2091	Portland State
2091	San Jose State
2091	Fresno State
2091	USC
2091	Washington
2092	Colorado
2092	Air Force
2092	Oregon State
2092	UC Davis
2093	Colorado
2093	Air Force
2093	Colorado State
2093	Columbia
2093	Northern Colorado
2093	Wyoming
2093	Kansas State
2093	Utah
2094	Florida
2094	Georgia
2094	Alabama
2094	Arkansas
2094	Charlotte
2094	Cincinnati
2094	Clemson
2094	East Tennessee State
2094	FIU
2094	Florida Atlantic
2094	Indiana
2094	Kansas
2094	Miami
2094	Mississippi State
2094	NC State
2094	Nebraska
2094	North Carolina
2094	Ohio
2094	Ole Miss
2094	Pittsburgh
2094	Rutgers
2094	Southern Miss
2094	Syracuse
2094	Tennessee
2094	Texas A&M
2094	USF
2094	Virginia
2094	Virginia Tech
2094	West Virginia
2094	Western Michigan
2095	Florida
2095	Penn State
2095	Auburn
2095	Boston College
2095	Cincinnati
2095	Clemson
2095	Colorado
2095	FIU
2095	Florida Atlantic
2095	Florida State
2095	Georgia
2095	Kentucky
2095	Louisville
2095	Maryland
2095	Miami
2095	Michigan
2095	Missouri
2095	Nebraska
2095	Ohio State
2095	Oklahoma
2095	Ole Miss
2095	Oregon
2095	Pittsburgh
2095	Purdue
2095	South Carolina
2095	Southern Miss
2095	Tennessee
2095	Texas
2095	Wisconsin
2096	Florida
2096	Arkansas
2096	Texas
2096	Alabama
2096	Auburn
2096	Baylor
2096	Boston College
2096	Colorado
2096	Colorado
2096	Georgia
2096	Georgia Tech
2096	Houston
2096	Illinois
2096	Illinois State
2096	Kansas
2096	Kansas State
2096	Louisiana Tech
2096	Louisville
2096	LSU
2096	Miami
2096	Minnesota
2096	Nebraska
2096	North Texas
2096	Notre Dame
2096	Oklahoma
2096	Penn State
2096	SMU
2096	TCU
2096	Tennessee
2096	Texas Tech
2096	Tulane
2096	UCF
2096	Louisiana
2096	Texas State
2097	Florida
2097	Texas
2097	Alabama
2097	Auburn
2097	Bowling Green
2097	Clemson
2097	Duke
2097	Florida State
2097	Georgia
2097	Liberty
2097	LSU
2097	Marshall
2097	Miami
2097	Michigan
2097	North Carolina
2097	Notre Dame
2097	Penn State
2097	Stanford
2097	UCF
2097	Virginia
2097	West Virginia
2098	Florida
2098	South Carolina
2098	Auburn
2098	FIU
2098	Florida State
2098	Illinois
2098	Jackson State
2098	Kentucky
2098	Louisville
2098	LSU
2098	Maryland
2098	Miami
2098	Mississippi State
2098	Ohio State
2098	Penn State
2098	UCF
2098	USF
2099	Florida
2099	North Carolina
2099	Oklahoma
2099	Virginia Tech
2099	Duke
2099	East Carolina
2099	Georgia Tech
2099	Liberty
2099	Louisville
2099	Marshall
2099	Maryland
2099	Miami
2099	Michigan
2099	Nebraska
2099	Notre Dame
2099	Penn State
2099	Pittsburgh
2099	Rutgers
2099	TCU
2099	Tennessee
2099	Virginia
2100	Florida
2100	Bethune-Cookman
2100	Boston College
2100	FIU
2100	Florida Atlantic
2100	Georgia
2100	Georgia Southern
2100	Jacksonville State
2100	Louisville
2100	Michigan
2100	Penn State
2100	Rutgers
2100	South Alabama
2100	Southern Miss
2100	UCF
2100	USF
2100	Virginia Tech
2101	Florida
2101	Penn State
2101	Arkansas
2101	Auburn
2101	Georgia
2101	Kentucky
2101	Louisville
2101	Miami
2101	Nebraska
2101	Tennessee
2101	UCF
2101	Virginia
2101	Florida State
2102	Florida
2102	Florida State
2102	Georgia
2102	LSU
2102	Mississippi State
2102	Southern Miss
2102	Tennessee
2102	Texas A&M
2102	USF
2102	Miami
2103	Florida
2103	Baylor
2103	Miami
2103	Tennessee
2103	Arkansas
2103	Auburn
2103	Boston College
2103	Bowling Green
2103	Chattanooga
2103	Florida Atlantic
2103	Florida State
2103	Georgia
2103	Georgia State
2103	Georgia Tech
2103	Kansas
2103	Kentucky
2103	Louisville
2103	LSU
2103	Marshall
2103	Michigan
2103	Mississippi State
2103	Missouri
2103	Nebraska
2103	North Carolina
2103	Ohio
2103	Ohio State
2103	Ole Miss
2103	Oregon
2103	Penn State
2103	Purdue
2103	South Alabama
2103	South Carolina
2103	Texas
2103	Texas A&M
2103	Troy
2103	UCF
2103	USC
2103	West Virginia
2103	Oklahoma State
2103	UCLA
2104	Florida
2104	Miami
2104	Alabama
2104	Baylor
2104	Bowling Green
2104	Florida Atlantic
2104	Indiana
2104	Jackson State
2104	Louisville
2104	NC State
2104	Nebraska
2104	Penn State
2104	Pittsburgh
2104	Purdue
2104	Syracuse
2104	Wake Forest
2105	Florida
2105	Georgia
2105	South Carolina
2105	Auburn
2105	Florida State
2105	Miami
2105	Michigan
2105	USF
2106	Florida
2106	LSU
2106	Alabama
2106	Georgia
2106	Houston
2106	Kansas
2106	Louisiana
2106	Louisiana Tech
2106	Louisiana-Monroe
2106	Oklahoma
2106	Ole Miss
2106	South Alabama
2106	Southern Miss
2106	Tennessee
2106	Texas
2106	Texas A&M
2106	Tulane
2107	Florida
2107	Notre Dame
2107	Penn State
2107	Tennessee
2107	Alabama
2107	Arizona
2107	Boston College
2107	LSU
2107	Maryland
2107	Massachusetts
2107	Michigan
2107	Michigan State
2107	Nebraska
2107	Oklahoma
2107	Ole Miss
2107	Syracuse
2107	Wisconsin
2108	Florida
2108	Auburn
2108	USC
2108	Alabama
2108	Boston College
2108	Clemson
2108	Duke
2108	Georgia Tech
2108	Kentucky
2108	Louisville
2108	Miami
2108	Michigan
2108	Michigan State
2108	Mississippi State
2108	Nebraska
2108	Notre Dame
2108	Ole Miss
2108	Oregon
2108	Penn State
2108	Pittsburgh
2108	Purdue
2108	Stanford
2108	Syracuse
2108	Tennessee
2108	Vanderbilt
2108	Wisconsin
2108	Georgia Tech
2109	Florida
2109	Kentucky
2109	Georgia
2109	Massachusetts
2109	Michigan State
2109	Rutgers
2109	Syracuse
2109	Tennessee
2109	Virginia
2109	Virginia Tech
2109	West Virginia
2110	Florida
2110	Alabama
2110	Arizona
2110	Arkansas
2110	Auburn
2110	Colorado
2110	Georgia
2110	Houston
2110	Kansas
2110	Kansas State
2110	LSU
2110	Michigan State
2110	Minnesota
2110	Missouri
2110	Ole Miss
2110	Syracuse
2110	TCU
2110	Tennessee
2110	Texas State
2110	Texas Tech
2110	Tulsa
2110	Utah
2110	UTSA
2175	Florida
2175	Appalachian State
2175	Army
2175	Boston College
2175	Bowling Green
2175	Clemson
2175	Coastal Carolina
2175	Colorado State
2175	Columbia
2175	Florida Atlantic
2175	Iowa State
2175	Kent State
2175	Marshall
2175	Massachusetts
2175	Minnesota
2175	Nebraska
2175	North Carolina
2175	Purdue
2175	Southern Miss
2175	Toledo
2175	Tulane
2175	UAB
2175	USF
2175	Valdosta State
2175	Virginia Tech
2175	Wake Forest
2175	Western Kentucky
2111	Florida
2111	USF
2111	Indiana
2111	Iowa State
2111	Kentucky
2111	Miami
2111	Nebraska
2111	North Carolina
2111	Southern Miss
2111	Utah
2111	West Virginia
2112	Florida
2112	LSU
2112	Air Force
2112	Alabama
2112	Appalachian State
2112	Auburn
2112	Duke
2112	FIU
2112	Florida State
2112	Georgia Tech
2112	Indiana
2112	Iowa
2112	Iowa State
2112	Kansas
2112	Kansas State
2112	Liberty
2112	Louisville
2112	Miami
2112	Michigan
2112	Michigan State
2112	Nebraska
2112	Ohio State
2112	Penn State
2112	Pittsburgh
2112	Purdue
2112	South Carolina
2112	Troy
2112	Tulane
2112	UCF
2112	USF
2112	Vanderbilt
2112	Virginia
2112	Virginia Tech
2112	West Virginia
2112	Wisconsin
2112	Arkansas
2112	North Carolina
2112	Rutgers
2113	Florida
2113	USF
2113	Georgia Tech
2113	Kentucky
2113	Tennessee
2113	Buffalo
2113	Colorado State
2113	Duke
2113	Eastern Kentucky
2113	FIU
2113	Florida State
2113	Indiana
2113	Liberty
2113	Louisville
2113	Miami
2113	Missouri
2113	North Carolina
2113	Oregon
2113	Pittsburgh
2113	Purdue
2113	Rutgers
2113	Toledo
2113	Troy
2113	UCF
2113	Wake Forest
2113	Washington State
2113	West Virginia
2114	Florida
2114	Kentucky
2114	Arizona
2114	Boston College
2114	FIU
2114	Florida State
2114	Georgia
2114	Georgia Tech
2114	Indiana
2114	Miami
2114	Mississippi State
2114	Missouri
2114	NC State
2114	Penn State
2114	Pittsburgh
2114	Rutgers
2114	UCF
2114	Western Kentucky
2115	Florida
2115	Louisville
2115	Baylor
2115	Bowling Green
2115	FIU
2115	Florida Atlantic
2115	Howard
2115	Jackson State
2115	LSU
2115	Nebraska
2115	Pittsburgh
2116	Florida
2117	Florida State
2117	Alabama
2117	Auburn
2117	Georgia
2117	Miami
2117	Florida
2117	Florida Atlantic
2117	Pittsburgh
2117	Tennessee
2117	UCF
2118	Florida State
2118	Washington State
2118	Auburn
2118	Florida
2118	Florida Atlantic
2118	Georgia
2118	Kentucky
2118	Memphis
2118	Miami
2118	NC State
2118	UCF
2118	Missouri
2119	Florida State
2119	Alabama
2119	Auburn
2119	Duke
2119	Florida
2119	LSU
2119	Maryland
2119	Miami
2119	Michigan
2119	Nebraska
2119	North Carolina
2119	Notre Dame
2119	Ohio State
2119	Oregon
2119	Syracuse
2119	UCF
2119	USF
2119	Virginia
2119	Arkansas
2119	Kentucky
2119	Louisville
2119	Northwestern
2119	Purdue
2120	Florida State
2120	Miami
2120	Arkansas
2120	Auburn
2120	Florida
2120	Illinois
2120	Nebraska
2120	Notre Dame
2120	Oregon
2120	Southern Miss
2120	Tennessee
2120	Texas A&M
2121	Florida State
2121	Miami
2121	Bowling Green
2121	Clemson
2121	Florida
2121	Florida Atlantic
2121	Georgia Tech
2121	Indiana
2121	Kentucky
2121	Louisville
2121	Mercer
2121	Michigan
2121	Mississippi State
2121	Nebraska
2121	North Carolina
2121	Ohio State
2121	South Carolina
2121	Tennessee
2121	Virginia Tech
2121	Arkansas
2122	Florida State
2122	Alabama
2122	Arkansas-Pine Bluff
2122	Auburn
2122	Colorado
2122	Florida
2122	Georgia
2122	Houston
2122	Kansas
2122	Kentucky
2122	Louisiana
2122	Louisiana Tech
2122	Louisville
2122	LSU
2122	Memphis
2122	Miami
2122	Michigan
2122	Mississippi State
2122	Missouri
2122	Nebraska
2122	Nicholls State
2122	SMU
2122	Southern Miss
2122	TCU
2122	Tennessee
2122	Toledo
2122	Tulane
2122	Virginia
2122	Washington State
2123	Florida State
2123	Auburn
2123	FIU
2123	Florida
2123	Florida Atlantic
2123	Indiana
2123	LSU
2123	Miami
2123	Michigan
2123	Oregon
2123	Penn State
2123	Pittsburgh
2123	Rutgers
2123	Tennessee
2123	UCF
2123	USF
2123	Virginia
2124	Florida State
2124	Auburn
2124	Boston College
2124	Florida
2124	Iowa
2124	Iowa State
2124	Kentucky
2124	LSU
2124	Miami
2124	Michigan
2124	North Carolina
2124	Oregon
2124	Syracuse
2124	Tennessee
2124	Toledo
2124	UCF
2124	USF
2124	Virginia Tech
2124	West Virginia
2125	Florida State
2125	Louisville
2125	Boston College
2125	Coastal Carolina
2125	Duke
2125	FIU
2125	Georgia Tech
2125	Illinois
2125	Indiana
2125	Iowa State
2125	Kansas
2125	Kentucky
2125	Louisiana-Monroe
2125	Middle Tennessee State
2125	Minnesota
2125	Old Dominion
2125	Pittsburgh
2125	Purdue
2125	Syracuse
2125	Troy
2125	Tulane
2125	UCF
2125	USF
2125	Vanderbilt
2125	West Virginia
2125	Western Kentucky
2125	Auburn
2125	Illinois
2125	Miami
2126	Florida State
2126	Baylor
2126	Pittsburgh
2126	Virginia Tech
2126	USF
2126	Akron
2126	Appalachian State
2126	Boston College
2126	Bowling Green
2126	Coastal Carolina
2126	Colorado State
2126	Eastern Kentucky
2126	Florida Atlantic
2126	Liberty
2126	Louisiana
2126	Middle Tennessee State
2126	Nevada
2126	Northwestern
2126	South Alabama
2126	Southern Miss
2126	Toledo
2126	Troy
2126	Tulane
2126	Utah
2126	Western Kentucky
2126	Georgia Tech
2126	Memphis
2126	Miami
2127	Florida State
2127	Nebraska
2127	Florida Atlantic
2127	Georgia Tech
2127	Pittsburgh
2127	Tennessee
2127	Tulane
2127	UAB
2127	UCF
2127	USF
2127	Virginia
2127	Arkansas
2127	Florida
2127	Georgia
2127	Georgia Southern
2127	Oklahoma
2127	Ole Miss
2128	Florida State
2128	FIU
2128	Florida A&M
2128	Indiana
2128	UCF
2128	Miami
2129	Florida State
2129	Akron
2129	Appalachian State
2129	Central Michigan
2129	Chattanooga
2129	Coastal Carolina
2129	East Carolina
2129	Eastern Michigan
2129	FIU
2129	Jacksonville State
2129	Liberty
2129	Marshall
2129	Mercer
2129	Navy
2129	Pittsburgh
2129	Samford
2129	South Alabama
2129	Southern Miss
2129	Tennessee State
2129	Troy
2129	UAB
2129	UCF
2129	Auburn
2130	Georgia
2130	Ohio State
2130	Alabama
2130	Arizona
2130	Arkansas
2130	Auburn
2130	Clemson
2130	Colorado
2130	Florida
2130	Florida State
2130	Indiana
2130	Kentucky
2130	LSU
2130	Maryland
2130	Michigan
2130	Michigan State
2130	Nebraska
2130	North Carolina
2130	Notre Dame
2130	Oklahoma
2130	Oregon
2130	Penn State
2130	Rutgers
2130	South Carolina
2130	Syracuse
2130	Temple
2130	Tennessee
2130	Texas
2130	Texas A&M
2130	Vanderbilt
2130	Virginia
2130	Virginia Tech
2130	Wisconsin
2131	Georgia
2131	Alabama
2131	Maryland
2131	Tennessee
2131	Clemson
2133	Georgia
2133	Alabama
2133	Auburn
2133	Florida
2133	LSU
2133	Michigan
2133	Mississippi State
2133	Ole Miss
2133	Penn State
2133	South Carolina
2133	Tennessee
2133	Virginia Tech
2133	West Virginia
2133	Nebraska
2134	Georgia
2134	Alabama
2134	LSU
2134	Ohio State
2134	Arizona
2134	Arizona State
2134	Arkansas
2134	Auburn
2134	Baylor
2134	Brigham Young
2134	California
2134	Colorado
2134	Colorado State
2134	Florida
2134	Florida State
2134	Fresno State
2134	Kansas State
2134	Miami
2134	Michigan
2134	Michigan State
2134	Mississippi State
2134	Nebraska
2134	Nevada
2134	North Carolina
2134	Notre Dame
2134	Oklahoma
2134	Oregon
2134	Oregon State
2134	Penn State
2134	Purdue
2134	San Jose State
2134	Tennessee
2134	Texas
2134	Texas A&M
2134	USC
2134	Utah
2134	Washington
2134	Washington State
2134	Wisconsin
2135	Georgia
2135	USF
2135	Florida
2135	Arkansas
2135	Auburn
2135	Boston College
2135	Cincinnati
2135	East Carolina
2135	Florida State
2135	Illinois
2135	Kentucky
2135	LSU
2135	Maryland
2135	Miami
2135	Michigan
2135	NC State
2135	Notre Dame
2135	Ohio State
2135	Ole Miss
2135	Penn State
2135	Pittsburgh
2135	Purdue
2135	Southern Miss
2135	Tennessee
2135	Texas
2135	Texas A&M
2135	Wake Forest
2136	Georgia
2136	USF
2136	Alabama
2136	Auburn
2136	Clemson
2136	Florida
2136	Florida State
2136	Miami
2136	North Carolina
2136	Ole Miss
2136	Purdue
2137	Georgia
2137	Oklahoma
2137	Texas A&M
2137	Alabama
2137	Arkansas
2137	Auburn
2137	Florida
2137	Kansas
2137	Kentucky
2137	Louisiana
2137	Louisiana Tech
2137	LSU
2137	Miami
2137	Mississippi State
2137	Ole Miss
2137	SMU
2137	Southern Miss
2137	Tennessee
2137	Texas State
2137	Tulane
2137	Virginia
2137	West Virginia
2138	Georgia
2138	Alabama
2138	Arkansas
2138	Auburn
2138	Baylor
2138	California
2138	Colorado
2138	Florida
2138	Georgia Tech
2138	Houston
2138	Illinois
2138	Illinois State
2138	Kansas
2138	LSU
2138	Michigan
2138	Missouri
2138	Nebraska
2138	Notre Dame
2138	Ohio State
2138	Oklahoma
2138	Oklahoma State
2138	Ole Miss
2138	Oregon
2138	Penn State
2138	Purdue
2138	SMU
2138	South Carolina
2138	TCU
2138	Tennessee
2138	Texas
2138	Texas A&M
2138	Texas Tech
2138	Boise State
2138	Boston College
2138	Clemson
2138	Indiana
2138	Northwestern
2138	Oregon
2139	Georgia
2139	LSU
2139	Texas
2139	Texas A&M
2139	USC
2139	Alabama
2139	Arizona
2139	Arkansas
2139	Auburn
2139	Baylor
2139	Boston College
2139	Clemson
2139	Colorado
2139	Florida
2139	Georgia Tech
2139	Memphis
2139	Miami
2139	Mississippi State
2139	Missouri
2139	Northwestern
2139	Notre Dame
2139	Ohio State
2139	Oklahoma
2139	Oklahoma State
2139	Ole Miss
2139	Oregon
2139	Purdue
2139	SMU
2139	Stanford
2139	TCU
2139	Texas Tech
2139	Tulane
2139	Tulsa
2139	Utah
2139	Vanderbilt
2139	Virginia Tech
2139	Wisconsin
2140	Georgia
2140	Alabama
2140	Boston College
2140	Florida
2140	Florida Atlantic
2140	Florida State
2140	Georgia Tech
2140	Maryland
2140	Miami
2140	Penn State
2140	Purdue
2140	USF
2140	Arkansas
2141	Georgia
2141	Alabama
2141	Florida
2141	Florida State
2141	Miami
2141	Oklahoma
2141	South Carolina
2141	Tennessee
2141	Clemson
2141	Mississippi State
2142	Georgia
2142	Alabama
2142	Florida
2142	Georgia Tech
2142	LSU
2142	Mississippi State
2142	Nebraska
2142	Tennessee
2142	Florida State
2142	Ohio State
2142	Texas A&M
2143	Georgia
2143	Nebraska
2143	Maryland
2143	Ball State
2143	Boston College
2143	Florida
2143	Florida State
2143	Georgia Tech
2143	Kentucky
2143	Notre Dame
2143	Penn State
2143	South Carolina
2143	Tennessee
2143	UCF
2143	Virginia
2143	Wake Forest
2143	West Virginia
2143	Miami
2143	Michigan State
2143	NC State
2144	Georgia
2144	Penn State
2144	Boston College
2144	Buffalo
2144	Georgia Tech
2144	Howard
2144	Indiana
2144	Massachusetts
2144	Rutgers
2144	Virginia
2144	Delaware
2144	Kentucky
2144	Stony Brook
2144	Syracuse
2144	Temple
2144	West Virginia
2145	Georgia
2145	Air Force
2145	Army
2146	Georgia Tech
2146	Florida
2146	Ohio State
2146	Alabama
2146	Florida State
2146	LSU
2146	Ole Miss
2146	Charlotte
2146	Coastal Carolina
2146	East Carolina
2146	Georgia Southern
2146	Iowa State
2146	Louisville
2146	Michigan
2146	Mississippi State
2146	Missouri
2146	NC State
2146	Nebraska
2146	North Carolina
2146	Purdue
2146	South Carolina
2146	Syracuse
2146	Texas A&M
2146	Troy
2146	USC
2146	Virginia Tech
2146	Wake Forest
2147	Georgia Tech
2147	Alabama
2147	Arizona
2147	Auburn
2147	Duke
2147	Florida
2147	Illinois
2147	Kentucky
2147	Louisville
2147	Nebraska
2147	Ohio State
2147	Oklahoma
2147	Oregon
2147	Penn State
2147	Purdue
2147	South Carolina
2147	Utah
2147	Valdosta State
2147	Virginia
2147	Virginia Tech
2147	West Virginia
2147	Georgia
2148	Georgia Tech
2148	Syracuse
2148	West Virginia
2148	Arkansas
2148	Auburn
2148	Boston College
2148	Bowling Green
2148	Florida
2148	Florida Atlantic
2148	Florida State
2148	Illinois
2148	Kentucky
2148	Louisville
2148	Minnesota
2148	NC State
2148	Nebraska
2148	Ole Miss
2148	Oregon
2148	Penn State
2148	Pittsburgh
2148	Purdue
2148	South Carolina
2148	Temple
2148	Tennessee
2148	USF
2148	Utah
2148	Virginia
2148	Virginia Tech
2148	Notre Dame
2149	Georgia Tech
2149	Colorado
2149	Nebraska
2149	Arizona State
2149	Duke
2149	Iowa
2149	Iowa State
2149	Miami
2149	Michigan State
2149	Minnesota
2149	Notre Dame
2149	Pittsburgh
2149	Purdue
2149	Rice
2149	Stanford
2149	Tennessee
2149	Virginia
2149	Virginia Tech
2149	Wake Forest
2149	West Virginia
2150	Georgia Tech
2150	NC State
2150	Akron
2150	Appalachian State
2150	Coastal Carolina
2150	East Carolina
2150	Florida A&M
2150	Georgia Southern
2150	Georgia State
2150	Kansas
2150	Kent State
2150	Mercer
2150	Michigan
2150	Michigan State
2150	South Alabama
2150	Syracuse
2150	Tennessee
2150	Western Kentucky
2150	Troy
2151	Georgia Tech
2151	Maryland
2151	Arkansas
2151	Baylor
2151	Coastal Carolina
2151	FIU
2151	Kentucky
2151	LSU
2151	Minnesota
2151	North Carolina
2151	Ole Miss
2151	Rutgers
2151	Tennessee
2151	Texas
2151	Texas A&M
2151	Vanderbilt
2151	Wake Forest
2151	Clemson
2151	Michigan
2152	Georgia Tech
2152	Minnesota
2152	Appalachian State
2152	Auburn
2152	Coastal Carolina
2152	Duke
2152	Florida State
2152	Illinois
2152	Louisville
2152	Miami
2152	Pittsburgh
2152	Southern Miss
2152	UCF
2152	USF
2152	Wake Forest
2202	Georgia Tech
2202	Appalachian State
2202	Ball State
2202	East Carolina
2202	Indiana
2202	NC State
2202	Rutgers
2202	SMU
2202	South Carolina
2202	Vanderbilt
2153	Georgia Tech
2153	Baylor
2153	Boston College
2153	Cincinnati
2153	Coastal Carolina
2153	Colorado State
2153	Duke
2153	East Carolina
2153	Georgia Southern
2153	Georgia State
2153	Iowa State
2153	Kansas
2153	Kentucky
2153	Maryland
2153	Michigan State
2153	Minnesota
2153	Missouri
2153	Pittsburgh
2153	South Alabama
2153	Syracuse
2153	Tennessee
2153	UAB
2153	USF
2153	Wake Forest
2153	Western Kentucky
2153	Michigan State
2153	Purdue
2153	Tulane
2154	Georgia Tech
2154	Nebraska
2154	Oklahoma
2154	Arizona State
2154	Arkansas State
2154	Auburn
2154	Boston College
2154	Colorado
2154	Duke
2154	FIU
2154	Florida A&M
2154	Illinois
2154	Kentucky
2154	Louisiana Tech
2154	Louisville
2154	Michigan State
2154	Mississippi State
2154	Missouri
2154	North Carolina
2154	Notre Dame
2154	Ole Miss
2154	Ole Miss
2154	Oregon
2154	South Carolina
2154	Syracuse
2154	Temple
2154	Tennessee
2154	Texas Tech
2154	Troy
2154	UCF
2154	Vanderbilt
2154	Virginia
2154	Western Kentucky
2154	Arkansas
2155	Georgia Tech
2155	Arizona
2155	Boston College
2155	Brigham Young
2155	Colorado State
2155	FIU
2155	Hawaii
2155	Houston
2155	Liberty
2155	Louisiana
2155	Missouri
2155	Nebraska
2155	North Texas
2155	Rutgers
2155	SMU
2155	Southern Miss
2155	Texas State
2155	Tulsa
2155	Utah State
2155	UTSA
2156	Georgia Tech
2156	Cincinnati
2156	Duke
2156	Georgia
2156	Illinois
2156	Indiana
2156	Kentucky
2156	North Carolina
2156	Pittsburgh
2156	Toledo
2156	USF
2156	Vanderbilt
2156	Virginia Tech
2156	West Virginia
2157	Georgia Tech
2157	Arizona State
2157	East Carolina
2157	Iowa State
2157	Memphis
2157	Minnesota
2157	Missouri
2157	Tennessee
2157	Toledo
2157	Troy
2157	Virginia
2157	Western Michigan
2157	Georgia
2157	Georgia State
2157	Michigan State
2157	Tulsa
2157	Wisconsin
2158	Georgia Tech
2158	Air Force
2158	Army
2158	Cincinnati
2158	Coastal Carolina
2158	East Carolina
2158	FIU
2158	Georgia Southern
2158	Georgia State
2158	Liberty
2158	Missouri
2158	Troy
2158	Tulane
2158	UAB
2158	USF
2158	Wake Forest
2158	West Virginia
2159	Georgia Tech
2159	Air Force
2159	Appalachian State
2159	Boston College
2159	Coastal Carolina
2159	Florida Atlantic
2159	Georgia Southern
2159	Georgia State
2159	Kent State
2159	Louisville
2159	South Alabama
2159	Troy
2159	Virginia
2159	Georgia
2159	South Carolina
2160	Georgia Tech
2160	Western Kentucky
2160	Florida Atlantic
2161	Georgia Tech
2161	FIU
2161	Kentucky
2161	Louisville
2161	Marshall
2161	Miami
2161	Rutgers
2161	Syracuse
2161	Tennessee State
2161	UNLV
2161	USF
2161	Virginia
2161	Western Kentucky
2161	FIU
2161	Florida Atlantic
2161	Michigan State
2162	Georgia Tech
2162	Duke
2162	Indiana
2162	Jacksonville State
2162	Kansas
2162	Missouri
2162	Nebraska
2162	SMU
2162	South Alabama
2162	Southern Miss
2162	Temple
2162	Tennessee Tech
2162	Troy
2162	Tulane
2162	UAB
2162	UCF
2162	Clemson
2163	Georgia Tech
2163	Columbia
2163	Cornell
2163	Marshall
2163	Middle Tennessee State
2163	South Alabama
2163	Southern Miss
2163	Appalachian State
2163	Auburn
2163	Cincinnati
2163	Louisville
2163	Vanderbilt
2164	Georgia Tech
2164	Southern Miss
2164	Troy
2164	UCF
2164	USF
2165	Georgia Tech
2165	Tennessee
2165	Western Kentucky
2166	Georgia Tech
2166	South Alabama
2166	UAB
2167	Georgia Tech
2167	Maryland
2167	Florida State
2167	Boston College
2167	Bowling Green
2167	Cincinnati
2167	Colorado State
2167	Connecticut
2167	FIU
2167	Georgia
2167	Louisville
2167	LSU
2167	Penn State
2167	Tennessee
2167	UCF
2167	USF
2167	Virginia Tech
2167	Alabama
2167	Florida Atlantic
2167	Miami
2167	Nebraska
2167	North Carolina
2167	Wake Forest
2167	Western Kentucky
2168	Georgia Tech
2168	Colorado
2168	Louisville
2168	Pittsburgh
2168	Boston College
2168	Campbell
2168	Coastal Carolina
2168	Colorado State
2168	Delta State
2168	Duke
2168	Georgia State
2168	Kent State
2168	Liberty
2168	Memphis
2168	Michigan State
2168	Middle Tennessee State
2168	Tennessee State
2168	Troy
2168	Tulane
2168	USF
2168	Virginia
2168	Virginia Tech
2168	Wake Forest
2168	Washington State
2168	Western Kentucky
2168	Georgia Tech
2169	Indiana
2169	Boston College
2169	Bowling Green
2169	Central Michigan
2169	Cincinnati
2169	Eastern Michigan
2169	Kansas State
2169	Kentucky
2169	LSU
2169	Maryland
2169	Michigan
2169	Michigan State
2169	Minnesota
2169	Missouri
2169	Morgan State
2169	Norfolk State
2169	Ohio State
2169	Old Dominion
2169	Ole Miss
2169	Pittsburgh
2169	Purdue
2169	Syracuse
2169	Temple
2169	Toledo
2169	West Virginia
2169	Western Michigan
2170	Indiana
2170	Michigan
2170	Boston College
2170	Charlotte
2170	Georgia Tech
2170	Howard
2170	James Madison
2170	Maryland
2170	Northwestern
2170	Old Dominion
2170	Pittsburgh
2170	Rutgers
2170	South Carolina
2170	Syracuse
2170	Vanderbilt
2170	Virginia
2170	West Virginia
2170	Clemson
2170	Ohio State
2170	Penn State
2170	Virginia Tech
2170	Wake Forest
2171	Indiana
2171	Auburn
2171	Boston College
2171	Florida State
2171	Georgia Tech
2171	Maryland
2171	Miami
2171	Ole Miss
2171	Penn State
2171	Tennessee
2171	USF
2171	West Virginia
2171	Western Kentucky
2171	Florida
2172	Indiana
2172	Maryland
2172	FIU
2172	Florida Atlantic
2172	Iowa State
2172	Liberty
2172	Pittsburgh
2172	Rutgers
2172	Syracuse
2172	Tennessee
2172	Troy
2172	UCF
2172	Virginia
2172	Western Kentucky
2172	Miami
2173	Indiana
2173	Air Force
2173	Ball State
2173	Bowling Green
2173	Central Michigan
2173	Columbia
2173	Dartmouth
2173	Eastern Kentucky
2173	Eastern Michigan
2173	Harvard
2173	Indiana State
2173	Kent State
2173	Northern Illinois
2173	Ohio
2173	Toledo
2173	Western Illinois
2173	Iowa
2174	Indiana
2174	Abilene Christian
2174	Air Force
2174	Army
2174	Columbia
2174	Cornell
2174	Fordham
2174	Harvard
2174	Illinois State
2174	Kansas
2174	Lehigh
2174	Liberty
2174	Louisiana
2174	Louisiana Tech
2174	Louisiana-Monroe
2174	McNeese State
2174	Minnesota
2174	Navy
2174	New Mexico State
2174	Pennsylvania
2174	Princeton
2174	Texas Tech
2174	Utah State
2174	UTEP
2174	Wyoming
2174	Yale
2203	Indiana
2203	Central Michigan
2203	Cincinnati
2203	Iowa State
2203	Kentucky
2203	Michigan State
2203	Morgan State
2203	Syracuse
2203	Western Michigan
2176	Indiana
2176	Ball State
2176	Cincinnati
2176	Duke
2176	Iowa
2176	Michigan
2176	Purdue
2176	Washington State
2176	Western Illinois
2176	Western Michigan
2176	Louisville
2176	Michigan State
2176	Northwestern
2176	Notre Dame
2176	Ohio State
2177	Indiana
2177	Jackson State
2177	Louisiana-Monroe
2177	Ole Miss
2177	South Alabama
2178	Indiana
2178	Ohio
2178	Akron
2178	Ball State
2178	Eastern Kentucky
2178	Eastern Michigan
2178	Kent State
2178	Michigan State
2178	Youngstown State
2178	Cincinnati
2179	Indiana
2179	Ball State
2179	Bowling Green
2179	Cincinnati
2179	Illinois
2179	Illinois State
2179	Miami (OH)
2179	Minnesota
2179	Pennsylvania
2179	Purdue
2179	Toledo
2179	Vanderbilt
2179	West Virginia
2179	Western Michigan
2179	Columbia
2179	Nebraska
2179	Northwestern
2179	Wisconsin
2180	Indiana
2180	Rice
2180	Ball State
2180	Kent State
2180	Memphis
2180	South Dakota
2180	Yale
2180	Maryland
2180	Michigan State
2180	Northwestern
2180	Notre Dame
2180	Oklahoma State
2180	Tennessee
2181	Indiana
2181	Ball State
2181	Bowling Green
2181	Central Michigan
2181	Eastern Michigan
2181	Illinois State
2181	Miami (OH)
2181	Toledo
2181	Tulane
2181	Western Michigan
2181	Iowa
2181	Louisville
2181	Purdue
2182	Indiana
2182	Marshall
2182	Massachusetts
2182	Old Dominion
2182	South Carolina
2182	Syracuse
2182	Temple
2182	Virginia
2182	Virginia Tech
2183	Indiana
2183	Army
2183	Bucknell
2183	Charlotte
2183	Coastal Carolina
2183	Eastern Kentucky
2183	Florida Atlantic
2183	Georgia Southern
2183	Georgia State
2183	Miami (OH)
2183	Navy
2183	Samford
2183	Troy
2183	Tulane
2183	Western Kentucky
2183	Wofford
2183	Georgia
2183	Syracuse
2183	UCF
2184	Indiana
2184	Maryland
2184	Eastern Michigan
2184	Iowa State
2184	Kansas
2184	Kentucky
2184	West Liberty
2184	West Virginia
2185	Indiana
2185	Toledo
2185	Bowling Green
2185	Kent State
2185	Ohio
2186	Indiana
2186	Ball State
2186	Cincinnati
2186	Illinois State
2186	Miami (OH)
2187	Iowa
2187	Nebraska
2187	Iowa State
2187	Minnesota
2187	Michigan State
2187	Purdue
2188	Iowa
2188	Indiana
2188	Tennessee
2188	Ball State
2188	Cincinnati
2188	Georgia Tech
2188	Indiana State
2188	Michigan
2188	Michigan State
2188	Minnesota
2188	North Carolina
2188	Northwestern
2188	Notre Dame
2188	Ohio State
2188	Purdue
2188	Vanderbilt
2188	Washington State
2189	Iowa
2189	Michigan State
2189	Akron
2189	Bowling Green
2189	Cincinnati
2189	Eastern Michigan
2189	Georgia Tech
2189	Indiana
2189	Iowa State
2189	Kent State
2189	Kentucky
2189	Liberty
2189	LSU
2189	Minnesota
2189	Princeton
2189	Rutgers
2189	Toledo
2189	Tulane
2189	West Virginia
2189	Wisconsin
2189	Yale
2189	Youngstown State
2189	Boston College
2189	Louisville
2189	Northwestern
2189	Ohio State
2189	Pittsburgh
2189	Purdue
2190	Iowa
2190	Illinois
2190	Northern Illinois
2190	Purdue
2190	Wisconsin
2191	Iowa
2191	Baylor
2191	Boston College
2191	Colorado
2191	Georgia
2191	Houston
2191	Iowa State
2191	Louisiana Tech
2191	Oklahoma State
2191	Syracuse
2191	Tennessee
2191	Tulsa
2191	Kentucky
2191	LSU
2191	Michigan State
2191	North Carolina
2191	Ole Miss
2191	SMU
2191	Texas
2191	Texas A&M
2191	Texas Tech
2191	Wisconsin
2192	Iowa
2192	Arizona State
2192	Arkansas
2192	Auburn
2192	Boston College
2192	Colorado
2192	Connecticut
2192	Florida
2192	Georgia
2192	Houston
2192	Indiana
2192	Iowa State
2192	Kansas
2192	Kansas State
2192	Louisville
2192	LSU
2192	Michigan
2192	Michigan State
2192	Nebraska
2192	North Texas
2192	Ole Miss
2192	Oregon
2192	Penn State
2192	Purdue
2192	Rutgers
2192	SMU
2192	TCU
2192	Texas Tech
2192	Toledo
2192	UCF
2192	Utah
2192	Vanderbilt
2193	Iowa
2193	Iowa State
2193	Nebraska
2193	Michigan State
2193	Minnesota
2193	Northwestern
2193	Notre Dame
2193	Vanderbilt
2194	Iowa
2194	Air Force
2194	Akron
2194	Ball State
2194	Illinois State
2194	Kansas
2194	Kent State
2194	North Dakota
2194	Northern Illinois
2194	Ohio
2194	South Dakota
2194	South Dakota State
2194	Toledo
2194	Iowa State
2194	Kansas State
2194	Nebraska
2195	Iowa
2195	Northern Illinois
2195	South Dakota
2195	Wisconsin
2196	Iowa
2196	Ball State
2196	Central Michigan
2196	Cincinnati
2196	Eastern Illinois
2196	Eastern Michigan
2196	Iowa
2196	Kansas State
2196	Kent State
2196	Miami (OH)
2196	Northern Illinois
2196	Ohio
2196	Wyoming
2196	Youngstown State
2196	Michigan State
2196	Wisconsin
2197	Iowa
2197	Buffalo
2197	Kansas State
2197	Minnesota
2197	North Dakota State
2197	South Dakota
2197	South Dakota State
2198	Iowa
2198	Iowa State
2198	Michigan
2198	Nebraska
2199	Iowa
2200	Iowa
2200	Indiana
2200	Air Force
2200	Central Michigan
2200	South Alabama
2200	Southern Miss
2200	Troy
2200	UAB
2200	Alabama
2200	Auburn
2200	LSU
2200	Tennessee
2200	UAB
2201	Iowa
2201	Northwestern
2206	Iowa
2206	Army
2206	Boston College
2206	Bryant
2206	Fordham
2206	Georgetown
2206	Holy Cross
2206	Howard
2206	Lehigh
2206	Merrimack
2206	Monmouth
2206	Navy
2206	Sacred Heart
2206	Syracuse
2207	Iowa
2207	Ball State
2207	Eastern Kentucky
2207	Illinois State
2207	Kent State
2207	Minnesota
2207	Toledo
2207	Western Michigan
2208	Iowa
2208	Air Force
2208	Army
2208	Bowling Green
2208	Brown
2208	Central Michigan
2208	Columbia
2208	Cornell
2208	Eastern Illinois
2208	Eastern Kentucky
2208	Holy Cross
2208	Illinois
2208	Kansas
2208	Kansas
2208	Kansas State
2208	Kansas State
2208	Lehigh
2208	Minnesota
2208	Navy
2208	Northern Illinois
2208	Ohio
2208	Princeton
2208	South Dakota
2208	Southern Illinois
2208	Tulane
2208	UT Martin
2208	Western Illinois
2208	Western Michigan
2208	Wyoming
2208	Memphis
2208	Ohio
2208	Wyoming
2209	Iowa
2209	Southern Miss
2209	Eastern Kentucky
2209	Middle Tennessee State
2209	North Dakota State
2209	Rutgers
2209	South Dakota
2209	South Dakota
2210	Iowa
2210	Air Force
2210	Ball State
2210	Bowling Green
2210	Central Michigan
2210	Eastern Michigan
2210	Kent State
2210	Miami (OH)
2210	Toledo
2210	Tulane
2210	Western Illinois
2210	Wisconsin
2211	Iowa
2211	North Carolina
2211	Southern Miss
2212	Iowa
2212	Davenport
2212	Northwood University
2212	Southeast Missouri State
2212	Bowling Green
2212	Minnesota
2213	Iowa State
2213	Indiana
2213	Purdue
2213	Central Michigan
2213	Kansas State
2213	Northern Iowa
2213	South Dakota
2213	South Dakota State
2213	Baylor
2213	Iowa
2213	Michigan State
2213	Ohio State
2213	UCLA
2214	Iowa State
2214	Boise State
2214	Oregon State
2214	Arizona
2214	Central Michigan
2214	Charlotte
2214	East Carolina
2214	FIU
2214	Florida Atlantic
2214	Houston
2214	Jacksonville State
2214	Kansas State
2214	Kennesaw State
2214	Liberty
2214	Maryland
2214	Massachusetts
2214	New Mexico State
2214	SMU
2214	South Alabama
2214	Southern Miss
2214	UTEP
2215	Iowa State
2215	Minnesota
2215	North Dakota State
2216	Iowa State
2217	Iowa State
2217	Arizona State
2217	USC
2217	Arizona
2217	Arkansas
2217	Baylor
2217	Bowling Green
2217	Colorado State
2217	Illinois
2217	Illinois State
2217	Incarnate Word
2217	Indiana
2217	Kansas
2217	Kansas State
2217	North Carolina
2217	North Texas
2217	Oklahoma State
2217	Rice
2217	Rutgers
2217	TCU
2217	Toledo
2217	Utah
2217	UTSA
2218	Iowa State
2218	Iowa
2218	Kansas
2218	Kansas State
2218	Minnesota
2218	Nebraska
2218	Oklahoma State
2218	Purdue
2219	Iowa State
2219	Kansas
2219	Missouri
2219	Arkansas
2219	Iowa
2219	Nebraska
2219	Kansas State
2219	Northern Illinois
2219	Northwestern
2220	Iowa State
2220	Dartmouth
2220	Iowa
2220	Minnesota
2220	Purdue
2220	Wisconsin
2221	Iowa State
2221	Boise State
2221	Nebraska
2221	Oklahoma
2221	Syracuse
2221	USF
2221	Arizona State
2221	Georgia State
2221	Illinois
2221	Liberty
2221	Louisiana
2221	Louisiana-Monroe
2221	TCU
2221	Texas State
2221	Tulsa
2221	Utah
2221	UTEP
2222	Iowa State
2222	Cincinnati
2222	Illinois
2222	Louisville
2222	Miami (OH)
2222	Michigan State
2222	Missouri
2222	Northern Illinois
2222	Ohio
2222	Temple
2222	Toledo
2222	USF
2222	Washington State
2222	Western Michigan
2223	Iowa State
2223	Virginia
2223	Cincinnati
2223	Minnesota
2223	Nebraska
2223	Purdue
2223	South Dakota State
2223	UCF
2223	Iowa
2223	Kansas State
2223	Minnesota
2224	Iowa State
2224	Kansas State
2224	Michigan
2224	Michigan State
2224	Minnesota
2224	Nebraska
2224	Virginia Tech
2224	Akron
2224	Arkansas State
2224	Eastern Michigan
2224	Illinois State
2224	Miami (OH)
2224	New Mexico State
2224	Northern Illinois
2224	Northern Iowa
2224	South Dakota
2224	South Dakota State
2224	Toledo
2224	Western Illinois
2224	Iowa
2224	Iowa State
2225	Iowa State
2225	Bryant
2225	Cincinnati
2225	Coastal Carolina
2225	Colorado State
2225	Connecticut
2225	Georgia State
2225	Illinois State
2225	Liberty
2225	Maryland
2225	Northern Illinois
2225	Rutgers
2225	Southern Miss
2225	Syracuse
2225	Toledo
2225	UCF
2225	USF
2225	Wake Forest
2225	Western Kentucky
2225	Minnesota
2226	Iowa State
2226	West Virginia
2226	Akron
2226	Buffalo
2226	Cincinnati
2226	Massachusetts
2226	Purdue
2226	Rutgers
2226	Toledo
2226	Virginia
2227	Iowa State
2227	SMU
2227	Abilene Christian
2227	Air Force
2227	Army
2227	Dartmouth
2227	Houston
2227	Incarnate Word
2227	Louisiana
2227	Navy
2227	New Mexico
2227	New Mexico State
2227	Princeton
2227	Southern University
2227	Texas Tech
2227	Tulane
2227	UTEP
2227	UTSA
2228	Iowa State
2228	Nevada
2228	Abilene Christian
2228	Air Force
2228	Boise State
2228	Boston College
2228	California
2228	Colorado State
2228	Houston
2228	Liberty
2228	Louisiana
2228	Missouri
2228	North Texas
2228	Southern University
2228	Texas Southern
2228	Tulane
2228	UNLV
2228	Vanderbilt
2229	Iowa State
2229	Air Force
2229	Cornell
2229	South Dakota
2229	Troy
2230	Iowa State
2230	UCF
2230	Boston College
2230	Cincinnati
2230	Elon
2230	Faulkner
2230	FIU
2230	Georgia Tech
2230	Kent State
2230	Kentucky
2230	Louisville
2230	Minnesota
2230	Missouri
2230	Pittsburgh
2230	Rhode Island
2230	USF
2231	Iowa State
2231	North Dakota
2231	North Dakota State
2231	South Dakota
2231	Minnesota
2232	Iowa State
2232	Kansas
2232	Albany
2232	Florida Atlantic
2232	Georgia State
2232	Kent State
2232	Liberty
2232	Mercer
2232	Miami
2233	Iowa State
2234	Kansas
2234	USC
2234	Arizona
2234	Arizona State
2234	Arkansas
2234	Auburn
2234	Baylor
2234	Boston College
2234	Colorado
2234	Florida
2234	Georgia
2234	Georgia Tech
2234	Houston
2234	Indiana
2234	Iowa
2234	Kansas State
2234	Kentucky
2234	LSU
2234	Michigan State
2234	Minnesota
2234	Mississippi State
2234	Missouri
2234	Nebraska
2234	North Texas
2234	Oklahoma
2234	Ole Miss
2234	Oregon
2234	Purdue
2234	SMU
2234	Syracuse
2234	Texas
2234	Texas A&M
2234	UTSA
2235	Kansas
2235	Alabama State
2235	Central Michigan
2235	Charlotte
2235	FIU
2235	Florida Atlantic
2235	Georgia Southern
2235	Georgia Tech
2235	Houston
2235	Indiana
2235	Jacksonville State
2235	Kentucky
2235	Liberty
2235	Louisiana
2235	Memphis
2235	Mercer
2235	Nebraska
2235	Ole Miss
2235	Purdue
2235	Rutgers
2235	South Alabama
2235	Tennessee
2235	Tennessee State
2235	Toledo
2235	Troy
2235	Tulane
2235	UAB
2235	Virginia
2235	Virginia Tech
2236	Kansas
2236	Boston College
2236	California
2236	Colorado
2236	Harvard
2236	Illinois
2236	Illinois State
2236	Iowa State
2236	Kansas State
2236	Liberty
2236	Louisiana
2236	Louisiana Tech
2236	Minnesota
2236	Missouri
2236	Northwestern
2236	Oregon
2236	Purdue
2236	Southern Miss
2236	Utah
2236	Wisconsin
2237	Kansas
2237	Northern Iowa
2237	Illinois State
2237	New Mexico State
2237	South Dakota State
2237	Tulane
2237	Arkansas
2237	Drake
2237	Iowa State
2237	Kansas State
2237	Oklahoma
2237	Wyoming
2238	Kansas
2238	Howard
2238	Memphis
2238	North Texas
2238	Oklahoma State
2238	Texas State
2238	SMU
2239	Kansas
2239	FIU
2239	Florida Atlantic
2239	Florida State
2239	Georgia State
2239	Indiana
2239	Liberty
2239	Maryland
2239	Minnesota
2239	NC State
2239	Nebraska
2239	Penn State
2239	Pittsburgh
2239	Southern Miss
2239	UCF
2239	USF
2239	Wake Forest
2239	West Virginia
2240	Kansas
2240	Georgia Tech
2240	Houston
2240	Iowa State
2240	Liberty
2240	Louisiana
2240	Louisiana Tech
2240	Louisville
2240	LSU
2240	Nebraska
2240	Nevada
2240	Purdue
2240	Southern Miss
2240	UCF
2240	Utah
2240	Utah State
2240	UTSA
2240	Wyoming
2240	Arkansas
2240	SMU
2241	Kansas
2241	Arkansas
2241	Colorado State
2241	Eastern Illinois
2241	Houston Baptist
2241	Indiana
2241	Louisiana Tech
2241	Louisiana-Monroe
2241	McNeese State
2241	Memphis
2241	Nicholls State
2241	North Texas
2241	South Alabama
2241	Southern Miss
2241	Tennessee
2241	Tulane
2241	UNLV
2241	UTSA
2241	Virginia
2242	Kansas
2242	Oregon
2242	Colorado
2242	Louisiana
2242	Louisiana-Monroe
2242	Nicholls State
2242	Ole Miss
2242	SMU
2242	Southern Miss
2242	TCU
2242	Texas A&M
2242	Troy
2242	LSU
2242	Mississippi State
2242	Texas
2243	Kansas
2243	Arkansas
2243	Iowa State
2243	Kansas State
2243	South Dakota State
2244	Kansas
2244	Missouri
2245	Kansas
2245	Arizona
2245	Arizona State
2245	Illinois
2245	Oregon
2245	Oregon State
2245	Syracuse
2246	Kansas
2246	Alcorn State
2246	Arkansas State
2246	Grambling State
2246	Louisiana Tech
2246	Louisiana-Monroe
2246	New Mexico State
2246	Nicholls State
2246	Northwestern State
2246	Richmond
2246	South Alabama
2246	Southern University
2246	Texas Southern
2246	Wake Forest
2247	Kansas
2247	Illinois State
2247	Kansas State
2247	Northern Iowa
2247	William & Mary
2247	Minnesota
2247	Nebraska
2247	North Dakota State
2247	South Dakota
2247	South Dakota State
2247	TCU
2248	Kansas
2248	Liberty
2248	Virginia Tech
2248	Charlotte
2248	Delaware State
2248	Marshall
2248	Norfolk State
2248	North Carolina A&T
2248	Pittsburgh
2248	Richmond
2248	Temple
2248	Tennessee
2248	Towson
2248	William & Mary
2249	Kansas
2249	Memphis
2249	Charlotte
2249	Colorado
2249	Colorado State
2249	Florida Atlantic
2249	Hawaii
2249	Houston Baptist
2249	Kansas State
2249	Nevada
2249	Northern Iowa
2249	Southern Miss
2249	Texas Southern
2249	Utah State
2249	Texas Tech
2250	Kansas
2250	Alabama A&M
2250	Ball State
2250	Bowling Green
2250	Eastern Michigan
2250	Illinois
2250	Iowa State
2250	North Dakota State
2250	Northern Iowa
2250	Ohio
2250	SMU
2250	Western Michigan
2250	Wyoming
2251	Kansas
2251	Illinois State
2251	New Mexico State
2251	North Texas
2251	Rice
2251	Southern Miss
2251	Utah State
2252	Kansas
2252	Central Oklahoma
2252	Eastern Michigan
2252	Houston Baptist
2252	Nevada
2252	North Texas
2252	Southern Miss
2252	Texas State
2252	Western Illinois
2253	Kansas
2253	Bowling Green
2253	Central Michigan
2253	Eastern Illinois
2253	Indiana State
2253	Missouri State
2253	Navy
2253	Northern Iowa
2253	South Dakota
2253	South Dakota State
2253	Southern Illinois
2253	Western Illinois
2253	Western Michigan
2253	Wyoming
2253	Illinois State
2253	Iowa
2253	Iowa State
2253	Kansas State
2253	Minnesota
2253	North Dakota State
2254	Kansas
2254	Ball State
2254	Indiana State
2254	Kent State
2254	North Dakota State
2254	Northern Iowa
2254	South Dakota
2254	South Dakota State
2254	Southern Illinois
2254	Tulane
2254	Western Illinois
2254	Illinois
2254	Illinois State
2254	Iowa State
2254	Kansas State
2254	North Dakota State
2254	Northern Iowa
2255	Kansas
2255	Air Force
2255	Ball State
2255	Eastern Kentucky
2255	Youngstown State
2256	Kansas
2256	Arizona State
2256	Idaho State
2256	South Dakota
2256	UAB
2257	Kansas
2257	Abilene Christian
2257	Air Force
2257	Army
2257	Indiana State
2257	Missouri State
2257	Montana
2257	Navy
2257	Western Illinois
2258	Kansas
2258	SMU
2258	TCU
2258	Tennessee
2258	Vanderbilt
2258	Arkansas State
2258	Boston College
2258	FIU
2258	Houston
2258	Kansas State
2258	Louisiana
2258	Louisiana Tech
2258	Louisiana-Monroe
2258	Middle Tennessee State
2258	Navy
2258	Nicholls State
2258	Northwestern State
2258	Rice
2258	South Alabama
2258	Southeastern Louisiana
2258	Southern Miss
2258	Southern University
2258	Troy
2258	Tulane
2258	UAB
2258	West Virginia
2259	Kansas State
2259	Oklahoma State
2259	Air Force
2259	Arkansas
2259	Boise State
2259	Colorado
2259	Colorado State
2259	Cornell
2259	FIU
2259	Fresno State
2259	Houston Baptist
2259	Illinois
2259	Mercer
2259	Minnesota
2259	Missouri
2259	Nebraska
2259	North Texas
2259	Princeton
2259	Southern University
2259	Texas Southern
2259	Tulane
2259	Tulsa
2259	UNLV
2259	Utah State
2260	Kansas State
2260	Air Force
2260	Boise State
2260	Illinois State
2260	Kansas
2260	Northern Illinois
2260	Syracuse
2260	TCU
2260	Texas Tech
2260	Iowa
2260	Iowa State
2260	Kentucky
2260	Missouri
2260	Nebraska
2260	Oklahoma State
2260	Penn State
2260	Rutgers
2260	Southern Illinois
2260	UCLA
2260	Wisconsin
2261	Kansas State
2261	Air Force
2261	Akron
2261	Ball State
2261	Columbia
2261	Eastern Illinois
2261	Illinois State
2261	North Dakota State
2261	South Dakota State
2261	Western Illinois
2262	Kansas State
2262	Kent State
2262	Missouri State
2262	South Dakota State
2262	Wyoming
2262	Iowa
2262	Iowa State
2262	Minnesota
2262	Nebraska
2262	Northern Illinois
2263	Kansas State
2263	Colorado State
2263	Louisiana-Monroe
2263	Memphis
2263	North Texas
2263	South Alabama
2263	Southern Miss
2263	Troy
2264	Kansas State
2264	Bowling Green
2264	Cincinnati
2264	Harvard
2264	Kansas
2264	Maryland
2264	Minnesota
2264	Morgan State
2264	Rutgers
2264	Temple
2264	Toledo
2264	Yale
2264	Boston College
2264	Duke
2264	Kent State
2264	North Carolina
2264	Penn State
2264	Syracuse
2265	Kansas State
2265	Colorado State
2265	New Mexico State
2265	Northern Colorado
2265	Wyoming
2265	Baylor
2265	Indiana
2265	Texas Tech
2266	Kansas State
2266	Memphis
2266	Boston College
2266	Coastal Carolina
2266	Kentucky
2266	Louisville
2266	South Alabama
2266	Tennessee State
2266	USF
2266	Western Kentucky
2267	Kansas State
2267	Arizona
2267	Arkansas State
2267	Florida Atlantic
2267	Houston
2267	Kansas
2267	Louisiana-Monroe
2267	Massachusetts
2267	Oregon State
2267	Prairie View A&M
2267	Tulane
2267	Arkansas
2267	Baylor
2267	Florida State
2267	Georgia
2267	Mississippi State
2268	Kansas State
2268	Air Force
2268	Arkansas
2268	Army
2268	Missouri
2268	North Texas
2268	USF
2268	Baylor
2268	Kansas
2268	Minnesota
2268	North Texas
2268	SMU
2268	TCU
2268	Virginia Tech
2269	Kansas State
2269	Akron
2269	Colorado
2269	Kent State
2269	Ohio
2269	South Dakota
2269	Toledo
2269	Virginia Tech
2269	Wisconsin
2270	Kansas State
2270	Arkansas
2270	Houston
2270	Kansas
2270	South Alabama
2270	Southeastern Louisiana
2270	Southern University
2270	West Virginia
2270	Miami
2270	Texas
2270	Texas Tech
2271	Kansas State
2271	Air Force
2271	Arkansas State
2271	Colorado State
2271	Kansas
2271	Louisiana-Monroe
2272	Kansas State
2272	Houston
2272	New Mexico
2272	Texas State
2272	Tulsa
2272	UTEP
2272	Arkansas
2272	Baylor
2272	Boise State
2272	Houston
2272	Oklahoma State
2272	SMU
2272	TCU
2273	Kansas State
2273	Air Force
2273	Charlotte
2273	Colorado State
2273	FIU
2273	Incarnate Word
2273	Louisiana-Monroe
2273	Southern Miss
2273	Tulsa
2273	Utah State
2273	Colorado
2273	Houston
2273	Texas A&M
2274	Kansas State
2274	Kansas
2274	North Dakota State
2274	South Dakota
2274	Iowa
2274	Missouri
2274	Nebraska
2274	North Dakota State
2274	Oklahoma State
2274	South Dakota State
2274	Wyoming
2275	Kansas State
2275	McNeese State
2275	USF
2275	UTSA
2275	Western Kentucky
2275	Nebraska
2276	Kansas State
2276	Miami (OH)
2276	North Dakota
2276	Kansas
2277	Kansas State
2277	Air Force
2277	Akron
2277	Colorado State
2277	Iowa State
2277	North Dakota State
2277	Kansas
2278	Kansas State
2278	Boise State
2278	Nevada
2278	Oregon State
2279	Kansas State
2279	Texas Southern
2279	Abilene Christian
2279	Colorado State
2279	Northwestern State
2279	Texas State
2280	Kentucky
2280	Michigan State
2280	Alabama
2280	Georgia
2280	Tennessee
2280	Arizona
2280	Auburn
2280	Boston College
2280	Bowling Green
2280	Central Michigan
2280	Cincinnati
2280	Clemson
2280	Colorado
2280	Eastern Michigan
2280	Florida
2280	Florida State
2280	Georgia Tech
2280	Indiana
2280	Iowa
2280	Iowa State
2280	Kansas
2280	Kansas State
2280	Louisville
2280	LSU
2280	Maryland
2280	Miami
2280	Miami (OH)
2280	Michigan
2280	Minnesota
2280	Missouri
2280	Nebraska
2280	Ohio State
2280	Oklahoma
2280	Ole Miss
2280	Oregon
2280	Penn State
2280	Pittsburgh
2280	Purdue
2280	Rutgers
2280	Syracuse
2280	Temple
2280	Texas
2280	Texas A&M
2280	Toledo
2280	USC
2280	West Virginia
2280	Western Michigan
2281	Kentucky
2281	USF
2281	Miami
2281	Colorado
2281	Florida
2281	Florida Atlantic
2281	Georgia
2281	Louisville
2281	Michigan
2281	NC State
2281	Nebraska
2281	Oregon
2281	Tennessee
2281	Texas A&M
2281	Florida State
2281	Georgia Tech
2346	Kentucky
2346	Auburn
2346	Duke
2346	Florida State
2346	Georgia
2346	Georgia Tech
2346	Indiana
2346	Iowa State
2346	Louisville
2346	Michigan
2346	Minnesota
2346	Missouri
2346	Northwestern
2346	Ohio State
2346	Ole Miss
2346	Oregon
2346	Penn State
2346	Purdue
2346	Syracuse
2346	Tennessee
2346	Vanderbilt
2346	Virginia
2346	West Virginia
2282	Kentucky
2282	Cincinnati
2282	Duke
2282	Louisville
2282	Maryland
2282	Michigan
2282	Minnesota
2282	Missouri
2282	Notre Dame
2282	Ohio State
2282	Penn State
2282	Pittsburgh
2282	Purdue
2282	Rutgers
2282	West Virginia
2283	Kentucky
2283	Purdue
2283	Akron
2283	Auburn
2283	Buffalo
2283	Cincinnati
2283	Eastern Michigan
2283	Indiana
2283	Iowa
2283	Iowa State
2283	Kansas
2283	Kent State
2283	Louisville
2283	LSU
2283	Maryland
2283	Miami
2283	Michigan State
2283	Minnesota
2283	Penn State
2283	Pittsburgh
2283	Syracuse
2283	Tennessee
2283	West Virginia
2283	Western Michigan
2283	Youngstown State
2284	Kentucky
2284	Oklahoma
2284	Cincinnati
2284	Oregon
2284	Alabama
2284	Arizona
2284	Arkansas
2284	Boston College
2284	Charlotte
2284	Georgia
2284	Georgia Tech
2284	LSU
2284	Memphis
2284	Mississippi State
2284	Nebraska
2284	North Carolina
2284	Tennessee
2284	Texas A&M
2284	Virginia
2284	Virginia Tech
2284	West Virginia
2284	Ole Miss
2285	Kentucky
2285	Washington State
2285	Bowling Green
2285	Cincinnati
2285	Duke
2285	Eastern Kentucky
2285	Georgia
2285	Maryland
2285	Michigan
2285	West Virginia
2285	Wisconsin
2286	Kentucky
2286	Michigan
2286	Akron
2286	Arizona State
2286	Baylor
2286	Boston College
2286	Cincinnati
2286	Eastern Kentucky
2286	Eastern Michigan
2286	Florida State
2286	Georgia Tech
2286	Indiana
2286	Kansas
2286	Kent State
2286	Louisville
2286	Marshall
2286	Maryland
2286	Michigan State
2286	Morgan State
2286	Nebraska
2286	Ohio State
2286	Pittsburgh
2286	Rutgers
2286	Tennessee
2286	Toledo
2286	USC
2286	Virginia Tech
2286	Wake Forest
2286	Youngstown State
2286	Bowling Green
2286	Ohio
2287	Kentucky
2287	Ball State
2287	Bowling Green
2287	Cincinnati
2287	Indiana
2287	Iowa State
2287	Kansas
2287	Kent State
2287	Maryland
2287	Michigan State
2287	Penn State
2287	Pittsburgh
2287	Purdue
2287	Rutgers
2287	Tennessee
2287	Toledo
2287	Virginia
2288	Kentucky
2288	Ball State
2288	Bowling Green
2288	Buffalo
2288	Central Michigan
2288	Cincinnati
2288	Indiana
2288	Iowa State
2288	Michigan State
2288	Minnesota
2288	Penn State
2288	Purdue
2288	Toledo
2288	Washington State
2288	West Virginia
2288	Youngstown State
2289	Kentucky
2289	Appalachian State
2289	Charlotte
2289	Coastal Carolina
2289	Colorado
2289	East Carolina
2289	Georgia Southern
2289	Kansas
2289	Kent State
2289	Liberty
2289	Louisville
2289	NC State
2289	Syracuse
2289	Tennessee
2289	Virginia Tech
2289	Wake Forest
2289	West Virginia
2289	Georgia Tech
2289	Michigan State
2289	North Carolina
2289	South Carolina
2289	Virginia
2290	Kentucky
2290	Cincinnati
2290	Duke
2290	Indiana
2290	Louisville
2290	Missouri
2290	Murray State
2290	Purdue
2290	Vanderbilt
2290	Virginia
2290	Wake Forest
2290	West Virginia
2290	Western Kentucky
2290	Pittsburgh
2290	Wisconsin
2291	Kentucky
2291	Michigan State
2291	Akron
2291	Ball State
2291	Bowling Green
2291	Cincinnati
2291	Eastern Michigan
2291	Georgia Tech
2291	Indiana
2291	Iowa State
2291	Kent State
2291	Liberty
2291	Louisville
2291	Miami (OH)
2291	North Carolina
2291	Notre Dame
2291	Ohio State
2291	Penn State
2291	Pittsburgh
2291	Purdue
2291	Rutgers
2291	Toledo
2291	West Virginia
2292	Kentucky
2292	Alabama A&M
2292	Alabama State
2292	Arkansas
2292	Florida State
2292	Illinois
2292	LSU
2292	Mississippi State
2292	NC State
2292	Ole Miss
2292	Tennessee
2292	Troy
2292	Tulane
2292	UAB
2293	Kentucky
2293	Mississippi State
2293	Ole Miss
2293	Purdue
2294	Kentucky
2294	Michigan State
2294	Pittsburgh
2294	Boston College
2294	Cincinnati
2294	Duke
2294	Indiana
2294	Kent State
2294	Louisville
2294	Miami (OH)
2294	Minnesota
2294	Purdue
2294	Rutgers
2294	Toledo
2294	Wake Forest
2294	West Virginia
2294	Western Michigan
2294	Wisconsin
2295	Louisville
2295	Florida State
2295	Arizona State
2295	Boise State
2295	Bowling Green
2295	California
2295	Colorado
2295	Illinois
2295	Kansas
2295	Kansas State
2295	Michigan State
2295	Northern Arizona
2295	Oregon State
2295	Purdue
2295	Toledo
2295	UCF
2295	UNLV
2295	Utah
2295	Washington State
2295	Yale
2295	Colorado State
2295	Fresno State
2295	Iowa State
2295	Nevada
2296	Louisville
2296	Western Kentucky
2297	Louisville
2297	Maryland
2297	Georgia Tech
2297	Coastal Carolina
2297	Georgia Southern
2297	South Alabama
2297	Western Kentucky
2298	Louisville
2298	Florida State
2298	Florida
2298	FIU
2298	Georgia Tech
2298	Indiana
2298	Kansas
2298	Kent State
2298	Nebraska
2298	Penn State
2298	Pittsburgh
2298	Purdue
2298	West Virginia
2298	Miami
2298	Virginia Tech
2299	Louisville
2299	Arkansas
2299	Arizona State
2299	Auburn
2299	Houston
2299	Kansas
2299	Louisiana
2299	Louisiana Tech
2299	Louisiana-Monroe
2299	Memphis
2299	Mississippi State
2299	SMU
2299	Southern Miss
2299	Tulane
2299	UTSA
2299	Virginia
2300	Louisville
2300	Central Michigan
2300	USF
2301	Louisville
2301	NC State
2301	North Carolina
2301	Rutgers
2301	Kent State
2301	Kentucky
2301	Maryland
2301	Massachusetts
2301	Toledo
2301	Virginia
2301	West Virginia
2301	East Carolina
2301	Michigan State
2301	Temple
2301	Virginia
2302	Louisville
2302	Duke
2302	Iowa State
2302	Kentucky
2302	Middle Tennessee State
2302	NC State
2302	Northern Illinois
2302	Pittsburgh
2302	Syracuse
2302	UAB
2302	Wake Forest
2302	West Virginia
2302	Western Michigan
2303	Louisville
2303	Tennessee
2303	Appalachian State
2303	Bethune-Cookman
2303	Central Michigan
2303	Cincinnati
2303	Coastal Carolina
2303	Colorado State
2303	Connecticut
2303	Duke
2303	Eastern Kentucky
2303	FIU
2303	Florida Atlantic
2303	Georgia Southern
2303	Illinois
2303	Indiana
2303	Kent State
2303	Kentucky
2303	Liberty
2303	Mercer
2303	Miami
2303	Minnesota
2303	Missouri
2303	NC State
2303	Notre Dame
2303	Pittsburgh
2303	Purdue
2303	Rutgers
2303	Samford
2303	South Dakota
2303	Syracuse
2303	Tennessee State
2303	Toledo
2303	Troy
2303	Tulsa
2303	UAB
2303	UCF
2303	USF
2303	Vanderbilt
2303	Virginia
2303	West Virginia
2303	Western Carolina
2303	Western Kentucky
2303	Wisconsin
2632	Louisville
2632	Kansas
2632	Appalachian State
2632	Arkansas State
2632	Austin Peay
2632	Bowling Green
2632	Coastal Carolina
2632	Colorado State
2632	Georgia Tech
2632	Kansas State
2632	Kent State
2632	Louisiana-Monroe
2632	Memphis
2632	Mercer
2632	Miami
2632	Michigan State
2632	Rutgers
2632	Syracuse
2632	Temple
2632	Troy
2632	Tulane
2632	Western Michigan
2632	South Carolina
2632	Wisconsin
2304	Louisville
2304	Washington State
2304	Ball State
2304	Boston College
2304	Buffalo
2304	Central Michigan
2304	Florida Atlantic
2304	Illinois
2304	Indiana
2304	Iowa
2304	Iowa State
2304	Missouri
2304	Oregon
2304	Penn State
2304	Purdue
2304	Syracuse
2304	Toledo
2304	West Virginia
2304	Michigan State
2305	Louisville
2305	Air Force
2305	Appalachian State
2305	Arkansas State
2305	Army
2305	Austin Peay
2305	Chattanooga
2305	Coastal Carolina
2305	Eastern Kentucky
2305	Georgia Tech
2305	Howard
2305	Jackson State
2305	Kansas
2305	Louisiana
2305	Memphis
2305	Middle Tennessee State
2305	Missouri
2305	Murray State
2305	Navy
2305	South Alabama
2305	Southern Miss
2305	Tennessee State
2305	Tulane
2305	UT Martin
2305	Wake Forest
2305	Western Kentucky
2306	Louisville
2306	Kentucky
2306	Central Michigan
2306	Illinois State
2306	Kent State
2306	Rutgers
2306	UT Martin
2306	Western Michigan
2306	Youngstown State
2307	Louisville
2307	Akron
2307	Appalachian State
2307	Campbell
2307	Charlotte
2307	Colorado
2307	Colorado State
2307	East Carolina
2307	Georgia State
2307	Liberty
2307	Massachusetts
2307	Middle Tennessee State
2307	Old Dominion
2307	Pittsburgh
2307	Rutgers
2307	Syracuse
2307	Temple
2307	The Citadel
2307	Troy
2307	UCF
2307	Western Kentucky
2307	NC State
2308	Louisville
2308	Miami
2308	South Carolina
2308	Appalachian State
2308	Arkansas
2308	Boston College
2308	Cincinnati
2308	Duke
2308	FIU
2308	Florida Atlantic
2308	Florida State
2308	Illinois
2308	Marshall
2308	Michigan
2308	Ole Miss
2308	UCF
2308	USF
2308	Utah
2308	Virginia Tech
2308	Wake Forest
2308	West Virginia
2309	Louisville
2309	Akron
2309	Arkansas State
2309	Austin Peay
2309	Ball State
2309	Bowling Green
2309	Central Michigan
2309	Eastern Illinois
2309	Kent State
2309	Kentucky
2309	Marshall
2309	Miami (OH)
2309	Middle Tennessee State
2309	Old Dominion
2309	Rutgers
2309	Temple
2309	Toledo
2309	Tulane
2309	UAB
2309	Western Kentucky
2309	Western Michigan
2309	Youngstown State
2309	Arkansas
2309	Indiana
2309	Purdue
2310	Louisville
2310	Indiana
2310	Ball State
2310	Boston College
2310	Bowling Green
2310	Buffalo
2310	Cincinnati
2310	Purdue
2310	Toledo
2311	Louisville
2311	Austin Peay
2311	Bethune-Cookman
2311	Charlotte
2311	Cincinnati
2311	Coastal Carolina
2311	Colorado State
2311	Connecticut
2311	Eastern Kentucky
2311	FIU
2311	Georgia State
2311	Indiana
2311	Kent State
2311	Kentucky
2311	Liberty
2311	Louisiana
2311	Marshall
2311	Mercer
2311	Middle Tennessee State
2311	Pittsburgh
2311	Purdue
2311	Rutgers
2311	South Dakota
2311	Toledo
2311	Troy
2311	Tulsa
2311	USF
2311	Western Carolina
2311	Western Kentucky
2312	Louisville
2312	Toledo
2312	Air Force
2312	Bowling Green
2312	Fordham
2312	Harvard
2312	Kent State
2312	Yale
2312	Youngstown State
2313	Louisville
2313	Western Michigan
2313	Austin Peay
2313	Louisiana
2314	Louisville
2314	Central Michigan
2314	Chattanooga
2314	Coastal Carolina
2314	East Tennessee State
2314	Eastern Kentucky
2314	Jackson State
2314	Jacksonville State
2314	Murray State
2314	Ohio
2314	South Alabama
2314	Southeast Missouri State
2314	Southern University
2314	Tennessee State
2314	UT Martin
2314	Appalachian State
2314	Georgia State
2314	Georgia Tech
2314	Tennessee
2314	Troy
2314	Tulane
2315	Louisville
2315	Ball State
2315	Bowling Green
2315	Eastern Michigan
2315	Miami (OH)
2315	Toledo
2315	UAB
2315	Western Kentucky
2315	Western Michigan
2315	Kentucky
2315	Miami (OH)
2315	Wake Forest
2316	Louisville
2316	Akron
2316	Albany State University
2316	Eastern Kentucky
2316	Florida Atlantic
2316	Georgia Southern
2316	Indiana
2316	Maryland
2316	Southeast Missouri State
2316	Syracuse
2316	UAB
2317	Louisville
2317	East Carolina
2317	Coastal Carolina
2317	Wofford
2318	Louisville
2318	Air Force
2318	Army
2318	Chattanooga
2318	Massachusetts
2318	South Alabama
2318	Wyoming
2318	Miami (OH)
2319	LSU
2319	Alabama
2319	Georgia
2319	Texas A&M
2319	Auburn
2319	Clemson
2319	Duke
2319	Florida
2319	Florida State
2319	Georgia Southern
2319	Illinois
2319	Kentucky
2319	Louisville
2319	Miami
2319	Michigan
2319	NC State
2319	North Carolina
2319	Notre Dame
2319	Ohio State
2319	Oklahoma
2319	Ole Miss
2319	Penn State
2319	Rutgers
2319	South Carolina
2319	Tennessee
2319	USC
2319	Arkansas
2320	LSU
2320	Alabama
2320	Georgia
2320	Ohio State
2320	USC
2320	Arizona
2320	Arizona State
2320	Auburn
2320	Boise State
2320	California
2320	Clemson
2320	Colorado
2320	Florida
2320	Florida State
2320	Louisville
2320	Miami
2320	Michigan
2320	Nebraska
2320	Notre Dame
2320	Oklahoma
2320	Ole Miss
2320	Oregon
2320	Oregon State
2320	Penn State
2320	San Jose State
2320	Tennessee
2320	Texas
2320	Texas A&M
2320	Utah
2320	Washington
2321	LSU
2321	Alabama
2321	Tennessee
2321	Maryland
2321	Arizona
2321	Auburn
2321	Boston College
2321	Clemson
2321	Florida
2321	Florida State
2321	Georgia
2321	Illinois
2321	Indiana
2321	Kentucky
2321	Miami
2321	Michigan
2321	Michigan State
2321	Nebraska
2321	Ohio State
2321	Ole Miss
2321	Penn State
2321	Pittsburgh
2321	South Carolina
2321	Syracuse
2321	Temple
2321	Texas A&M
2321	USC
2321	Virginia
2321	Virginia Tech
2321	West Virginia
2321	Wisconsin
2321	Arkansas
2322	LSU
2322	Alabama
2322	Arkansas
2322	Colorado
2322	Kansas
2322	Ole Miss
2322	Tennessee
2322	West Virginia
2323	LSU
2323	Texas A&M
2323	Alabama
2323	Arizona
2323	Arkansas
2323	Auburn
2323	Colorado
2323	Florida
2323	Florida State
2323	Georgia
2323	Kansas
2323	Kentucky
2323	Louisiana
2323	Louisiana Tech
2323	Miami
2323	Mississippi State
2323	Missouri
2323	Oklahoma
2323	Ole Miss
2323	Oregon
2323	South Carolina
2323	Tennessee
2323	Texas
2323	Tulane
2323	Virginia
2324	LSU
2324	Arizona State
2324	Oregon
2324	Miami
2324	Alabama
2324	Arkansas
2324	Auburn
2324	Colorado
2324	Florida
2324	Georgia
2324	Georgia Tech
2324	Kentucky
2324	Louisville
2324	Mississippi State
2324	Penn State
2324	South Carolina
2324	Syracuse
2324	Tennessee
2324	UCLA
2324	USC
2325	LSU
2325	Alabama
2325	Cincinnati
2325	Clemson
2325	East Carolina
2325	Florida
2325	Florida State
2325	Louisville
2325	Maryland
2325	Miami
2325	Michigan State
2325	Nebraska
2325	North Carolina
2325	Ohio State
2325	Oklahoma
2325	Old Dominion
2325	Oregon
2325	Penn State
2325	Temple
2325	Tennessee
2325	Texas A&M
2325	Vanderbilt
2325	Virginia
2325	Virginia Tech
2325	West Virginia
2325	Wisconsin
2326	LSU
2326	Iowa
2326	Maryland
2326	Michigan
2326	Penn State
2326	Pittsburgh
2326	St. John's
2326	Syracuse
2326	Virginia Tech
2326	West Virginia
2326	Ohio State
2327	LSU
2327	Tennessee
2327	Alabama
2327	Auburn
2327	Clemson
2327	Florida
2327	Georgia
2327	Georgia Tech
2327	Kentucky
2327	Michigan
2327	NC State
2327	Nebraska
2327	Oklahoma
2327	Ole Miss
2327	Stanford
2327	Syracuse
2327	TCU
2327	Virginia Tech
2328	LSU
2328	Clemson
2328	Georgia
2328	Maryland
2328	Michigan
2328	North Carolina
2328	Penn State
2328	Pittsburgh
2328	Tennessee
2328	Texas A&M
2328	South Carolina
2328	Wisconsin
2329	LSU
2329	Oklahoma State
2329	Alabama
2329	Arizona
2329	Arkansas
2329	Auburn
2329	Baylor
2329	Colorado
2329	Duke
2329	FIU
2329	Houston
2329	Iowa State
2329	Kansas State
2329	Memphis
2329	Miami
2329	Missouri
2329	Nebraska
2329	North Carolina
2329	Northwestern
2329	Oklahoma
2329	SMU
2329	South Carolina
2329	TCU
2329	Texas
2329	Texas Tech
2329	Tulsa
2329	UTSA
2330	LSU
2330	Alabama
2330	Arizona State
2330	Georgia
2330	Grambling State
2330	Louisiana
2330	Louisiana Tech
2330	Mercer
2330	Mississippi State
2330	Ole Miss
2330	Southern University
2330	TCU
2330	Tennessee
2330	Texas
2330	Texas A&M
2331	LSU
2331	Auburn
2331	Florida State
2331	Georgia
2331	Louisville
2331	Miami
2331	Michigan
2331	Michigan State
2331	Missouri
2331	North Carolina
2331	Ohio State
2331	South Carolina
2331	Tennessee
2331	Texas A&M
2331	Virginia Tech
2331	Wisconsin
2331	Arkansas
2332	LSU
2332	Alabama
2332	Arizona
2332	Arkansas
2332	Auburn
2332	Baylor
2332	Illinois
2332	Jackson State
2332	Kansas
2332	Kansas State
2332	Michigan
2332	Missouri
2332	Nebraska
2332	North Texas
2332	Ohio State
2332	Oklahoma State
2332	Ole Miss
2332	SMU
2332	Syracuse
2332	TCU
2332	Texas A&M
2332	Texas Tech
2332	Tulsa
2332	Utah
2333	LSU
2333	Kentucky
2333	Alabama
2333	Arkansas
2333	Auburn
2333	Florida
2333	Florida Atlantic
2333	Florida State
2333	Georgia
2333	Georgia Tech
2333	Kansas
2333	Kent State
2333	Louisville
2333	Memphis
2333	Mercer
2333	Miami
2333	Mississippi State
2333	Nebraska
2333	Ole Miss
2333	Oregon
2333	South Carolina
2333	Tennessee
2333	Texas A&M
2333	Troy
2333	UAB
2334	LSU
2334	USC
2334	Arizona State
2334	Arkansas
2334	Auburn
2334	Colorado
2334	Florida
2334	Georgia
2334	Kentucky
2334	Memphis
2334	Mississippi State
2334	Nicholls State
2334	Oregon
2334	Tennessee
2334	Tulane
2334	Florida State
2335	LSU
2335	Clemson
2335	Alabama
2335	Duke
2335	East Carolina
2335	Florida
2335	Georgia Tech
2335	James Madison
2335	Liberty
2335	Louisville
2335	Maryland
2335	Michigan
2335	Michigan State
2335	Morgan State
2335	NC State
2335	Norfolk State
2335	North Carolina
2335	Notre Dame
2335	Penn State
2335	Pittsburgh
2335	Purdue
2335	Rutgers
2335	Stanford
2335	TCU
2335	Temple
2335	Tennessee
2335	Toledo
2335	Vanderbilt
2335	Virginia
2335	Virginia Tech
2335	West Virginia
2336	LSU
2336	Missouri
2336	Penn State
2336	Washington
2336	Arizona State
2336	Arkansas
2336	Auburn
2336	Brigham Young
2336	California
2336	Colorado
2336	Indiana
2336	Iowa
2336	Iowa State
2336	Kansas
2336	Kansas State
2336	Louisville
2336	Miami
2336	Michigan
2336	Nebraska
2336	Oregon
2336	Princeton
2336	Purdue
2336	South Carolina
2336	Utah
2336	West Virginia
2336	Yale
2336	Colorado State
2336	Northwestern
2336	Princeton
2336	San Diego State
2336	SMU
2336	Texas A&M
2336	UCLA
2336	Wyoming
2337	LSU
2337	Arizona
2337	Arkansas
2337	Auburn
2337	FIU
2337	Florida
2337	Florida Atlantic
2337	Florida State
2337	Georgia
2337	Georgia Tech
2337	Indiana
2337	Kentucky
2337	Louisville
2337	Maryland
2337	Miami
2337	Missouri
2337	NC State
2337	Northern Illinois
2337	Ohio State
2337	Penn State
2337	Pittsburgh
2337	Purdue
2337	Seton Hill
2337	Southern Miss
2337	Syracuse
2337	UCF
2337	USF
2337	Vanderbilt
2337	West Virginia
2338	LSU
2338	Alabama
2338	Tennessee
2338	Texas A&M
2338	Arkansas
2338	Auburn
2338	Florida
2338	Indiana
2338	Louisville
2338	Memphis
2338	Mississippi State
2338	Missouri
2338	Nebraska
2338	Ole Miss
2338	Southern Miss
2338	Louisiana-Monroe
2339	LSU
2339	Oregon
2339	Alabama
2339	Auburn
2339	Baylor
2339	Georgia
2339	Kentucky
2339	Louisiana
2339	Louisiana Tech
2339	Louisville
2339	Memphis
2339	Mississippi State
2339	North Carolina
2339	Ole Miss
2339	Tulane
2340	LSU
2340	Iowa State
2340	Kansas State
2340	Minnesota
2340	Nebraska
2340	Oklahoma
2340	West Virginia
2341	LSU
2341	Alabama
2341	Florida
2341	Louisiana Tech
2341	Mississippi State
2341	Oklahoma State
2341	Rutgers
2341	Southern Miss
2341	Texas A&M
2341	Arkansas
2342	Maryland
2342	Alabama
2342	Miami
2342	Auburn
2342	Baylor
2342	Boston College
2342	FIU
2342	Florida
2342	Florida Atlantic
2342	Florida State
2342	Georgia Tech
2342	Kentucky
2342	Louisville
2342	LSU
2342	North Carolina
2342	Oregon
2342	Penn State
2342	Pittsburgh
2342	Rutgers
2342	Southern Miss
2342	Syracuse
2342	UAB
2342	Washington State
2342	West Virginia
2342	Western Kentucky
2343	Maryland
2343	Akron
2343	Boston College
2343	Bowling Green
2343	Central Michigan
2343	Cincinnati
2343	Florida Atlantic
2343	Georgia Tech
2343	Indiana
2343	Iowa
2343	Iowa State
2343	Kansas
2343	Kentucky
2343	Michigan
2343	Michigan State
2343	Morgan State
2343	Nebraska
2343	Norfolk State
2343	Purdue
2343	Syracuse
2343	Tennessee
2343	Toledo
2343	West Virginia
2343	Western Michigan
2344	Maryland
2344	Tennessee
2344	Alabama
2344	Ole Miss
2344	South Carolina
2344	West Virginia
2344	Georgia Tech
2345	Maryland
2345	Boston College
2345	East Carolina
2345	Massachusetts
2345	North Carolina
2345	Pittsburgh
2345	Rutgers
2345	Syracuse
2345	Temple
2345	Toledo
2345	Alabama
2345	Duke
2345	Kentucky
2345	Ohio State
2345	Penn State
2345	Virginia Tech
2345	Wake Forest
2347	Maryland
2347	South Carolina
2347	Alabama
2347	Arkansas
2347	Florida
2347	Florida Atlantic
2347	Florida State
2347	Georgia
2347	Illinois
2347	Iowa
2347	Kentucky
2347	Louisville
2347	LSU
2347	Miami
2347	Michigan
2347	Missouri
2347	NC State
2347	North Carolina
2347	Ohio State
2347	Oklahoma
2347	Ole Miss
2347	Oregon
2347	Penn State
2347	Pittsburgh
2347	Purdue
2347	Syracuse
2347	Temple
2347	Tennessee
2347	West Virginia
2348	Maryland
2348	UCF
2348	West Virginia
2348	Baylor
2348	Boston College
2348	Cincinnati
2348	Colorado State
2348	Duke
2348	East Carolina
2348	Kent State
2348	Massachusetts
2348	Minnesota
2348	NC State
2348	North Carolina
2348	Old Dominion
2348	Pittsburgh
2348	Rutgers
2348	Syracuse
2348	Temple
2348	Toledo
2348	Virginia Tech
2348	Wake Forest
2348	Western Michigan
2349	Maryland
2349	Air Force
2349	Army
2349	Michigan
2349	Pittsburgh
2349	Rutgers
2349	Syracuse
2349	Virginia
2349	Virginia Tech
2349	Wake Forest
2349	West Virginia
2350	Maryland
2350	Boston College
2350	Kansas
2350	Kentucky
2350	Missouri
2350	Pittsburgh
2350	Purdue
2350	Southern Miss
2350	Syracuse
2350	Texas
2350	Vanderbilt
2350	Wake Forest
2351	Maryland
2351	Illinois
2351	Georgia Tech
2351	Boston College
2351	Cincinnati
2351	Colorado State
2351	Florida
2351	Florida State
2351	Indiana
2351	Iowa
2351	Kansas State
2351	Kentucky
2351	Miami
2351	Middle Tennessee State
2351	North Carolina
2351	Rutgers
2351	Southern Miss
2351	Syracuse
2351	Toledo
2351	UCF
2351	USF
2351	Virginia Tech
2351	West Virginia
2352	Maryland
2352	Marshall
2352	Arizona
2352	Illinois
2352	Morgan State
2352	San Jose State
2352	Southeast Missouri State
2352	Southern Illinois
2352	Southern Miss
2352	Utah State
2353	Maryland
2353	Arizona
2353	Charlotte
2353	Hawaii
2353	Marshall
2353	Oregon State
2353	Utah State
2354	Maryland
2354	Buffalo
2354	East Carolina
2354	Kent State
2354	Morgan State
2354	Ohio
2354	Towson
2355	Maryland
2355	USF
2355	Boston College
2355	Charlotte
2355	Kentucky
2355	NC State
2355	Pittsburgh
2355	Rutgers
2355	Southern Miss
2355	Syracuse
2355	Utah
2355	Vanderbilt
2355	Wake Forest
2355	West Virginia
2355	Western Kentucky
2355	Miami
2356	Maryland
2356	Alabama A&M
2356	Appalachian State
2356	Campbell
2356	Connecticut
2356	East Tennessee State
2356	FIU
2356	Jacksonville State
2356	Massachusetts
2356	Morgan State
2356	Notre Dame College
2356	South Carolina State
2356	Louisville
2357	Maryland
2357	Boston College
2357	Fresno State
2357	Kansas
2357	Nevada
2357	Ole Miss
2357	Oregon
2357	Oregon State
2357	San Jose State
2357	UNLV
2357	Utah
2357	Utah State
2357	Washington State
2358	Maryland
2358	Bryant
2358	Bucknell
2358	Elon
2358	Fordham
2358	Holy Cross
2358	Howard
2358	Lafayette
2358	Massachusetts
2358	Monmouth
2358	New Hampshire
2358	Northern Illinois
2358	Richmond
2358	Stony Brook
2358	Villanova
2358	Buffalo
2358	Connecticut
2358	Penn State
2358	Rutgers
2358	Syracuse
2358	Virginia
2359	Maryland
2359	Florida State
2359	Ole Miss
2359	Bowling Green
2359	Cincinnati
2359	Coastal Carolina
2359	Colorado State
2359	Connecticut
2359	Duke
2359	Florida Atlantic
2359	Georgia Southern
2359	Kentucky
2359	Ohio
2359	Purdue
2359	Southern Miss
2359	Troy
2359	Tulane
2359	UAB
2359	UCF
2359	USF
2359	Virginia Tech
2360	Maryland
2360	Albany
2360	Army
2360	Elon
2360	Fordham
2360	Furman
2360	Lafayette
2360	Lehigh
2360	Massachusetts
2360	Monmouth
2360	Navy
2360	Robert Morris
2360	Sacred Heart
2361	Maryland
2361	Bowling Green
2361	Campbell
2361	Idaho
2361	New Mexico
2361	Tennessee State
2361	Troy
2362	Maryland
2362	Kansas
2362	Kent State
2362	West Virginia
2363	Maryland
2363	Old Dominion
2363	Delaware State
2363	Elon
2363	James Madison
2363	Kent State
2363	Richmond
2363	Temple
2363	Villanova
2363	Syracuse
2364	Maryland
2364	Marshall
2364	Austin Peay
2364	Bowling Green
2364	Campbell
2364	Charlotte
2364	Colorado State
2364	FIU
2364	Florida Atlantic
2364	Howard
2364	Jacksonville
2364	Kentucky
2364	Massachusetts
2364	Samford
2364	South Alabama
2364	Southern Miss
2364	Southern University
2364	Tennessee State
2364	Tennessee Tech
2364	Troy
2364	Tulane
2364	Tulsa
2364	Western Kentucky
2364	Wofford
2364	Georgia Tech
2364	Kansas State
2364	Memphis
2364	Purdue
2364	Rutgers
2364	Temple
2364	Wake Forest
2365	Maryland
2365	East Carolina
2365	Marshall
2365	Texas State
2365	Louisiana Tech
2366	Maryland
2366	Jacksonville State
2366	New Mexico State
2366	Old Dominion
2366	Purdue
2366	SMU
2366	Southern Miss
2366	UAB
2366	UTEP
2366	Illinois
2367	Miami
2367	Boston College
2367	FIU
2367	Florida
2367	Florida Atlantic
2367	Florida State
2367	Georgia
2367	Kentucky
2367	LSU
2367	Mississippi State
2367	Notre Dame
2367	Oklahoma
2367	Ole Miss
2367	Oregon
2367	South Carolina
2367	Syracuse
2367	Texas A&M
2367	UCF
2367	USF
2367	Arkansas
2368	Miami
2368	Alabama
2368	Clemson
2368	Florida
2368	Florida State
2368	Georgia
2368	Georgia Tech
2368	Louisville
2368	LSU
2368	Michigan
2368	Mississippi State
2368	Notre Dame
2368	Oklahoma
2368	Ole Miss
2368	Oregon
2368	South Alabama
2368	South Carolina
2368	Temple
2368	Tennessee
2368	Texas
2368	Texas A&M
2368	USF
2368	Virginia Tech
2369	Miami
2369	Ohio State
2369	Florida State
2369	Oklahoma
2369	Alabama
2369	Auburn
2369	Bowling Green
2369	Clemson
2369	Florida
2369	Florida Atlantic
2369	Georgia
2369	Illinois
2369	Iowa
2369	Kansas State
2369	Kentucky
2369	Louisville
2369	LSU
2369	Michigan
2369	Missouri
2369	NC State
2369	Nebraska
2369	Ole Miss
2369	Oregon
2369	Penn State
2369	Pittsburgh
2369	Purdue
2369	South Carolina
2369	Southern Miss
2369	Syracuse
2369	Temple
2369	Tennessee
2369	Arkansas
2477	Miami
2477	Alabama
2477	Auburn
2477	Clemson
2477	Florida
2477	Florida State
2477	Georgia
2477	Georgia Tech
2477	Louisville
2477	Memphis
2477	Michigan
2477	Mississippi State
2477	Ole Miss
2477	Penn State
2477	South Alabama
2477	South Carolina
2477	Temple
2477	Tennessee
2477	Texas
2477	USF
2477	Arkansas
2370	Miami
2370	Alabama
2370	Arkansas
2370	Auburn
2370	Florida
2370	Florida State
2370	Georgia
2370	Georgia Tech
2370	Michigan
2370	Minnesota
2370	Mississippi State
2370	Missouri
2370	Nebraska
2370	Notre Dame
2370	Oregon
2370	Penn State
2370	Pittsburgh
2370	Purdue
2370	South Carolina
2370	Southern Miss
2370	Syracuse
2370	Tennessee
2370	Troy
2370	UAB
2370	Vanderbilt
2370	Washington State
2370	Florida
2370	Kentucky
2371	Miami
2371	Boston College
2371	California
2371	Colorado
2371	Duke
2371	Georgia Tech
2371	Kentucky
2371	Louisville
2371	Massachusetts
2371	Michigan
2371	Michigan State
2371	Minnesota
2371	NC State
2371	Oklahoma State
2371	Pittsburgh
2371	Purdue
2371	Rutgers
2371	Syracuse
2371	Vanderbilt
2371	Wisconsin
2371	East Carolina
2371	Maine
2371	Michigan State
2371	NC State
2371	North Carolina
2371	Ohio State
2371	Penn State
2371	Rutgers
2371	South Carolina
2371	Tennessee
2371	UCLA
2371	Virginia
2371	West Virginia
2372	Miami
2372	Georgia Tech
2372	Florida State
2372	Arkansas
2372	Cincinnati
2372	Clemson
2372	FIU
2372	Kansas
2372	Kentucky
2372	Louisville
2372	Maryland
2372	Nebraska
2372	Penn State
2372	Pittsburgh
2372	Tennessee
2372	UCF
2372	USF
2373	Miami
2373	South Carolina
2373	Florida
2373	Florida State
2373	Georgia Tech
2373	Indiana
2373	Kentucky
2373	Michigan
2373	Nebraska
2373	North Carolina
2373	Oregon
2373	Penn State
2373	Pittsburgh
2373	Syracuse
2373	Tennessee
2373	UCF
2373	Vanderbilt
2373	West Virginia
2374	Miami
2374	Auburn
2374	Bowling Green
2374	Florida Atlantic
2374	Florida State
2374	Kentucky
2374	LSU
2374	Marshall
2374	Maryland
2374	Missouri
2374	Oklahoma
2374	Syracuse
2374	TCU
2374	Temple
2374	Tennessee
2374	USF
2375	Miami
2375	Alabama
2375	Arkansas
2375	Auburn
2375	Clemson
2375	Duke
2375	Florida
2375	Florida State
2375	Georgia
2375	Georgia Tech
2375	Jackson State
2375	Kentucky
2375	Louisville
2375	LSU
2375	Maryland
2375	Michigan
2375	Mississippi State
2375	NC State
2375	Ole Miss
2375	Oregon
2375	South Carolina
2375	Southern Miss
2375	Tennessee
2375	Texas A&M
2375	Troy
2375	UAB
2375	Ohio State
2376	Miami
2376	Florida State
2376	Auburn
2376	Florida A&M
2376	Georgia
2376	Maryland
2376	Nebraska
2376	Oregon
2376	Penn State
2376	Rutgers
2376	Southern Miss
2376	Syracuse
2376	Tennessee
2376	UAB
2376	UCF
2376	Arkansas
2377	Miami
2377	Kentucky
2377	Arizona State
2377	Auburn
2377	Cincinnati
2377	Coastal Carolina
2377	East Carolina
2377	Florida
2377	Georgia Southern
2377	Georgia State
2377	Georgia Tech
2377	Kansas
2377	Kent State
2377	Liberty
2377	Louisville
2377	Missouri
2377	Ole Miss
2377	Rutgers
2377	South Carolina
2377	Syracuse
2377	Tennessee
2377	Tulane
2377	UCF
2377	USC
2377	USF
2377	Vanderbilt
2377	Virginia
2377	Western Kentucky
2378	Miami
2378	Arkansas
2378	Central Michigan
2378	Cincinnati
2378	FIU
2378	LSU
2378	Michigan
2378	Purdue
2378	South Carolina
2378	USF
2378	Georgia
2379	Miami
2379	Minnesota
2379	West Virginia
2379	Baylor
2379	Howard
2379	Kansas State
2379	Kentucky
2379	Liberty
2379	Maryland
2379	Massachusetts
2379	Nebraska
2379	Oklahoma State
2379	Old Dominion
2379	Pittsburgh
2379	Rutgers
2379	Syracuse
2379	Temple
2379	Texas A&M
2379	UCF
2379	Wake Forest
2380	Miami
2380	West Virginia
2380	Akron
2380	Charlotte
2380	Coastal Carolina
2380	East Carolina
2380	Liberty
2380	Louisville
2380	North Carolina
2380	Purdue
2380	Syracuse
2380	Virginia
2380	Virginia Tech
2380	Western Kentucky
2380	Florida
2380	Gardner-Webb
2380	NC State
2380	Wake Forest
2381	Miami
2381	Bowling Green
2381	Cincinnati
2381	Colorado State
2381	Connecticut
2381	FIU
2381	Florida Atlantic
2381	Florida State
2381	Georgia
2381	Illinois
2381	Indiana
2381	Iowa State
2381	Kansas State
2381	Kent State
2381	Liberty
2381	Louisville
2381	Marshall
2381	Minnesota
2381	NC State
2381	Ole Miss
2381	Pittsburgh
2381	Tennessee
2381	Troy
2381	UCF
2381	USF
2381	UT Martin
2381	Wake Forest
2381	West Virginia
2382	Miami
2382	Louisville
2382	Air Force
2382	Alabama A&M
2382	Alabama State
2382	Bryant
2382	Buffalo
2382	FIU
2382	Florida Atlantic
2382	Georgia State
2382	Indiana
2382	Kent State
2382	Middle Tennessee State
2382	Northern Illinois
2382	South Dakota
2382	Toledo
2382	Utah
2382	West Virginia
2383	Miami
2383	Air Force
2383	Boston College
2383	Brown
2383	Cornell
2383	Dartmouth
2383	Georgia
2383	Harvard
2383	Kentucky
2383	Louisville
2383	Michigan
2383	Mississippi State
2383	Missouri
2383	Northern Illinois
2383	Pittsburgh
2383	Princeton
2383	Purdue
2383	Rutgers
2383	Samford
2383	Southern Miss
2383	Texas
2383	Vanderbilt
2383	William & Mary
2383	Oregon
2384	Miami
2384	Oklahoma State
2384	Purdue
2384	Boston College
2384	Colorado State
2384	Liberty
2384	Louisiana Tech
2384	Memphis
2384	North Texas
2384	SMU
2384	Southern Miss
2384	Texas State
2384	Texas Tech
2384	Tulane
2384	UTSA
2384	Virginia Tech
2385	Miami
2385	Ole Miss
2385	Ball State
2385	Cincinnati
2385	East Tennessee State
2385	Illinois State
2385	Indiana
2385	Marshall
2385	Memphis
2385	Miami (OH)
2385	Middle Tennessee State
2385	Tulane
2385	Wake Forest
2385	Western Kentucky
2386	Michigan
2386	Georgia
2386	Notre Dame
2386	Penn State
2386	Alabama
2386	Boston College
2386	Central Michigan
2386	Cincinnati
2386	Duke
2386	Illinois
2386	Indiana
2386	Iowa
2386	Louisville
2386	LSU
2386	Miami
2386	Miami (OH)
2386	Michigan State
2386	Minnesota
2386	Missouri
2386	Nebraska
2386	Northwestern
2386	Ohio State
2386	Purdue
2386	Rutgers
2386	Stanford
2386	Syracuse
2386	Tennessee
2386	Western Michigan
2386	Wisconsin
2386	Clemson
2386	Florida State
2386	Georgia College
2387	Michigan
2387	Florida
2387	Notre Dame
2387	Akron
2387	Alabama
2387	California
2387	Central Michigan
2387	Clemson
2387	Eastern Michigan
2387	FIU
2387	Florida State
2387	Indiana
2387	Iowa
2387	Kentucky
2387	Louisville
2387	LSU
2387	Miami
2387	Michigan State
2387	Minnesota
2387	Missouri
2387	Nebraska
2387	North Carolina
2387	Northern Illinois
2387	Northwestern
2387	Ohio State
2387	Oregon
2387	Penn State
2387	Pittsburgh
2387	Purdue
2387	Syracuse
2387	Toledo
2387	Vanderbilt
2387	Virginia
2387	West Virginia
2387	Western Michigan
2387	Wisconsin
2388	Michigan
2388	Ohio State
2388	Baylor
2388	Boston College
2388	East Carolina
2388	Georgia
2388	Howard
2388	Kentucky
2388	LSU
2388	Maryland
2388	Massachusetts
2388	Michigan State
2388	Nebraska
2388	North Carolina
2388	Ole Miss
2388	Pittsburgh
2388	Purdue
2388	Rutgers
2388	South Carolina
2388	Temple
2388	Tennessee
2388	Toledo
2388	USC
2388	Vanderbilt
2388	Virginia
2388	Virginia Tech
2388	West Virginia
2388	Wisconsin
2388	Penn State
2389	Michigan
2389	Northwestern
2389	Wisconsin
2389	Boston College
2389	Clemson
2389	Colorado
2389	Duke
2389	Georgia Tech
2389	Maryland
2389	Massachusetts
2389	Michigan State
2389	Nebraska
2389	North Carolina
2389	Notre Dame
2389	Ohio State
2389	Penn State
2389	Pittsburgh
2389	Purdue
2389	Rutgers
2389	San Jose State
2389	Stanford
2389	Syracuse
2389	Tennessee
2389	Texas
2389	Vanderbilt
2389	Virginia
2389	Virginia Tech
2389	Cornell
2389	Georgia Tech
2389	USC
2389	Wake Forest
2390	Michigan
2390	Penn State
2390	Texas A&M
2390	USC
2390	Alabama
2390	Boston College
2390	Clemson
2390	Duke
2390	Kentucky
2390	LSU
2390	Miami
2390	Nebraska
2390	North Carolina
2390	Notre Dame
2390	Ohio State
2390	Ole Miss
2390	Pittsburgh
2390	Rutgers
2390	Stanford
2390	Syracuse
2390	Tennessee
2390	Texas Tech
2390	Vanderbilt
2390	Virginia
2390	Virginia Tech
2390	Wisconsin
2391	Michigan
2391	Boston College
2391	Buffalo
2391	Columbia
2391	Duke
2391	Kent State
2391	Kentucky
2391	Minnesota
2391	Notre Dame
2391	Penn State
2391	Pittsburgh
2391	Princeton
2391	Purdue
2391	Rutgers
2391	Syracuse
2391	Temple
2391	Tulane
2391	Virginia
2391	Virginia Tech
2391	West Virginia
2392	Michigan
2392	Bowling Green
2392	Central Michigan
2392	Iowa State
2392	Kentucky
2392	Maryland
2392	Syracuse
2392	Toledo
2392	Western Michigan
2392	Michigan State
2392	Penn State
2393	Michigan
2393	Kentucky
2393	Ohio State
2393	Penn State
2393	Akron
2393	Arizona
2393	Arizona State
2393	Boston College
2393	Florida Atlantic
2393	Indiana
2393	Iowa
2393	Maryland
2393	Minnesota
2393	Northern Illinois
2393	Northwestern
2393	Notre Dame
2393	Oklahoma
2393	Pittsburgh
2393	Purdue
2393	Rutgers
2393	West Virginia
2393	Western Michigan
2393	Wisconsin
2393	Michigan State
2393	Pittsburgh
2394	Michigan
2394	Notre Dame
2394	Auburn
2394	Boston College
2394	Dartmouth
2394	Duke
2394	Florida
2394	Georgia Tech
2394	Harvard
2394	Iowa
2394	Massachusetts
2394	Miami
2394	Michigan State
2394	Nebraska
2394	Northwestern
2394	Ohio State
2394	Oregon
2394	Penn State
2394	Pittsburgh
2394	Princeton
2394	Purdue
2394	Rutgers
2394	Syracuse
2394	Tennessee
2394	UCLA
2394	Virginia
2394	West Virginia
2394	Yale
2394	Connecticut
2394	Maine
2394	New Hampshire
2394	Rhode Island
2394	Stanford
2395	Michigan
2395	Alabama
2395	Auburn
2395	Clemson
2395	Duke
2395	Florida Atlantic
2395	Florida State
2395	Georgia
2395	Georgia Southern
2395	Georgia Tech
2395	Kansas State
2395	Kentucky
2395	Louisville
2395	Miami
2395	Minnesota
2395	Mississippi State
2395	North Carolina
2395	Ohio State
2395	Oklahoma
2395	Penn State
2395	South Carolina
2395	USF
2395	Washington State
2395	Florida
2395	Tennessee
2395	Vanderbilt
2396	Michigan
2396	Maryland
2396	Massachusetts
2396	Michigan State
2396	Pittsburgh
2396	Syracuse
2396	Tennessee
2396	West Virginia
2396	Georgia Tech
2396	NC State
2397	Michigan
2397	UCLA
2397	Arizona
2397	Arizona State
2397	Boston College
2397	California
2397	Colorado
2397	Duke
2397	Indiana
2397	Kansas
2397	Kansas State
2397	Nebraska
2397	Nevada
2397	Northwestern
2397	Oklahoma
2397	Ole Miss
2397	Oregon State
2397	Pittsburgh
2397	Purdue
2397	TCU
2397	USC
2397	Utah
2397	Utah State
2397	Vanderbilt
2397	Washington
2397	Washington State
2397	Stanford
2398	Michigan
2398	Arizona State
2398	Brigham Young
2398	California
2398	Colorado
2398	Hawaii
2398	Oregon
2398	Sacramento State
2398	Southern Utah
2398	UCLA
2398	Utah State
2398	Washington
2398	Wisconsin
2399	Michigan
2399	Akron
2399	Army
2399	Ball State
2399	Boston College
2399	Bowling Green
2399	Cincinnati
2399	Duke
2399	Howard
2399	Indiana
2399	Liberty
2399	Massachusetts
2399	Minnesota
2399	Nebraska
2399	Ohio
2399	Pittsburgh
2399	Purdue
2399	Syracuse
2399	Temple
2399	Toledo
2399	Vanderbilt
2399	Wake Forest
2399	West Virginia
2399	Wisconsin
2399	Maryland
2399	Ohio State
2399	Penn State
2400	Michigan
2400	Air Force
2400	Arizona State
2400	Army
2400	Brown
2400	Campbell
2400	Columbia
2400	Cornell
2400	Dartmouth
2400	Georgetown
2400	Georgia Tech
2400	Harvard
2400	Holy Cross
2400	Howard
2400	James Madison
2400	Kent State
2400	NC State
2400	Old Dominion
2400	Pennsylvania
2400	Pittsburgh
2400	Princeton
2400	Richmond
2400	Rutgers
2400	Vanderbilt
2400	Virginia Tech
2400	William & Mary
2400	Yale
2400	Air Force
2400	Massachusetts
2400	North Carolina
2400	Richmond
2400	Syracuse
2400	Wake Forest
2401	Michigan
2401	Duke
2401	Arizona
2401	Arizona State
2401	California
2401	Colorado
2401	Colorado State
2401	Iowa
2401	Kansas State
2401	Miami
2401	Missouri
2401	Nebraska
2401	Notre Dame
2401	Ohio State
2401	Oklahoma
2401	Oklahoma State
2401	Oregon
2401	Penn State
2401	Purdue
2401	USC
2401	Utah
2401	Washington State
2401	South Carolina
2402	Michigan
2402	Boston College
2402	Kent State
2402	Massachusetts
2402	Miami
2402	Michigan State
2402	Mississippi State
2402	Ohio State
2402	Penn State
2402	Pittsburgh
2402	Rutgers
2402	Syracuse
2402	Temple
2402	Tennessee
2402	Wisconsin
2402	Oregon
2403	Michigan
2403	Ball State
2403	Indiana
2403	Iowa State
2403	Kentucky
2403	Michigan State
2403	Minnesota
2403	Missouri
2403	Nebraska
2403	Northern Illinois
2403	Syracuse
2403	Toledo
2404	Michigan
2404	West Virginia
2404	Baylor
2404	Boston College
2404	Duke
2404	Maryland
2404	Miami
2404	Nebraska
2404	Ohio State
2404	Penn State
2404	Pittsburgh
2404	Purdue
2404	Rutgers
2404	Syracuse
2404	Temple
2404	Tennessee
2404	Texas A&M
2404	Vanderbilt
2404	Virginia
2404	Virginia Tech
2404	Wisconsin
2405	Michigan
2405	Arizona
2405	Colorado State
2405	Oregon
2405	Oregon State
2405	South Carolina
2405	Texas A&M
2405	UNLV
2406	Michigan
2406	Connecticut
2406	Duke
2406	Georgia Tech
2406	Iowa
2406	Massachusetts
2406	Mississippi State
2406	Ole Miss
2406	Ole Miss
2406	Purdue
2406	Rutgers
2406	Syracuse
2406	Temple
2406	Toledo
2406	Tulane
2406	Boston College
2406	Holy Cross
2406	Maine
2406	New Hampshire
2406	Notre Dame
2406	Ohio State
2406	Rhode Island
2406	Rutgers
2406	Virginia Tech
2406	Wake Forest
2406	Wisconsin
2407	Michigan
2407	Northwestern
2407	Air Force
2407	Boston College
2407	Duke
2407	East Carolina
2407	Indiana
2407	Iowa
2407	Kansas
2407	Kent State
2407	Liberty
2407	Maryland
2407	Massachusetts
2407	Michigan State
2407	North Carolina
2407	Penn State
2407	Purdue
2407	Rutgers
2407	Syracuse
2407	Temple
2407	Vanderbilt
2407	Virginia Tech
2407	Yale
2408	Michigan
2408	Maryland
2408	Syracuse
2408	Temple
2408	Virginia Tech
2409	Michigan
2409	Georgia Tech
2409	Memphis
2409	Cincinnati
2409	Dartmouth
2409	FIU
2409	Florida Atlantic
2409	Nevada
2409	Princeton
2409	Tulane
2409	UCF
2409	UNLV
2409	UTSA
2409	Yale
2409	Arkansas
2410	Michigan
2410	Air Force
2410	Albany
2410	Army
2410	Brown
2410	Bryant
2410	Colgate
2410	Columbia
2410	Cornell
2410	Dartmouth
2410	Elon
2410	Fordham
2410	Georgetown
2410	Harvard
2410	Holy Cross
2410	Lafayette
2410	Lehigh
2410	Monmouth
2410	Navy
2410	New Hampshire
2410	Pennsylvania
2410	Princeton
2410	Richmond
2410	Robert Morris
2410	Sacred Heart
2410	Yale
2410	Youngstown State
2411	Michigan State
2411	Arkansas
2411	Alabama
2411	Baylor
2411	Boston College
2411	Clemson
2411	Colorado
2411	FIU
2411	Florida State
2411	Georgia
2411	Georgia Tech
2411	LSU
2411	Michigan
2411	Missouri
2411	Nebraska
2411	Notre Dame
2411	Notre Dame College
2411	Oklahoma
2411	Oklahoma State
2411	Purdue
2411	Rutgers
2411	SMU
2411	Stanford
2411	TCU
2411	Texas
2411	Texas A&M
2411	Texas Tech
2411	Vanderbilt
2412	Michigan State
2412	Akron
2412	Ball State
2412	Boston College
2412	Bowling Green
2412	Central Michigan
2412	Cincinnati
2412	Indiana
2412	Iowa
2412	Kentucky
2412	Miami
2412	Michigan
2412	Minnesota
2412	Northern Illinois
2412	Ohio State
2412	Pittsburgh
2412	Purdue
2412	Syracuse
2412	Toledo
2412	West Virginia
2412	Western Michigan
2412	Wisconsin
2412	Notre Dame
2412	Penn State
2413	Michigan State
2413	Cincinnati
2413	Iowa
2413	Minnesota
2413	Nebraska
2413	Purdue
2413	Rutgers
2413	Ohio State
2413	Stanford
2414	Michigan State
2414	Arkansas
2414	Boston College
2414	Colorado
2414	East Carolina
2414	Florida
2414	Florida State
2414	Georgia
2414	Kentucky
2414	Louisville
2414	LSU
2414	Maryland
2414	Michigan
2414	Mississippi State
2414	Nebraska
2414	Ole Miss
2414	Oregon
2414	Pittsburgh
2414	South Carolina
2414	Virginia Tech
2414	West Virginia
2414	Clemson
2414	Ohio State
2414	Oklahoma State
2414	Tennessee
2415	Michigan State
2415	Air Force
2415	Akron
2415	Ball State
2415	Boston College
2415	Bowling Green
2415	Central Michigan
2415	Cincinnati
2415	Duke
2415	Indiana
2415	Kansas
2415	Kentucky
2415	Louisville
2415	Marshall
2415	Michigan
2415	Minnesota
2415	Morgan State
2415	NC State
2415	Northern Illinois
2415	Ohio State
2415	Penn State
2415	Pittsburgh
2415	Purdue
2415	Seton Hill
2415	Syracuse
2415	Toledo
2415	West Virginia
2415	Western Illinois
2415	Western Michigan
2415	Toledo
2416	Michigan State
2416	Cincinnati
2416	Akron
2416	Ball State
2416	Bowling Green
2416	Kent State
2416	Miami (OH)
2416	Ohio
2416	Toledo
2416	Youngstown State
2417	Michigan State
2417	Pittsburgh
2417	Akron
2417	Ball State
2417	Bowling Green
2417	Cincinnati
2417	Eastern Michigan
2417	Indiana
2417	Iowa
2417	Kent State
2417	Michigan
2417	Navy
2417	Rutgers
2417	Toledo
2417	Penn State
2417	Wisconsin
2418	Michigan State
2418	Army
2418	Buffalo
2418	Fordham
2418	Massachusetts
2418	Michigan
2418	Nebraska
2418	Pittsburgh
2418	Youngstown State
2418	Monmouth
2418	Northwestern
2418	Ohio State
2418	Penn State
2418	Syracuse
2419	Michigan State
2419	Akron
2419	Appalachian State
2419	Ball State
2419	Bowling Green
2419	Central Michigan
2419	Charlotte
2419	Cincinnati
2419	Coastal Carolina
2419	Colorado State
2419	Connecticut
2419	Georgia State
2419	Georgia Tech
2419	Kansas
2419	Kent State
2419	Louisville
2419	Mercer
2419	Middle Tennessee State
2419	Pittsburgh
2419	Rutgers
2419	Syracuse
2419	Toledo
2419	Troy
2419	UAB
2419	Utah State
2419	Virginia
2419	Wake Forest
2419	West Virginia
2419	Western Carolina
2419	Western Kentucky
2419	Western Michigan
2420	Michigan State
2420	Ball State
2420	Boston College
2420	Bowling Green
2420	Buffalo
2420	Central Michigan
2420	Cincinnati
2420	Colorado
2420	Eastern Michigan
2420	Indiana
2420	Iowa State
2420	Kansas State
2420	Kent State
2420	Massachusetts
2420	Miami (OH)
2420	Minnesota
2420	NC State
2420	Northern Illinois
2420	Pittsburgh
2420	Temple
2420	Toledo
2420	West Virginia
2420	Western Michigan
2420	Georgia Tech
2420	Notre Dame
2420	Purdue
2421	Michigan State
2421	West Virginia
2421	Virginia Tech
2421	USF
2421	Cincinnati
2421	East Carolina
2421	FIU
2421	Georgia Southern
2421	Georgia State
2421	Liberty
2421	Missouri
2421	Rutgers
2421	Tennessee
2421	Tulane
2422	Michigan State
2422	Air Force
2422	Ball State
2422	Bowling Green
2422	Central Michigan
2422	Illinois State
2422	Indiana
2422	Indiana State
2422	Miami (OH)
2422	Navy
2422	Northern Illinois
2422	Ohio
2422	Purdue
2422	Toledo
2422	Tulane
2422	Western Illinois
2422	Western Michigan
2423	Michigan State
2423	Akron
2423	Ball State
2423	Eastern Kentucky
2423	Fordham
2423	Kent State
2423	Robert Morris
2423	West Virginia
2423	Youngstown State
2424	Michigan State
2424	Akron
2424	Bowling Green
2424	Kent State
2424	Cincinnati
2424	Iowa
2424	Miami (OH)
2425	Michigan State
2425	Cincinnati
2425	Purdue
2425	Boston College
2425	Bowling Green
2425	Iowa State
2425	Kent State
2425	Kentucky
2425	Louisville
2425	Maryland
2425	Minnesota
2425	Ohio
2425	Toledo
2425	Youngstown State
2425	Penn State
2425	Wisconsin
2426	Michigan State
2426	Virginia Tech
2426	Fordham
2426	Holy Cross
2426	Howard
2426	Sacred Heart
2426	Western Michigan
2426	William & Mary
2427	Michigan State
2427	Akron
2427	Ball State
2427	Boston College
2427	Bowling Green
2427	Buffalo
2427	Cincinnati
2427	Eastern Michigan
2427	Kent State
2427	Massachusetts
2427	Miami (OH)
2427	Minnesota
2427	Pittsburgh
2427	Purdue
2427	Rutgers
2427	Toledo
2427	Yale
2427	Youngstown State
2427	Notre Dame
2428	Michigan State
2428	Air Force
2428	Appalachian State
2428	Army
2428	Cincinnati
2428	Coastal Carolina
2428	Eastern Kentucky
2428	FIU
2428	Liberty
2428	Marshall
2428	Michigan State
2428	Toledo
2428	Tulane
2429	Michigan State
2429	Connecticut
2429	Eastern Michigan
2429	Buffalo
2429	Coastal Carolina
2429	Fordham
2429	Indiana
2429	Maine
2429	Massachusetts
2429	Northern Illinois
2429	Syracuse
2429	Toledo
2430	Michigan State
2430	Army
2430	Illinois State
2430	Miami (OH)
2430	Yale
2430	Indiana
2431	Minnesota
2431	Kansas
2431	Florida State
2431	Illinois
2431	Indiana
2431	Iowa
2431	Iowa State
2431	LSU
2431	Michigan State
2431	Missouri
2431	Ole Miss
2431	Purdue
2431	TCU
2431	Texas A&M
2431	Western Michigan
2432	Minnesota
2432	Iowa State
2432	Wisconsin
2432	Arizona State
2432	Iowa
2432	Kansas
2432	Kansas State
2432	Missouri
2432	Notre Dame
2432	Texas A&M
2432	Michigan
2432	Northwestern
2432	Ohio State
2432	Oklahoma
2432	Oklahoma State
2432	Stanford
2432	Tennessee
2432	Virginia
2433	Minnesota
2433	Iowa
2433	Kansas
2433	Kansas State
2433	Louisiana Tech
2433	Arkansas
2433	Miami
2433	Michigan
2433	Nebraska
2433	Oklahoma State
2433	TCU
2433	USC
2434	Minnesota
2434	Colorado
2434	Louisville
2434	Texas
2434	Utah
2434	Ole Miss
2434	Arizona
2434	Arkansas
2434	Baylor
2434	Houston
2434	Kansas
2434	Kansas State
2434	North Texas
2434	Oklahoma State
2434	Purdue
2434	SMU
2434	Southern Miss
2434	Tennessee
2434	Texas Tech
2434	Tulsa
2434	UTSA
2434	Virginia
2435	Minnesota
2435	Arkansas
2435	Iowa
2435	Iowa State
2436	Minnesota
2436	Cincinnati
2436	Virginia
2436	Boston College
2436	Brown
2436	Charlotte
2436	Eastern Michigan
2436	FIU
2436	Florida Atlantic
2436	Iowa State
2436	Kentucky
2436	LSU
2436	Maryland
2436	Miami
2436	NC State
2436	Northern Illinois
2436	Pittsburgh
2436	Rutgers
2436	Syracuse
2436	Toledo
2436	UTSA
2436	Vanderbilt
2436	West Virginia
2437	Minnesota
2437	Iowa
2437	New Mexico State
2437	North Dakota State
2437	Northern Illinois
2437	South Dakota
2437	South Dakota State
2437	Wyoming
2437	Wyoming
2437	Minnesota
2438	Minnesota
2438	Missouri
2438	Eastern Illinois
2438	Iowa
2438	Iowa State
2438	Kansas
2438	Kansas State
2438	Missouri
2438	Missouri State
2438	Nebraska
2438	Notre Dame
2438	Oklahoma State
2438	Purdue
2438	SMU
2438	Texas
2438	Kentucky
2438	Northwestern
2438	Ohio State
2439	Minnesota
2439	Ball State
2439	Central Michigan
2439	Cincinnati
2439	Illinois State
2439	Indiana
2439	Kansas
2439	Kent State
2439	Ohio
2439	Toledo
2440	Minnesota
2440	Arkansas State
2440	Campbell
2440	Charlotte
2440	Chattanooga
2440	Jacksonville State
2440	Mercer
2440	Savannah State
2440	Syracuse
2440	Western Kentucky
2441	Minnesota
2441	Cincinnati
2441	Indiana
2441	Akron
2441	Ball State
2441	Bowling Green
2441	Dartmouth
2441	Eastern Michigan
2441	Maryland
2441	Ohio
2441	Rutgers
2441	Toledo
2441	Western Michigan
2441	Youngstown State
2441	Louisville
2441	Michigan State
2441	Northwestern
2441	Penn State
2441	Pittsburgh
2441	Wisconsin
2442	Minnesota
2442	Ball State
2442	Illinois State
2442	Miami (OH)
2442	North Dakota State
2442	Northern Illinois
2442	South Dakota
2442	Western Michigan
2442	Iowa
2442	Wisconsin
2443	Minnesota
2443	Ball State
2443	Eastern Kentucky
2443	Kansas
2443	Kansas State
2443	Kent State
2443	Northern Iowa
2443	South Dakota
2443	Central Arkansas
2443	Iowa State
2443	North Dakota State
2443	Northern Iowa
2444	Minnesota
2444	Boston College
2444	Florida Atlantic
2444	Massachusetts
2444	Rutgers
2444	Syracuse
2444	Temple
2444	Penn State
2445	Minnesota
2445	Colorado
2445	Texas Tech
2445	Baylor
2445	Houston
2445	Illinois State
2445	Kansas
2445	Louisiana
2445	Louisiana-Monroe
2445	Nevada
2445	Texas State
2445	Tulsa
2445	UTSA
2445	Washington State
2446	Minnesota
2446	Akron
2446	Alcorn State
2446	Chattanooga
2446	Cincinnati
2446	Coastal Carolina
2446	Colorado State
2446	Eastern Michigan
2446	FIU
2446	Florida A&M
2446	Florida Atlantic
2446	Georgia
2446	Georgia Southern
2446	Georgia State
2446	Kent State
2446	Liberty
2446	Louisville
2446	Marshall
2446	Maryland
2446	Mississippi State
2446	Purdue
2446	Rutgers
2446	Samford
2446	South Alabama
2446	Southern Miss
2446	Texas A&M
2446	Troy
2446	UAB
2446	USF
2446	Virginia
2446	West Virginia
2447	Minnesota
2447	North Dakota
2447	Northern Iowa
2447	South Dakota
2447	South Dakota State
2448	Minnesota
2448	Miami (OH)
2448	Air Force
2448	Akron
2448	Ball State
2448	Eastern Michigan
2448	Kent State
2448	Toledo
2448	Tulane
2449	Minnesota
2449	Akron
2449	Cincinnati
2449	Coastal Carolina
2449	Florida Atlantic
2449	Liberty
2449	Louisville
2449	Penn State
2449	Temple
2449	Troy
2449	Western Carolina
2450	Minnesota
2450	Boston College
2450	Illinois
2450	Akron
2450	Ball State
2450	Bowling Green
2450	Buffalo
2450	Central Michigan
2450	Cincinnati
2450	Colorado State
2450	Cornell
2450	Dartmouth
2450	Eastern Michigan
2450	Indiana
2450	Iowa State
2450	Kansas
2450	Kent State
2450	Massachusetts
2450	Miami (OH)
2450	Missouri
2450	Northwestern
2450	Ohio
2450	Pennsylvania
2450	Princeton
2450	Rutgers
2450	Temple
2450	Toledo
2450	Western Michigan
2450	Yale
2450	Bowling Green
2451	Minnesota
2451	Grambling State
2451	Illinois State
2451	Stephen F. Austin
2451	Tennessee State
2451	Harvard
2451	Kansas
2451	Oklahoma State
2451	Yale
2478	Minnesota
2478	Akron
2478	Appalachian State
2478	Ball State
2478	Boston College
2478	Cincinnati
2478	Coastal Carolina
2478	Connecticut
2478	East Carolina
2478	Florida Atlantic
2478	Georgia Southern
2478	Houston
2478	Indiana
2478	Kent State
2478	Liberty
2478	Louisville
2478	Ohio
2478	Oregon State
2478	South Alabama
2478	Syracuse
2478	Troy
2478	UAB
2478	Utah State
2478	West Virginia
2478	Western Kentucky
2478	Duke
2478	Oregon State
2478	Wisconsin
2452	Minnesota
2452	Massachusetts
2452	Howard
2452	Indiana
2452	Tennessee
2452	Pittsburgh
2452	Syracuse
2452	Virginia Tech
2453	Minnesota
2453	Austin Peay
2453	Ball State
2453	Indiana
2453	Iowa State
2453	Murray State
2453	UT Martin
2453	Wisconsin
2454	Minnesota
2454	Buffalo
2454	Massachusetts
2455	Mississippi State
2455	Wisconsin
2455	Louisville
2455	Alabama
2455	Arkansas
2455	Auburn
2455	Boston College
2455	Florida
2455	Florida State
2455	Georgia Tech
2455	Kansas State
2455	Kentucky
2455	Miami
2455	Michigan
2455	Ohio State
2455	Ole Miss
2455	Oregon
2455	South Carolina
2455	Syracuse
2455	Tennessee
2455	Texas
2455	Texas A&M
2455	Virginia
2455	West Virginia
2456	Mississippi State
2456	Ole Miss
2456	Memphis
2456	Nebraska
2456	Tennessee
2456	Louisiana-Monroe
2456	Samford
2456	South Alabama
2456	Southern Miss
2456	Auburn
2456	Missouri
2457	Mississippi State
2457	Illinois
2457	Maryland
2457	Ole Miss
2457	Auburn
2457	Memphis
2457	Southern Miss
2457	Tennessee
2457	Alabama
2457	Arkansas
2458	Mississippi State
2458	Alabama
2458	Tennessee
2458	Colorado
2458	Nebraska
2458	Oregon
2459	Mississippi State
2459	Florida
2459	South Carolina
2459	Arkansas
2459	Georgia
2459	Kentucky
2459	Louisville
2459	Memphis
2459	Missouri
2459	Ole Miss
2459	Tennessee
2459	Washington State
2459	Alabama
2459	Auburn
2459	UCF
2460	Mississippi State
2460	Ole Miss
2460	Oregon
2460	Arkansas
2460	Arkansas State
2460	Austin Peay
2460	Louisiana
2460	Louisiana Tech
2460	Louisville
2460	Memphis
2460	Missouri
2460	Southern Miss
2460	UT Martin
2460	Washington State
2460	Duke
2460	Kentucky
2460	North Carolina
2460	Notre Dame
2460	Purdue
2460	Tennessee
2461	Mississippi State
2461	South Carolina
2461	Alabama
2461	Arkansas
2461	Georgia
2461	Indiana
2461	Louisiana Tech
2461	Louisiana-Monroe
2461	Ole Miss
2461	Southern Miss
2461	Tennessee
2461	Auburn
2462	Mississippi State
2462	Nebraska
2462	Akron
2462	Alabama
2462	Appalachian State
2462	Auburn
2462	FIU
2462	Florida Atlantic
2462	Georgia Southern
2462	Georgia Tech
2462	Jacksonville State
2462	Kentucky
2462	Liberty
2462	Memphis
2462	Middle Tennessee State
2462	Oklahoma
2462	Ole Miss
2462	Purdue
2462	South Alabama
2462	Southern Miss
2462	Tennessee
2462	Troy
2462	Tulane
2462	UAB
2462	Virginia Tech
2462	West Virginia
2462	Western Kentucky
2462	Arkansas State
2462	LSU
2463	Mississippi State
2463	Baylor
2463	Arkansas
2463	Kentucky
2463	South Carolina
2463	Auburn
2463	Ole Miss
2463	Southern Miss
2463	Utah
2464	Mississippi State
2464	Arkansas
2464	Auburn
2464	Florida
2464	Louisville
2464	Southern Miss
2464	Georgia
2464	LSU
2464	Ole Miss
2465	Mississippi State
2465	Air Force
2465	Arkansas
2465	Auburn
2465	Ole Miss
2465	South Alabama
2465	Southern Miss
2465	Vanderbilt
2466	Mississippi State
2466	Memphis
2466	Nebraska
2466	Tennessee
2466	Arkansas State
2466	Louisiana-Monroe
2466	Louisville
2466	Middle Tennessee State
2466	Southern Miss
2466	Texas A&M
2466	Tulane
2467	Mississippi State
2467	Troy
2467	Tulane
2467	Washington State
2467	Ole Miss
2468	Mississippi State
2469	Mississippi State
2469	Georgia Southern
2469	Ole Miss
2469	Troy
2470	Mississippi State
2470	Austin Peay
2470	Oregon
2470	Arkansas State
2470	Florida A&M
2470	Louisiana
2470	South Alabama
2470	Southern Miss
2470	Tennessee
2470	Troy
2470	Louisiana Tech
2470	Memphis
2470	Miami
2470	Nebraska
2470	Ole Miss
2470	Texas
2470	Tulane
2471	Mississippi State
2471	Arkansas State
2471	Kentucky
2471	Louisiana College
2471	Louisiana Tech
2471	Louisiana-Monroe
2471	Louisville
2471	Louisville
2471	Missouri
2471	Nebraska
2471	Southern Miss
2471	Vanderbilt
2471	Western Kentucky
2471	Georgia Tech
2471	Kentucky
2471	Memphis
2471	Ole Miss
2472	Mississippi State
2472	South Alabama
2472	Colorado
2472	Oregon
2472	West Virginia
2472	Arkansas
2473	Mississippi State
2473	Arkansas State
2473	Florida State
2473	Louisiana
2473	Louisiana Tech
2473	Louisiana-Monroe
2473	Memphis
2473	Missouri
2473	South Alabama
2473	Southern Miss
2473	Tulane
2473	Georgia Tech
2473	LSU
2473	Ole Miss
2473	Purdue
2474	Mississippi State
2474	Indiana
2474	Southern Miss
2474	Tennessee
2474	UAB
2474	Memphis
2474	Ole Miss
2475	Mississippi State
2475	Auburn
2475	Florida
2475	Arizona
2475	Oregon
2475	Oregon State
2475	San Jose State
2475	Syracuse
2475	Utah
2476	NC State
2476	Alabama
2476	Arkansas
2476	Auburn
2476	East Carolina
2476	Florida
2476	Florida State
2476	Georgia
2476	Iowa State
2476	Kentucky
2476	Louisville
2476	Maryland
2476	Miami
2476	Michigan
2476	North Carolina
2476	Notre Dame
2476	Ohio State
2476	Oklahoma
2476	Penn State
2476	South Carolina
2476	Tennessee
2476	Texas A&M
2476	Vanderbilt
2476	Virginia
2476	Virginia Tech
2476	Wake Forest
2476	West Virginia
2476	Wisconsin
2476	Clemson
2476	Michigan State
2479	NC State
2479	Akron
2479	Appalachian State
2479	Army
2479	Central Michigan
2479	Charlotte
2479	Coastal Carolina
2479	East Carolina
2479	Eastern Kentucky
2479	Georgia Southern
2479	Liberty
2479	Louisville
2479	Massachusetts
2479	Navy
2479	The Citadel
2479	Wofford
2479	Duke
2480	NC State
2480	Air Force
2480	Cincinnati
2480	Columbia
2480	East Carolina
2480	Eastern Kentucky
2480	Florida Atlantic
2480	Furman
2480	Georgia Southern
2480	Georgia State
2480	Memphis
2480	Mercer
2480	Middle Tennessee State
2480	Samford
2480	Savannah State
2480	Troy
2480	Tulane
2480	UCF
2480	Vanderbilt
2480	Western Kentucky
2480	Duke
2481	NC State
2481	Arizona
2481	Colorado
2481	Akron
2481	Central Michigan
2481	Coastal Carolina
2481	Colorado State
2481	Duke
2481	East Carolina
2481	Georgia Southern
2481	Georgia State
2481	Houston
2481	Kansas
2481	Louisville
2481	Minnesota
2481	Mississippi State
2481	Pittsburgh
2481	Purdue
2481	Rutgers
2481	South Alabama
2481	Troy
2481	Virginia
2481	Virginia Tech
2481	Wake Forest
2481	Western Kentucky
2481	Georgia Tech
2481	Tennessee
2482	NC State
2482	Charlotte
2482	Coastal Carolina
2482	Duquesne
2482	East Carolina
2482	Elon
2482	Miami (OH)
2482	Ohio
2482	Old Dominion
2482	Wake Forest
2482	Wofford
2483	NC State
2483	Arizona
2483	Arizona State
2483	Colorado State
2483	Iowa State
2483	Nevada
2483	Boise State
2484	NC State
2484	Chattanooga
2484	Florida Atlantic
2484	Liberty
2484	Louisville
2484	LSU
2484	Maryland
2484	Nebraska
2484	North Carolina
2484	Penn State
2484	Pittsburgh
2484	TCU
2484	Temple
2484	Tennessee
2484	Texas A&M
2484	Virginia Tech
2484	Arkansas
2484	Auburn
2484	Charlotte
2484	Florida State
2484	Maryland
2485	NC State
2485	USF
2485	Florida State
2485	Kentucky
2485	Maryland
2485	Miami
2485	Michigan
2485	Ohio State
2485	Oklahoma
2485	South Carolina
2485	Texas
2486	NC State
2486	Air Force
2486	Appalachian State
2486	Charlotte
2486	Coastal Carolina
2486	East Carolina
2486	Georgia Southern
2486	Georgia State
2486	Arkansas
2486	Duke
2486	Elon
2486	Howard
2486	Louisville
2486	Marshall
2486	North Carolina
2486	Wake Forest
2487	NC State
2487	Air Force
2487	Florida Atlantic
2487	Georgia State
2487	Louisville
2487	Memphis
2487	Furman
2487	Georgia Southern
2487	Wake Forest
2487	Wofford
2488	NC State
2488	Massachusetts
2488	Merrimack
2488	Navy
2488	Rhode Island
2488	Connecticut
2488	North Alabama
2489	NC State
2489	Akron
2489	Indiana
2489	Iowa State
2489	Marshall
2489	Memphis
2489	Purdue
2489	Appalachian State
2489	Boston College
2489	Coastal Carolina
2489	Colorado State
2489	Georgia Southern
2489	Georgia State
2489	Illinois
2489	Liberty
2489	Louisville
2489	Miami
2489	Middle Tennessee State
2489	Rutgers
2489	South Alabama
2489	Southern Miss
2489	Troy
2489	UCF
2489	USF
2489	West Virginia
2489	Wofford
2489	Kentucky
2490	NC State
2490	Auburn
2490	Connecticut
2490	Duke
2490	Illinois
2490	Kent State
2490	Louisville
2490	Marshall
2490	Minnesota
2490	Toledo
2490	UCF
2490	Washington State
2491	NC State
2491	Alcorn State
2491	Austin Peay
2491	Colorado State
2491	Eastern Kentucky
2491	Jacksonville State
2491	Tennessee State
2491	UT Martin
2491	Western Carolina
2492	NC State
2492	Appalachian State
2492	Coastal Carolina
2492	Duke
2492	East Carolina
2492	Indiana
2492	Kansas
2492	Kentucky
2492	Liberty
2492	Louisville
2492	Miami
2492	Penn State
2492	Purdue
2492	Rutgers
2492	Tennessee
2492	Vanderbilt
2492	Virginia
2492	Virginia Tech
2492	Wake Forest
2492	Washington State
2492	West Virginia
2492	Western Kentucky
2493	NC State
2493	Akron
2493	Appalachian State
2493	East Carolina
2493	Elon
2493	Liberty
2493	Tennessee
2493	Virginia
2493	Wofford
2493	Duke
2494	NC State
2494	Air Force
2494	Army
2494	Liberty
2494	Navy
2494	North Carolina Central
2494	Richmond
2494	Appalachian State
2494	Coastal Carolina
2494	Colgate
2494	Furman
2494	North Carolina
2494	Old Dominion
2494	Wake Forest
2495	NC State
2495	East Carolina
2495	Kansas
2495	Louisville
2495	Maryland
2495	Massachusetts
2495	Navy
2495	Pittsburgh
2495	Rutgers
2495	Syracuse
2496	NC State
2496	Army
2496	Wofford
2496	Appalachian State
2496	Charlotte
2496	Elon
2496	Furman
2496	Georgia
2496	North Carolina
2496	Oregon State
2496	Virginia Tech
2497	Nebraska
2497	Auburn
2497	Clemson
2497	Georgia
2497	Iowa State
2497	Kansas
2497	Kansas State
2497	LSU
2497	Michigan
2497	Mississippi State
2497	Missouri
2497	Notre Dame
2497	Ohio State
2497	Oklahoma
2497	Oklahoma State
2497	Tennessee
2497	Wisconsin
2497	Alabama
2497	Colorado
2497	Louisville
2497	UCLA
2497	USC
2498	Nebraska
2498	Iowa
2498	Iowa State
2498	Minnesota
2498	South Dakota State
2499	Nebraska
2499	Miami
2499	Florida State
2499	Arkansas
2499	Florida
2499	Florida Atlantic
2499	Louisville
2499	Southern Miss
2499	UCF
2499	Georgia Tech
2500	Nebraska
2500	Miami
2500	Alabama
2500	Arkansas
2500	Auburn
2500	Baylor
2500	Boston College
2500	Clemson
2500	Florida
2500	Florida Atlantic
2500	Florida State
2500	Georgia
2500	Georgia Tech
2500	Kentucky
2500	Louisville
2500	Michigan
2500	Ohio State
2500	Ole Miss
2500	Penn State
2500	Pittsburgh
2500	South Carolina
2500	Syracuse
2500	Tennessee
2500	Texas A&M
2500	Tulane
2500	UAB
2500	UCF
2500	USF
2501	Nebraska
2501	Arkansas
2501	Boise State
2501	Florida
2501	Florida State
2501	Houston
2501	Indiana
2501	Mississippi State
2501	Missouri
2501	Ole Miss
2501	Oregon
2501	TCU
2501	Texas A&M
2501	UCF
2501	Utah
2502	Nebraska
2502	Austin Peay
2502	Louisville
2502	Ole Miss
2502	Southern Miss
2502	Troy
2502	UAB
2503	Nebraska
2503	Arkansas
2503	Baylor
2503	Colorado State
2503	Georgia Tech
2503	Iowa State
2503	Kansas
2503	Kansas State
2503	Liberty
2503	Memphis
2503	Minnesota
2503	Mississippi State
2503	Missouri
2503	Nevada
2503	North Texas
2503	SMU
2503	Syracuse
2503	UCF
2503	Utah
2503	Washington
2503	Wisconsin
2503	Kansas State
2503	Michigan
2503	Oklahoma
2503	Oklahoma State
2503	Tulsa
2504	Nebraska
2504	Iowa State
2504	Iowa
2504	Kansas State
2504	Minnesota
2504	South Dakota State
2505	Nebraska
2505	Wisconsin
2505	Iowa State
2505	Missouri
2505	Oregon
2506	Nebraska
2506	New Mexico
2506	Southern Miss
2506	San Diego State
2506	South Alabama
2507	Nebraska
2507	Georgia Tech
2507	Notre Dame
2507	Purdue
2507	Baylor
2507	Duke
2507	Kansas State
2507	Louisiana
2507	Louisiana Tech
2507	Maryland
2507	North Texas
2507	Penn State
2507	Rice
2507	Temple
2507	Tulsa
2507	Virginia Tech
2508	Nebraska
2508	Georgia Tech
2508	Wake Forest
2508	Alabama
2508	Boston College
2508	Colorado State
2508	Connecticut
2508	Duke
2508	FIU
2508	Florida State
2508	Georgia Southern
2508	Iowa State
2508	Kansas
2508	Kentucky
2508	Louisville
2508	Marshall
2508	Miami
2508	Michigan
2508	North Carolina
2508	Purdue
2508	South Carolina
2508	Tennessee
2508	Tulane
2508	UAB
2508	UCF
2508	USF
2508	Utah
2508	Virginia Tech
2508	West Virginia
2509	Nebraska
2509	Oklahoma State
2509	Arizona
2509	Iowa State
2509	Kansas
2509	Kansas State
2509	SMU
2509	TCU
2509	Missouri
2510	Nebraska
2510	Arizona
2510	Boston College
2510	East Carolina
2510	Georgia Tech
2510	Kansas State
2510	Kentucky
2510	Michigan State
2510	Rutgers
2510	South Carolina
2510	Syracuse
2510	Tennessee
2510	Virginia Tech
2510	West Virginia
2510	Arkansas
2511	Nebraska
2511	Miami
2511	Louisville
2511	FIU
2511	Florida Atlantic
2511	Kent State
2511	Marshall
2511	Missouri
2511	Morgan State
2511	Southern Miss
2511	Toledo
2511	UCF
2511	USF
2511	Utah State
2511	Wake Forest
2511	Washington State
2511	Western Kentucky
2511	Miami
2512	Nebraska
2512	East Carolina
2512	Kansas
2512	Bryant
2512	Coastal Carolina
2512	Florida Atlantic
2512	Georgia State
2512	Illinois
2512	Jacksonville State
2512	Kent State
2512	Liberty
2512	Maryland
2512	Mercer
2512	Southern Miss
2512	Tulsa
2512	USF
2512	UT Martin
2512	Western Kentucky
2513	Nebraska
2513	Kent State
2513	Liberty
2513	Louisiana Tech
2513	McNeese State
2513	Minnesota
2513	SMU
2513	UTEP
2513	Western Kentucky
2513	Fresno State
2513	Texas
2514	North Carolina
2514	Alabama
2514	Clemson
2514	Duke
2514	East Carolina
2514	Florida
2514	Kentucky
2514	Michigan
2514	Mississippi State
2514	NC State
2514	Nebraska
2514	Ohio State
2514	Penn State
2514	South Carolina
2514	Tennessee
2514	Texas A&M
2514	Virginia Tech
2514	Wisconsin
2515	North Carolina
2515	Alabama
2515	Florida
2515	South Carolina
2515	Baylor
2515	East Carolina
2515	Georgia
2515	Kentucky
2515	LSU
2515	Miami
2515	Michigan
2515	Mississippi State
2515	NC State
2515	Nebraska
2515	Notre Dame
2515	Ohio State
2515	Oklahoma
2515	Oregon
2515	Syracuse
2515	Tennessee
2515	Texas
2515	Texas A&M
2515	Virginia
2515	Virginia Tech
2515	West Virginia
2515	Western Carolina
2515	Wisconsin
2516	North Carolina
2516	Duke
2516	Florida
2516	Ohio State
2516	Florida State
2516	Georgia
2516	Louisville
2516	Maryland
2516	Miami
2516	Michigan
2516	Mississippi State
2516	NC State
2516	Notre Dame
2516	Ohio
2516	Oklahoma
2516	Oregon
2516	Penn State
2516	South Carolina
2516	Tennessee
2516	Texas A&M
2516	Vanderbilt
2516	Virginia
2516	Virginia Tech
2516	Wake Forest
2516	Charlotte
2516	Georgia Tech
2517	North Carolina
2517	Air Force
2517	Duke
2517	East Carolina
2517	Georgia Tech
2517	Liberty
2517	Louisville
2517	NC State
2517	Nebraska
2517	South Carolina
2517	Syracuse
2517	Tennessee
2517	UCF
2517	Virginia Tech
2517	Wake Forest
2517	Washington State
2518	North Carolina
2518	Penn State
2518	Appalachian State
2518	Arkansas
2518	Boston College
2518	Cincinnati
2518	Colorado State
2518	Duke
2518	East Tennessee State
2518	Georgia Southern
2518	Georgia State
2518	Georgia Tech
2518	Iowa
2518	Iowa State
2518	Kansas State
2518	Kentucky
2518	Louisville
2518	Michigan
2518	NC State
2518	Ohio State
2518	Ole Miss
2518	Oregon
2518	Rutgers
2518	South Carolina
2518	Southern Miss
2518	Temple
2518	Tennessee
2518	Tulane
2518	Vanderbilt
2518	West Virginia
2518	Georgia
2518	Maryland
2519	North Carolina
2519	Kentucky
2519	Maryland
2519	Tennessee
2519	Virginia Tech
2519	West Virginia
2520	North Carolina
2520	Arkansas
2520	Auburn
2520	Arkansas State
2520	Central Arkansas
2520	Colorado
2520	Georgia
2520	Houston
2520	Memphis
2520	Miami
2520	Mississippi State
2520	NC State
2520	Oklahoma State
2520	Ole Miss
2520	Seton Hill
2520	SMU
2520	South Alabama
2520	Alabama
2520	Florida State
2520	Louisville
2520	Penn State
2520	Tennessee
2521	North Carolina
2521	NC State
2521	South Carolina
2521	Tennessee
2521	Virginia
2521	Virginia Tech
2521	West Virginia
2521	Duke
2521	Wake Forest
2522	North Carolina
2522	Boston College
2522	East Carolina
2522	FIU
2522	Florida
2522	Georgia Tech
2522	Iowa
2522	Kansas
2522	Kent State
2522	Louisville
2522	NC State
2522	Purdue
2522	South Carolina
2522	Tennessee
2522	Tulane
2522	Wake Forest
2523	North Carolina
2523	Florida
2523	Pittsburgh
2523	Arizona State
2523	Boston College
2523	Bowling Green
2523	FIU
2523	Florida Atlantic
2523	Georgia Southern
2523	Illinois
2523	Iowa State
2523	Liberty
2523	Louisville
2523	Minnesota
2523	Nebraska
2523	Penn State
2523	Samford
2523	Southern Miss
2523	Toledo
2523	Tulane
2523	UCF
2523	USF
2523	Virginia Tech
2523	West Virginia
2523	Appalachian State
2523	Georgia State
2523	Miami
2523	Purdue
2524	North Carolina
2524	Boston College
2524	Duke
2524	Florida
2524	LSU
2524	Maryland
2524	Michigan
2524	NC State
2524	Nebraska
2524	Rutgers
2524	Syracuse
2524	Temple
2524	Texas A&M
2524	Vanderbilt
2524	Virginia
2524	Virginia Tech
2524	Wake Forest
2524	Cincinnati
2524	Notre Dame
2524	Penn State
2547	North Carolina
2547	Auburn
2547	Boston College
2547	Cincinnati
2547	Duke
2547	Florida State
2547	Georgia Tech
2547	Iowa State
2547	Kentucky
2547	Louisville
2547	Maryland
2547	Mississippi State
2547	Missouri
2547	Nebraska
2547	Purdue
2547	Toledo
2547	Vanderbilt
2547	Virginia
2547	West Virginia
2525	North Carolina
2525	Air Force
2525	Akron
2525	Appalachian State
2525	Auburn
2525	Charlotte
2525	Duke
2525	East Carolina
2525	Liberty
2525	Louisville
2525	LSU
2525	Maryland
2525	Massachusetts
2525	NC State
2525	Oregon
2525	Penn State
2525	Pittsburgh
2525	Purdue
2525	Rutgers
2525	South Carolina
2525	Wake Forest
2525	West Virginia
2525	Wisconsin
2526	North Carolina
2526	Boston College
2526	Cincinnati
2526	FIU
2526	Indiana
2526	Louisville
2526	Miami
2526	Michigan
2526	Middle Tennessee State
2526	Pittsburgh
2526	Purdue
2526	Southern Miss
2526	Syracuse
2526	UCF
2526	USF
2526	Washington State
2526	Kansas State
2527	North Carolina
2527	Appalachian State
2527	Duke
2527	East Carolina
2527	NC State
2527	Vanderbilt
2527	Virginia Tech
2527	Wake Forest
2527	East Carolina
2528	North Carolina
2528	Coastal Carolina
2528	Elon
2528	Georgia Tech
2528	South Carolina
2528	Virginia
2529	North Carolina
2529	Michigan
2529	Campbell
2529	Duke
2529	East Carolina
2529	Furman
2529	Missouri
2529	Vanderbilt
2529	Virginia
2529	Wake Forest
2529	Wofford
2530	North Carolina
2530	Appalachian State
2530	Colorado
2530	East Carolina
2530	Eastern Kentucky
2530	Louisville
2530	Virginia
2530	Virginia Tech
2530	William & Mary
2531	North Carolina
2531	Air Force
2531	Akron
2531	Ball State
2531	Boston College
2531	Bowling Green
2531	Buffalo
2531	Central Michigan
2531	Cincinnati
2531	Columbia
2531	Cornell
2531	Dartmouth
2531	FIU
2531	Florida Atlantic
2531	Harvard
2531	Illinois
2531	Indiana
2531	Kent State
2531	Liberty
2531	Maryland
2531	Massachusetts
2531	Mercer
2531	Miami (OH)
2531	Minnesota
2531	Navy
2531	NC State
2531	Ohio
2531	Pennsylvania
2531	Pittsburgh
2531	Purdue
2531	Rutgers
2531	South Carolina
2531	Syracuse
2531	Temple
2531	Toledo
2531	UCF
2531	Virginia
2531	West Virginia
2531	William & Mary
2531	Yale
2531	Youngstown State
2531	Florida
2531	Michigan
2531	Penn State
2531	Wisconsin
2532	North Carolina
2532	Akron
2532	Appalachian State
2532	Campbell
2532	Coastal Carolina
2532	Kent State
2532	Liberty
2532	Marshall
2532	Massachusetts
2532	Toledo
2532	Youngstown State
2532	South Carolina
2532	West Virginia
2533	North Carolina
2533	NC State
2533	Appalachian State
2533	Austin Peay
2533	Cincinnati
2533	Coastal Carolina
2533	Eastern Kentucky
2533	James Madison
2533	Miami (OH)
2533	Wake Forest
2533	William & Mary
2534	North Carolina
2534	Michigan State
2534	Boston College
2534	Coastal Carolina
2534	Colorado State
2534	Iowa State
2534	NC State
2534	Princeton
2534	South Carolina
2534	Temple
2534	Tulane
2534	Vanderbilt
2534	Virginia
2534	Virginia Tech
2535	North Carolina
2535	South Carolina
2536	North Carolina
2536	Charlotte
2536	Coastal Carolina
2536	West Virginia
2537	North Carolina
2537	Akron
2537	Appalachian State
2537	Army
2537	Charlotte
2537	Coastal Carolina
2537	Eastern Kentucky
2537	Furman
2537	Georgia Southern
2537	Georgia State
2537	Jacksonville State
2537	Liberty
2537	Louisville
2537	Marshall
2537	Mercer
2537	Middle Tennessee State
2537	Navy
2537	Ohio
2537	Samford
2537	Tennessee Tech
2537	Toledo
2537	Tulane
2537	USF
2537	Western Kentucky
2537	Wofford
2537	Georgia Tech
2538	North Carolina
2538	Air Force
2538	Appalachian State
2538	Army
2538	Campbell
2538	Charlotte
2538	East Carolina
2538	Eastern Illinois
2538	Eastern Kentucky
2538	Georgia Southern
2538	Georgia State
2538	Liberty
2538	Tulane
2539	Northwestern
2539	Duke
2539	Illinois
2539	Iowa
2539	Michigan
2539	Notre Dame
2539	Penn State
2539	Stanford
2539	Western Michigan
2539	Wisconsin
2540	Northwestern
2540	Akron
2540	Boise State
2540	Colorado
2540	Colorado State
2540	Kansas
2540	Nevada
2540	Ole Miss
2540	South Carolina
2540	Penn State
2541	Northwestern
2541	Dartmouth
2541	Louisville
2541	Michigan State
2541	Ball State
2541	Boston College
2541	Bowling Green
2541	Central Michigan
2541	Cincinnati
2541	Eastern Michigan
2541	Indiana
2541	Iowa
2541	Iowa State
2541	Kent State
2541	Kentucky
2541	Liberty
2541	Maryland
2541	Minnesota
2541	Nebraska
2541	Northern Illinois
2541	Purdue
2541	Rutgers
2541	Toledo
2541	Virginia
2541	Washington State
2541	Western Illinois
2541	Western Michigan
2542	Northwestern
2542	Akron
2542	Auburn
2542	Boston College
2542	Buffalo
2542	Central Michigan
2542	Cornell
2542	Duke
2542	Eastern Michigan
2542	Harvard
2542	Indiana
2542	Iowa
2542	Kansas State
2542	Kent State
2542	Louisville
2542	Miami
2542	Michigan
2542	Michigan State
2542	Minnesota
2542	Nebraska
2542	Northern Illinois
2542	Ohio State
2542	Purdue
2542	Tennessee
2542	Toledo
2542	Vanderbilt
2542	Western Michigan
2542	Yale
2543	Northwestern
2543	California
2543	Purdue
2543	Virginia
2543	Alabama
2543	Army
2543	Baylor
2543	Boston College
2543	Brown
2543	Columbia
2543	Connecticut
2543	Dartmouth
2543	Harvard
2543	Maryland
2543	Massachusetts
2543	Michigan
2543	Michigan State
2543	Nebraska
2543	Notre Dame
2543	Ohio State
2543	Ole Miss
2543	Penn State
2543	Pennsylvania
2543	Princeton
2543	Rutgers
2543	Stanford
2543	Syracuse
2543	Temple
2543	Wisconsin
2543	Yale
2543	Central Connecticut State
2543	Connecticut
2543	Wagner
2544	Northwestern
2544	Akron
2544	Bowling Green
2544	Cincinnati
2544	Iowa
2544	Iowa State
2544	Louisville
2544	Minnesota
2544	Purdue
2544	Toledo
2544	Western Michigan
2544	Wisconsin
2545	Northwestern
2545	Vanderbilt
2545	Arizona
2545	Colorado
2545	Kansas
2545	Minnesota
2545	Notre Dame
2545	Oregon
2545	Pittsburgh
2545	USC
2545	LSU
2545	UCLA
2546	Northwestern
2546	Purdue
2546	Vanderbilt
2546	Arkansas
2546	Cincinnati
2546	Indiana
2546	Liberty
2546	Louisville
2546	Rutgers
2546	South Carolina
2546	Southern Miss
2546	Tulane
2546	UTSA
2546	Virginia
2546	Georgia Tech
2546	Middle Tennessee State
2546	Wake Forest
2548	Northwestern
2548	Arizona
2548	Arizona State
2548	Indiana
2548	Iowa State
2548	Memphis
2548	South Dakota State
2548	Utah State
2549	Northwestern
2549	Air Force
2549	Bowling Green
2549	Dartmouth
2549	Eastern Michigan
2549	Illinois State
2549	Kent State
2549	Louisville
2549	Miami (OH)
2549	North Dakota State
2549	Ohio
2549	Princeton
2549	Toledo
2549	Western Michigan
2549	Yale
2549	Youngstown State
2549	Duke
2549	Iowa
2549	Iowa State
2549	Minnesota
2549	Stanford
2550	Northwestern
2550	Ball State
2550	Bowling Green
2550	Buffalo
2550	Eastern Michigan
2550	Indiana
2550	Iowa State
2550	Kent State
2550	Massachusetts
2550	Michigan
2550	Michigan State
2550	Minnesota
2550	Missouri
2550	Ohio
2550	Penn State
2550	Pittsburgh
2550	Purdue
2550	Rutgers
2550	Tennessee
2550	Toledo
2550	Vanderbilt
2550	Western Michigan
2550	Wyoming
2550	Cincinnati
2550	Miami (OH)
2550	Ohio State
2550	Wisconsin
2551	Northwestern
2551	Boston College
2551	Cincinnati
2551	Eastern Michigan
2551	Harvard
2551	Illinois
2551	Illinois State
2551	Indiana
2551	Iowa
2551	Louisville
2551	Miami (OH)
2551	Minnesota
2551	Princeton
2551	Purdue
2551	South Dakota
2551	Syracuse
2551	Toledo
2551	Yale
2551	Wisconsin
2552	Northwestern
2552	Akron
2552	Ball State
2552	Bowling Green
2552	Buffalo
2552	Cincinnati
2552	Eastern Michigan
2552	Harvard
2552	Indiana
2552	Kent State
2552	Kentucky
2552	Louisville
2552	Miami (OH)
2552	Ohio
2552	Penn State
2552	Pennsylvania
2552	Princeton
2552	Purdue
2552	Toledo
2552	Tulane
2552	Vanderbilt
2552	Virginia
2552	Wake Forest
2552	West Virginia
2552	Western Michigan
2553	Northwestern
2553	Western Michigan
2553	Iowa
2553	Miami (OH)
2553	Northern Illinois
2553	Wisconsin
2554	Northwestern
2554	Ball State
2554	Furman
2554	Kent State
2554	Toledo
2554	William & Mary
2554	Wofford
2554	Youngstown State
2555	Northwestern
2555	Vanderbilt
2555	Florida Atlantic
2555	Louisville
2555	Marshall
2555	Michigan
2555	Syracuse
2556	Northwestern
2556	Cincinnati
2556	Michigan State
2556	Minnesota
2556	Akron
2556	Arizona State
2556	Ball State
2556	Baylor
2556	Georgia Tech
2556	Indiana
2556	Kent State
2556	Miami (OH)
2556	Ohio
2556	Pittsburgh
2556	Toledo
2556	Yale
2556	Wake Forest
2556	Wisconsin
2557	Northwestern
2557	Wake Forest
2557	Coastal Carolina
2557	Connecticut
2557	Delaware
2557	East Carolina
2557	James Madison
2557	Liberty
2557	Marshall
2557	Massachusetts
2557	Navy
2557	Old Dominion
2557	Richmond
2557	Rutgers
2557	Tulane
2557	UCLA
2557	Virginia
2558	Notre Dame
2558	Oklahoma
2558	Alabama
2558	Boston College
2558	Duke
2558	Florida
2558	Florida State
2558	Georgia
2558	Illinois
2558	Kentucky
2558	LSU
2558	Marshall
2558	Maryland
2558	Michigan
2558	Michigan State
2558	Mississippi State
2558	Nebraska
2558	North Carolina
2558	Ohio State
2558	Penn State
2558	Pittsburgh
2558	South Carolina
2558	Stanford
2558	Temple
2558	Tennessee
2558	Vanderbilt
2558	Virginia
2558	Virginia Tech
2558	Wake Forest
2558	West Virginia
2558	Arkansas
2558	Georgia Tech
2559	Notre Dame
2559	Alabama
2559	Arkansas
2559	Auburn
2559	Florida
2559	Illinois
2559	Indiana
2559	Iowa
2559	Iowa State
2559	Kansas
2559	Kansas State
2559	Kentucky
2559	LSU
2559	Michigan
2559	Minnesota
2559	Missouri
2559	Nebraska
2559	Ohio State
2559	Ole Miss
2559	Oregon
2559	Penn State
2559	Purdue
2559	Syracuse
2559	Texas A&M
2559	USC
2559	Wisconsin
2560	Notre Dame
2560	Alabama
2560	Arkansas
2560	Cincinnati
2560	Georgia
2560	Kentucky
2560	Louisville
2560	LSU
2560	Michigan
2560	Minnesota
2560	Ohio State
2560	Penn State
2560	Purdue
2560	Tennessee
2560	Texas
2560	Wisconsin
2561	Notre Dame
2561	Alabama
2561	Arizona
2561	Arizona State
2561	Auburn
2561	California
2561	Colorado
2561	Duke
2561	Indiana
2561	Kansas State
2561	LSU
2561	Miami
2561	Michigan
2561	Nebraska
2561	North Carolina
2561	Northwestern
2561	Ohio State
2561	Oklahoma
2561	Oklahoma State
2561	Oregon
2561	Oregon State
2561	Purdue
2561	Stanford
2561	Texas
2561	Texas A&M
2561	UCLA
2561	USC
2561	Utah
2561	Vanderbilt
2561	Washington
2561	Washington State
2561	Michigan State
2562	Notre Dame
2562	Arizona State
2562	Boise State
2562	California
2562	Colorado
2562	Georgia
2562	Hawaii
2562	Kansas State
2562	LSU
2562	Nebraska
2562	Ohio State
2562	Oklahoma
2562	Ole Miss
2562	Oregon
2562	Oregon State
2562	Tennessee
2562	UCLA
2562	USC
2562	Utah
2562	Washington
2562	Washington State
2562	Wisconsin
2562	Florida
2562	Stanford
2563	Notre Dame
2563	Texas A&M
2563	Akron
2563	Boston College
2563	Cincinnati
2563	Duke
2563	Iowa
2563	Louisville
2563	Maryland
2563	Miami
2563	Michigan
2563	Nebraska
2563	Northwestern
2563	Ohio State
2563	Ole Miss
2563	Penn State
2563	Pittsburgh
2563	Stanford
2563	Temple
2563	Toledo
2563	Virginia
2563	Virginia Tech
2563	West Virginia
2563	Wisconsin
2564	Notre Dame
2564	Ohio State
2564	Wisconsin
2564	Alabama
2564	Boston College
2564	Clemson
2564	Duke
2564	Florida
2564	Georgia
2564	Illinois
2564	Indiana
2564	Iowa
2564	Louisville
2564	LSU
2564	Michigan
2564	Minnesota
2564	Nebraska
2564	Northwestern
2564	Oklahoma
2564	Oregon
2564	Penn State
2564	Purdue
2564	Rutgers
2564	Tennessee
2564	Toledo
2564	Vanderbilt
2564	Virginia
2564	West Virginia
2565	Notre Dame
2565	Alabama
2565	Arizona
2565	Auburn
2565	Baylor
2565	Boston College
2565	Buffalo
2565	Connecticut
2565	Florida State
2565	Louisville
2565	LSU
2565	Maryland
2565	Miami
2565	Michigan
2565	Missouri
2565	North Carolina
2565	Oklahoma
2565	Ole Miss
2565	Penn State
2565	South Alabama
2565	South Carolina
2565	Syracuse
2565	Tennessee
2565	Texas A&M
2565	Virginia Tech
2565	Connecticut
2565	Florida
2565	Maryland
2565	Michigan
2565	Nebraska
2565	Ohio State
2565	Texas
2565	USC
2566	Notre Dame
2566	Boston College
2566	Michigan
2566	Nebraska
2566	North Carolina
2566	Rutgers
2566	Syracuse
2566	Texas A&M
2566	UCF
2566	Vanderbilt
2566	Virginia
2566	West Virginia
2566	Penn State
2567	Notre Dame
2567	Air Force
2567	Arizona State
2567	Brigham Young
2567	California
2567	Colorado
2567	Colorado State
2567	Florida
2567	Iowa
2567	Kansas State
2567	Michigan
2567	Nebraska
2567	Ohio State
2567	Oregon
2567	Penn State
2567	Purdue
2567	USC
2567	Utah
2567	Vanderbilt
2567	Virginia
2567	Wisconsin
2567	Yale
2631	Notre Dame
2631	Iowa
2631	Iowa State
2631	Kansas
2631	Kansas State
2631	Louisville
2631	Michigan
2631	Minnesota
2631	Nebraska
2631	Northwestern
2631	Purdue
2631	South Dakota State
2631	Tennessee
2631	Wisconsin
2631	Wyoming
2568	Notre Dame
2568	Oklahoma
2568	Arkansas
2568	Austin Peay
2568	Duke
2568	Houston
2568	Kentucky
2568	Louisiana-Monroe
2568	Louisville
2568	Memphis
2568	Nicholls State
2568	Purdue
2568	Southern Miss
2568	Vanderbilt
2568	Arkansas
2568	Louisiana-Monroe
2568	Ole Miss
2569	Notre Dame
2569	Colorado
2569	Kentucky
2569	Louisville
2569	Michigan
2569	Ohio State
2569	Purdue
2569	Tennessee
2569	Vanderbilt
2569	West Virginia
2569	Wisconsin
2570	Notre Dame
2570	Boston College
2570	Duke
2570	Kent State
2570	Kentucky
2570	Massachusetts
2570	Minnesota
2570	NC State
2570	Nebraska
2570	Purdue
2570	Rutgers
2570	Temple
2570	Vanderbilt
2570	Virginia Tech
2570	West Virginia
2571	Notre Dame
2571	Michigan
2571	Boston College
2571	Colgate
2571	Connecticut
2571	Harvard
2571	Holy Cross
2571	Massachusetts
2571	Rutgers
2571	Tulane
2571	UCLA
2571	Wake Forest
2571	West Virginia
2571	West Virginia
2571	Yale
2571	Boston College
2571	Connecticut
2571	Michigan State
2571	Rhode Island
2571	Toledo
2572	Notre Dame
2572	FIU
2572	Connecticut
2572	Michigan
2572	Ohio State
2572	Penn State
2572	Rutgers
2573	Notre Dame
2573	Michigan State
2574	Ohio State
2574	Alabama
2574	Arizona State
2574	Arkansas
2574	Clemson
2574	Connecticut
2574	Florida
2574	Florida State
2574	Georgia
2574	Louisville
2574	LSU
2574	Maryland
2574	Miami
2574	Michigan
2574	Michigan State
2574	Nebraska
2574	Notre Dame
2574	Ole Miss
2574	Oregon
2574	Penn State
2574	Pittsburgh
2574	Purdue
2574	Rutgers
2574	Syracuse
2574	Tennessee
2574	Texas A&M
2574	USC
2574	Virginia
2574	Virginia Tech
2574	West Virginia
2574	Wisconsin
2575	Ohio State
2575	Georgia
2575	LSU
2575	Alabama
2575	Arizona State
2575	Arkansas
2575	Auburn
2575	Bowling Green
2575	California
2575	Cincinnati
2575	Clemson
2575	Colorado
2575	Duke
2575	Florida
2575	Florida State
2575	Georgia Tech
2575	Indiana
2575	Iowa State
2575	Kentucky
2575	Louisville
2575	Maryland
2575	Miami
2575	Miami (OH)
2575	Michigan
2575	Michigan State
2575	Minnesota
2575	Nebraska
2575	North Carolina
2575	Northwestern
2575	Notre Dame
2575	Ohio
2575	Oklahoma
2575	Ole Miss
2575	Oregon
2575	Penn State
2575	Pittsburgh
2575	Rutgers
2575	South Carolina
2575	Stanford
2575	Tennessee
2575	Texas
2575	Texas A&M
2575	Toledo
2575	UCLA
2575	USC
2575	Vanderbilt
2575	Virginia
2575	Wake Forest
2575	Washington
2576	Ohio State
2576	Arizona State
2576	Arkansas
2576	Boston College
2576	California
2576	Colorado
2576	Iowa State
2576	Kansas
2576	Memphis
2576	Minnesota
2576	Nebraska
2576	Notre Dame
2576	Oklahoma
2576	Ole Miss
2576	SMU
2576	TCU
2576	Texas A&M
2576	Texas Tech
2576	Vanderbilt
2576	Virginia
2576	Baylor
2576	Houston
2576	Oregon
2576	Texas
2576	Washington
2577	Ohio State
2577	California
2577	USC
2577	Utah
2577	Alabama
2577	Arizona
2577	Arizona State
2577	Auburn
2577	Brigham Young
2577	Clemson
2577	Colorado
2577	Colorado State
2577	Florida
2577	Fresno State
2577	Georgia
2577	Iowa State
2577	Kansas State
2577	LSU
2577	Michigan
2577	Nebraska
2577	Nevada
2577	New Mexico
2577	Notre Dame
2577	Oklahoma
2577	Oregon
2577	Oregon State
2577	Penn State
2577	San Jose State
2577	South Carolina
2577	Tennessee
2577	Texas
2577	Texas A&M
2577	UCLA
2577	Vanderbilt
2577	Washington
2577	Washington State
2577	Boise State
2577	Eastern Washington
2578	Ohio State
2578	Arizona
2578	Arizona State
2578	Boise State
2578	Colorado
2578	Eastern Washington
2578	Florida
2578	Florida State
2578	LSU
2578	Nebraska
2578	Notre Dame
2578	Oregon
2578	Oregon State
2578	Texas A&M
2578	UCLA
2578	USC
2578	Utah
2578	Washington
2578	Washington State
2578	Wisconsin
2579	Ohio State
2579	LSU
2579	Notre Dame
2579	Oklahoma
2579	Texas
2579	Alabama
2579	Arizona
2579	Arizona State
2579	Auburn
2579	California
2579	Colorado
2579	Florida
2579	Georgia
2579	Indiana
2579	Michigan
2579	Missouri
2579	Nebraska
2579	Ole Miss
2579	Oregon
2579	Stanford
2579	Tennessee
2579	Texas A&M
2579	UCLA
2579	USC
2579	Utah
2579	Vanderbilt
2579	Virginia
2579	Washington
2580	Ohio State
2580	USC
2580	Texas
2580	Alabama
2580	Arkansas
2580	Auburn
2580	Colorado
2580	Florida
2580	Georgia
2580	Illinois
2580	Indiana
2580	Iowa State
2580	Kansas
2580	Kansas State
2580	Kentucky
2580	Louisville
2580	LSU
2580	Miami
2580	Michigan
2580	Minnesota
2580	Missouri
2580	Nebraska
2580	Oklahoma
2580	Oklahoma State
2580	Ole Miss
2580	Penn State
2580	Purdue
2580	South Carolina
2580	Syracuse
2580	TCU
2580	Tennessee
2580	Texas A&M
2580	Wisconsin
2581	Ohio State
2581	Boston College
2581	Duke
2581	Florida
2581	Kentucky
2581	Maryland
2581	Michigan
2581	NC State
2581	Nebraska
2581	North Carolina
2581	Notre Dame
2581	Ole Miss
2581	Penn State
2581	Pittsburgh
2581	Purdue
2581	Rutgers
2581	Stanford
2581	Syracuse
2581	Tennessee
2581	Vanderbilt
2581	Virginia
2581	West Virginia
2581	Wisconsin
2581	UCLA
2582	Ohio State
2582	Nebraska
2582	Boston College
2582	Duke
2582	Kentucky
2582	Maryland
2582	Miami
2582	North Carolina
2582	Notre Dame
2582	Penn State
2582	Pittsburgh
2582	Rutgers
2582	Stanford
2582	Vanderbilt
2582	Virginia
2582	Virginia Tech
2582	Wake Forest
2582	Syracuse
2583	Ohio State
2583	Oklahoma
2583	Penn State
2583	Tennessee
2583	Texas A&M
2583	Alabama
2583	Arizona State
2583	Colorado
2583	Florida State
2583	Georgia
2583	Louisville
2583	Miami
2583	Michigan
2583	Nebraska
2583	Oregon
2583	Oregon State
2583	TCU
2583	Texas
2583	UCLA
2583	USC
2583	Utah
2583	Washington
2583	Washington State
2584	Ohio State
2584	Alabama
2584	Arkansas
2584	Auburn
2584	Boston College
2584	Clemson
2584	East Carolina
2584	Florida
2584	Florida State
2584	Georgia
2584	Georgia Tech
2584	Iowa State
2584	Louisville
2584	LSU
2584	Maryland
2584	Mercer
2584	Michigan
2584	Mississippi State
2584	NC State
2584	North Carolina
2584	Notre Dame
2584	Oklahoma
2584	Ole Miss
2584	Oregon
2584	Penn State
2584	South Carolina
2584	Syracuse
2584	Tennessee
2584	Texas
2584	Texas A&M
2584	Toledo
2584	UCF
2584	Vanderbilt
2584	Virginia
2584	Virginia Tech
2584	Wake Forest
2584	West Virginia
2584	Wisconsin
2585	Ohio State
2585	LSU
2585	Tennessee
2585	Alabama
2585	Cincinnati
2585	Clemson
2585	Colorado
2585	Florida State
2585	Georgia
2585	Georgia Tech
2585	Indiana
2585	Iowa
2585	Iowa State
2585	Kentucky
2585	Louisville
2585	Maryland
2585	Memphis
2585	Miami (OH)
2585	Michigan
2585	Michigan State
2585	Minnesota
2585	Nebraska
2585	North Carolina
2585	Notre Dame
2585	Penn State
2585	Pittsburgh
2585	Purdue
2585	Rutgers
2585	Toledo
2585	Vanderbilt
2585	West Virginia
2585	Wisconsin
2586	Ohio State
2586	Notre Dame
2586	Oklahoma
2586	Alabama
2586	Arizona
2586	Arkansas
2586	Baylor
2586	California
2586	Colorado
2586	Duke
2586	Georgia
2586	Georgia Tech
2586	Hawaii
2586	Illinois State
2586	Kansas
2586	Kansas State
2586	LSU
2586	Miami
2586	Michigan
2586	Minnesota
2586	Missouri
2586	North Carolina
2586	Oklahoma State
2586	Ole Miss
2586	Penn State
2586	Rutgers
2586	SMU
2586	Stanford
2586	Texas
2586	Texas A&M
2586	Texas Tech
2586	Tulsa
2586	UCF
2586	Utah
2586	Vanderbilt
2586	Washington
2587	Ohio State
2587	Alabama
2587	Arizona
2587	Auburn
2587	Florida
2587	Florida State
2587	Georgia
2587	LSU
2587	Miami
2587	Michigan
2587	Nebraska
2587	Notre Dame
2587	Oklahoma
2587	Ole Miss
2587	Oregon
2587	Penn State
2587	TCU
2587	Tennessee
2587	Texas A&M
2587	USC
2587	Wisconsin
2588	Ohio State
2588	Arkansas
2588	Alabama
2588	Arizona
2588	Arizona State
2588	Auburn
2588	Florida State
2588	Louisiana Tech
2588	Louisville
2588	LSU
2588	Memphis
2588	Michigan
2588	Michigan State
2588	North Carolina
2588	Oklahoma State
2588	Ole Miss
2588	South Carolina
2588	Syracuse
2588	Texas A&M
2588	USC
2589	Ohio State
2589	Minnesota
2589	Northwestern
2589	Alabama A&M
2589	Arizona State
2589	Boston College
2589	Bowling Green
2589	Buffalo
2589	Central Michigan
2589	Florida State
2589	Georgia Tech
2589	Indiana
2589	Iowa
2589	Iowa State
2589	Kentucky
2589	Louisville
2589	Michigan
2589	Michigan State
2589	Nebraska
2589	Northern Illinois
2589	Notre Dame
2589	Penn State
2589	Purdue
2589	Syracuse
2589	Toledo
2589	West Virginia
2589	Western Michigan
2589	Wisconsin
2589	Akron
2589	Ball State
2589	Cincinnati
2589	NC State
2590	Ohio State
2590	Air Force
2590	Arizona State
2590	Ball State
2590	Boston College
2590	Cincinnati
2590	Eastern Michigan
2590	Georgia Tech
2590	Iowa State
2590	Kent State
2590	Louisville
2590	Michigan
2590	Michigan State
2590	Nebraska
2590	Penn State
2590	Pittsburgh
2590	Rutgers
2590	Toledo
2590	West Virginia
2590	Western Michigan
2590	Wisconsin
2591	Ohio State
2591	Indiana
2591	Oregon
2591	Penn State
2591	Alabama
2591	Boston College
2591	Bowling Green
2591	Cincinnati
2591	Florida State
2591	Indiana State
2591	Iowa State
2591	Louisville
2591	Michigan State
2591	Minnesota
2591	Oklahoma
2591	Purdue
2591	Toledo
2591	Washington State
2591	West Virginia
2591	Wisconsin
2591	Louisville
2591	Miami (OH)
2591	Michigan
2592	Ohio State
2592	Penn State
2592	Auburn
2592	Duke
2592	Indiana
2592	Indiana State
2592	Michigan State
2592	Michigan State
2592	Pittsburgh
2592	Toledo
2592	Wisconsin
2592	Central Michigan
2592	Indiana
2592	Iowa State
2592	Michigan
2592	Minnesota
2592	Northwestern
2592	Vanderbilt
2593	Ohio State
2593	Michigan
2593	Notre Dame
2593	Air Force
2593	Duke
2593	East Carolina
2593	Kentucky
2593	Maryland
2593	Massachusetts
2593	Nebraska
2593	Old Dominion
2593	Ole Miss
2593	Pittsburgh
2593	Purdue
2593	Rutgers
2593	Syracuse
2593	Texas A&M
2593	Virginia
2593	Virginia Tech
2593	Wake Forest
2593	West Virginia
2593	Wisconsin
2594	Ohio State
2594	Iowa State
2594	Boston College
2594	Cincinnati
2594	Kansas
2594	Kentucky
2594	Maryland
2594	Michigan
2594	Minnesota
2594	Missouri
2594	Purdue
2594	Rutgers
2594	Toledo
2595	Ohio State
2595	Penn State
2595	Bowling Green
2595	Indiana
2595	Kent State
2595	Kentucky
2595	Miami (OH)
2595	Michigan
2595	Michigan State
2595	Minnesota
2595	Ohio
2595	Pittsburgh
2595	Purdue
2595	Rutgers
2595	Toledo
2595	Vanderbilt
2595	Wake Forest
2595	West Virginia
2595	Western Michigan
2595	Youngstown State
2596	Ohio State
2596	Boston College
2596	Cincinnati
2596	Duke
2596	Indiana
2596	Iowa State
2596	Kentucky
2596	Louisville
2596	LSU
2596	Marshall
2596	Michigan
2596	Minnesota
2596	Missouri
2596	Nebraska
2596	Ohio State
2596	Penn State
2596	Pittsburgh
2596	Purdue
2596	Tennessee
2596	Toledo
2596	West Virginia
2597	Ohio State
2597	Ball State
2597	Bowling Green
2597	Buffalo
2597	Cincinnati
2597	Indiana
2597	Kentucky
2597	Pittsburgh
2597	Purdue
2597	Rutgers
2597	Toledo
2597	West Virginia
2597	Louisville
2597	Miami (OH)
2597	Michigan
2597	Michigan State
2597	Notre Dame
2598	Ohio State
2598	UCLA
2598	Air Force
2598	Michigan State
2598	Pennsylvania
2598	Temple
2599	Oklahoma
2599	Alabama
2599	Texas
2599	Arkansas
2599	Baylor
2599	Georgia
2599	Houston
2599	Illinois
2599	LSU
2599	Miami
2599	Michigan
2599	Nebraska
2599	Oklahoma State
2599	Oregon
2599	Penn State
2599	SMU
2599	Southern Oregon
2599	TCU
2599	Texas A&M
2599	Texas Tech
2599	Utah
2599	Wisconsin
2600	Oklahoma
2600	Arizona State
2600	Arkansas
2600	Baylor
2600	Boston College
2600	Dartmouth
2600	Florida State
2600	Houston
2600	Kansas
2600	Memphis
2600	Missouri
2600	North Carolina
2600	North Texas
2600	Oklahoma State
2600	SMU
2600	TCU
2600	Tulsa
2600	USC
2600	Utah
2600	UTSA
2600	Washington State
2601	Oklahoma
2601	Georgia
2601	Michigan
2601	Alabama
2601	Arkansas
2601	Auburn
2601	Baylor
2601	Florida
2601	LSU
2601	Memphis
2601	Mississippi State
2601	Notre Dame
2601	Oklahoma State
2601	SMU
2601	Stanford
2601	TCU
2601	Texas
2601	Texas A&M
2601	Tulsa
2602	Oklahoma
2602	Tennessee
2602	Ole Miss
2602	Alabama
2602	Florida State
2602	South Carolina
2602	Vanderbilt
2602	Arkansas
2602	Clemson
2602	Georgia Tech
2602	Louisville
2602	LSU
2602	Memphis
2602	Ohio State
2602	Penn State
2602	Pittsburgh
2602	Purdue
2602	Texas A&M
2602	Tulane
2602	Virginia
2602	Virginia Tech
2603	Oklahoma
2603	Georgia
2603	Alabama
2603	Arizona State
2603	Arkansas
2603	Baylor
2603	Bowling Green
2603	Colorado
2603	Kansas
2603	LSU
2603	Michigan
2603	Mississippi State
2603	Missouri
2603	Nebraska
2603	Notre Dame
2603	Ohio State
2603	Oklahoma State
2603	Oregon
2603	SMU
2603	Stanford
2603	TCU
2603	Texas
2603	Texas A&M
2603	Texas Tech
2603	Tulsa
2603	USC
2603	Wisconsin
2604	Oklahoma
2604	Georgia
2604	Ohio State
2604	Arizona State
2604	Baylor
2604	California
2604	Louisiana
2604	LSU
2604	Michigan
2604	Missouri
2604	Nebraska
2604	Oklahoma State
2604	Oregon
2604	Penn State
2604	Purdue
2604	SMU
2604	TCU
2604	Texas
2604	Texas A&M
2604	Texas Tech
2604	Tulsa
2604	USC
2605	Oklahoma
2605	Georgia
2605	Pittsburgh
2605	Penn State
2605	Alabama
2605	Florida
2605	Indiana
2605	Kentucky
2605	Maryland
2605	Michigan
2605	Mississippi State
2605	NC State
2605	North Carolina
2605	Oregon
2605	Purdue
2605	Rutgers
2605	Syracuse
2605	Virginia
2605	Virginia Tech
2605	West Virginia
2605	Texas A&M
2606	Oklahoma
2606	Texas
2606	Alabama
2606	Auburn
2606	Baylor
2606	Clemson
2606	Colorado
2606	Florida
2606	Florida State
2606	Georgia
2606	Houston
2606	Kansas State
2606	Louisville
2606	LSU
2606	Miami
2606	Michigan State
2606	Nebraska
2606	Ohio State
2606	Ole Miss
2606	Oregon
2606	Tennessee
2606	Texas A&M
2606	Texas Tech
2606	USC
2607	Oklahoma
2607	Alabama
2607	Arizona
2607	Baylor
2607	Florida Atlantic
2607	Florida State
2607	Iowa State
2607	Kentucky
2607	Louisiana
2607	LSU
2607	Memphis
2607	Miami
2607	Mississippi State
2607	Nebraska
2607	Oregon
2607	Penn State
2607	Tennessee
2607	Texas
2607	Virginia Tech
2607	West Virginia
2608	Oklahoma
2608	Boston College
2608	East Carolina
2608	FIU
2608	Florida State
2608	Indiana
2608	Kentucky
2608	Maryland
2608	Michigan
2608	North Carolina
2608	Ohio State
2608	Ole Miss
2608	Penn State
2608	Pittsburgh
2608	Rutgers
2608	Syracuse
2608	Temple
2608	Texas A&M
2608	Virginia
2608	Virginia Tech
2608	Wake Forest
2608	West Virginia
2608	Wisconsin
2608	Clemson
2608	Oregon
2608	Purdue
2609	Oklahoma
2609	Georgia
2609	Alabama
2609	Arizona
2609	Arizona State
2609	Arkansas
2609	Baylor
2609	Colorado
2609	Florida
2609	Georgia
2609	Houston
2609	Illinois
2609	Louisville
2609	Miami
2609	Missouri
2609	Nebraska
2609	North Texas
2609	Oregon
2609	San Diego State
2609	SMU
2609	TCU
2609	Tennessee
2609	Texas
2609	Texas A&M
2609	Texas Tech
2609	Washington
2610	Oklahoma
2610	Colorado
2610	Stanford
2610	Arizona
2610	Arizona State
2610	Arkansas
2610	Baylor
2610	Illinois
2610	Indiana
2610	Kansas
2610	Kansas State
2610	Mississippi State
2610	Missouri
2610	Nebraska
2610	Notre Dame
2610	Ohio State
2610	Oklahoma State
2610	Purdue
2610	SMU
2610	Southern Miss
2610	TCU
2610	Tennessee
2610	Texas A&M
2610	Texas Tech
2610	Tulsa
2610	Utah
2610	Vanderbilt
2610	Virginia Tech
2610	Washington State
2610	Wisconsin
2611	Oklahoma
2611	Arkansas
2611	Baylor
2611	Colorado
2611	Georgia
2611	Houston
2611	Indiana
2611	Kansas
2611	Louisiana Tech
2611	LSU
2611	Miami
2611	Michigan
2611	Missouri
2611	Nebraska
2611	Notre Dame
2611	Ohio State
2611	Oklahoma State
2611	SMU
2611	Texas Tech
2611	Tulsa
2611	Utah
2611	Washington State
2612	Oklahoma
2612	Wake Forest
2612	Charlotte
2612	Elon
2612	Liberty
2612	Navy
2612	North Carolina
2613	Oklahoma
2613	Michigan
2613	UCLA
2613	Arizona
2613	Arizona State
2613	Auburn
2613	Colorado
2613	Georgia Tech
2613	Indiana
2613	Louisiana
2613	Memphis
2613	Oklahoma State
2613	Purdue
2613	USC
2613	Utah
2613	Washington
2613	Washington State
2614	Oklahoma
2614	Arizona State
2614	Minnesota
2614	Ball State
2614	Illinois
2614	Indiana
2614	Indiana State
2614	Iowa
2614	Iowa State
2614	Kansas
2614	Kent State
2614	Kentucky
2614	Missouri
2614	Nebraska
2614	North Carolina
2614	Tennessee
2614	Texas
2614	UCLA
2614	Wisconsin
2615	Oklahoma
2615	Oklahoma State
2615	Eastern Michigan
2615	Iowa State
2615	Kansas
2615	Kansas State
2615	Memphis
2615	Minnesota
2615	Rutgers
2615	SMU
2615	Texas
2615	Texas Tech
2615	Vanderbilt
2616	Oklahoma
2616	Hawaii
2616	Illinois
2616	Kansas
2616	Minnesota
2616	San Diego State
2616	Texas Tech
2616	Tulsa
2617	Oklahoma
2617	Arizona
2617	Illinois State
2617	Kansas State
2617	Nevada
2617	North Texas
2617	Southern Miss
2617	Tulsa
2617	Utah
2617	UTSA
2618	Oklahoma State
2618	Louisville
2618	Arizona
2618	Arizona State
2618	Arkansas
2618	Boston College
2618	Colorado
2618	Oregon State
2618	San Jose State
2618	Washington State
2618	California
2618	Hawaii
2618	Notre Dame
2618	UCLA
2618	UNLV
2618	USC
2619	Oklahoma State
2619	Arkansas
2619	Baylor
2619	Boston College
2619	Colorado
2619	Houston
2619	Kansas State
2619	Louisiana Tech
2619	LSU
2619	North Texas
2619	Purdue
2619	SMU
2619	Texas A&M
2619	Texas State
2619	Tulsa
2619	Arkansas
2620	Oklahoma State
2620	Texas Tech
2620	Arkansas
2620	North Texas
2620	Tulsa
2621	Oklahoma State
2621	Baylor
2621	Boise State
2621	Colorado
2621	Colorado State
2621	Houston
2621	Kansas State
2621	Louisiana
2621	Louisiana Tech
2621	Minnesota
2621	Missouri
2621	Nebraska
2621	North Texas
2621	Purdue
2621	SMU
2621	Southern Miss
2621	Syracuse
2621	Texas State
2621	Texas Tech
2621	Tulsa
2621	UTEP
2621	UTSA
2622	Oklahoma State
2622	California
2622	Arizona
2622	Arizona State
2622	Florida
2622	Iowa State
2622	Kansas
2622	Northern Arizona
2622	Oregon State
2622	Purdue
2622	Tennessee
2622	UCLA
2623	Oklahoma State
2623	Iowa State
2623	Kansas
2624	Oklahoma State
2624	Arizona
2624	Arizona State
2624	Army
2624	Boise State
2624	Brigham Young
2624	Colorado State
2624	Georgia Tech
2624	Iowa State
2624	Kansas
2624	Northern Arizona
2624	Purdue
2624	San Diego State
2624	Syracuse
2624	UNLV
2624	Vanderbilt
2624	Washington State
2624	Air Force
2624	California
2624	Michigan State
2624	Nevada
2624	Northwestern
2624	Notre Dame
2624	Stanford
2624	UCLA
2624	Utah
2624	Wisconsin
2624	Wyoming
2625	Oklahoma State
2625	Illinois State
2625	Kansas
2625	Memphis
2625	Minnesota
2625	Nebraska
2625	South Dakota State
2625	Texas State
2625	Texas Tech
2625	Troy
2625	Tulsa
2625	Western Illinois
2625	Wyoming
2626	Oklahoma State
2626	Air Force
2626	Army
2626	Dartmouth
2626	Memphis
2626	Navy
2626	New Mexico State
2626	Northwestern Oklahoma State
2626	Tulsa
2627	Oklahoma State
2627	Colorado
2627	Houston
2627	North Texas
2627	Texas Tech
2627	Tulsa
2628	Oklahoma State
2628	Army
2628	Eastern Michigan
2628	Troy
2628	Texas Tech
2629	Oklahoma State
2629	Air Force
2629	Arkansas State
2629	Army
2629	Eastern Michigan
2629	Memphis
2629	New Mexico State
2629	North Texas
2629	Temple
2629	William & Mary
2629	Arkansas
2629	Kansas State
2630	Oklahoma State
2633	Oklahoma State
2633	Air Force
2633	Arkansas State
2633	Army
2633	Eastern Michigan
2633	Iowa State
2633	William & Mary
2633	Brigham Young
2634	Oklahoma State
2634	Arkansas State
2634	Buffalo
2634	Central Michigan
2634	Columbia
2634	Dartmouth
2634	Eastern Michigan
2634	Harvard
2634	Illinois
2634	Indiana
2634	Indiana State
2634	Iowa State
2634	Kansas
2634	Missouri
2634	Northern Illinois
2634	Northern Iowa
2634	Pennsylvania
2634	Rutgers
2634	Toledo
2634	Tulane
2634	Western Illinois
2634	Cincinnati
2634	Duke
2634	Kentucky
2634	Louisville
2634	Minnesota
2634	Missouri
2634	Nebraska
2634	North Carolina
2634	Ohio State
2634	Ole Miss
2634	Penn State
2634	SMU
2634	Texas
2634	Toledo
2634	Wisconsin
2634	Wyoming
2635	Oklahoma State
2635	Liberty
2635	UAB
2636	Oklahoma State
2636	Hawaii
2636	Oregon State
2636	Utah State
2636	Brigham Young
2636	Idaho State
2636	Boise State
2636	California
2636	Kansas State
2636	USC
2637	Ole Miss
2637	Mississippi State
2637	Auburn
2637	Baylor
2637	Indiana
2637	Kentucky
2637	LSU
2637	Memphis
2637	Oregon
2637	Southern Miss
2637	Alabama
2637	Auburn
2637	Tennessee
2637	Troy
2638	Ole Miss
2638	Kentucky
2638	Tennessee
2638	Alabama
2638	Duke
2638	Florida Atlantic
2638	Georgia Tech
2638	Indiana
2638	LSU
2638	Miami
2638	Mississippi State
2638	Nebraska
2638	Notre Dame
2638	South Alabama
2638	South Carolina
2638	Southern Miss
2638	Texas A&M
2638	Troy
2638	UAB
2638	Vanderbilt
2638	Virginia
2638	Virginia Tech
2639	Ole Miss
2639	West Virginia
2639	LSU
2639	Arkansas
2639	FIU
2639	Florida
2639	Florida Atlantic
2639	Florida State
2639	Georgia Tech
2639	Indiana
2639	Kansas
2639	Kentucky
2639	Memphis
2639	Middle Tennessee State
2639	Mississippi State
2639	Nebraska
2639	Oregon
2639	South Alabama
2639	Tennessee
2639	Troy
2639	UAB
2639	Virginia
2639	Oklahoma
2640	Ole Miss
2640	Mississippi State
2640	Alabama
2640	Georgia
2640	Miami
2640	Nebraska
2640	Notre Dame
2640	Southern Miss
2640	Arkansas
2641	Ole Miss
2641	Arkansas
2641	Kentucky
2641	Louisville
2641	Purdue
2641	Purdue
2641	South Carolina
2641	Tulane
2641	Vanderbilt
2641	Virginia
2641	Virginia Tech
2641	Western Kentucky
2641	Arkansas
2641	Georgia Tech
2641	Tennessee
2642	Ole Miss
2642	Arkansas
2642	Mississippi State
2642	Nebraska
2642	TCU
2642	Arkansas State
2642	Central Arkansas
2642	Kansas
2642	Louisiana
2642	Louisville
2642	Missouri
2642	SMU
2642	Tennessee
2642	Vanderbilt
2643	Ole Miss
2643	Southern Miss
2643	Miami
2643	Auburn
2643	Colorado
2643	Kansas
2643	Kentucky
2643	Louisiana Tech
2643	Memphis
2643	Oklahoma
2643	Oklahoma State
2643	Tulane
2643	Indiana
2643	LSU
2643	Mississippi State
2643	Tennessee
2644	Ole Miss
2644	Auburn
2644	Arkansas State
2644	Louisiana
2644	Southern Miss
2644	Mississippi State
2645	Ole Miss
2645	Colorado
2645	Oregon
2645	Tennessee
2645	Virginia
2645	Oklahoma
2645	Texas
2645	Colorado State
2645	Houston
2645	Louisiana
2645	Louisiana Tech
2645	Louisiana-Monroe
2645	Nicholls State
2645	Prairie View A&M
2645	Rutgers
2645	South Alabama
2645	Southern Miss
2645	Southern University
2645	Kansas State
2645	LSU
2645	Tulane
2646	Ole Miss
2646	Southern Miss
2646	Tennessee
2646	Army
2646	Louisiana
2646	South Alabama
2646	Southern University
2646	Troy
2646	Tulane
2646	Tuskegee
2647	Ole Miss
2647	Kansas
2647	Southern Miss
2647	Tennessee
2647	Air Force
2647	Arkansas State
2647	Central Michigan
2647	Charlotte
2647	FIU
2647	Florida Atlantic
2647	Jacksonville State
2647	Samford
2647	South Alabama
2647	Southeastern Louisiana
2647	Southern University
2647	Tennessee State
2647	Tulane
2647	UAB
2648	Ole Miss
2648	Indiana
2648	Army
2648	Ball State
2648	Charlotte
2648	Cincinnati
2648	Eastern Kentucky
2648	Kansas
2648	Liberty
2648	Louisville
2648	Marshall
2648	Miami (OH)
2648	Tennessee Tech
2648	Toledo
2648	Virginia Tech
2648	Western Kentucky
2648	Arkansas
2648	East Tennessee State
2648	Georgia Southern
2648	Kentucky
2648	Middle Tennessee State
2648	Nebraska
2648	Tennessee
2648	UCF
2648	Vanderbilt
2649	Ole Miss
2649	Southern Miss
2650	Ole Miss
2650	Louisville
2650	Purdue
2650	Arkansas State
2650	Louisiana
2650	Louisiana-Monroe
2650	Troy
2650	Southern Miss
2651	Ole Miss
2651	Austin Peay
2652	Oregon
2652	Georgia
2652	Alabama
2652	Arizona
2652	Arizona State
2652	Auburn
2652	Brigham Young
2652	California
2652	Clemson
2652	Florida
2652	Florida State
2652	Hawaii
2652	Kansas State
2652	LSU
2652	Miami
2652	Michigan
2652	Nebraska
2652	Nevada
2652	Notre Dame
2652	Ohio State
2652	Oklahoma
2652	Oklahoma State
2652	Oregon State
2652	Stanford
2652	Tennessee
2652	Texas A&M
2652	USC
2652	Utah
2652	Utah State
2652	Virginia
2652	Washington
2652	Washington State
2652	Wisconsin
2653	Oregon
2653	Arizona State
2653	Arizona
2653	Arkansas
2653	Baylor
2653	Boise State
2653	California
2653	Colorado
2653	Colorado State
2653	Florida
2653	Florida State
2653	Fresno State
2653	Georgia
2653	Indiana
2653	Kansas
2653	Kansas State
2653	Louisville
2653	LSU
2653	Michigan
2653	Michigan State
2653	Nebraska
2653	Northwestern
2653	Notre Dame
2653	Ohio State
2653	Oregon State
2653	Penn State
2653	San Diego State
2653	SMU
2653	Tennessee
2653	Texas
2653	Texas A&M
2653	UCLA
2653	USC
2653	Utah State
2653	Virginia
2653	Washington
2653	Washington State
2654	Oregon
2654	Arizona
2654	Arizona State
2654	California
2654	Central Michigan
2654	Colorado
2654	Fresno State
2654	Howard
2654	Iowa State
2654	Michigan
2654	Nevada
2654	Oregon State
2654	San Jose State
2654	Tennessee
2654	Washington State
2654	Stanford
2654	USC
2654	Washington
2655	Oregon
2655	Alabama
2655	Boston College
2655	Clemson
2655	Colorado
2655	Florida
2655	Kentucky
2655	Maryland
2655	Massachusetts
2655	Michigan
2655	Missouri
2655	Nebraska
2655	Oklahoma
2655	Penn State
2655	Rutgers
2655	South Carolina
2655	Syracuse
2655	Temple
2655	Texas A&M
2655	Virginia
2655	Virginia Tech
2655	West Virginia
2655	Georgia Tech
2656	Oregon
2656	Arkansas
2656	Nebraska
2656	UCLA
2656	Georgia
2656	Mississippi State
2656	Alabama
2656	Arkansas State
2656	Baylor
2656	Colorado
2656	Georgia Tech
2656	Iowa State
2656	Kansas
2656	LSU
2656	Memphis
2656	Michigan
2656	Minnesota
2656	Missouri
2656	Nevada
2656	Notre Dame
2656	Oklahoma State
2656	Ole Miss
2656	TCU
2656	Texas
2656	Texas A&M
2656	Texas Tech
2656	Troy
2656	West Virginia
2656	Oklahoma
2657	Oregon
2657	USC
2657	Arizona
2657	Arizona State
2657	Colorado
2657	Penn State
2657	San Jose State
2657	Utah
2657	Howard
2657	LSU
2657	Minnesota
2657	UCLA
2657	Vanderbilt
2658	Oregon
2658	LSU
2658	Arizona
2658	Arizona State
2658	Colorado
2658	Hawaii
2658	Michigan
2658	Nebraska
2658	Oregon State
2658	Tennessee
2658	UNLV
2658	USC
2658	Washington
2658	Alabama
2658	Notre Dame
2659	Oregon
2659	Indiana
2659	Louisville
2659	Miami
2659	Auburn
2659	FIU
2659	Florida
2659	Florida A&M
2659	Florida Atlantic
2659	Florida State
2659	Georgia
2659	Georgia Tech
2659	Kent State
2659	Kentucky
2659	LSU
2659	Marshall
2659	Maryland
2659	Mississippi State
2659	NC State
2659	Nebraska
2659	North Carolina
2659	Ole Miss
2659	Pittsburgh
2659	Southern Miss
2659	Tennessee
2659	Toledo
2659	Tulane
2659	UAB
2659	USF
2659	Valdosta State
2659	West Virginia
2659	Western Kentucky
2660	Oregon
2660	Arizona State
2660	Auburn
2660	Boise State
2660	Fresno State
2660	Idaho
2660	Kansas State
2660	Kent State
2660	TCU
2660	UCLA
2660	Utah
2660	Washington State
2660	West Virginia
2661	Oregon
2661	UCLA
2661	Arizona
2661	Arizona State
2661	Boise State
2661	Colorado
2661	Fresno State
2661	Kansas State
2661	Nebraska
2661	Nevada
2661	Oregon State
2661	San Diego State
2661	Tennessee
2661	UNLV
2661	USC
2661	Utah
2661	Vanderbilt
2661	Washington State
2661	Wisconsin
2661	Yale
2662	Oregon
2662	Louisville
2662	Alcorn State
2662	Arizona State
2662	Arkansas State
2662	Duke
2662	Florida State
2662	Kansas
2662	Louisiana
2662	Louisiana
2662	Louisiana Tech
2662	Memphis
2662	Mississippi State
2662	Missouri
2662	North Carolina
2662	Notre Dame
2662	Penn State
2662	Purdue
2662	Southern Miss
2662	Tulane
2662	Vanderbilt
2662	Washington State
2662	Auburn
2662	Florida
2662	Georgia
2662	Ole Miss
2663	Oregon
2663	Colorado
2663	Oklahoma State
2663	Arizona
2663	Arizona State
2663	Indiana
2663	Kansas
2663	Louisville
2663	LSU
2663	Michigan
2663	Northern Arizona
2663	Purdue
2663	UCLA
2663	USC
2663	Utah
2663	Washington State
2664	Oregon
2664	Arizona State
2664	Brigham Young
2664	California
2664	Colorado State
2664	Kansas State
2664	Louisville
2664	North Carolina
2664	Oregon State
2664	San Jose State
2664	Syracuse
2664	Tennessee
2664	USC
2664	UCLA
2664	Utah
2665	Oregon
2665	Arizona State
2665	North Carolina
2665	Air Force
2665	Arizona
2665	East Carolina
2665	Florida State
2665	Georgia Southern
2665	Georgia State
2665	Georgia Tech
2665	Michigan State
2665	Minnesota
2665	Pittsburgh
2665	Troy
2665	Wake Forest
2665	Clemson
2665	Duke
2666	Oregon
2666	Purdue
2666	Illinois
2666	Boston College
2666	Bowling Green
2666	Central Michigan
2666	Cincinnati
2666	Duke
2666	Indiana
2666	Iowa State
2666	Kansas State
2666	Louisville
2666	Michigan State
2666	Nebraska
2666	Northern Illinois
2666	Temple
2666	Western Michigan
2667	Oregon
2667	Colorado
2667	Houston
2667	Oregon State
2668	Oregon
2668	NC State
2668	Charlotte
2668	Virginia
2668	Wake Forest
2669	Oregon
2669	Colorado
2669	Arizona
2669	Arizona State
2669	Brigham Young
2669	Hawaii
2669	Kansas State
2669	Nebraska
2669	Oregon State
2669	Tennessee
2669	Texas Tech
2669	Utah State
2669	Virginia
2669	Boise State
2669	California
2669	UCLA
2669	USC
2670	Oregon
2670	Arizona State
2670	Washington
2670	Boise State
2670	California
2670	Colorado
2670	Colorado State
2670	Kansas State
2670	Nebraska
2670	Oregon State
2670	San Diego State
2670	UCLA
2670	Washington State
2670	Fresno State
2670	Nevada
2671	Oregon
2671	Arizona State
2671	Texas
2671	USC
2671	Utah
2671	Utah State
2671	Wisconsin
2672	Oregon
2672	Arizona
2672	Arizona State
2672	Kansas
2672	Tennessee
2673	Oregon
2673	Arizona
2673	Brigham Young
2673	Hawaii
2673	Oregon State
2673	San Diego State
2673	UCLA
2673	USC
2673	Virginia
2673	Washington
2674	Oregon State
2674	Massachusetts
2674	New Mexico State
2674	Oklahoma State
2674	South Alabama
2674	Temple
2674	Troy
2674	UCLA
2674	Utah
2674	San Diego State
2674	UCLA
2674	Western Kentucky
2675	Oregon State
2675	Florida
2675	Arizona State
2675	Iowa State
2675	LSU
2675	Nebraska
2675	Oklahoma
2675	Oregon
2675	San Diego State
2675	Utah State
2676	Oregon State
2676	Arizona
2676	Arizona State
2676	Colorado
2676	Colorado State
2676	Fresno State
2676	Hawaii
2676	Kansas State
2676	Nevada
2676	Oregon
2676	San Diego State
2676	San Jose State
2676	USC
2676	Utah
2676	Utah State
2676	Wyoming
2676	TCU
2677	Oregon State
2677	California
2677	Arizona State
2677	Kansas State
2677	San Jose State
2678	Oregon State
2678	Arizona State
2678	Arkansas
2678	Baylor
2678	Boston College
2678	Colorado
2678	Colorado State
2678	Florida
2678	Grambling State
2678	Houston
2678	Illinois
2678	Indiana
2678	Iowa
2678	Kansas
2678	LSU
2678	Michigan State
2678	Mississippi State
2678	Nebraska
2678	Purdue
2678	SMU
2678	Utah
2678	UTSA
2678	Virginia Tech
2678	Oklahoma State
2679	Oregon State
2680	Oregon State
2680	Colorado
2680	Texas A&M
2680	Boise State
2680	Fresno State
2680	Hawaii
2680	Liberty
2680	San Diego State
2680	San Jose State
2680	Southern Miss
2680	Utah State
2681	Oregon State
2681	Arizona State
2681	Oregon
2681	Utah
2681	UCLA
2682	Oregon State
2682	Air Force
2682	Army
2682	Brown
2682	Columbia
2682	Cornell
2682	Eastern Washington
2682	Georgetown
2682	Princeton
2682	Utah
2682	Yale
2682	California
2682	Oregon
2682	San Jose State
2682	UNLV
2682	Utah
2682	Washington
2682	Washington State
2683	Oregon State
2683	Boise State
2683	Brigham Young
2683	Colorado
2683	Fresno State
2683	Hawaii
2683	UNLV
2683	Utah State
2683	LSU
2684	Oregon State
2684	Washington
2684	Arizona
2684	Boise State
2684	California
2684	Colorado
2684	Fresno State
2684	Kansas
2684	Pennsylvania
2684	Princeton
2684	San Diego State
2684	UNLV
2684	Utah
2684	Utah State
2684	Vanderbilt
2684	Yale
2684	Arkansas
2684	Indiana
2684	Michigan
2684	Oregon
2684	Penn State
2684	Purdue
2684	TCU
2684	Washington
2684	Wisconsin
2685	Oregon State
2685	Hawaii
2685	Idaho
2685	Sacramento State
2685	San Jose State
2685	Utah State
2686	Oregon State
2686	Massachusetts
2686	Texas Tech
2686	Cincinnati
2686	Baylor
2686	Virginia Tech
2687	Oregon State
2687	Arizona State
2687	Idaho
2687	Northern Arizona
2687	San Diego State
2688	Oregon State
2688	Fordham
2688	New Mexico
2688	San Jose State
2689	Oregon State
2689	Hawaii
2689	Nevada
2689	Oregon
2689	USC
2690	Oregon State
2690	Fresno State
2690	Arizona
2690	Army
2690	Brigham Young
2690	Hawaii
2690	Portland State
2690	Utah State
2691	Oregon State
2691	Fresno State
2691	San Diego State
2692	Oregon State
2693	Penn State
2693	Boston College
2693	Cincinnati
2693	Connecticut
2693	Florida
2693	Kent State
2693	Kentucky
2693	Maryland
2693	Nebraska
2693	North Carolina
2693	Notre Dame
2693	Pittsburgh
2693	Rutgers
2693	Syracuse
2693	Temple
2693	Texas A&M
2693	Virginia
2693	Virginia Tech
2693	West Virginia
2693	Wisconsin
2693	Georgia Tech
2693	Vanderbilt
2694	Penn State
2694	Georgia
2694	Iowa
2694	Michigan
2694	Alabama
2694	Arkansas
2694	Boston College
2694	Bowling Green
2694	Buffalo
2694	Central Michigan
2694	Cincinnati
2694	Eastern Michigan
2694	Florida State
2694	Kent State
2694	LSU
2694	Miami
2694	Michigan State
2694	Minnesota
2694	Missouri
2694	Ohio State
2694	Old Dominion
2694	South Carolina
2694	Syracuse
2694	Toledo
2695	Penn State
2695	Kentucky
2695	Pittsburgh
2695	Alabama
2695	Auburn
2695	Boston College
2695	Central Michigan
2695	Clemson
2695	Florida
2695	Georgia
2695	Iowa State
2695	Maryland
2695	Michigan
2695	Michigan State
2695	Minnesota
2695	Missouri
2695	Nebraska
2695	Notre Dame
2695	Ohio State
2695	Rutgers
2695	Temple
2695	Tennessee
2695	Texas A&M
2695	Toledo
2695	West Virginia
2695	Michigan State
2696	Penn State
2696	North Carolina
2696	Clemson
2696	Duke
2696	East Carolina
2696	Florida
2696	Hampton
2696	Maryland
2696	Miami
2696	Michigan
2696	NC State
2696	Nebraska
2696	Norfolk State
2696	Notre Dame
2696	Ohio State
2696	South Carolina
2696	Temple
2696	Tennessee
2696	Texas A&M
2696	USC
2696	Virginia
2696	Virginia Tech
2696	Wake Forest
2696	West Virginia
2696	James Madison
2697	Penn State
2697	Kentucky
2697	Tennessee
2697	Auburn
2697	Colorado State
2697	Duke
2697	FIU
2697	Florida
2697	Florida State
2697	Indiana
2697	Maryland
2697	Miami
2697	Michigan
2697	Mississippi State
2697	Nebraska
2697	North Carolina
2697	Ohio State
2697	Ole Miss
2697	Pittsburgh
2697	Rutgers
2697	Syracuse
2697	Virginia
2697	West Virginia
2698	Penn State
2698	Clemson
2698	Colorado
2698	Florida State
2698	Indiana
2698	Iowa
2698	Louisville
2698	Michigan
2698	Michigan State
2698	Minnesota
2698	Missouri
2698	Nebraska
2698	Notre Dame
2698	Ohio State
2698	Oregon
2698	Purdue
2698	Tennessee
2698	Washington State
2698	Western Illinois
2698	Wisconsin
2699	Penn State
2699	Alabama
2699	Boston College
2699	Buffalo
2699	East Carolina
2699	Florida
2699	Georgia
2699	Iowa
2699	Iowa
2699	Maryland
2699	Massachusetts
2699	Michigan State
2699	North Carolina
2699	Notre Dame
2699	Ohio State
2699	Ole Miss
2699	Rutgers
2699	Syracuse
2699	Tennessee
2699	Texas A&M
2699	Virginia
2699	Virginia Tech
2699	Wake Forest
2700	Penn State
2700	Florida
2700	Alabama
2700	Cincinnati
2700	Eastern Kentucky
2700	Florida State
2700	Georgia Tech
2700	Indiana
2700	Iowa State
2700	Kansas
2700	Kentucky
2700	Louisville
2700	LSU
2700	Maryland
2700	Minnesota
2700	Mississippi State
2700	North Carolina
2700	Rutgers
2700	Southern Miss
2700	Tennessee
2700	Toledo
2700	UCF
2700	USF
2700	Utah
2700	West Virginia
2700	Western Kentucky
2700	Arkansas
2700	Ohio State
2701	Penn State
2701	Wisconsin
2701	Boston College
2701	Duke
2701	Georgia Tech
2701	Houston
2701	Indiana
2701	Kansas
2701	Kentucky
2701	Louisiana-Monroe
2701	Nebraska
2701	North Texas
2701	Southern Miss
2701	Texas State
2701	Utah
2702	Penn State
2702	Boston College
2702	Connecticut
2702	Duke
2702	Howard
2702	Massachusetts
2702	Michigan
2702	Michigan State
2702	Pittsburgh
2702	Rutgers
2702	Syracuse
2702	Toledo
2702	Clemson
2702	Maine
2702	Maryland
2702	New Hampshire
2702	North Carolina
2702	Ohio State
2702	Rhode Island
2702	Virginia
2702	Wake Forest
2703	Penn State
2703	Michigan State
2703	Ball State
2703	Bowling Green
2703	Howard
2703	Kent State
2703	Kentucky
2703	Maryland
2703	Massachusetts
2703	Minnesota
2703	NC State
2703	Nebraska
2703	Ohio
2703	Pittsburgh
2703	Syracuse
2703	Temple
2703	Texas A&M
2703	Toledo
2703	Youngstown State
2703	Duquesne
2704	Penn State
2704	Notre Dame
2704	Oklahoma
2704	Virginia
2704	Appalachian State
2704	Arizona State
2704	Army
2704	Boston College
2704	Buffalo
2704	Clemson
2704	Duke
2704	East Carolina
2704	Florida
2704	Georgia Tech
2704	Indiana
2704	Kansas
2704	Liberty
2704	Louisville
2704	Maryland
2704	Miami
2704	Michigan
2704	Michigan State
2704	Missouri
2704	NC State
2704	Nebraska
2704	North Carolina
2704	Northwestern
2704	Ohio State
2704	Old Dominion
2704	Ole Miss
2704	Pittsburgh
2704	Purdue
2704	Rutgers
2704	Stanford
2704	Syracuse
2704	Temple
2704	Tennessee
2704	Vanderbilt
2704	Wake Forest
2704	West Virginia
2704	Wisconsin
2705	Penn State
2705	NC State
2705	Texas A&M
2705	Baylor
2705	Duke
2705	Florida
2705	Florida State
2705	Fordham
2705	Howard
2705	Indiana
2705	James Madison
2705	Liberty
2705	Marshall
2705	Ohio State
2705	Pittsburgh
2705	Rutgers
2705	St. Francis (Ill.)
2705	Tennessee
2705	Virginia
2705	Virginia Tech
2705	West Virginia
2705	William & Mary
2706	Penn State
2706	Alabama
2706	Boston College
2706	Duke
2706	Florida
2706	Georgia
2706	Illinois
2706	Michigan
2706	Michigan State
2706	North Carolina
2706	Ohio State
2706	Oklahoma
2706	Oregon
2706	Rutgers
2706	Syracuse
2706	Vanderbilt
2706	Virginia
2707	Penn State
2707	Boston College
2707	Duke
2707	East Carolina
2707	Florida
2707	Georgia Tech
2707	Indiana
2707	Kentucky
2707	Louisville
2707	LSU
2707	Maryland
2707	Massachusetts
2707	Michigan
2707	Michigan State
2707	North Carolina
2707	Oklahoma
2707	Ole Miss
2707	Pittsburgh
2707	Purdue
2707	Rutgers
2707	Syracuse
2707	Temple
2707	Tennessee
2707	Toledo
2707	Utah
2707	Vanderbilt
2707	Virginia
2707	West Virginia
2707	Virginia Tech
2708	Penn State
2708	Arizona
2708	Brigham Young
2708	Duke
2708	Kansas
2708	Nebraska
2708	New Mexico
2708	North Carolina
2708	Ole Miss
2708	Oregon
2708	San Diego State
2708	UNLV
2708	West Virginia
2708	Nevada
2708	Notre Dame
2708	Oklahoma
2708	Stanford
2708	Texas
2709	Penn State
2709	Kent State
2709	Maryland
2710	Penn State
2710	Alabama
2710	Boston College
2710	Clemson
2710	Georgia
2710	Iowa State
2710	Kent State
2710	Kentucky
2710	Nebraska
2710	Ohio State
2710	Oregon
2710	Pittsburgh
2710	Rutgers
2710	Syracuse
2710	TCU
2710	Temple
2710	Texas A&M
2710	Virginia
2710	Virginia Tech
2710	West Virginia
2710	Wisconsin
2711	Penn State
2711	Air Force
2711	Army
2711	Bowling Green
2711	Buffalo
2711	Colgate
2711	Columbia
2711	Cornell
2711	Dartmouth
2711	Fordham
2711	Harvard
2711	Lafayette
2711	Louisville
2711	Maryland
2711	Massachusetts
2711	Monmouth
2711	Pennsylvania
2711	Princeton
2711	Richmond
2711	Toledo
2711	Tulane
2711	Vanderbilt
2711	Virginia
2711	West Virginia
2711	William & Mary
2711	Yale
2711	Youngstown State
2712	Penn State
2712	Akron
2712	Ball State
2712	Bowling Green
2712	Cincinnati
2712	Eastern Michigan
2712	Iowa State
2712	Kent State
2712	Kentucky
2712	Michigan
2712	Michigan State
2712	Ohio
2712	Oklahoma
2712	Tennessee
2712	Toledo
2712	USF
2712	West Virginia
2713	Penn State
2713	Iowa
2713	Akron
2713	Ball State
2713	Boston College
2713	Bowling Green
2713	Central Michigan
2713	Cincinnati
2713	Indiana
2713	Kentucky
2713	Miami
2713	Michigan
2713	Minnesota
2713	Nebraska
2713	Northern Illinois
2713	Ohio State
2713	Pittsburgh
2713	Purdue
2713	Syracuse
2713	Toledo
2713	Western Michigan
2713	Michigan State
2714	Penn State
2714	Ball State
2714	Baylor
2714	Buffalo
2714	Cincinnati
2714	Connecticut
2714	Illinois
2714	Liberty
2714	Louisville
2714	Massachusetts
2714	Ohio
2714	Rutgers
2714	South Carolina
2714	Syracuse
2714	Tennessee
2714	Toledo
2714	Virginia Tech
2714	West Virginia
2715	Penn State
2716	Penn State
2716	Virginia Tech
2716	Louisville
2716	Michigan
2716	South Carolina
2716	Syracuse
2716	Virginia
2717	Penn State
2717	Army
2717	Bowling Green
2717	Buffalo
2717	Connecticut
2717	Massachusetts
2717	Navy
2717	Temple
2717	Toledo
2717	Maryland
2717	Ohio State
2717	Rutgers
2718	Penn State
2718	Buffalo
2718	Indiana
2718	Massachusetts
2718	Miami
2718	Minnesota
2718	Monmouth
2718	Ole Miss
2718	Purdue
2718	Rutgers
2718	Temple
2718	Tennessee
2718	Toledo
2718	West Virginia
2719	Penn State
2719	Air Force
2719	Army
2719	Boston College
2719	Buffalo
2719	Columbia
2719	Connecticut
2719	Cornell
2719	Dartmouth
2719	Florida Atlantic
2719	Howard
2719	Illinois State
2719	Indiana
2719	Kansas
2719	Kent State
2719	Liberty
2719	Louisville
2719	Massachusetts
2719	Northwestern
2719	Pennsylvania
2719	Pittsburgh
2719	Rutgers
2719	Temple
2719	Tennessee
2719	Tulane
2719	UCF
2719	Vanderbilt
2719	West Virginia
2719	William & Mary
2719	Yale
2719	Arizona State
2719	North Carolina
2719	Syracuse
2720	Pittsburgh
2720	East Carolina
2720	James Madison
2720	Kent State
2720	Maryland
2720	Massachusetts
2720	Notre Dame
2720	Old Dominion
2720	South Carolina
2720	Temple
2720	Virginia
2720	Wake Forest
2721	Pittsburgh
2721	Ball State
2721	Bowling Green
2721	Howard
2721	Illinois
2721	Kent State
2721	Massachusetts
2721	Michigan State
2721	Navy
2721	Ohio State
2721	Penn State
2721	Syracuse
2721	Texas A&M
2721	Toledo
2721	West Virginia
2721	William & Mary
2721	Youngstown State
2722	Pittsburgh
2722	Duke
2722	Boston College
2722	Buffalo
2722	California
2722	Fordham
2722	Massachusetts
2722	Purdue
2722	Rutgers
2722	Syracuse
2722	Temple
2722	Tennessee
2722	Toledo
2722	UAB
2722	Vanderbilt
2722	Virginia Tech
2722	West Virginia
2722	Baylor
2722	Connecticut
2722	Florida
2722	Illinois
2722	Maryland
2722	Michigan
2722	Notre Dame
2722	Purdue
2722	Wake Forest
2722	Wisconsin
2723	Pittsburgh
2723	Tennessee
2723	Army
2723	Ball State
2723	Coastal Carolina
2723	Colorado State
2723	Cornell
2723	Eastern Kentucky
2723	Georgia Southern
2723	Georgia State
2723	Indiana
2723	Kentucky
2723	Mercer
2723	Murray State
2723	Navy
2723	Old Dominion
2723	South Alabama
2723	Tennessee State
2723	Troy
2724	Pittsburgh
2724	Akron
2724	Ball State
2724	Cincinnati
2724	Indiana
2724	Iowa State
2724	Kansas
2724	Kent State
2724	Kentucky
2724	Louisville
2724	Maryland
2724	Michigan State
2724	Minnesota
2724	Missouri
2724	Purdue
2724	Rutgers
2724	Syracuse
2724	Tennessee
2724	Toledo
2724	West Virginia
2724	Michigan
2725	Pittsburgh
2725	Miami
2725	Bowling Green
2725	Cincinnati
2725	Florida
2725	Florida State
2725	Georgia
2725	Kentucky
2725	Louisville
2725	Maryland
2725	Minnesota
2725	NC State
2725	Ohio State
2725	Penn State
2725	Syracuse
2725	Tennessee
2725	Toledo
2725	Virginia
2726	Pittsburgh
2726	Cincinnati
2726	Akron
2726	Ball State
2726	Bowling Green
2726	Buffalo
2726	Central Michigan
2726	Eastern Michigan
2726	Indiana
2726	Iowa State
2726	Kent State
2726	Kentucky
2726	Liberty
2726	Maryland
2726	Massachusetts
2726	Michigan
2726	Michigan State
2726	Minnesota
2726	Nebraska
2726	Ohio
2726	Penn State
2726	Purdue
2726	Rutgers
2726	Syracuse
2726	Toledo
2726	Western Michigan
2726	Ohio State
2727	Pittsburgh
2727	Auburn
2727	East Carolina
2727	FIU
2727	Florida
2727	Florida Atlantic
2727	Florida State
2727	Georgia State
2727	Indiana
2727	Marshall
2727	Miami
2727	Missouri
2727	Nebraska
2727	Ole Miss
2727	Penn State
2727	Rutgers
2727	Southern Miss
2727	Syracuse
2727	UCF
2727	USF
2727	Wake Forest
2727	West Virginia
2727	Western Kentucky
2728	Pittsburgh
2728	Boston College
2728	FIU
2728	Florida
2728	Florida Atlantic
2728	Illinois
2728	Iowa State
2728	Kentucky
2728	LSU
2728	Minnesota
2728	Mississippi State
2728	Missouri
2728	NC State
2728	Ohio State
2728	South Carolina
2728	Syracuse
2728	Temple
2728	Tennessee
2728	Virginia Tech
2728	Miami
2729	Pittsburgh
2729	Maryland
2729	Massachusetts
2729	Michigan
2729	Michigan State
2729	Missouri
2729	Syracuse
2729	West Virginia
2729	LSU
2730	Pittsburgh
2730	Baylor
2730	East Carolina
2730	Iowa State
2730	Kentucky
2730	Maryland
2730	Massachusetts
2730	Memphis
2730	Michigan State
2730	Minnesota
2730	Missouri
2730	Oklahoma State
2730	Oregon
2730	Rutgers
2730	SMU
2730	Syracuse
2730	Temple
2730	West Virginia
2731	Pittsburgh
2731	Boston College
2731	Buffalo
2731	Dartmouth
2731	Duke
2731	LSU
2731	Massachusetts
2731	Purdue
2731	Rutgers
2731	Syracuse
2731	Temple
2731	Wisconsin
2732	Pittsburgh
2732	Appalachian State
2732	Boston College
2732	Colorado State
2732	Duke
2732	East Carolina
2732	FIU
2732	Georgia Southern
2732	Indiana
2732	Louisville
2732	Maryland
2732	Michigan State
2732	Minnesota
2732	Nebraska
2732	Purdue
2732	UCF
2732	Western Kentucky
2732	Wisconsin
2732	Auburn
2733	Pittsburgh
2733	Alabama A&M
2733	FIU
2733	Indiana
2733	Kent State
2733	Nebraska
2733	Rutgers
2733	Southern Miss
2733	USF
2733	Wake Forest
2733	Miami
2734	Pittsburgh
2734	Syracuse
2734	USF
2735	Pittsburgh
2735	Toledo
2735	West Virginia
2736	Purdue
2736	Georgia
2736	Texas A&M
2736	Alabama A&M
2736	Auburn
2736	Boston College
2736	Indiana
2736	Iowa
2736	Iowa State
2736	Kentucky
2736	LSU
2736	Maryland
2736	Miami
2736	Michigan
2736	Michigan State
2736	Missouri
2736	Morgan State
2736	Nebraska
2736	Northern Illinois
2736	Notre Dame
2736	Ohio State
2736	Old Dominion
2736	Penn State
2736	Pittsburgh
2736	Syracuse
2736	Tennessee
2736	Toledo
2736	Western Michigan
2736	Wisconsin
2737	Purdue
2737	Michigan State
2737	Boston College
2737	California
2737	Central Michigan
2737	Cincinnati
2737	Columbia
2737	Kansas
2737	Massachusetts
2737	North Carolina
2737	Oklahoma State
2737	Pittsburgh
2737	Rutgers
2737	Temple
2737	Tulane
2737	West Virginia
2737	Yale
2737	Arkansas
2737	Auburn
2737	Duke
2737	Florida
2737	Georgia
2737	Miami
2737	NC State
2737	Penn State
2737	Princeton
2737	UCF
2737	Wyoming
2738	Purdue
2738	Arizona State
2738	Baylor
2738	Boston College
2738	Buffalo
2738	Cincinnati
2738	Duke
2738	Florida Atlantic
2738	Georgia Tech
2738	Indiana
2738	Kentucky
2738	Louisville
2738	LSU
2738	Maryland
2738	Massachusetts
2738	Miami
2738	Michigan
2738	Michigan State
2738	Missouri
2738	Nebraska
2738	Notre Dame
2738	Old Dominion
2738	Oregon
2738	Pittsburgh
2738	Rutgers
2738	South Carolina
2738	Syracuse
2738	Temple
2738	Tennessee
2738	Texas A&M
2738	Alabama
2738	Clemson
2738	Connecticut
2738	Fordham
2738	Monmouth
2738	Ohio State
2738	Old Dominion
2738	Penn State
2738	Pittsburgh
2738	Stony Brook
2738	Virginia
2738	Wagner
2739	Purdue
2739	Arizona
2739	Arkansas
2739	Baylor
2739	Boston College
2739	Colorado
2739	Colorado State
2739	Houston
2739	Kansas
2739	Northwestern
2739	Oregon
2739	Rutgers
2739	SMU
2739	Vanderbilt
2739	Oklahoma
2739	Texas
2740	Purdue
2740	Ball State
2740	Bowling Green
2740	Cincinnati
2740	Illinois
2740	Indiana
2740	Kansas
2740	Miami (OH)
2740	Northern Illinois
2740	Ohio
2740	Vanderbilt
2740	Virginia
2740	Western Michigan
2740	Iowa
2740	Northwestern
2741	Purdue
2741	Vanderbilt
2741	Boston College
2741	East Carolina
2741	Indiana
2741	LSU
2741	Maryland
2741	Massachusetts
2741	Michigan
2741	Michigan State
2741	Nebraska
2741	Ole Miss
2741	Temple
2741	Tennessee
2741	Arkansas
2741	Penn State
2741	UCLA
2742	Purdue
2742	Akron
2742	Arizona
2742	Ball State
2742	Boston College
2742	Bowling Green
2742	Buffalo
2742	Central Michigan
2742	Florida Atlantic
2742	Indiana
2742	Iowa State
2742	Kansas
2742	Kent State
2742	Kentucky
2742	Louisville
2742	Maryland
2742	Michigan
2742	Michigan State
2742	Minnesota
2742	Missouri
2742	Northern Illinois
2742	Penn State
2742	Pittsburgh
2742	Rutgers
2742	Syracuse
2742	Temple
2742	Toledo
2742	Washington State
2742	West Virginia
2742	Western Michigan
2743	Purdue
2743	Charlotte
2743	Cincinnati
2743	Louisville
2743	Memphis
2743	Minnesota
2743	Missouri
2743	South Carolina
2743	Tulane
2743	UTSA
2743	Virginia
2743	Wake Forest
2743	Western Kentucky
2744	Purdue
2744	Iowa State
2744	Nebraska
2744	Iowa
2744	Michigan
2744	Michigan State
2744	Northern Illinois
2744	Wisconsin
2767	Purdue
2767	Ball State
2767	Bowling Green
2767	Cincinnati
2767	Coastal Carolina
2767	Illinois
2767	Illinois State
2767	Iowa
2767	Iowa State
2767	Kansas State
2767	Kentucky
2767	Memphis
2767	Minnesota
2767	Missouri
2767	Nebraska
2767	Northern Illinois
2767	Ole Miss
2767	Tennessee
2767	Toledo
2767	Vanderbilt
2767	Western Kentucky
2767	Western Michigan
2767	Baylor
2767	Michigan
2767	Michigan State
2767	Missouri
2767	Notre Dame
2767	Oregon
2767	Virginia Tech
2745	Purdue
2745	Ball State
2745	Boston College
2745	Bowling Green
2745	Buffalo
2745	Cincinnati
2745	East Carolina
2745	Indiana
2745	Kent State
2745	Kentucky
2745	Maryland
2745	Miami (OH)
2745	Missouri
2745	Toledo
2745	Wake Forest
2745	Yale
2745	Michigan
2745	Michigan State
2745	Ohio State
2745	Wisconsin
2746	Purdue
2746	Akron
2746	Ball State
2746	Bowling Green
2746	Buffalo
2746	Colgate
2746	Colorado State
2746	Columbia
2746	Dartmouth
2746	Fordham
2746	Holy Cross
2746	Kent State
2746	Lehigh
2746	Liberty
2746	Miami (OH)
2746	Robert Morris
2746	Temple
2746	Toledo
2746	Western Michigan
2746	Yale
2746	Youngstown State
2746	Pittsburgh
2746	Syracuse
2746	Virginia Tech
2747	Purdue
2747	Baylor
2747	Brown
2747	Buffalo
2747	Central Michigan
2747	Colgate
2747	Columbia
2747	Fordham
2747	Howard
2747	Massachusetts
2747	Pennsylvania
2747	Princeton
2747	Rice
2747	Rutgers
2747	Temple
2747	Toledo
2747	Tulane
2747	Vanderbilt
2747	West Virginia
2747	Western Michigan
2747	Boston College
2747	California
2747	Connecticut
2747	Duke
2747	Penn State
2747	Stanford
2747	Stony Brook
2747	Yale
2748	Purdue
2748	Appalachian State
2748	East Carolina
2748	Kennesaw State
2748	Kent State
2748	Liberty
2748	Missouri
2748	Navy
2748	Tulane
2748	USF
2748	Clemson
2748	Michigan State
2748	NC State
2749	Purdue
2749	Air Force
2749	Ball State
2749	Central Michigan
2749	Eastern Kentucky
2749	Eastern Michigan
2749	Illinois State
2749	Indiana State
2749	Navy
2749	Western Illinois
2749	Michigan State
2749	Notre Dame
2750	Purdue
2750	Toledo
2750	Northwood University
2750	Wayne State
2751	Purdue
2751	Temple
2751	Buffalo
2751	Central Michigan
2751	Elon
2751	Kent State
2751	Old Dominion
2751	Purdue
2751	Baylor
2751	Boston College
2751	Northern Illinois
2751	Rutgers
2751	West Virginia
2752	Purdue
2752	Duke
2752	Southern Miss
2752	Arkansas State
2752	Austin Peay
2752	East Carolina
2752	Louisiana
2752	Louisville
2752	Nebraska
2752	Samford
2752	Troy
2752	UAB
2752	Western Kentucky
2753	Stanford
2753	Alabama
2753	Florida
2753	Georgia
2753	Maryland
2753	Miami
2753	Michigan
2753	Michigan State
2753	Ohio State
2753	Oklahoma
2753	Ole Miss
2753	Tennessee
2753	USC
2753	Virginia Tech
2754	Stanford
2754	Arizona State
2754	California
2754	Colorado
2754	Duke
2754	Florida State
2754	Miami
2754	Nebraska
2754	Notre Dame
2754	Oregon
2754	Oregon State
2754	Rutgers
2754	San Diego State
2754	Tennessee
2754	UCLA
2754	USC
2754	Utah
2754	Washington
2754	Washington State
2754	Yale
2755	Stanford
2755	Alabama
2755	Arizona
2755	Arizona State
2755	Boise State
2755	California
2755	Colorado
2755	Florida
2755	Florida State
2755	Nebraska
2755	New Mexico
2755	Northwestern
2755	Oregon
2755	Oregon State
2755	Penn State
2755	UCLA
2755	USC
2755	Utah
2755	Vanderbilt
2755	Washington
2755	Washington State
2755	Wisconsin
2756	Stanford
2756	Georgia Tech
2756	Iowa
2756	Army
2756	Boston College
2756	Dartmouth
2756	Duke
2756	Florida State
2756	Harvard
2756	Illinois
2756	Indiana
2756	Louisville
2756	Maryland
2756	Miami
2756	Michigan State
2756	Nebraska
2756	North Carolina
2756	Northwestern
2756	Princeton
2756	Syracuse
2756	Toledo
2756	UCLA
2756	USC
2756	USF
2756	Vanderbilt
2756	Virginia
2756	Wake Forest
2756	Washington State
2756	Yale
2756	UCF
2757	Stanford
2757	Arizona
2757	Arizona State
2757	Boise State
2757	California
2757	Colorado
2757	Oregon
2757	Oregon State
2757	UCLA
2757	USC
2757	Utah
2757	Utah State
2757	Washington State
2758	Stanford
2758	Arizona
2758	Arizona State
2758	Boston College
2758	Brigham Young
2758	California
2758	Colorado
2758	Kansas State
2758	Louisville
2758	Michigan
2758	Nebraska
2758	Oregon
2758	Oregon State
2758	Utah
2758	Vanderbilt
2758	USC
2759	Stanford
2759	Arizona State
2759	Dartmouth
2759	Florida State
2759	Hawaii
2759	Indiana
2759	Iowa State
2759	Kansas
2759	Louisville
2759	North Carolina
2759	Oregon
2759	Penn State
2759	Pittsburgh
2759	TCU
2759	UNLV
2759	USC
2759	Utah State
2759	Virginia
2759	Yale
2759	Alabama
2759	Arkansas
2759	Florida
2759	Georgia
2759	LSU
2759	Michigan
2759	Notre Dame
2759	Oklahoma
2759	Ole Miss
2759	Texas A&M
2759	Virginia Tech
2759	Washington
2760	Stanford
2760	California
2760	Clemson
2760	Duke
2760	Georgia
2760	LSU
2760	Maryland
2760	Michigan
2760	Michigan State
2760	North Carolina
2760	Northwestern
2760	Ohio State
2760	Penn State
2760	Pittsburgh
2760	Purdue
2760	Rutgers
2760	Syracuse
2760	Vanderbilt
2760	Virginia
2760	West Virginia
2760	Wisconsin
2760	Yale
2760	Boston College
2760	Notre Dame
2760	Pennsylvania
2761	Stanford
2761	California
2761	Fresno State
2761	Oregon State
2761	San Jose State
2761	UCLA
2761	Boise State
2761	Oregon
2761	Washington
2761	Washington State
2762	Stanford
2762	USC
2762	Arizona State
2762	Brigham Young
2762	California
2762	Florida
2762	Michigan
2762	Nebraska
2762	Nevada
2762	Notre Dame
2762	San Jose State
2762	TCU
2762	USC
2762	Utah
2762	Washington State
2762	North Carolina
2762	Penn State
2762	Texas Tech
2762	UCLA
2763	Stanford
2763	Washington
2763	Arizona State
2763	California
2763	Colorado
2763	Fresno State
2763	Nebraska
2763	Nevada
2763	Notre Dame
2763	Oregon State
2763	UCLA
2764	Stanford
2764	Iowa
2764	California
2764	Colorado
2764	Cornell
2764	Florida Atlantic
2764	Georgia Tech
2764	Indiana
2764	Kansas
2764	Kentucky
2764	Memphis
2764	Michigan
2764	Nebraska
2764	Oregon
2764	Purdue
2764	UAB
2764	Vanderbilt
2764	Virginia
2764	Virginia Tech
2764	Duke
2764	North Carolina
2764	Northwestern
2764	Wisconsin
2765	Stanford
2765	California
2765	Brown
2765	Columbia
2765	Dartmouth
2765	Harvard
2765	Montana State
2765	Nevada
2765	Oregon
2765	Oregon State
2765	Princeton
2765	UC Davis
2765	USC
2765	Utah State
2765	Yale
2765	Washington State
2766	Stanford
2766	Washington State
2766	Arizona State
2766	California
2766	Colorado State
2766	Hawaii
2766	Nebraska
2766	Oregon
2766	Oregon State
2766	Princeton
2766	USC
2766	Utah State
2766	Colorado
2766	Notre Dame
2766	Ohio State
2766	Washington
2768	Stanford
2768	Arizona State
2768	Army
2768	Boise State
2768	Colorado
2768	Colorado State
2768	Duke
2768	FIU
2768	Fresno State
2768	Hawaii
2768	Kansas State
2768	Nevada
2768	Northwestern
2768	Oregon State
2768	Pennsylvania
2768	Princeton
2768	Rice
2768	San Diego State
2768	Tulane
2768	UCLA
2768	Utah
2768	Utah State
2768	Vanderbilt
2768	Washington
2768	Yale
2769	Stanford
2769	Arizona
2769	Arizona State
2769	California
2769	Oregon
2769	Oregon State
2770	Stanford
2770	Appalachian State
2770	Georgia
2770	North Carolina
2770	Oregon State
2771	Stanford
2771	Air Force
2771	Army
2771	Columbia
2771	Cornell
2771	Fordham
2771	Kansas
2771	Lehigh
2771	Navy
2772	Stanford
2772	Air Force
2772	Columbia
2772	Georgia Southern
2772	Iowa
2772	Jacksonville State
2772	Kansas
2772	Louisiana
2772	Louisiana Tech
2772	Louisiana-Monroe
2772	Louisville
2772	LSU
2772	Memphis
2772	Nicholls State
2772	UAB
2773	TCU
2773	Arkansas
2773	Baylor
2773	Colorado
2773	Florida State
2773	Houston
2773	Illinois
2773	Kansas
2773	Louisiana Tech
2773	LSU
2773	Missouri
2773	Nebraska
2773	North Texas
2773	Oklahoma
2773	Oklahoma State
2773	Ole Miss
2773	Oregon
2773	Southern Miss
2773	Tennessee
2773	Texas A&M
2773	Texas Tech
2773	Wyoming
2773	Washington
2774	TCU
2774	LSU
2774	Arizona
2774	Arkansas
2774	Austin Peay
2774	Colorado
2774	Colorado State
2774	Eastern Illinois
2774	Kansas
2774	Louisiana
2774	Louisiana Tech
2774	Louisiana-Monroe
2774	Memphis
2774	Miami
2774	Mississippi State
2774	Missouri
2774	Nicholls State
2774	Northwestern State
2774	Ole Miss
2774	South Alabama
2774	Southern University
2774	Tennessee
2774	Texas A&M
2774	Troy
2774	Tulane
2774	UAB
2774	UTSA
2775	TCU
2775	Vanderbilt
2775	Auburn
2775	Baylor
2775	Chattanooga
2775	Duke
2775	East Carolina
2775	Florida
2775	Florida Atlantic
2775	Florida State
2775	Hampton
2775	Indiana
2775	Louisville
2775	LSU
2775	Maryland
2775	Michigan
2775	Nebraska
2775	North Carolina
2775	Penn State
2775	Pittsburgh
2775	Temple
2775	Tennessee
2775	Virginia Tech
2775	Wisconsin
2776	TCU
2776	Auburn
2776	Baylor
2776	Florida State
2776	Houston
2776	Illinois
2776	Louisiana
2776	Mississippi State
2776	Missouri
2776	North Texas
2776	SMU
2776	Southern Miss
2776	Syracuse
2776	Tennessee
2776	Texas Tech
2776	UCF
2776	Utah
2776	Washington State
2776	Western Kentucky
2777	TCU
2777	Baylor
2777	Central Arkansas
2777	Louisiana-Monroe
2777	SMU
2778	TCU
2778	Auburn
2778	Charlotte
2778	Virginia Tech
2778	Alabama
2778	Florida
2778	North Carolina
2779	TCU
2779	Arkansas
2779	Colorado
2779	Iowa State
2779	Kansas
2779	Memphis
2779	Minnesota
2779	Missouri
2779	Nebraska
2779	North Texas
2779	SMU
2779	Texas
2779	Oklahoma
2779	Oklahoma State
2780	TCU
2780	Florida State
2780	Houston
2780	Iowa State
2780	Louisiana-Monroe
2780	Missouri
2780	Tulsa
2781	TCU
2781	Houston
2781	LSU
2781	Missouri
2781	North Texas
2781	Oklahoma State
2781	Oregon
2781	SMU
2781	Texas Tech
2781	USC
2782	TCU
2782	Tennessee
2782	Florida State
2782	Ole Miss
2782	Kansas
2782	Mississippi State
2782	Southern Miss
2782	Air Force
2782	Arkansas State
2782	Austin Peay
2782	Dartmouth
2782	Jackson State
2782	Louisiana
2782	Louisiana-Monroe
2782	Memphis
2782	Nebraska
2782	Rice
2783	TCU
2783	Eastern Michigan
2783	Kansas State
2783	North Texas
2783	Texas Tech
2783	William & Mary
2783	Louisville
2783	Oklahoma
2783	Oklahoma State
2783	Tulsa
2784	TCU
2784	Arkansas
2784	Arkansas State
2784	Baylor
2784	Boston College
2784	Illinois
2784	Indiana
2784	Louisiana
2784	Louisiana Tech
2784	Louisiana-Monroe
2784	Memphis
2784	Missouri
2784	Ole Miss
2784	Purdue
2784	Southern Miss
2784	Stephen F. Austin
2784	Texas Tech
2784	Tulane
2784	Tulsa
2784	Virginia
2785	TCU
2785	Air Force
2785	Arkansas State
2785	Army
2785	Iowa State
2785	Kansas
2785	Kansas State
2785	Minnesota
2785	Navy
2785	Tulsa
2786	Tennessee
2786	Oklahoma
2786	Ole Miss
2786	LSU
2786	Miami
2786	Alabama
2786	Auburn
2786	Clemson
2786	Florida
2786	Georgia
2786	Louisville
2786	Memphis
2786	Mississippi State
2786	Missouri
2786	Ohio State
2786	Penn State
2786	Purdue
2786	South Carolina
2786	Texas A&M
2786	USC
2786	Vanderbilt
2786	Virginia Tech
2786	West Virginia
2786	Arkansas
2786	Georgia Tech
2787	Tennessee
2787	Auburn
2787	Texas A&M
2787	Alabama
2787	Arkansas
2787	Clemson
2787	Florida
2787	Florida
2787	Florida State
2787	Georgia Tech
2787	Indiana
2787	Kentucky
2787	LSU
2787	Memphis
2787	Miami
2787	Mississippi State
2787	Missouri
2787	Nebraska
2787	Oklahoma
2787	Ole Miss
2787	Penn State
2787	Purdue
2787	South Carolina
2787	Texas
2787	Tulsa
2787	Virginia
2787	West Virginia
2788	Tennessee
2788	Alabama
2788	Appalachian State
2788	Auburn
2788	Florida
2788	Florida State
2788	Georgia
2788	Georgia Tech
2788	Kentucky
2788	LSU
2788	Maryland
2788	Miami
2788	Michigan
2788	Mississippi State
2788	NC State
2788	North Carolina
2788	Ohio State
2788	Oklahoma
2788	Ole Miss
2788	Purdue
2788	Syracuse
2788	Texas A&M
2788	Arkansas
2788	Michigan State
2788	West Virginia
2789	Tennessee
2789	Boston College
2789	Colorado
2789	Duke
2789	Florida
2789	Georgia
2789	Kentucky
2789	Maryland
2789	Nebraska
2789	North Carolina
2789	Notre Dame
2789	Penn State
2789	Pittsburgh
2789	Rutgers
2789	Temple
2789	Virginia
2789	Virginia Tech
2789	West Virginia
2790	Tennessee
2790	Kentucky
2790	Virginia Tech
2790	Auburn
2790	Florida
2790	Oklahoma
2790	South Carolina
2790	Coastal Carolina
2790	Colorado State
2790	Georgia Southern
2790	Georgia Tech
2790	Kansas
2790	Kent State
2790	Oregon
2790	South Alabama
2790	Troy
2790	Western Kentucky
2791	Tennessee
2791	Arkansas
2791	Cincinnati
2791	Florida
2791	Florida State
2791	Georgia
2791	Georgia Tech
2791	Louisiana
2791	LSU
2791	Memphis
2791	Michigan
2791	Minnesota
2791	Mississippi State
2791	Missouri
2791	Oklahoma
2791	Ole Miss
2791	Oregon
2791	South Carolina
2791	Syracuse
2791	Texas A&M
2791	Vanderbilt
2791	Virginia Tech
2791	Clemson
2792	Tennessee
2792	Auburn
2792	Duke
2792	Florida
2792	Georgia
2792	LSU
2792	Memphis
2792	Mississippi State
2792	Ohio State
2792	Princeton
2792	Vanderbilt
2792	Virginia Tech
2792	West Virginia
2792	Arkansas
2793	Tennessee
2793	Virginia Tech
2793	Appalachian State
2793	Arkansas
2793	Coastal Carolina
2793	Duke
2793	East Carolina
2793	Indiana
2793	Kentucky
2793	Miami
2793	Michigan
2793	Nebraska
2793	Penn State
2793	Virginia
2793	Wake Forest
2793	West Virginia
2793	Clemson
2793	South Carolina
2794	Tennessee
2794	Arkansas
2794	Cincinnati
2794	Florida
2794	Georgia Tech
2794	Indiana
2794	Kentucky
2794	Louisville
2794	LSU
2794	Memphis
2794	Missouri
2794	Oklahoma
2794	Ole Miss
2794	Oregon
2794	Purdue
2794	Southern Miss
2794	West Virginia
2794	Alabama
2794	Clemson
2794	Iowa State
2794	Mississippi State
2794	South Carolina
2794	Vanderbilt
2795	Tennessee
2795	Arkansas
2795	Mississippi State
2795	Cincinnati
2795	Indiana
2795	Kentucky
2795	Liberty
2795	LSU
2795	Memphis
2795	Ole Miss
2795	Southern Miss
2795	Western Kentucky
2796	Tennessee
2796	Ole Miss
2796	Arkansas
2796	Auburn
2796	Central Michigan
2796	Cincinnati
2796	Georgia Tech
2796	Kentucky
2796	Louisville
2796	Memphis
2796	Michigan
2796	Missouri
2796	NC State
2796	North Carolina
2796	Purdue
2796	Southern Miss
2796	Texas A&M
2796	UAB
2796	Virginia Tech
2796	Wake Forest
2796	West Virginia
2796	Auburn
2796	USC
2797	Tennessee
2797	Central Michigan
2797	Illinois
2797	Indiana
2797	Indiana State
2797	Iowa State
2797	Kent State
2797	Missouri
2797	UT Martin
2797	Western Illinois
2797	Wyoming
2798	Tennessee
2798	Arizona State
2798	Boise State
2798	Miami
2798	Akron
2798	Arkansas State
2798	East Carolina
2798	Florida Atlantic
2798	Kansas
2798	Liberty
2798	Maryland
2798	Minnesota
2798	Mississippi State
2798	UCF
2798	Western Kentucky
2799	Tennessee
2799	Maryland
2799	Alabama A&M
2799	Alabama State
2799	Arkansas State
2799	Auburn
2799	Bowling Green
2799	Central Michigan
2799	Coastal Carolina
2799	Florida Atlantic
2799	Georgia Tech
2799	Illinois
2799	Jacksonville State
2799	Liberty
2799	Mercer
2799	Mississippi State
2799	Missouri
2799	Nebraska
2799	Ole Miss
2799	Samford
2799	South Alabama
2799	Southern Miss
2799	Tennessee State
2799	Texas A&M
2799	Toledo
2799	Troy
2799	UAB
2799	USF
2799	Virginia Tech
2799	Georgia
2800	Tennessee
2800	Memphis
2800	Arkansas State
2801	Tennessee
2801	Arkansas
2801	Austin Peay
2801	Chattanooga
2801	Georgia Tech
2801	Indiana
2801	Kentucky
2801	Liberty
2801	Louisville
2801	Memphis
2801	Michigan
2801	Missouri
2801	Ole Miss
2801	Oregon
2801	Penn State
2801	Purdue
2801	Virginia
2801	Virginia Tech
2801	Wake Forest
2801	West Virginia
2801	Central Michigan
2802	Tennessee
2802	SMU
2802	Alcorn State
2802	Houston Baptist
2802	Lamar
2802	Liberty
2802	North Texas
2802	Prairie View A&M
2802	Texas Southern
2802	UTEP
2803	Tennessee
2804	Texas A&M
2804	Oklahoma
2804	Alabama
2804	Arkansas
2804	Auburn
2804	Baylor
2804	Brigham Young
2804	Clemson
2804	Florida
2804	Florida State
2804	Georgia
2804	Georgia State
2804	Houston
2804	Illinois
2804	Incarnate Word
2804	Indiana
2804	Iowa
2804	Iowa State
2804	Kansas
2804	Kentucky
2804	Louisiana
2804	Louisiana Tech
2804	LSU
2804	Miami
2804	Michigan
2804	Michigan State
2804	Mississippi State
2804	Missouri
2804	NC State
2804	Nebraska
2804	North Carolina
2804	Notre Dame
2804	Ohio State
2804	Ole Miss
2804	Oregon
2804	Penn State
2804	Prairie View A&M
2804	Purdue
2804	SMU
2804	South Carolina
2804	TCU
2804	Temple
2804	Tennessee
2804	Texas
2804	Texas Tech
2804	UAB
2804	UCF
2804	USC
2804	USF
2804	Utah
2804	UTSA
2804	Vanderbilt
2804	Wake Forest
2804	Washington
2804	West Virginia
2804	Wisconsin
2804	Wyoming
2805	Texas A&M
2805	Alabama
2805	Arkansas
2805	Baylor
2805	Colorado
2805	Florida
2805	Georgia
2805	Houston
2805	Ohio State
2805	Oklahoma State
2805	Purdue
2805	TCU
2805	Texas
2805	Texas State
2805	USC
2805	USC
2806	Texas A&M
2806	Florida
2806	Miami
2806	Alabama
2806	Auburn
2806	Baylor
2806	Clemson
2806	FIU
2806	Florida State
2806	Georgia
2806	Georgia Tech
2806	Kentucky
2806	Louisville
2806	LSU
2806	Michigan
2806	NC State
2806	Nebraska
2806	Penn State
2806	South Carolina
2806	Syracuse
2806	Temple
2806	Toledo
2806	UCF
2806	Virginia Tech
2806	Ohio State
2807	Texas A&M
2807	Auburn
2807	Duke
2807	Tennessee
2807	Arkansas
2807	Baylor
2807	Houston
2807	Illinois
2807	Kansas
2807	Louisiana Tech
2807	Louisiana-Monroe
2807	LSU
2807	Memphis
2807	Miami
2807	Minnesota
2807	Missouri
2807	North Texas
2807	Oklahoma State
2807	Ole Miss
2807	Oregon
2807	Purdue
2807	Southern Miss
2807	Stephen F. Austin
2807	TCU
2807	Texas State
2807	Tulsa
2807	UCLA
2807	Virginia Tech
2808	Texas A&M
2808	Ole Miss
2808	Tennessee
2808	Alabama
2808	Arkansas
2808	Auburn
2808	East Carolina
2808	Eastern Kentucky
2808	Eastern Michigan
2808	Florida
2808	Florida Atlantic
2808	Florida State
2808	Georgia
2808	Georgia Southern
2808	Illinois
2808	Indiana
2808	Iowa State
2808	Louisville
2808	LSU
2808	Marshall
2808	Maryland
2808	Memphis
2808	Miami
2808	Mississippi State
2808	NC State
2808	Ohio State
2808	Oklahoma
2808	Oregon
2808	Penn State
2808	Rutgers
2808	South Carolina
2808	Texas
2808	Toledo
2808	Troy
2808	USC
2808	Baylor
2809	Texas A&M
2809	Tennessee
2809	Alabama
2809	Georgia
2809	Illinois
2809	Indiana
2809	Iowa
2809	Iowa State
2809	Kentucky
2809	Louisville
2809	LSU
2809	Michigan
2809	Michigan State
2809	Mississippi State
2809	Missouri
2809	Nebraska
2809	Ole Miss
2809	Penn State
2809	Pittsburgh
2809	Purdue
2809	Toledo
2809	Virginia
2809	Virginia Tech
2809	Western Michigan
2809	Wisconsin
2810	Texas A&M
2810	Florida
2810	Maryland
2810	Penn State
2810	Arkansas
2810	Baylor
2810	Boston College
2810	Cincinnati
2810	Georgia
2810	Georgia Tech
2810	Iowa
2810	Kent State
2810	Kentucky
2810	Louisville
2810	LSU
2810	Massachusetts
2810	Michigan
2810	Michigan State
2810	NC State
2810	Nebraska
2810	North Carolina
2810	Notre Dame
2810	Ohio State
2810	Old Dominion
2810	Pittsburgh
2810	Purdue
2810	Rutgers
2810	South Carolina
2810	Temple
2810	Tennessee
2810	Virginia
2810	Virginia Tech
2810	West Virginia
2810	Western Michigan
2831	Texas A&M
2831	Alabama
2831	Appalachian State
2831	Arizona State
2831	Auburn
2831	Boston College
2831	Colorado
2831	Florida
2831	Georgia Tech
2831	Illinois
2831	Indiana
2831	Kentucky
2831	Liberty
2831	Louisville
2831	Michigan State
2831	Missouri
2831	NC State
2831	Nebraska
2831	North Carolina
2831	Ohio State
2831	Oregon
2831	Purdue
2831	Syracuse
2831	Temple
2831	Tennessee
2831	UCF
2831	Vanderbilt
2831	Virginia Tech
2831	Wake Forest
2831	West Virginia
2831	Wisconsin
2811	Texas A&M
2811	North Carolina
2811	Alabama
2811	Arkansas
2811	Auburn
2811	Florida State
2811	Georgia
2811	Houston
2811	Illinois
2811	Kansas
2811	LSU
2811	Ole Miss
2811	SMU
2811	Syracuse
2811	TCU
2811	Tennessee
2811	Texas
2811	Texas Tech
2811	Tulane
2811	USC
2812	Texas A&M
2812	Georgia
2812	Oklahoma
2812	Alabama
2812	Arkansas
2812	Baylor
2812	Boston College
2812	Colorado
2812	LSU
2812	Michigan
2812	Missouri
2812	Nebraska
2812	Ohio State
2812	Ole Miss
2812	TCU
2812	Tennessee
2812	Texas
2812	Texas State
2812	Virginia Tech
2813	Texas A&M
2813	Nebraska
2813	Penn State
2813	Arkansas
2813	Baylor
2813	Boston College
2813	East Carolina
2813	Indiana
2813	Kentucky
2813	Maryland
2813	Massachusetts
2813	Memphis
2813	Michigan
2813	North Carolina
2813	Oklahoma
2813	Oregon
2813	Pittsburgh
2813	Rutgers
2813	South Carolina
2813	Syracuse
2813	Temple
2813	Virginia
2813	Virginia Tech
2813	Wake Forest
2813	West Virginia
2813	Wisconsin
2814	Texas A&M
2814	Northwestern
2814	Penn State
2814	Baylor
2814	Boston College
2814	Cincinnati
2814	Duke
2814	Kent State
2814	Louisville
2814	Maryland
2814	Massachusetts
2814	Minnesota
2814	Pittsburgh
2814	Rutgers
2814	Temple
2814	Vanderbilt
2814	Virginia Tech
2814	Wake Forest
2814	West Virginia
2814	Yale
2815	Texas A&M
2815	Akron
2815	Arizona
2815	Boston College
2815	Kansas
2815	Minnesota
2815	North Carolina
2815	North Texas
2815	Southern Miss
2815	Syracuse
2815	Texas Tech
2815	Toledo
2815	Utah
2815	UTSA
2815	Vanderbilt
2816	Texas A&M
2816	Auburn
2816	Kentucky
2816	Arkansas
2816	Cincinnati
2816	Georgia
2816	Georgia Tech
2816	Indiana
2816	Louisville
2816	Memphis
2816	Missouri
2816	Oklahoma
2816	Ole Miss
2816	Penn State
2816	Purdue
2816	Tennessee
2816	Virginia Tech
2817	Texas A&M
2817	Alabama
2817	Baylor
2817	Boston College
2817	California
2817	Colorado
2817	Connecticut
2817	FIU
2817	Florida State
2817	Houston
2817	Iowa State
2817	Kansas State
2817	Liberty
2817	Louisiana
2817	Louisiana-Monroe
2817	LSU
2817	Marshall
2817	Miami
2817	Michigan
2817	Minnesota
2817	NC State
2817	Nebraska
2817	Northwestern
2817	Ohio State
2817	Oklahoma State
2817	Rutgers
2817	South Carolina
2817	TCU
2817	UCF
2817	Utah
2817	Vanderbilt
2817	Virginia
2817	Washington
2818	Texas A&M
2819	Texas A&M
2819	Alabama
2819	Baylor
2819	Colorado
2819	Florida
2819	Georgia
2819	Georgia Tech
2819	Georgia Tech
2819	Grambling State
2819	Houston
2819	LSU
2819	Nebraska
2819	Oklahoma State
2819	Ole Miss
2819	Syracuse
2819	TCU
2819	Texas
2819	Texas State
2819	USC
2819	Vanderbilt
2819	Virginia Tech
2820	Texas A&M
2820	Auburn
2820	Alabama
2820	Coastal Carolina
2820	Florida
2820	Florida Atlantic
2820	Georgia State
2820	Louisville
2820	Maryland
2820	Michigan State
2820	Nebraska
2820	North Carolina
2820	Ohio State
2820	Purdue
2820	Rutgers
2820	South Carolina
2820	Syracuse
2820	Tennessee
2820	Troy
2820	UCF
2820	Western Kentucky
2820	Arkansas
2821	Texas A&M
2821	Abilene Christian
2821	Air Force
2821	Army
2821	East Carolina
2821	Florida Atlantic
2821	Georgia Tech
2821	Houston
2821	Houston Baptist
2821	Indiana
2821	New Mexico State
2821	Rice
2821	Texas Southern
2821	Wake Forest
2821	SMU
2822	Texas A&M
2822	LSU
2822	Memphis
2823	Texas
2823	Ohio State
2823	USC
2823	Alabama
2823	Arizona
2823	Arizona State
2823	Auburn
2823	Colorado
2823	Illinois
2823	Kansas State
2823	LSU
2823	Michigan
2823	Nebraska
2823	Notre Dame
2823	Oklahoma
2823	Ole Miss
2823	Tennessee
2823	Texas A&M
2823	UCLA
2823	Utah
2823	Washington
2824	Texas
2824	Alabama
2824	Arizona
2824	Arizona State
2824	Arkansas
2824	Auburn
2824	Baylor
2824	Boston College
2824	Indiana
2824	Michigan
2824	Mississippi State
2824	Northwestern
2824	Ohio State
2824	Oklahoma State
2824	Ole Miss
2824	Oregon
2824	Penn State
2824	SMU
2824	TCU
2824	Tennessee
2824	Texas A&M
2824	Tulsa
2824	Utah
2825	Texas
2825	TCU
2825	Arizona
2825	Baylor
2825	Duke
2825	Houston
2825	Nebraska
2825	Notre Dame
2825	Oklahoma
2825	Tulsa
2825	Virginia Tech
2826	Texas
2826	Alabama
2826	Arkansas
2826	Baylor
2826	Colorado
2826	Connecticut
2826	Florida State
2826	Houston
2826	Illinois
2826	Jackson State
2826	Kansas
2826	LSU
2826	Missouri
2826	Nebraska
2826	North Texas
2826	Oklahoma
2826	Oklahoma State
2826	Ole Miss
2826	Purdue
2826	SMU
2826	TCU
2826	Tennessee
2826	Texas A&M
2826	Texas Tech
2826	Utah
2826	Virginia Tech
2827	Texas
2827	Arkansas
2827	LSU
2827	Ohio State
2827	Texas A&M
2827	Alabama
2827	Baylor
2827	Colorado
2827	Duke
2827	Florida
2827	Georgia
2827	Grambling State
2827	Houston
2827	Miami
2827	Nebraska
2827	Oklahoma
2827	Oklahoma State
2827	Ole Miss
2827	Prairie View A&M
2827	TCU
2827	Temple
2827	Tennessee
2827	Texas Tech
2827	USC
2827	Vanderbilt
2828	Texas
2828	Alabama
2828	Arkansas
2828	Baylor
2828	Boston College
2828	Florida
2828	LSU
2828	Notre Dame
2828	Ohio State
2828	Oklahoma
2828	Oklahoma State
2828	Oregon
2828	SMU
2829	Texas
2829	Alabama
2829	Arizona
2829	Arizona State
2829	Arkansas
2829	Auburn
2829	Baylor
2829	Boston College
2829	Colorado
2829	Florida
2829	Florida State
2829	Georgia
2829	Georgia Tech
2829	Houston
2829	Illinois
2829	Indiana
2829	Iowa State
2829	Kansas
2829	Kansas State
2829	Louisville
2829	LSU
2829	Miami
2829	Michigan
2829	Michigan State
2829	Missouri
2829	Nebraska
2829	Oklahoma
2829	Oklahoma State
2829	Oregon
2829	Penn State
2829	Purdue
2829	Rutgers
2829	SMU
2829	TCU
2829	Tennessee
2829	Texas A&M
2829	Texas Tech
2829	USC
2829	Utah
2829	Utah State
2829	Vanderbilt
2829	Virginia Tech
2829	Washington
2830	Texas
2830	Tennessee
2830	Arkansas
2830	Arkansas State
2830	Baylor
2830	Colorado
2830	Houston
2830	Illinois
2830	Kansas State
2830	Louisiana Tech
2830	Louisiana-Monroe
2830	Memphis
2830	Nebraska
2830	North Texas
2830	Oklahoma
2830	Oklahoma State
2830	SMU
2830	Stephen F. Austin
2830	TCU
2830	Texas A&M
2830	Texas A&M Commerce
2830	Tulane
2830	Virginia Tech
2832	Texas
2832	Arkansas
2832	Oklahoma State
2832	TCU
2832	Arizona
2832	Baylor
2832	Houston
2832	LSU
2832	Missouri
2832	Notre Dame
2832	Oklahoma
2832	Penn State
2832	SMU
2832	Texas Tech
2832	USF
2832	Vanderbilt
2832	Virginia Tech
2832	Ole Miss
2833	Texas
2833	Arizona State
2833	Arkansas
2833	Boston College
2833	Colorado
2833	Houston
2833	Illinois
2833	Missouri
2833	Oklahoma
2833	Oklahoma State
2833	SMU
2833	Stanford
2833	USC
2833	Utah
2833	Virginia Tech
2833	Washington
2833	Baylor
2833	TCU
2833	Wisconsin
2834	Texas
2834	Alabama
2834	Arkansas
2834	Baylor
2834	Florida State
2834	Georgia Tech
2834	Houston
2834	LSU
2834	Mississippi State
2834	Missouri
2834	Nebraska
2834	Ohio State
2834	Tennessee
2834	Texas A&M
2834	Texas Tech
2834	Utah
2835	Texas
2835	Texas A&M
2835	Alabama
2835	Arizona
2835	Arizona State
2835	Arkansas
2835	Auburn
2835	Baylor
2835	Boston College
2835	Colorado
2835	Florida
2835	Florida State
2835	Georgia
2835	Georgia Tech
2835	Houston
2835	Kansas
2835	Louisville
2835	LSU
2835	Miami
2835	Missouri
2835	Nebraska
2835	Notre Dame
2835	Ohio State
2835	Oklahoma
2835	Oklahoma State
2835	Ole Miss
2835	Oregon
2835	Purdue
2835	TCU
2835	Texas Tech
2835	USC
2836	Texas
2836	Alabama
2836	Arizona
2836	Arkansas
2836	Colorado
2836	Duke
2836	Florida State
2836	Houston
2836	Kansas State
2836	LSU
2836	Michigan
2836	Missouri
2836	Oklahoma
2836	Purdue
2836	SMU
2836	TCU
2836	Tennessee
2836	Texas Tech
2836	Toledo
2836	Tulane
2836	Tulsa
2836	UTSA
2836	Vanderbilt
2837	Texas
2837	Arizona
2837	Auburn
2837	Baylor
2837	Colorado
2837	Florida State
2837	Houston
2837	Illinois
2837	Kansas State
2837	Michigan
2837	Minnesota
2837	Missouri
2837	Nebraska
2837	Ole Miss
2837	Oregon
2837	SMU
2837	TCU
2837	Texas Tech
2837	USC
2837	Virginia Tech
2837	Washington State
2838	Texas
2838	Arizona State
2838	Arkansas
2838	Baylor
2838	Boston College
2838	Colorado
2838	Connecticut
2838	Duke
2838	Florida
2838	Georgia Tech
2838	Houston
2838	Illinois
2838	Indiana
2838	Iowa
2838	Iowa State
2838	Kansas
2838	LSU
2838	Michigan State
2838	Minnesota
2838	North Texas
2838	Purdue
2838	SMU
2838	TCU
2838	Utah
2838	UTSA
2838	Vanderbilt
2839	Texas
2839	Kansas State
2839	TCU
2839	Arizona
2839	Arizona State
2839	Boston College
2839	Colorado State
2839	Houston
2839	Iowa State
2839	Louisiana
2839	New Mexico
2839	Rice
2839	Texas Southern
2839	Texas State
2839	Baylor
2840	Texas
2840	Oklahoma State
2840	SMU
2840	Air Force
2840	FIU
2840	Illinois
2840	Louisiana Tech
2840	Louisiana-Monroe
2840	Memphis
2840	Oregon State
2840	Purdue
2840	Rice
2840	Southern Miss
2840	Texas Tech
2840	Tulane
2841	Texas Tech
2841	Oklahoma State
2841	SMU
2841	Texas
2841	Arizona
2841	Arkansas
2841	Baylor
2841	Colorado
2841	Indiana
2841	Kansas
2841	Texas A&M
2841	USC
2842	Texas Tech
2842	Arkansas
2842	Arizona
2842	Arkansas State
2842	Baylor
2842	Houston
2842	Illinois
2842	Kansas
2842	Kansas State
2842	Louisiana Tech
2842	Memphis
2842	Minnesota
2842	Nevada
2842	North Texas
2842	Southern Miss
2842	Tulane
2842	Texas
2843	Texas Tech
2843	Vanderbilt
2843	Tulsa
2843	Arizona
2843	Arkansas
2843	Boston College
2843	California
2843	Colorado
2843	Colorado State
2843	Duke
2843	Georgia Tech
2843	Iowa State
2843	Kansas State
2843	Minnesota
2843	Missouri
2843	North Texas
2843	Rice
2843	SMU
2843	TCU
2843	Texas Southern
2843	Utah
2843	UTEP
2844	Texas Tech
2844	Colorado
2844	Oklahoma State
2844	Arizona State
2844	Boise State
2844	Boston College
2844	Colorado State
2844	Connecticut
2844	Houston
2844	Illinois
2844	Kansas
2844	Kansas State
2844	North Texas
2844	Ole Miss
2844	Purdue
2844	San Diego State
2844	SMU
2844	TCU
2844	Toledo
2844	Utah
2844	Washington State
2845	Texas Tech
2845	UCLA
2845	Utah
2845	Abilene Christian
2845	Illinois State
2845	New Mexico
2845	New Mexico State
2845	SMU
2845	Tulsa
2845	UTEP
2846	Texas Tech
2846	Air Force
2846	Baylor
2846	Kansas
2846	Purdue
2846	Stephen F. Austin
2846	Tulsa
2847	Texas Tech
2847	Arizona
2847	Arkansas
2847	Baylor
2847	Colorado
2847	Grambling State
2847	Houston
2847	Iowa State
2847	Kansas
2847	Memphis
2847	Missouri
2847	Nebraska
2847	Oklahoma State
2847	Oregon State
2847	Purdue
2847	Rutgers
2847	South Alabama
2847	Southern Miss
2847	Texas Southern
2847	Utah
2847	Washington State
2848	Texas Tech
2848	Missouri
2848	Arkansas
2848	Arkansas State
2848	Iowa State
2848	Kansas
2848	Kansas State
2848	Louisiana
2848	North Texas
2848	Southern Miss
2848	Texas State
2848	Tulane
2848	UTSA
2849	Texas Tech
2849	Nevada
2849	San Diego State
2849	Utah State
2850	Texas Tech
2850	Boise State
2850	Colorado State
2850	Houston Baptist
2850	Incarnate Word
2850	Kansas
2850	Kansas State
2850	Nebraska
2850	North Texas
2850	Oklahoma State
2850	SMU
2850	Tulane
2850	UTSA
2851	Texas Tech
2851	Missouri
2851	Arizona
2851	Colorado
2851	Colorado State
2851	Houston
2851	Kansas
2851	Kansas State
2851	Louisiana
2851	North Texas
2851	SMU
2851	Southern Miss
2851	Syracuse
2851	Texas State
2851	Utah
2852	Texas Tech
2852	SMU
2852	Abilene Christian
2852	Army
2852	Indiana
2852	Kansas
2852	North Texas
2852	Rice
2852	Texas State
2852	Tulsa
2852	Yale
2853	Texas Tech
2853	Arkansas State
2853	Georgia Tech
2853	Louisiana-Monroe
2853	New Mexico
2853	William & Mary
2853	Missouri
2854	Texas Tech
2854	Kansas
2854	Colorado State
2854	Georgia Tech
2854	Houston
2854	Louisiana
2854	Louisiana-Monroe
2854	New Mexico State
2854	Oklahoma State
2854	SMU
2854	Texas Southern
2854	Toledo
2854	Tulane
2854	Tulsa
2854	Utah State
2854	UTSA
2855	Texas Tech
2855	Arkansas State
2855	Colorado
2855	Colorado State
2855	Houston
2855	Houston Baptist
2855	Louisiana
2855	Oklahoma State
2855	Toledo
2855	Tulsa
2855	Utah
2856	Texas Tech
2856	Arizona
2856	Colorado
2856	Georgia Tech
2856	Houston
2856	Illinois
2856	Illinois State
2856	Jackson State
2856	Kansas
2856	Morgan State
2856	North Texas
2856	Purdue
2856	Tulsa
2856	Utah State
2902	Texas Tech
2902	Abilene Christian
2902	California
2902	Houston
2902	Illinois State
2902	Iowa State
2902	Kansas
2902	Liberty
2902	Louisiana
2902	New Mexico
2902	Northwestern State
2902	Southern Miss
2902	Texas State
2902	Tulane
2902	Tulsa
2857	Texas Tech
2857	SMU
2857	Maryland
2857	North Texas
2857	UNLV
2857	Arkansas State
2857	Rutgers
2857	Temple
2858	UCLA
2858	Boston College
2858	Massachusetts
2858	Miami
2858	Michigan
2858	Minnesota
2858	Missouri
2858	Pittsburgh
2858	Purdue
2858	Rhode Island
2858	Rutgers
2858	Wisconsin
2858	North Carolina
2858	Ohio State
2858	Penn State
2858	Washington
2859	UCLA
2859	Oregon
2859	Arizona
2859	Arizona State
2859	California
2859	Oklahoma
2859	Oregon State
2859	San Jose State
2859	Southern Miss
2859	USC
2859	Washington State
2860	UCLA
2860	Arizona State
2860	Colorado
2860	Iowa State
2860	Nebraska
2860	Oregon
2860	Oregon State
2860	San Jose State
2860	USC
2860	Utah
2860	Vanderbilt
2860	Washington
2860	Washington State
2860	California
2860	Fresno State
2860	Nevada
2861	UCLA
2861	Arizona
2861	LSU
2861	Oregon State
2861	Penn State
2861	USC
2862	UCLA
2862	Brigham Young
2862	Nebraska
2862	Arizona
2862	Boston College
2862	California
2862	Cincinnati
2862	Columbia
2862	Georgia Tech
2862	Kentucky
2862	Liberty
2862	Louisville
2862	LSU
2862	Miami
2862	Michigan
2862	Michigan State
2862	Minnesota
2862	Mississippi State
2862	North Carolina
2862	Ole Miss
2862	Purdue
2862	South Alabama
2862	Syracuse
2862	Temple
2862	Tennessee
2862	Texas A&M
2862	UCF
2862	Vanderbilt
2862	Virginia
2862	Virginia Tech
2862	Wake Forest
2862	Western Kentucky
2863	UCLA
2863	Arizona State
2863	Colorado
2863	Florida
2863	Utah
2863	Oregon
2864	UCLA
2864	San Jose State
2864	South Alabama
2864	Maryland
2865	UCLA
2865	Boston College
2865	California
2865	Florida
2865	Iowa
2865	Kentucky
2865	Maryland
2865	Massachusetts
2865	Michigan
2865	Michigan State
2865	Nebraska
2865	Ole Miss
2865	Purdue
2865	Rutgers
2865	Syracuse
2865	Tennessee
2865	UCF
2865	USC
2865	Vanderbilt
2865	Western Michigan
2865	Penn State
2866	UCLA
2866	California
2866	Brigham Young
2866	Dartmouth
2866	Dixie State
2866	Fresno State
2866	Harvard
2866	Hawaii
2866	Kansas State
2866	Navy
2866	Nebraska
2866	Oregon
2866	Princeton
2866	Utah
2866	Wisconsin
2866	Yale
2866	Colorado State
2866	Nevada
2866	Notre Dame
2866	Stanford
2866	Washington
2867	UCLA
2867	San Diego State
2867	San Jose State
2867	Utah State
2867	California
2867	Fresno State
2868	UCLA
2869	UCLA
2869	Arizona
2869	Boston College
2869	Houston Baptist
2869	Louisiana
2869	Massachusetts
2869	New Mexico State
2869	Purdue
2869	Rice
2869	Southern Miss
2869	Syracuse
2869	Tennessee
2869	Texas State
2869	Texas Tech
2869	Tulsa
2869	UNLV
2869	Utah
2870	UCLA
2870	Tennessee
2870	USC
2870	Akron
2870	Arkansas-Pine Bluff
2870	Stephen F. Austin
2870	UTEP
2870	North Carolina
2871	UCLA
2871	Virginia Tech
2871	Air Force
2871	Appalachian State
2871	Army
2871	Austin Peay
2871	Charlotte
2871	Coastal Carolina
2871	Colorado State
2871	Columbia
2871	Cornell
2871	Dartmouth
2871	East Carolina
2871	Eastern Kentucky
2871	Florida Atlantic
2871	Gardner-Webb
2871	Georgia Southern
2871	Georgia Tech
2871	Holy Cross
2871	Howard
2871	Illinois
2871	Jackson State
2871	Jacksonville State
2871	James Madison
2871	Kansas
2871	Kansas State
2871	Kent State
2871	Liberty
2871	Marshall
2871	Mercer
2871	Middle Tennessee State
2871	Navy
2871	Princeton
2871	Savannah State
2871	The Citadel
2871	Troy
2871	Western Kentucky
2871	William & Mary
2871	Yale
2871	Clemson
2871	Eastern Kentucky
2872	UCLA
2872	Arizona
2872	Abilene Christian
2872	Arizona State
2872	Boston College
2872	Nevada
2872	Oregon State
2872	USC
2872	Vanderbilt
2872	Washington State
2872	Yale
2872	Brown
2873	UCLA
2873	Tulane
2873	Air Force
2873	Hawaii
2873	Nevada
2873	New Mexico State
2873	San Jose State
2873	Wyoming
2873	California
2874	UCLA
2874	Colorado
2874	Duke
2874	Louisville
2874	Penn State
2874	Wisconsin
2875	UCLA
2875	Brigham Young
2875	Colorado
2875	Utah State
2875	Washington State
2875	Boise State
2875	UNLV
2875	Utah
2876	UCLA
2876	Abilene Christian
2876	Air Force
2876	Army
2876	Ball State
2876	Colgate
2876	Columbia
2876	Cornell
2876	Dartmouth
2876	Georgetown
2876	Navy
2876	New Mexico State
2876	Northern Arizona
2876	Pennsylvania
2876	Princeton
2876	Utah State
2876	Yale
2876	Arizona State
2876	Georgia
2876	Georgia State
2876	Wisconsin
2877	UCLA
2877	Yale
2877	Louisville
2878	Virginia
2878	Brigham Young
2878	Michigan
2878	Notre Dame
2878	Alabama
2878	Arizona
2878	Arkansas
2878	Auburn
2878	California
2878	Colorado
2878	Colorado State
2878	Florida
2878	Kansas
2878	Kansas State
2878	LSU
2878	Miami
2878	Missouri
2878	Nebraska
2878	Ohio State
2878	Oklahoma
2878	Oklahoma State
2878	Ole Miss
2878	Oregon
2878	Penn State
2878	Stanford
2878	Tennessee
2878	Texas A&M
2878	UCLA
2878	USC
2878	Utah
2878	Washington State
2878	Wisconsin
2878	Arizona State
2878	Clemson
2878	Duke
2878	Georgia
2879	Virginia
2879	Ole Miss
2879	TCU
2879	Arizona State
2879	Colorado
2879	Grambling State
2879	Kansas
2879	Liberty
2879	Louisiana
2879	Louisiana Tech
2879	LSU
2879	Mercer
2879	South Alabama
2879	Southern University
2879	Tulane
2879	Oklahoma
2880	Virginia
2880	Arkansas
2880	Boston College
2880	Colorado
2880	Florida
2880	Houston
2880	Kansas
2880	Kentucky
2880	Miami
2880	Oklahoma State
2880	Purdue
2880	SMU
2880	Southern Miss
2880	Southern University
2880	Tennessee
2880	Texas A&M
2880	Tulane
2880	Alabama
2880	LSU
2881	Virginia
2881	Penn State
2881	Boston College
2881	Duke
2881	East Carolina
2881	Georgia Tech
2881	Michigan
2881	North Carolina
2881	Notre Dame
2881	Pittsburgh
2881	Purdue
2881	Rutgers
2881	Virginia Tech
2881	Wake Forest
2881	Wisconsin
2882	Virginia
2882	Oklahoma
2882	Arizona
2882	Arkansas
2882	Arizona State
2882	Baylor
2882	Colorado
2882	FIU
2882	Georgia Tech
2882	Houston
2882	Indiana
2882	Kansas
2882	Liberty
2882	Louisiana
2882	Louisiana Tech
2882	Louisiana-Monroe
2882	Memphis
2882	Miami
2882	Rutgers
2882	SMU
2882	South Alabama
2882	Southeastern Louisiana
2882	Southern Miss
2882	Southern University
2882	Texas Tech
2882	Tulane
2882	UNLV
2882	Utah
2882	Utah State
2882	UTSA
2882	West Virginia
2883	Virginia
2883	Boston College
2883	Howard
2883	Temple
2883	Maryland
2883	Michigan
2883	Ohio State
2883	Penn State
2883	Rutgers
2884	Virginia
2884	Oregon
2884	Appalachian State
2884	Coastal Carolina
2884	Georgia Tech
2884	Liberty
2884	Western Kentucky
2884	Clemson
2884	East Carolina
2884	NC State
2884	South Carolina
2884	Virginia Tech
2885	Virginia
2885	Iowa State
2885	Minnesota
2885	Pittsburgh
2885	Akron
2885	Ball State
2885	Bowling Green
2885	Buffalo
2885	Central Michigan
2885	East Carolina
2885	Howard
2885	Indiana
2885	Kent State
2885	Liberty
2885	Marshall
2885	Maryland
2885	Massachusetts
2885	Ohio
2885	Syracuse
2885	Temple
2885	Toledo
2885	Vanderbilt
2885	West Virginia
2885	Western Michigan
2885	William & Mary
2885	Yale
2885	FIU
2885	Virginia Tech
2886	Virginia
2886	Cincinnati
2886	East Carolina
2886	Howard
2886	Massachusetts
2886	Old Dominion
2886	Rutgers
2886	West Virginia
2886	Virginia Tech
2887	Virginia
2888	Virginia
2888	Boston College
2888	Buffalo
2888	Columbia
2888	Cornell
2888	Dartmouth
2888	Eastern Michigan
2888	FIU
2888	Florida Atlantic
2888	Indiana
2888	Kansas
2888	Marshall
2888	Minnesota
2888	Northern Illinois
2888	Rutgers
2888	Syracuse
2888	Toledo
2888	Tulane
2888	USF
2888	Utah
2888	Western Kentucky
2889	Virginia
2889	James Madison
2889	Massachusetts
2890	Virginia
2890	Ball State
2890	Bowling Green
2890	Buffalo
2890	Central Michigan
2890	Cincinnati
2890	Dartmouth
2890	Eastern Kentucky
2890	Eastern Michigan
2890	Fordham
2890	Illinois State
2890	Indiana State
2890	Kent State
2890	Miami (OH)
2890	Princeton
2890	South Dakota
2890	Toledo
2890	Western Illinois
2890	Western Michigan
2890	Youngstown State
2891	Washington
2891	Alabama
2891	Arizona
2891	Arizona State
2891	Auburn
2891	California
2891	Clemson
2891	Colorado
2891	Florida
2891	Florida State
2891	Georgia
2891	Kansas
2891	Louisville
2891	LSU
2891	Miami
2891	Michigan
2891	Nebraska
2891	Notre Dame
2891	Ohio State
2891	Oklahoma
2891	Oregon
2891	Oregon State
2891	Penn State
2891	Stanford
2891	TCU
2891	Tennessee
2891	Texas
2891	Texas A&M
2891	USC
2891	Utah
2891	Washington State
2892	Washington
2892	Alabama
2892	Arizona
2892	Arizona State
2892	California
2892	Colorado
2892	Florida
2892	Fresno State
2892	Georgia
2892	Hawaii
2892	Kansas State
2892	LSU
2892	Nebraska
2892	Nevada
2892	Notre Dame
2892	Ohio State
2892	Oklahoma
2892	Ole Miss
2892	Oregon
2892	Oregon State
2892	Tennessee
2892	UCLA
2892	USC
2892	Utah
2892	Washington State
2892	Clemson
2893	Washington
2893	Alabama
2893	Arizona State
2893	Auburn
2893	Colorado
2893	LSU
2893	Michigan
2893	Mississippi State
2893	Nebraska
2893	Oklahoma State
2893	Oregon
2893	Oregon State
2893	Texas A&M
2893	UCLA
2893	USC
2893	Utah
2893	Wisconsin
2893	California
2893	Florida
2893	Notre Dame
2893	Stanford
2894	Washington
2894	Arizona State
2894	California
2894	Colorado
2894	Colorado State
2894	Duke
2894	Iowa
2894	Kansas
2894	Kansas State
2894	Miami
2894	Michigan
2894	Minnesota
2894	Missouri
2894	Nebraska
2894	Notre Dame
2894	Ohio State
2894	Oklahoma
2894	Oklahoma State
2894	Oregon
2894	Penn State
2894	Purdue
2894	UCLA
2894	USC
2894	Utah
2895	Washington
2895	Boise State
2895	Colorado
2895	Colorado State
2895	Georgia
2895	Kansas
2895	Miami
2895	Oregon State
2895	San Jose State
2895	UCLA
2895	Utah
2895	Washington State
2895	Arizona State
2895	California
2895	Oregon State
2896	Washington
2896	Oklahoma
2896	Arizona
2896	Arizona State
2896	Indiana
2896	Kansas
2896	LSU
2896	Michigan
2896	Michigan State
2896	Nebraska
2896	Oklahoma State
2896	Oregon
2896	Penn State
2896	Purdue
2896	Tennessee
2896	Texas A&M
2896	Texas Tech
2896	USC
2896	Washington State
2897	Washington
2897	Oklahoma
2897	Alabama
2897	Arizona
2897	Arizona State
2897	California
2897	Colorado
2897	Duke
2897	Georgia Tech
2897	Georgia Tech
2897	Kansas State
2897	LSU
2897	Michigan
2897	Mississippi State
2897	Nebraska
2897	Notre Dame
2897	Ohio State
2897	Oklahoma State
2897	Oregon
2897	Oregon State
2897	Stanford
2897	TCU
2897	Tennessee
2897	Texas
2897	Texas A&M
2897	UCLA
2897	USC
2897	Utah
2897	Washington State
2898	Washington
2898	Florida
2898	Ohio State
2898	Alabama
2898	Arizona
2898	Arizona State
2898	Auburn
2898	Boise State
2898	Brigham Young
2898	California
2898	Colorado
2898	Florida State
2898	Illinois
2898	Kansas
2898	Kansas State
2898	Louisville
2898	LSU
2898	Maryland
2898	Michigan
2898	Michigan State
2898	Nebraska
2898	Oklahoma State
2898	Ole Miss
2898	Oregon
2898	Oregon State
2898	Penn State
2898	Purdue
2898	Rutgers
2898	San Diego State
2898	SMU
2898	South Carolina
2898	TCU
2898	Tennessee
2898	Texas
2898	Texas A&M
2898	Texas Tech
2898	UCLA
2898	USC
2898	Utah
2898	Washington State
2898	Wisconsin
2899	Washington
2899	Alabama
2899	Arizona
2899	Arizona State
2899	Brigham Young
2899	California
2899	Colorado
2899	Duke
2899	Florida
2899	Georgia
2899	Kansas
2899	Miami
2899	Michigan
2899	Michigan State
2899	Minnesota
2899	NC State
2899	Nebraska
2899	Northwestern
2899	Notre Dame
2899	Ohio State
2899	Oklahoma
2899	Oregon
2899	Penn State
2899	San Diego State
2899	Stanford
2899	Tennessee
2899	Texas
2899	Texas Tech
2899	UCLA
2899	UNLV
2899	USC
2899	Utah
2899	West Virginia
2899	Boise State
2900	Washington
2900	Alabama
2900	Arizona
2900	Arizona State
2900	Boise State
2900	California
2900	Colorado
2900	Colorado State
2900	Georgia
2900	LSU
2900	Michigan
2900	Ohio State
2900	Penn State
2900	San Diego State
2900	Texas A&M
2900	UCLA
2900	USC
2900	USC
2900	Utah State
2900	Wisconsin
2900	Yale
2900	San Jose State
2900	Utah
2901	Washington
2903	Washington
2903	California
2903	Arizona
2903	Arizona State
2903	Boise State
2903	Brigham Young
2903	Fresno State
2903	Nevada
2903	Oregon State
2903	San Jose State
2903	Texas Tech
2903	UCLA
2903	UNLV
2903	Utah
2903	Utah State
2903	Yale
2903	Michigan
2904	Washington
2904	Arizona
2904	Arizona State
2904	California
2904	Colorado
2904	Kansas State
2904	Kentucky
2904	Nevada
2904	Oregon
2904	Oregon State
2904	USC
2904	Utah
2904	Utah State
2904	Wisconsin
2904	UCLA
2905	Washington
2905	Arkansas
2905	Baylor
2905	Colorado
2905	Colorado State
2905	Houston
2905	Kansas
2905	Kansas State
2905	Louisiana Tech
2905	SMU
2905	Temple
2905	Texas State
2905	Utah
2905	Kansas State
2906	Washington
2906	UCLA
2906	Arizona
2906	Boise State
2906	California
2906	Kansas State
2906	Michigan
2906	Oregon State
2906	Utah State
2906	Washington State
2906	Arizona State
2906	Eastern Washington
2906	Mississippi State
2906	Oregon
2906	Purdue
2906	USC
2906	Utah
2906	Virginia
2907	Washington
2907	Arizona State
2907	Kentucky
2907	Louisville
2907	Michigan
2907	Nevada
2907	Oregon
2907	Oregon State
2907	Penn State
2907	Rutgers
2907	San Jose State
2907	UCLA
2907	Washington State
2907	California
2907	Indiana
2907	Notre Dame
2907	Oregon State
2907	USC
2908	Washington
2908	Northwestern
2908	Arizona
2908	Boise State
2908	California
2908	Colorado
2908	Oregon
2908	Oregon State
2908	Utah
2908	Utah State
2908	Washington State
2908	Wisconsin
2908	Michigan
2908	Notre Dame
2909	Washington
2909	Utah
2909	Air Force
2909	Arkansas State
2909	Army
2909	Baylor
2909	Colorado
2909	Dartmouth
2909	FIU
2909	Liberty
2909	Louisiana
2909	Louisiana Tech
2909	Louisiana-Monroe
2909	New Mexico
2909	North Texas
2909	Rice
2909	San Diego State
2909	SMU
2909	Texas State
2909	Tulane
2909	Tulsa
2909	UTSA
2909	Virginia
2909	Yale
2910	Washington
2910	Northern Arizona
2910	Pennsylvania
2910	UC Davis
2910	UNLV
2910	Yale
2910	Boise State
2910	Dartmouth
2910	New Mexico
2910	Oregon State
2910	Colorado
2910	Dixie State
2910	Fresno State
2910	Sacramento State
2910	UCLA
2910	USC
2910	Vanderbilt
2911	Washington
2911	Oregon State
2911	Columbia
2911	Georgetown
2911	Idaho
2911	Northern Colorado
2911	Portland State
2911	Washington State
2911	Cornell
2911	Montana State
2911	San Diego
2912	Washington
2913	Washington
2914	West Virginia
2914	Maryland
2914	Buffalo
2914	Cincinnati
2914	Coastal Carolina
2914	Connecticut
2914	East Carolina
2914	Kent State
2914	Kentucky
2914	Massachusetts
2914	Monmouth
2914	Temple
2914	Toledo
2915	West Virginia
2915	Kentucky
2915	Purdue
2915	Arizona State
2915	Auburn
2915	Indiana
2915	Maryland
2915	Minnesota
2915	Nebraska
2915	Pittsburgh
2915	Rutgers
2915	Syracuse
2915	Temple
2915	Tennessee
2915	Virginia
2915	Wake Forest
2915	Notre Dame
2915	Penn State
2916	West Virginia
2916	North Carolina
2916	Penn State
2916	Purdue
2916	Baylor
2916	Connecticut
2916	Duke
2916	Georgia Tech
2916	Illinois
2916	Indiana
2916	Kentucky
2916	Marshall
2916	Maryland
2916	Michigan State
2916	Minnesota
2916	NC State
2916	Oregon
2916	Pittsburgh
2916	Rutgers
2916	Temple
2916	Utah
2916	Vanderbilt
2916	Virginia
2916	Virginia Tech
2917	West Virginia
2917	FIU
2917	Georgia Tech
2917	Mississippi State
2917	Ole Miss
2917	South Alabama
2917	TCU
2917	Temple
2917	Troy
2917	UAB
2917	USF
2917	Arkansas
2917	Arkansas
2918	West Virginia
2918	Louisville
2918	Marshall
2918	Stanford
2918	Virginia Tech
2918	Wake Forest
2918	Virginia
2918	Virginia Tech
2919	West Virginia
2919	Central Michigan
2919	Eastern Michigan
2919	Iowa State
2919	Kentucky
2919	Michigan
2919	Michigan State
2919	Ohio State
2919	Purdue
2919	Toledo
2919	Western Michigan
2920	West Virginia
2920	Rutgers
2920	Arkansas
2920	Colorado State
2920	Georgia Tech
2920	Indiana
2920	Iowa
2920	Iowa State
2920	Kansas
2920	Kansas State
2920	Kent State
2920	Kentucky
2920	Louisiana Tech
2920	Louisville
2920	Maryland
2920	Memphis
2920	Syracuse
2920	UCF
2920	Virginia Tech
2920	Western Kentucky
2920	Western Michigan
2920	Illinois
2920	Missouri
2920	Purdue
2921	West Virginia
2921	Akron
2921	Arkansas State
2921	Florida Atlantic
2921	Florida State
2921	Houston
2921	Iowa State
2921	Kansas State
2921	Louisiana Tech
2921	Louisville
2921	Middle Tennessee State
2921	Nebraska
2921	Ohio
2921	SMU
2921	Troy
2921	UAB
2921	UTSA
2922	West Virginia
2922	Maryland
2922	LSU
2922	Massachusetts
2922	Ole Miss
2922	Syracuse
2922	Virginia
2922	Wisconsin
2922	Georgia Tech
2923	West Virginia
2923	Austin Peay
2923	Ball State
2923	Cincinnati
2923	Kentucky
2923	Tennessee
2923	Troy
2923	UAB
2923	Louisville
2923	Ohio State
2923	Penn State
2923	Western Kentucky
2924	West Virginia
2924	USF
2924	Iowa State
2924	Charlotte
2924	Louisiana-Monroe
2924	South Alabama
2924	UCF
2925	West Virginia
2925	Cincinnati
2925	Georgia Tech
2925	Kent State
2925	Minnesota
2925	Penn State
2925	Temple
2925	Towson
2926	West Virginia
2926	Coastal Carolina
2926	Colorado
2926	FIU
2926	Georgia Southern
2926	Georgia State
2926	Kansas State
2926	South Alabama
2926	Tennessee State
2926	Troy
2926	Tulane
2926	USF
2926	East Carolina
2926	Georgia Tech
2926	South Carolina
2927	West Virginia
2927	Arkansas State
2927	Charlotte
2927	Marshall
2927	Old Dominion
2927	South Alabama
2927	Southern Miss
2927	Troy
2927	UAB
2927	UCF
2927	Western Kentucky
2927	Arkansas
2927	Auburn
2927	LSU
2927	Mississippi State
2928	West Virginia
2928	Boston College
2928	Connecticut
2928	East Carolina
2928	Howard
2928	Maryland
2928	Massachusetts
2928	Morgan State
2928	Pittsburgh
2928	Rutgers
2928	Toledo
2928	Western Michigan
2928	Buffalo
2928	Penn State
2928	Virginia Tech
2929	West Virginia
2929	Utah
2929	Washington State
2929	Baylor
2929	Boston College
2929	Brown
2929	Buffalo
2929	Charlotte
2929	FIU
2929	Indiana
2929	Iowa State
2929	Louisville
2929	Marshall
2929	Minnesota
2929	Northern Illinois
2929	Ole Miss
2929	Oregon State
2929	Penn State
2929	Rutgers
2929	Southern Miss
2929	TCU
2929	Toledo
2929	Vanderbilt
2929	Western Kentucky
2929	Miami
2930	Wisconsin
2930	Georgia
2930	Iowa State
2930	Michigan
2930	Minnesota
2930	Nebraska
2930	Notre Dame
2930	Syracuse
2930	Tennessee
2930	USC
2931	Wisconsin
2931	Michigan
2931	Iowa
2932	Wisconsin
2932	Boise State
2932	California
2932	Hawaii
2932	Kansas State
2932	Nebraska
2932	Oklahoma
2932	Oregon State
2932	Stanford
2932	Tennessee
2932	UCLA
2932	USC
2932	Utah
2932	Vanderbilt
2932	Virginia
2932	Washington
2933	Wisconsin
2933	Iowa
2933	Purdue
2934	Wisconsin
2934	Iowa State
2934	Iowa
2935	Wisconsin
2935	Arizona
2935	Nebraska
2935	UCLA
2935	Colorado
2935	Indiana
2935	Oregon State
2935	Washington State
2935	Alabama
2935	Arizona State
2935	Oregon
2935	USC
2936	Wisconsin
2936	Purdue
2936	Boston College
2936	Central Michigan
2936	Cincinnati
2936	Duke
2936	Eastern Michigan
2936	Indiana
2936	Kent State
2936	Kentucky
2936	Louisville
2936	Maryland
2936	Michigan
2936	Michigan State
2936	Minnesota
2936	Morgan State
2936	Northwestern
2936	Pittsburgh
2936	Rutgers
2936	Syracuse
2936	Washington State
2936	West Virginia
2936	Western Michigan
2937	Wisconsin
2937	Iowa
2937	Iowa State
2937	Minnesota
2937	North Dakota State
2937	Northern Iowa
2937	Ohio
2937	Oregon State
2937	Wyoming
2938	Wisconsin
2938	Alabama
2938	Georgia
2938	Ohio State
2938	Boston College
2938	Buffalo
2938	Connecticut
2938	Duke
2938	East Carolina
2938	Georgia Tech
2938	Iowa
2938	Kent State
2938	Louisville
2938	LSU
2938	Maryland
2938	Massachusetts
2938	Michigan
2938	Michigan State
2938	Nebraska
2938	Notre Dame
2938	Penn State
2938	Syracuse
2938	TCU
2938	Vanderbilt
2938	Virginia
2938	Virginia Tech
2938	West Virginia
2938	Maine
2938	New Hampshire
2938	Rhode Island
2938	Rutgers
2938	Villanova
2939	Wisconsin
2939	Boston College
2939	Cincinnati
2939	Duke
2939	Illinois
2939	Iowa
2939	Missouri
2939	Northern Illinois
2939	Northwestern
2939	Purdue
2939	West Virginia
2939	Western Michigan
2940	Wisconsin
2940	Iowa
2940	South Dakota State
2941	Wisconsin
2941	Air Force
2941	Central Michigan
2941	Columbia
2941	Dartmouth
2941	Eastern Kentucky
2941	Illinois State
2941	Iowa
2941	Miami
2941	North Dakota State
2941	Northern Illinois
2941	South Dakota
2941	South Dakota State
2941	Syracuse
2941	Temple
2941	Western Michigan
2941	Yale
2941	Nebraska
2942	Wisconsin
2942	Minnesota
2942	Oklahoma State
2942	Air Force
2942	Arizona State
2942	Army
2942	Colorado State
2942	Columbia
2942	Harvard
2942	Kansas State
2942	Northern Colorado
2942	Pennsylvania
2942	Wyoming
2942	Yale
2943	Wisconsin
2943	Air Force
2943	Albany
2943	Army
2943	Colgate
2943	Cornell
2943	Fordham
2943	Holy Cross
2943	Kent State
2943	Lehigh
2943	New Hampshire
2943	Robert Morris
2943	Temple
2943	Virginia Military Institute
2943	Youngstown State
2943	Northwestern
2943	Penn State
2943	Rutgers
2943	Virginia Tech
2943	Wake Forest
2944	Wisconsin
2944	Illinois State
2944	North Dakota
2944	South Dakota
2945	Wisconsin
2945	Army
2945	Cornell
2945	Jackson State
2945	Missouri
2945	Tennessee State
2945	UT Martin
2945	Cincinnati
2945	Louisville
2945	Memphis
2945	Mississippi State
2945	Northwestern
2945	Vanderbilt
2946	Wisconsin
2946	Akron
2946	Ball State
2946	Chattanooga
2946	Coastal Carolina
2946	Eastern Kentucky
2946	Iowa State
2946	Navy
2946	The Citadel
2946	Austin Peay
2946	Indiana
2946	Michigan State
2946	Northern Illinois
2946	Northwestern
2946	Purdue
2946	Rutgers
\.


--
-- Data for Name: recruits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recruits (id, name, "position", team, score, hometown, state, url) FROM stdin;
1965	Bryce Young	DUAL 	Alabama	0.99690	 Mater Dei (Santa Ana, CA)                    	CA	https://247sports.com/player/bryce-young-93127
1966	Chris Braswell	WDE 	Alabama	0.99210	 St. Frances Academy (Baltimore, MD)                    	MD	https://247sports.com/player/chris-braswell-46049102
1967	Drew Sanders	ATH 	Alabama	0.99090	 Ryan (Denton, TX)                    	TX	https://247sports.com/player/drew-sanders-45572383
1968	Demouy Kennedy	ILB 	Alabama	0.98200	 Theodore (Theodore, AL)                    	AL	https://247sports.com/player/demouy-kennedy-46054124
1969	Quandarrius Robinson	OLB 	Alabama	0.97720	 Jackson-Olin (Birmingham, AL)                  	AL	https://247sports.com/player/quandarrius-robinson-46047696
1970	Brian Branch	S 	Alabama	0.97230	 Sandy Creek (Tyrone, GA)                  	GA	https://247sports.com/player/brian-branch-46055160
1971	Will Anderson	WDE 	Alabama	0.96440	 Dutchtown (Hampton, GA)                    	GA	https://247sports.com/player/will-anderson-46053865
1972	Timothy Smith	DT 	Alabama	0.96130	 Sebastian River (Sebastian, FL)                  	FL	https://247sports.com/player/timothy-smith-46050501
1973	Roydell Williams	RB 	Alabama	0.96130	 Hueytown  (Hueytown, AL)                    	AL	https://247sports.com/player/roydell-williams-46050297
1974	Thaiu Jones-Bell	WR 	Alabama	0.95420	 Miami Carol City (Opa Locka, FL)                    	FL	https://247sports.com/player/thaiu-jones-bell-46047033
1975	Javon Baker	WR 	Alabama	0.93880	 McEachern (Powder Springs, GA)    	GA	https://247sports.com/player/javon-baker-46048083
1976	Jackson Bratton	ILB 	Alabama	0.92760	 Muscle Shoals  (Muscle Shoals, AL)                    	AL	https://247sports.com/player/jackson-bratton-46051850
1977	Malachi Moore	S 	Alabama	0.92640	 Hewitt-Trussville (Trussville, AL)                    	AL	https://247sports.com/player/malachi-moore-46043064
1978	Jah-Marien Latham	DT 	Alabama	0.92200	 Pickens County (Reform, AL)                  	AL	https://247sports.com/player/jah-marien-latham-46059407
1979	Traeshon Holden	WR 	Alabama	0.92050	 Narbonne (Harbor City, CA)                    	CA	https://247sports.com/player/traeshon-holden-46052218
1980	Kristian Story	ATH 	Alabama	0.91860	 Lanett (Lanett, AL)                  	AL	https://247sports.com/player/kristian-story-46041380
1981	Jayson Jones	DT 	Alabama	0.91630	 Calera (Calera, AL)    	AL	https://247sports.com/player/jayson-jones-46050182
1982	Jahquez Robinson	CB 	Alabama	0.89960	 Sandalwood (Jacksonville, FL)                    	FL	https://247sports.com/player/jahquez-robinson-46047835
2023	Jonathan Buskey	OT 	Auburn	0.86640	 Coffeyville C.C. (Coffeyville, KS)    	KS	https://247sports.com/player/jonathan-buskey-46057264
1983	Javion Cohen	OT 	Alabama	0.89370	 Central (Phenix City, AL)                  	AL	https://247sports.com/player/javion-cohen-46055335
1984	Jamil Burroughs	DT 	Alabama	0.89360	 McEachern (Powder Springs, GA)    	GA	https://247sports.com/player/jamil-burroughs-46042607
1985	Ronald Williams	CB 	Alabama	0.89040	 Hutchinson C.C. (Hutchinson, KS)                    	KS	https://247sports.com/player/ronald-williams-91722
1986	Kyle Edwards	RB 	Alabama	0.88500	 Destrehan (Destrehan, LA)                  	LA	https://247sports.com/player/kyle-edwards-46056167
1987	Damieon George	OT 	Alabama	0.88220	 North Shore (Houston, TX)                  	TX	https://247sports.com/player/damieon-george-46050364
1988	Seth McLaughlin	OC 	Alabama	0.87990	 Buford (Buford, GA)                    	GA	https://247sports.com/player/seth-mclaughlin-46052911
1989	Caden Clark	TE 	Alabama	0.87840	 Archbishop Hoban (Akron, OH)                  	OH	https://247sports.com/player/caden-clark-90889
1990	Jordan Banks	OLB 	Arizona State	0.91630	 Narbonne (Harbor City, CA)                    	CA	https://247sports.com/player/jordan-banks-46051934
1991	DeaMonte Trayanum	RB 	Arizona State	0.90190	 Archbishop Hoban (Akron, OH)                    	OH	https://247sports.com/player/deamonte-trayanum-46050397
1992	Chad Johnson Jr.	WR 	Arizona State	0.89170	 Cathedral (Los Angeles, CA)    	CA	https://247sports.com/player/chad-johnson-jr-46050061
1993	Omarr Norman-Lott	DT 	Arizona State	0.89040	 Grant Union (Sacramento, CA)                 	CA	https://247sports.com/player/omarr-norman-lott-46080723
1994	Joe Moore	SDE 	Arizona State	0.88580	 Cardinal Ritter College Prep (Saint Louis, MO)    	MO	https://247sports.com/player/joe-moore-46053584
1995	DJ Taylor	CB 	Arizona State	0.87150	 Tampa Catholic (Tampa, FL)                  	FL	https://247sports.com/player/dj-taylor-46077154
1996	Caleb McCullough	ILB 	Arizona State	0.86800	 Pacifica (Oxnard, CA)                    	CA	https://247sports.com/player/caleb-mccullough-46079855
1997	T Lee	ATH 	Arizona State	0.86330	 Buford (Buford, GA)                    	GA	https://247sports.com/player/t-lee-46040524
1998	Macen Williams	CB 	Arizona State	0.86330	 Narbonne (Harbor City, CA)    	CA	https://247sports.com/player/macen-williams-46037867
1999	Edward Woods	CB 	Arizona State	0.85860	 McClymonds (Oakland, CA)    	CA	https://247sports.com/player/edward-woods-46079118
2000	Will Shaffer	ILB 	Arizona State	0.85640	 Saguaro (Scottsdale, AZ)    	AZ	https://247sports.com/player/will-shaffer-46058617
2001	Ben Bray	OT 	Arizona State	0.85050	 Red Mountain (Mesa, AZ)                    	AZ	https://247sports.com/player/ben-bray-46081381
2002	Jacob Nunez	OG 	Arizona State	0.83090	 Lompoc (Lompoc, CA)                    	CA	https://247sports.com/player/jacob-nunez-46053380
2003	Ryan Morgan	WR 	Arizona State	0.81410	 Lompoc (Lompoc, CA)    	CA	https://247sports.com/player/ryan-morgan-46085738
2004	Johnny Wilson	WR 	Arizona State	0.95950	 Calabasas (Calabasas, CA)                    	CA	https://247sports.com/player/johnny-wilson-46036733
2005	Tank Bigsby	RB 	Auburn	0.98380	 Callaway (Hogansville, GA)                    	GA	https://247sports.com/player/tank-bigsby-46039679
2006	Kobe Hudson	WR 	Auburn	0.95720	 Troup County (Lagrange, GA)                    	GA	https://247sports.com/player/kobe-hudson-46037859
2007	Wesley Steiner	ILB 	Auburn	0.95690	 Houston County (Warner Robins, GA)                  	GA	https://247sports.com/player/wesley-steiner-46058419
2008	Jay Hardy	DT 	Auburn	0.95410	 McCallie School (Chattanooga, TN)                  	TN	https://247sports.com/player/jay-hardy-46058734
2009	Zykeivous Walker	SDE 	Auburn	0.94320	 Schley County (Ellaville, GA)                    	GA	https://247sports.com/player/zykeivous-walker-46052973
2011	J.J. Evans	WR 	Auburn	0.93420	 Montevallo (Montevallo, AL)                  	AL	https://247sports.com/player/j-j-evans-46058728
2012	Ladarius Tennison	ATH 	Auburn	0.92350	 Rockledge (ROCKLEDGE, FL)                    	FL	https://247sports.com/player/ladarius-tennison-46039703
2013	Chris Thompson Jr.	S 	Auburn	0.90790	 Duncanville (Duncanville, TX)                    	TX	https://247sports.com/player/chris-thompson-jr-46041974
2014	Cameron Riley	OLB 	Auburn	0.89800	 Hillcrest (Evergreen, AL)                  	AL	https://247sports.com/player/cameron-riley-46049446
2015	Marco Domio	CB 	Auburn	0.89250	 Blinn College (Brenham, TX)                    	TX	https://247sports.com/player/marco-domio-46048354
2016	Avery Jernigan	OG 	Auburn	0.88630	 Pierce County (Blackshear, GA)                    	GA	https://247sports.com/player/avery-jernigan-46051590
2017	Kilian Zierer	OT 	Auburn	0.88180	 College of the Canyons (Valencia, CA)                    	CA	https://247sports.com/player/kilian-zierer-46083297
2018	Brenden Coffey	OT 	Auburn	0.87840	 Butte College (Oroville, CA)                  	CA	https://247sports.com/player/brenden-coffey-46084034
2019	Tate Johnson	OG 	Auburn	0.87840	 Callaway (Hogansville, GA)                    	GA	https://247sports.com/player/tate-johnson-46050150
2021	Elijah Canion	WR 	Auburn	0.87630	 Chaminade-Madonna Prep (Hollywood, FL)                  	FL	https://247sports.com/player/elijah-canion-46052129
2022	Jeremiah Wright	OG 	Auburn	0.86760	 Selma (Selma, AL)                  	AL	https://247sports.com/player/jeremiah-wright-46081400
2010	Ze''Vian Capers	WR 	Auburn	0.94180	Denmark (Alpharetta, GA)	GA	https://247sports.com/player/zevian-capers-46048383
2024	Chayil Garnett	DUAL 	Auburn	0.86430	 Lakeland (Lakeland, FL)                    	FL	https://247sports.com/player/chayil-garnett-46052903
2025	Desmond Tisdol	ILB 	Auburn	0.91500	 Wilcox County (Rochelle, GA)    	GA	https://247sports.com/player/desmond-tisdol-46079934
2026	Jeremiah Pegues	ATH 	Auburn	0.91100	 Oxford (Oxford, MS)                  	MS	https://247sports.com/player/jeremiah-pegues-46038960
2027	Romello Height	OLB 	Auburn	0.88840	 Dublin (Dublin, GA)                    	GA	https://247sports.com/player/romello-height-46080260
2028	D.J. Rogers	TE 	California	0.89590	 Eastside Catholic (Sammamish, WA)    	WA	https://247sports.com/player/d-j-rogers-46041924
2029	Jaden Casey	PRO 	California	0.87840	 Calabasas (Calabasas, CA)    	CA	https://247sports.com/player/jaden-casey-46047677
2030	Jeremiah Hunter	WR 	California	0.87460	 Central East (Fresno, CA)    	CA	https://247sports.com/player/jeremiah-hunter-46055162
2031	Collin Gamble	CB 	California	0.87130	 Liberty Christian (Argyle, TX)    	TX	https://247sports.com/player/collin-gamble-46050690
2032	Chris Street	RB 	California	0.87080	 J Serra Catholic (San Juan Capistrano, CA)    	CA	https://247sports.com/player/chris-street-46048568
2033	Jaedon Roberts	ATH 	California	0.86810	 Avon Old Farms (Avon, CT)    	CT	https://247sports.com/player/jaedon-roberts-46081291
2034	Tyson McWilliams	CB 	California	0.86600	 St. Augustine (San Diego, CA)    	CA	https://247sports.com/player/tyson-mcwilliams-46055086
2035	Dejuan Butler	CB 	California	0.86520	 Antioch (Antioch, CA)    	CA	https://247sports.com/player/dejuan-butler-46053707
2036	Andy Alfieri	OLB 	California	0.86480	 Jesuit (Portland, OR)    	OR	https://247sports.com/player/andy-alfieri-46053567
2037	Trey Paster	ATH 	California	0.86470	 Buhach Colony (Atwater, CA)    	CA	https://247sports.com/player/trey-paster-46048412
2038	Muelu Iosefa	OLB 	California	0.86330	 Mililani (Mililani, HI)  	HI	https://247sports.com/player/muelu-iosefa-46083005
2039	Mason Mangum	WR 	California	0.85940	 Westlake (Austin, TX)    	TX	https://247sports.com/player/mason-mangum-46079598
2040	Ricky Correia	DT 	California	0.85860	 Central East (Fresno, CA)    	CA	https://247sports.com/player/ricky-correia-46047663
2041	Isaiah Young	CB 	California	0.85720	 Centennial (Corona, CA)    	CA	https://247sports.com/player/isaiah-young-46046643
2042	Everett Johnson	OT 	California	0.85530	 Turlock (Turlock, CA)    	CA	https://247sports.com/player/everett-johnson-46051674
2043	Tommy Christakos	TE 	California	0.85390	 Chaparral (Scottsdale, AZ)  	AZ	https://247sports.com/player/tommy-christakos-46047035
2044	Justin Baker	APB 	California	0.85380	 Kennedy Catholic (Burien, WA)    	WA	https://247sports.com/player/justin-baker-46048435
2045	Stanley McKenzie	DT 	California	0.84640	 St Louis School (Honolulu, HI)    	HI	https://247sports.com/player/stanley-mckenzie-46049915
2046	Ethan Saunders	DT 	California	0.84100	 Orange Vista (Perris, CA)    	CA	https://247sports.com/player/ethan-saunders-46084538
2047	Jake Muller	TE 	California	0.84100	 Capistrano Valley (Mission Viejo, CA)    	CA	https://247sports.com/player/jake-muller-46084386
2132	Lloyd Willis	OT 	Florida State	0.85050	 Killian (Miami, FL)                  	FL	https://247sports.com/player/lloyd-willis-46056767
2048	Ender Aguilar	ATH 	California	0.83970	 Servite (Anaheim, CA)    	CA	https://247sports.com/player/ender-aguilar-46051227
2049	Zach Johnson	DUAL 	California	0.83970	 Hart (Newhall, CA)    	CA	https://247sports.com/player/zach-johnson-46058633
2050	Aidan Lee	ATH 	California	0.83490	 Desert Ridge (Mesa, AZ)  	AZ	https://247sports.com/player/aidan-lee-46081509
2051	Damien Moore	RB 	California	0.83220	 Bishop Amat (La Puente, CA)    	CA	https://247sports.com/player/damien-moore-46057512
2052	Kaleo Ballungay	TE 	California	0.82880	 Kimball (Tracy, CA)    	CA	https://247sports.com/player/kaleo-ballungay-46080241
2053	Bryan Bresee	DT 	Clemson	0.99970	 Damascus (Damascus, MD)                    	MD	https://247sports.com/player/bryan-bresee-46038819
2054	Myles Murphy	SDE 	Clemson	0.99820	 Hillgrove (Powder Springs, GA)                    	GA	https://247sports.com/player/myles-murphy-46042886
2055	DJ Uiagalelei	PRO 	Clemson	0.99450	 St. John Bosco (Bellflower, CA)                    	CA	https://247sports.com/player/dj-uiagalelei-45573350
2056	Demarkcus Bowman	RB 	Clemson	0.99240	 Lakeland (Lakeland, FL)                    	FL	https://247sports.com/player/demarkcus-bowman-46048830
2057	Demonte Capehart	DT 	Clemson	0.98800	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/demonte-capehart-46042893
2058	Fred Davis II	CB 	Clemson	0.98410	 Trinity Christian Academy (Jacksonville, FL)                    	FL	https://247sports.com/player/fred-davis-ii-46037551
2059	Trenton Simpson	OLB 	Clemson	0.98330	 Mallard Creek (Charlotte, NC)                    	NC	https://247sports.com/player/trenton-simpson-46048683
2060	Walker Parks	OT 	Clemson	0.97310	 Frederick Douglass (Lexington, KY)                  	KY	https://247sports.com/player/walker-parks-46043254
2062	E.J. Williams	WR 	Clemson	0.95540	 Central (Phenix City, AL)                    	AL	https://247sports.com/player/e-j-williams-46049986
2063	Paul Tchio	OG 	Clemson	0.95430	 Milton (Alpharetta, GA)                    	GA	https://247sports.com/player/paul-tchio-46047848
2064	RJ Mickens	S 	Clemson	0.94590	 Southlake Carroll (Southlake, TX)                    	TX	https://247sports.com/player/rj-mickens-91595
2065	Mitchell Mayes	OG 	Clemson	0.93370	 Leesville Road (Raleigh, NC)                    	NC	https://247sports.com/player/mitchell-mayes-46051711
2066	Sergio Allen	ILB 	Clemson	0.92740	 Peach County (Fort Valley, GA)                    	GA	https://247sports.com/player/sergio-allen-46042574
2067	Kevin Swint	ILB 	Clemson	0.91480	 Carrollton (Carrollton, GA)                    	GA	https://247sports.com/player/kevin-swint-46036484
2205	Isaiah Bruce	DT 	Iowa	0.85520	 Lena-Winslow (Lena, IL)    	IL	https://247sports.com/player/isaiah-bruce-46057256
2068	Bryn Tucker	OG 	Clemson	0.90770	 Knoxville Catholic (Knoxville, TN)                    	TN	https://247sports.com/player/bryn-tucker-45572456
2069	John Williams	OT 	Clemson	0.88910	 Creekview (Canton, GA)                  	GA	https://247sports.com/player/john-williams-46051782
2070	Ajou Ajou	WR 	Clemson	0.88430	 Clearwater Academy International (Clearwater, FL)                  	FL	https://247sports.com/player/ajou-ajou-46082144
2071	Kobe Pryor	RB 	Clemson	0.88240	 Cedartown (Cedartown, GA)                  	GA	https://247sports.com/player/kobe-pryor-46050865
2072	Sage Ennis	TE 	Clemson	0.87230	 Lincoln (Tallahassee, FL)                    	FL	https://247sports.com/player/sage-ennis-46081869
2073	Tyler Venables	S 	Clemson	0.84980	 D W Daniel (Central, SC)                    	SC	https://247sports.com/player/tyler-venables-94711
2074	Trent Howard	OG 	Clemson	0.84840	 Briarwood Christian (Birmingham, AL)                  	AL	https://247sports.com/player/trent-howard-46056626
2075	Ashaad Clayton	RB 	Colorado	0.91710	 Warren Easton (New Orleans, LA)    	LA	https://247sports.com/player/ashaad-clayton-46036383
2076	Christian Gonzalez	S 	Colorado	0.89580	 The Colony (The Colony, TX)    	TX	https://247sports.com/player/christian-gonzalez-46080020
2077	Brendon Lewis	DUAL 	Colorado	0.88730	 Melissa (Melissa, TX)    	TX	https://247sports.com/player/brendon-lewis-46036862
2078	Brenden Rice	WR 	Colorado	0.88620	 Hamilton (Chandler, AZ)    	AZ	https://247sports.com/player/brenden-rice-46053118
2079	Jordan Berry	DT 	Colorado	0.86890	 Narbonne (Harbor City, CA)    	CA	https://247sports.com/player/jordan-berry-89525
2080	Jake Wray	OT 	Colorado	0.86430	 Marietta (Marietta, GA)    	GA	https://247sports.com/player/jake-wray-46036881
2081	Caleb Fauria	TE 	Colorado	0.86400	 Bishop Feehan (Attleboro, MA)    	MA	https://247sports.com/player/caleb-fauria-46076638
2082	Mister Williams	OLB 	Colorado	0.85930	 Oaks Christian (Westlake Village, CA)    	CA	https://247sports.com/player/mister-williams-46058244
2083	Carson Lee	OC 	Colorado	0.85580	 Cherry Creek (Englewood, CO)    	CO	https://247sports.com/player/carson-lee-46052719
2084	Toren Pittman	OLB 	Colorado	0.85520	 Lone Star (Frisco, TX)    	TX	https://247sports.com/player/toren-pittman-46050098
2085	Guy Thomas	OLB 	Colorado	0.85400	 Coahoma C.C. (Clarksdale, MS)    	MS	https://247sports.com/player/guy-thomas-80411
2086	Montana Lemonious-Craig	ATH 	Colorado	0.85190	 Inglewood (Inglewood, CA)    	CA	https://247sports.com/player/montana-lemonious-craig-46080532
2087	Devin Grant	WDE 	Colorado	0.85180	 Antonian College Prep (San Antonio, TX)    	TX	https://247sports.com/player/devin-grant-46080748
2088	Alvin Williams	WDE 	Colorado	0.85180	 Cedar Grove (Ellenwood, GA)    	GA	https://247sports.com/player/alvin-williams-46051892
2089	Keith Miller	WR 	Colorado	0.84850	 The Colony (The Colony, TX)    	TX	https://247sports.com/player/keith-miller-46050103
2090	Chris Carpenter	WR 	Colorado	0.84850	 Jacksonville (Jacksonville, TX)    	TX	https://247sports.com/player/chris-carpenter-46076694
2091	Justin Jackson	SDE 	Colorado	0.84400	 Northwest Mississippi C.C. (Senatobia, MS)    	MS	https://247sports.com/player/justin-jackson-46039931
2092	Jaylen Striker	CB 	Colorado	0.83780	 Independence C.C. (Independence, KS)    	KS	https://247sports.com/player/jaylen-striker-46086717
2093	Josh Watts	P 	Colorado	0.81970	 ProKick Australia (Australia, AUST)  	AU	https://247sports.com/player/josh-watts-46093575
2094	Gerad Lichtenhan	OT 	Colorado	0.81590	 Davis Senior (Davis, CA)    	CA	https://247sports.com/player/gerad-lichtenhan-46079395
2095	Louis Passarello	TE 	Colorado	0.81180	 Palo Alto (Palo Alto, CA)    	CA	https://247sports.com/player/louis-passarello-46083383
2096	Jayle Stacks	RB 	Colorado	0.81130	 Cherry Creek (Englewood, CO)    	CO	https://247sports.com/player/jayle-stacks-46086028
2097	Gervon Dexter	DT 	Florida	0.98320	 Lake Wales (Lake Wales, FL)                  	FL	https://247sports.com/player/gervon-dexter-46056492
2098	Derek Wingo	OLB 	Florida	0.96380	 St. Thomas Aquinas (Fort Lauderdale, FL)                  	FL	https://247sports.com/player/derek-wingo-46041166
2099	Jahari Rogers	CB 	Florida	0.94520	 Arlington (Arlington, TX)                    	TX	https://247sports.com/player/jahari-rogers-46057921
2100	Ethan Pouncey	CB 	Florida	0.94210	 Winter Park (Winter Park, FL)                    	FL	https://247sports.com/player/ethan-pouncey-46079307
2101	Issiah Walker Jr.	OT 	Florida	0.93850	 Norland (Miami, FL)                    	FL	https://247sports.com/player/issiah-walker-jr-46041758
2102	Antwaun Powell	WDE 	Florida	0.92610	 Indian River (Chesapeake, VA)                    	VA	https://247sports.com/player/antwaun-powell-46057108
2103	Anthony Richardson	DUAL 	Florida	0.92300	 Eastside (Gainesville, FL)                    	FL	https://247sports.com/player/anthony-richardson-46049661
2104	Jaquavion Fraziars	WR 	Florida	0.92300	 Dunnellon (Dunnellon, FL)                  	FL	https://247sports.com/player/jaquavion-fraziars-46049490
2105	Johnnie Brown	DT 	Florida	0.91560	 Sebring (Sebring, FL)                  	FL	https://247sports.com/player/johnnie-brown-46046612
2106	Leonard Manuel	WR 	Florida	0.90980	 Stranahan (Fort Lauderdale, FL)    	FL	https://247sports.com/player/leonard-manuel-45573264
2107	Marc Britt	ATH 	Florida	0.90500	 Miami Christian School (Miami, FL)    	FL	https://247sports.com/player/marc-britt-46038476
2108	Joshua Braun	OT 	Florida	0.90370	 Suwannee (Live Oak, FL)                    	FL	https://247sports.com/player/joshua-braun-83391
2109	Jalen Lee	DT 	Florida	0.89510	 Live Oak (Watson, LA)                  	LA	https://247sports.com/player/jalen-lee-46077155
2175	Damarjhe Lewis	DT 	Indiana	0.86680	 Griffin (Griffin, GA)    	GA	https://247sports.com/player/damarjhe-lewis-46049619
2111	Rashad Torrence II	S 	Florida	0.89440	 Marietta (Marietta, GA)                    	GA	https://247sports.com/player/rashad-torrence-ii-46041913
2112	Lamar Goods	DT 	Florida	0.89260	 St. Thomas More (Oakdale, CT)                    	CT	https://247sports.com/player/lamar-goods-46056026
2113	Avery Helm	CB 	Florida	0.88630	 Fort Bend Marshall (Missouri City, TX)                  	TX	https://247sports.com/player/avery-helm-46048347
2115	Fenley Graham	CB 	Florida	0.87360	 Lakeland (Lakeland, FL)                  	FL	https://247sports.com/player/fenley-graham-46048831
2116	Jonathan Odom	TE 	Florida	0.86540	 Jesuit (Tampa, FL)                  	FL	https://247sports.com/player/jonathan-odom-46058812
2117	Richard Leonard	OG 	Florida	0.86330	 Cocoa (Cocoa, FL)                    	FL	https://247sports.com/player/richard-leonard-46054385
2118	Gerald Mincey	OT 	Florida	0.85060	 Cardinal Gibbons (Fort Lauderdale, FL)                  	FL	https://247sports.com/player/gerald-mincey-46078997
2119	Jovens Janvier	OG 	Florida	0.84160	 Miami Christian School (Miami, FL)  	FL	https://247sports.com/player/jovens-janvier-46052949
2120	Jeremy Crawshaw	P 	Florida	0.79400	 ProKick Australia (Australia, AUST)                 	AU	https://247sports.com/player/jeremy-crawshaw-46094164
2121	Demorie Tate	CB 	Florida State	0.97620	 Freedom (Orlando, FL)                  	FL	https://247sports.com/player/demorie-tate-46055223
2122	Malachi Wideman	WR 	Florida State	0.94030	 Venice (Venice, FL)                  	FL	https://247sports.com/player/malachi-wideman-46046942
2123	Lawrance Toafili	RB 	Florida State	0.92610	 Pinellas Park (Largo, FL)    	FL	https://247sports.com/player/lawrance-toafili-46039737
2124	Jadarius McKnight	S 	Florida State	0.91810	 Dunbar (Fort Myers, FL)    	FL	https://247sports.com/player/jadarius-mcknight-46041817
2125	Stephen Dix Jr.	OLB 	Florida State	0.91100	 Dr. Phillips (Orlando, FL)                 	FL	https://247sports.com/player/stephen-dix-jr-46039535
2127	Emanuel Rogers	DT 	Florida State	0.89370	 Jensen Beach (Jensen Beach, FL)                  	FL	https://247sports.com/player/emanuel-rogers-46079822
2128	Jayion McCluster	ILB 	Florida State	0.88580	 Largo (Largo, FL)                    	FL	https://247sports.com/player/jayion-mccluster-46039453
2129	Thomas Shrader	OC 	Florida State	0.87010	 Venice (Venice, FL)    	FL	https://247sports.com/player/thomas-shrader-46076578
2130	Tate Rodemaker	PRO 	Florida State	0.86470	 Valdosta (Valdosta, GA)                    	GA	https://247sports.com/player/tate-rodemaker-46052628
2131	Zane Herring	OG 	Florida State	0.86210	 Madison County (Madison, FL)                    	FL	https://247sports.com/player/zane-herring-46051859
2133	Carter Boatwright	TE 	Florida State	0.84850	 Colquitt County (Moultrie, GA)                    	GA	https://247sports.com/player/carter-boatwright-46085547
2135	Broderick Jones	OT 	Georgia	0.99110	 Lithonia (Lithonia, GA)    	GA	https://247sports.com/player/broderick-jones-46051865
2136	Tate Ratledge	OT 	Georgia	0.98150	 Darlington School (Rome, GA)    	GA	https://247sports.com/player/tate-ratledge-94238
2137	Kendall Milton	RB 	Georgia	0.98090	 Buchanan (Clovis, CA)                    	CA	https://247sports.com/player/kendall-milton-46041050
2138	Marcus Rosemy	WR 	Georgia	0.97950	 St. Thomas Aquinas (Fort Lauderdale, FL)    	FL	https://247sports.com/player/marcus-rosemy-46043121
2139	Jalen Carter	DT 	Georgia	0.97460	 Apopka (Apopka, FL)    	FL	https://247sports.com/player/jalen-carter-46042405
2140	Sedrick Van Pran	OC 	Georgia	0.94880	 Warren Easton (New Orleans, LA)    	LA	https://247sports.com/player/sedrick-van-pran-46052225
2141	Jalen Kimber	CB 	Georgia	0.94300	 Mansfield Timberview (Arlington, TX)                    	TX	https://247sports.com/player/jalen-kimber-46048842
2142	Chad Lindberg	OT 	Georgia	0.92920	 Clear Creek (League City, TX)    	TX	https://247sports.com/player/chad-lindberg-46047350
2143	Carson Beck	PRO 	Georgia	0.91910	 Mandarin (Jacksonville, FL)                    	FL	https://247sports.com/player/carson-beck-46053141
2144	Warren Brinson	DT 	Georgia	0.90940	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/warren-brinson-46057836
2145	Nazir Stackhouse	DT 	Georgia	0.90930	 Columbia (Decatur, GA)    	GA	https://247sports.com/player/nazir-stackhouse-46045556
2147	Devin Willock	OT 	Georgia	0.85730	 Paramus Catholic (Paramus, NJ)    	NJ	https://247sports.com/player/devin-willock-46051802
2148	Jared Zirkel	K 	Georgia	0.82630	 Tivy (Kerrville, TX)  	TX	https://247sports.com/player/jared-zirkel-46085595
2149	Jahmyr Gibbs	RB 	Georgia Tech	0.92800	 Dalton (Dalton, GA)    	GA	https://247sports.com/player/jahmyr-gibbs-46080991
2150	Miles Brooks	CB 	Georgia Tech	0.91850	 Trinity Christian Academy (Jacksonville, FL)    	FL	https://247sports.com/player/miles-brooks-46040393
2151	Bryce Gowdy	WR 	Georgia Tech	0.89800	 Deerfield Beach (Deerfield Beach, FL)      	FL	https://247sports.com/player/bryce-gowdy-46050312
2152	Jared Ivey	WDE 	Georgia Tech	0.89520	 North Gwinnett (Suwanee, GA)    	GA	https://247sports.com/player/jared-ivey-46076703
2202	Gavin Williams	RB 	Iowa	0.86600	 Dowling Catholic (West Des Moines, IA)    	IA	https://247sports.com/player/gavin-williams-46043167
2153	Nate McCollum	WR 	Georgia Tech	0.89060	 Dutchtown (Hampton, GA)    	GA	https://247sports.com/player/nate-mccollum-46059488
2154	Ryan King	WR 	Georgia Tech	0.88300	 Grayson (Loganville, GA)    	GA	https://247sports.com/player/ryan-king-46056049
2155	Michael Rankins	OT 	Georgia Tech	0.87550	 Lennard (Ruskin, FL)   	FL	https://247sports.com/player/michael-rankins-46052237
2156	Jordan Williams	OT 	Georgia Tech	0.87420	 Gainesville (Gainesville, GA)      	GA	https://247sports.com/player/jordan-williams-46055673
2157	Tyson Meiguez	OLB 	Georgia Tech	0.87210	 Creekside (Fairburn, GA)    	GA	https://247sports.com/player/tyson-meiguez-46053216
2158	Jalen Huff	CB 	Georgia Tech	0.86890	 Buford (Buford, GA)      	GA	https://247sports.com/player/jalen-huff-46036492
2159	Paula Vaipulu	OC 	Georgia Tech	0.86270	 Channelview (Channelview, TX)    	TX	https://247sports.com/player/paula-vaipulu-46080006
2160	Tucker Gleason	PRO 	Georgia Tech	0.86220	 Plant (Tampa, FL)      	FL	https://247sports.com/player/tucker-gleason-46054252
2161	Kyle Kennard	WDE 	Georgia Tech	0.86140	 Riverwood (Atlanta, GA)    	GA	https://247sports.com/player/kyle-kennard-46056592
2162	Akelo Stone	SDE 	Georgia Tech	0.86010	 Jenkins (Savannah, GA)   	GA	https://247sports.com/player/akelo-stone-46054479
2163	Billy Ward	TE 	Georgia Tech	0.85590	 Locust Grove (Locust Grove, GA)    	GA	https://247sports.com/player/billy-ward-46059487
2164	Wing Green	OT 	Georgia Tech	0.85520	 Lee County (Leesburg, GA)  	GA	https://247sports.com/player/wing-green-46085803
2165	Khaya Wright	OLB 	Georgia Tech	0.85310	 South Miami Senior (Miami, FL)    	FL	https://247sports.com/player/khaya-wright-46058373
2166	Albany Casey	WDE 	Georgia Tech	0.85180	 Baldwin County (Bay Minette, AL)    	AL	https://247sports.com/player/albany-casey-46051018
2167	Cade Kootsouradis	OT 	Georgia Tech	0.84730	 Crestview (Crestview, FL)    	FL	https://247sports.com/player/cade-kootsouradis-46080584
2168	Avery Boyd	WR 	Georgia Tech	0.83760	 Amos P. Godby (Tallahassee, FL)  	FL	https://247sports.com/player/avery-boyd-46082874
2169	Emmanuel Johnson	SDE 	Georgia Tech	0.83020	 Fort Dorchester (North Charleston, SC)  	SC	https://247sports.com/player/emmanuel-johnson-46083911
2170	Ryan Spiers	OG 	Georgia Tech	0.81600	 Biloxi (Biloxi, MS)      	MS	https://247sports.com/player/ryan-spiers-46082949
2171	Jeff Sims	DUAL 	Georgia Tech	0.91860	 Sandalwood (Jacksonville, FL)                    	FL	https://247sports.com/player/jeff-sims-46054126
2172	Khatavian Franks	ATH 	Georgia Tech	0.85800	 Creekside (Fairburn, GA)    	GA	https://247sports.com/player/khatavian-franks-46037630
2173	Rashawn Williams	WR 	Indiana	0.89300	 Martin Luther King (Detroit, MI)    	MI	https://247sports.com/player/rashawn-williams-93980
2174	Tim Baldwin	RB 	Indiana	0.86890	 Patriot (Nokesville, VA)    	VA	https://247sports.com/player/tim-baldwin-46049635
2203	Ethan Hurkett	ILB 	Iowa	0.86060	 Xavier (Cedar Rapids, IA)    	IA	https://247sports.com/player/ethan-hurkett-46080662
2176	Jalen Williams	TE 	Indiana	0.85930	 Apopka (Apopka, FL)    	FL	https://247sports.com/player/jalen-williams-46081808
2177	Caleb Murphy	WDE 	Indiana	0.85590	 West Washington (Campbellsburg, IN)    	IN	https://247sports.com/player/caleb-murphy-46080444
2178	Bryson Bonds	S 	Indiana	0.85520	 Crowley (Crowley, TX)    	TX	https://247sports.com/player/bryson-bonds-46038006
2179	Lemuel Neely-Watley	CB 	Indiana	0.85390	 Harper Woods (Harper Woods, MI)    	MI	https://247sports.com/player/lemuel-neely-watley-46048513
2180	David Baker	WR 	Indiana	0.85380	 Scecina Memorial (Indianapolis, IN)    	IN	https://247sports.com/player/david-baker-46055797
2181	Christopher Keys	CB 	Indiana	0.85350	 Collins (Collins, MS)    	MS	https://247sports.com/player/christopher-keys-46085400
2182	AJ Barner	TE 	Indiana	0.84680	 Aurora (Aurora, OH)    	OH	https://247sports.com/player/aj-barner-46085166
2183	Luke Wiginton	OT 	Indiana	0.84510	 Bishop Dwenger (Fort Wayne, IN)                    	IN	https://247sports.com/player/luke-wiginton-46076727
2184	Brady Feeney	OG 	Indiana	0.84440	 Christian Brothers College (Saint Louis, MO)  	MO	https://247sports.com/player/brady-feeney-46047232
2185	Ty Wise	OLB 	Indiana	0.84230	 Carmel (Carmel, IN)    	IN	https://247sports.com/player/ty-wise-46052927
2186	Javon Swinton	ATH 	Indiana	0.83630	 North Stafford (Stafford, VA)    	VA	https://247sports.com/player/javon-swinton-46035460
2187	Dexter Williams	DUAL 	Indiana	0.83430	 Mount De Sales Academy (Macon, GA)    	GA	https://247sports.com/player/dexter-williams-46084717
2188	Coleon Smith	OT 	Indiana	0.82130	 Belleville (Belleville, MI)  	MI	https://247sports.com/player/coleon-smith-46052651
2189	Vinny Sciury	OG 	Indiana	0.81980	 Perry (Massillon, OH)                 	OH	https://247sports.com/player/vinny-sciury-46082999
2190	Cameron Knight	OG 	Indiana	0.81670	 Noblesville (Noblesville, IN)                    	IN	https://247sports.com/player/cameron-knight-46058302
2191	Logan Jones	SDE 	Iowa	0.91550	 Lewis Central (Council Bluffs, IA)    	IA	https://247sports.com/player/logan-jones-46047847
2192	Deontae Craig	WDE 	Iowa	0.89050	 The Culver Academies (Culver, IN)    	IN	https://247sports.com/player/deontae-craig-46058128
2193	Luke Lachey	TE 	Iowa	0.88930	 Grandview Heights (Columbus, OH)    	OH	https://247sports.com/player/luke-lachey-46057202
2194	Tyler Elsbury	OG 	Iowa	0.88650	 Byron (Byron, IL)    	IL	https://247sports.com/player/tyler-elsbury-46050178
2195	Deuce Hogan	PRO 	Iowa	0.88240	 Faith Christian (Grapevine, TX)    	TX	https://247sports.com/player/deuce-hogan-46036398
2196	Elijah Yelverton	TE 	Iowa	0.87630	 Trinity Christian School (Cedar Hill, TX)    	TX	https://247sports.com/player/elijah-yelverton-46051912
2197	Josh Volk	OG 	Iowa	0.87340	 Xavier (Cedar Rapids, IA)    	IA	https://247sports.com/player/josh-volk-46050489
2198	Mason Richman	OT 	Iowa	0.87270	 Blue Valley (Stilwell, KS)  	KS	https://247sports.com/player/mason-richman-46081821
2199	Michael Lois	SDE 	Iowa	0.86890	 Elkhorn Area (Elkhorn, WI)    	WI	https://247sports.com/player/michael-lois-46056013
2200	Leshon Williams	RB 	Iowa	0.86760	 H L Richards (Oak Lawn, IL)    	IL	https://247sports.com/player/leshon-williams-46057057
2201	Yahya Black	SDE 	Iowa	0.86600	 Marshall (Marshall, MN)    	MN	https://247sports.com/player/yahya-black-46081312
2206	Diante Vines	WR 	Iowa	0.85300	 The Taft School (Watertown, CT)  	CT	https://247sports.com/player/diante-vines-46083764
2207	AJ Lawson	WR 	Iowa	0.84840	 MacArthur (Decatur, IL)  	IL	https://247sports.com/player/aj-lawson-46081034
2208	Lukas Van Ness	SDE 	Iowa	0.84840	 Barrington (Barrington, IL)    	IL	https://247sports.com/player/lukas-van-ness-46076835
2209	Keylen Gulley	CB 	Iowa	0.84300	 Largo (Largo, FL)  	FL	https://247sports.com/player/keylen-gulley-46084224
2210	Jay Higgins	ILB 	Iowa	0.83350	 Brebeuf Jesuit (Indianapolis, IN)    	IN	https://247sports.com/player/jay-higgins-46051435
2211	Quavon Matthews	WR 	Iowa	0.82960	 Largo (Largo, FL)  	FL	https://247sports.com/player/quavon-matthews-46055771
2212	Brenden Deasfernandes	CB 	Iowa	0.80860	 Belleville (Belleville, MI)    	MI	https://247sports.com/player/brenden-deasfernandes-46054316
2213	Hunter Dekkers	DUAL 	Iowa State	0.90080	 West Sioux (Hawarden, IA)    	IA	https://247sports.com/player/hunter-dekkers-46083992
2214	Latrell Bankston	DT 	Iowa State	0.87890	 Hutchinson C.C. (Hutchinson, KS)    	KS	https://247sports.com/player/latrell-bankston-46050485
2215	Aidan Bouman	PRO 	Iowa State	0.87220	 Buffalo Senior (Buffalo, MN)                    	MN	https://247sports.com/player/aidan-bouman-46052347
2216	Cole Pedersen	OLB 	Iowa State	0.87060	 Central Decatur (Leon, IA)    	IA	https://247sports.com/player/cole-pedersen-46056514
2217	Daniel Jackson	WR 	Iowa State	0.87020	 Steele (Cibolo, TX)    	TX	https://247sports.com/player/daniel-jackson-46048424
2218	Hayden Pauls	OT 	Iowa State	0.86260	 Emporia (Emporia, KS)                    	KS	https://247sports.com/player/hayden-pauls-46055476
2219	Johnny Wilson	SDE 	Iowa State	0.86140	 Park Hill (Kansas City, MO)    	MO	https://247sports.com/player/johnny-wilson-46055177
2220	Craig McDonald	S 	Iowa State	0.85930	 Minnehaha Academy (Minneapolis, MN)    	MN	https://247sports.com/player/craig-mcdonald-46053449
2221	Xavier Hutchinson	WR 	Iowa State	0.85600	 Blinn College (Brenham, TX)                    	TX	https://247sports.com/player/xavier-hutchinson-46081159
2222	Willis Singleton	DT 	Iowa State	0.85320	 Warren Township (Gurnee, IL)    	IL	https://247sports.com/player/willis-singleton-46043089
2223	Tyler Miller	OT 	Iowa State	0.85250	 Greene County (Jefferson, IA)    	IA	https://247sports.com/player/tyler-miller-46054364
2224	Brady Petersen	OT 	Iowa State	0.85190	 Ankeny Centennial (Ankeny, IA)    	IA	https://247sports.com/player/brady-petersen-46080055
2225	T.J. Tampa	WR 	Iowa State	0.84840	 Lakewood (Saint Petersburg, FL)    	FL	https://247sports.com/player/t-j-tampa-46058983
2226	Sam Rengert	OT 	Iowa State	0.84770	 Fairbanks (Milford Center, OH)    	OH	https://247sports.com/player/sam-rengert-46056136
2227	Mason Chambers	S 	Iowa State	0.84520	 Samuel Clemens (Schertz, TX)    	TX	https://247sports.com/player/mason-chambers-46081367
2228	Jordyn Morgan	S 	Iowa State	0.84380	 Cornerstone Christian (San Antonio, TX)    	TX	https://247sports.com/player/jordyn-morgan-46079906
2229	Aidan Bitter	WR 	Iowa State	0.84240	 Steinbrenner (Lutz, FL)    	FL	https://247sports.com/player/aidan-bitter-46084564
2230	Michal Antoine	CB 	Iowa State	0.84100	 Cardinal Gibbons (Fort Lauderdale, FL)    	FL	https://247sports.com/player/michal-antoine-46080112
2231	Hunter Zenzen	OLB 	Iowa State	0.83560	 Barnesville Secondary (Barnesville, MN)    	MN	https://247sports.com/player/hunter-zenzen-46080659
2233	Koby Hathcock	LS 	Iowa State	0.79760	 Desert Ridge (Mesa, AZ)  	AZ	https://247sports.com/player/koby-hathcock-46085262
2234	Brennon Scott	ILB 	Kansas	0.87910	 Bishop Dunne (Dallas, TX)    	TX	https://247sports.com/player/brennon-scott-46042133
2235	JaCobee Bryant	CB 	Kansas	0.87420	 Hillcrest (Evergreen, AL)    	AL	https://247sports.com/player/jacobee-bryant-46079397
2236	Lawrence Arnold	WR 	Kansas	0.86600	 DeSoto (DeSoto, TX)    	TX	https://247sports.com/player/lawrence-arnold-46050247
2237	Duece Mayberry	CB 	Kansas	0.86460	 Owasso (Owasso, OK)    	OK	https://247sports.com/player/duece-mayberry-46053516
2238	Krishawn Brown	OLB 	Kansas	0.86260	 Booker T. Washington (Tulsa, OK)    	OK	https://247sports.com/player/krishawn-brown-46058620
2239	Chris Jones	WDE 	Kansas	0.85720	 Coconut Creek (Pompano Beach, FL)    	FL	https://247sports.com/player/chris-jones-46080333
2240	Tristan Golightly	WR 	Kansas	0.85580	 Poteet (Mesquite, TX)    	TX	https://247sports.com/player/tristan-golightly-46055045
2241	Taiwan Berryhill	OLB 	Kansas	0.85520	 St. Augustine (New Orleans, LA)    	LA	https://247sports.com/player/taiwan-berryhill-46055130
2242	Kenean Caldwell	DT 	Kansas	0.85400	 Oak Grove (Oak Grove, LA)    	LA	https://247sports.com/player/kenean-caldwell-46051167
2243	Will Huggins	TE 	Kansas	0.85190	 Shawnee Mission South (Overland Park, KS)    	KS	https://247sports.com/player/will-huggins-46081205
2245	Alonso Person	OLB 	Kansas	0.84710	 Narbonne (Harbor City, CA)  	CA	https://247sports.com/player/alonso-person-46057052
2246	Steven McBride	WR 	Kansas	0.84630	 East Ascension (Gonzales, LA)    	LA	https://247sports.com/player/steven-mcbride-46082020
2248	Karon Prunty	CB 	Kansas	0.83690	 I.C. Norcom (Portsmouth, VA)    	VA	https://247sports.com/player/karon-prunty-46083839
2249	Malik Johnson	WR 	Kansas	0.83560	 The Woodlands (The Woodlands, TX)    	TX	https://247sports.com/player/malik-johnson-46037404
2250	Caleb Taylor	SDE 	Kansas	0.83430	 Hazelwood Central (Florissant, MO)    	MO	https://247sports.com/player/caleb-taylor-46078885
2251	Armaj Adams-Reed	OT 	Kansas	0.83150	 DeSoto (DeSoto, TX)    	TX	https://247sports.com/player/armaj-adams-reed-46081126
2252	Daniel Hishaw Jr.	ATH 	Kansas	0.82940	 Moore (Moore, OK)    	OK	https://247sports.com/player/daniel-hishaw-jr-46081215
2253	Jaylin Richardson	ATH 	Kansas	0.82800	 F L Schlagle (Kansas City, KS)    	KS	https://247sports.com/player/jaylin-richardson-46054375
2254	Luke Grimm	WR 	Kansas	0.82420	 Raymore-Peculiar (Peculiar, MO)  	MO	https://247sports.com/player/luke-grimm-46080599
2255	Garrett Jones	OG 	Kansas	0.81670	 Berrien Springs (Berrien Springs, MI)    	MI	https://247sports.com/player/garrett-jones-46083958
2256	Nicholas Martinez	OT 	Kansas	0.81390	 Servite (Anaheim, CA)    	CA	https://247sports.com/player/nicholas-martinez-46080015
2257	Kyler Pearson	WR 	Kansas	0.80100	 Union (Tulsa, OK)    	OK	https://247sports.com/player/kyler-pearson-46057805
2232	Ar''Quel Smith	OLB 	Iowa State	0.82770	Naples (Naples, FL)	FL	https://247sports.com/player/arquel-smith-46080926
2258	Khari Coleman	WDE 	Kansas	0.86800	 G.W. Carver (New Orleans, LA)                    	LA	https://247sports.com/player/khari-coleman-46055968
2259	Jeremiah Harris	ILB 	Kansas State	0.86880	 Shadow Creek (Pearland, TX)    	TX	https://247sports.com/player/jeremiah-harris-46052191
2260	Nate Matlack	WDE 	Kansas State	0.86680	 Olathe East (Olathe, KS)    	KS	https://247sports.com/player/nate-matlack-46057473
2261	Talor Warner	OG 	Kansas State	0.86230	 Gardner Edgerton (Gardner, KS)    	KS	https://247sports.com/player/talor-warner-46083984
2262	Will Swanson	TE 	Kansas State	0.85930	 Papillion-La Vista South (Papillion, NE)    	NE	https://247sports.com/player/will-swanson-46085221
2263	Robert Hentz	DT 	Kansas State	0.85740	 Northwest Mississippi C.C. (Senatobia, MS)    	MS	https://247sports.com/player/robert-hentz-46040158
2264	Will Howard	PRO 	Kansas State	0.85520	 Downingtown West (Downingtown, PA)    	PA	https://247sports.com/player/will-howard-46056477
2265	Carver Willis	OT 	Kansas State	0.85390	 Durango (Durango, CO)  	CO	https://247sports.com/player/carver-willis-46085599
2266	Tajiri Smith	CB 	Kansas State	0.84840	 McEachern (Powder Springs, GA)    	GA	https://247sports.com/player/tajiri-smith-46047495
2267	Joseph Wilson	CB 	Kansas State	0.84640	 North Shore (Houston, TX)    	TX	https://247sports.com/player/joseph-wilson-46039609
2268	Deuce Vaughn	APB 	Kansas State	0.84640	 Cedar Ridge (Round Rock, TX)    	TX	https://247sports.com/player/deuce-vaughn-46079605
2269	Cody Stufflebean	ATH 	Kansas State	0.84640	 Mcpherson (Mcpherson, KS)    	KS	https://247sports.com/player/cody-stufflebean-46084289
2270	Makholven Sonn	WR 	Kansas State	0.84310	 Westgate (New Iberia, LA)    	LA	https://247sports.com/player/makholven-sonn-46051247
2271	Malachi Mitchell	S 	Kansas State	0.84310	 Mansfield Legacy (Mansfield, TX)    	TX	https://247sports.com/player/malachi-mitchell-46081298
2272	DeMarrquese Hayes	OLB 	Kansas State	0.84310	 La Vega (Waco, TX)      	TX	https://247sports.com/player/demarrquese-hayes-46081978
2273	Ronald Triplette	SDE 	Kansas State	0.84100	 Shadow Creek (Pearland, TX)    	TX	https://247sports.com/player/ronald-triplette-46058317
2274	Sam Shields	OG 	Kansas State	0.84100	 Manhattan (Manhattan, KS)    	KS	https://247sports.com/player/sam-shields-46081717
2275	Dawson Delforge	OG 	Kansas State	0.83250	 Butler C.C. (El Dorado, KS)    	KS	https://247sports.com/player/dawson-delforge-46094812
2277	Hadley Panzer	OC 	Kansas State	0.83150	 Lakin (Lakin, KS)    	KS	https://247sports.com/player/hadley-panzer-46081753
2278	Christian Moore	TE 	Kansas State	0.81930	 Huntington Beach (Huntington Beach, CA)    	CA	https://247sports.com/player/christian-moore-46081506
2279	Jaelon Travis	WR 	Kansas State	0.81180	 Mansfield Summit (Arlington, TX)    	TX	https://247sports.com/player/jaelon-travis-46085643
2280	Justin Rogers	DT 	Kentucky	0.97800	 Oak Park (Oak Park, MI)                  	MI	https://247sports.com/player/justin-rogers-91684
2281	Samuel Anaele	SDE 	Kentucky	0.91760	 McDougal Technical Institute (Deerfield Beach, FL)                    	FL	https://247sports.com/player/samuel-anaele-46042790
2346	Ebony Jackson	RB 	Maryland	0.88170	 Cherokee (Canton, GA)                    	GA	https://247sports.com/player/ebony-jackson-46048345
2282	John Young	OT 	Kentucky	0.89040	 Christian Academy Of Louisville (Louisville, KY)                    	KY	https://247sports.com/player/john-young-46047442
2283	Jutahn McClain	APB 	Kentucky	0.88840	 Fairfield (Fairfield, OH)    	OH	https://247sports.com/player/jutahn-mcclain-46052145
2284	Deondre Buford	OT 	Kentucky	0.88630	 Martin Luther King (Detroit, MI)                  	MI	https://247sports.com/player/deondre-buford-46051995
2286	Beau Allen	PRO 	Kentucky	0.87910	 Lexington Catholic (Lexington, KY)                    	KY	https://247sports.com/player/beau-allen-46039461
2287	Kalil Branham	WR 	Kentucky	0.87890	 Northland (Columbus, OH)                    	OH	https://247sports.com/player/kalil-branham-46040367
2288	Torrance Davis	RB 	Kentucky	0.87880	 Garfield Heights (Cleveland, OH)                    	OH	https://247sports.com/player/torrance-davis-46081317
2289	Earnest Sanders	WR 	Kentucky	0.87560	 Beecher (Mount Morris, MI)                  	MI	https://247sports.com/player/earnest-sanders-46057979
2290	Andru Phillips	CB 	Kentucky	0.86880	 Mauldin (Mauldin, SC)                    	SC	https://247sports.com/player/andru-phillips-46056880
2291	Izayah Cummings	WR 	Kentucky	0.86810	 Louisville Male (Louisville, KY)                  	KY	https://247sports.com/player/izayah-cummings-46049679
2292	Rickey Hyatt	S 	Kentucky	0.86470	 Westerville Central (Westerville, OH)    	OH	https://247sports.com/player/rickey-hyatt-46080419
2293	Joshua Jones	OT 	Kentucky	0.85590	 Central (Phenix City, AL)                  	AL	https://247sports.com/player/joshua-jones-46057708
2295	Carrington Valentine	CB 	Kentucky	0.85180	 Archbishop Moeller (Cincinnati, OH)                  	OH	https://247sports.com/player/carrington-valentine-46080434
2296	Chubba Purdy	DUAL 	Louisville	0.92020	 Perry (Gilbert, AZ)    	AZ	https://247sports.com/player/chubba-purdy-46076928
2297	Trevor Reid	OT 	Louisville	0.87770	 Georgia Military College (Milledgeville, GA)  	GA	https://247sports.com/player/trevor-reid-46085730
2298	Kameron Wilson	OLB 	Louisville	0.87620	 Mount Zion (Jonesboro, GA)    	GA	https://247sports.com/player/kameron-wilson-46082862
2299	Josh Griffis	WDE 	Louisville	0.87300	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/josh-griffis-46048872
2300	Jamie Vance	CB 	Louisville	0.87010	 Edna Karr (New Orleans, LA)    	LA	https://247sports.com/player/jamie-vance-46051423
2301	Marvin Dallas	OLB 	Louisville	0.86810	 Georgia Military College (Milledgeville, GA)  	GA	https://247sports.com/player/marvin-dallas-46085679
2302	Timothy Lawson	OT 	Louisville	0.86680	 National Christian Academy (Fort Washington, MD)    	MD	https://247sports.com/player/timothy-lawson-46079753
2303	Henry Bryant	DT 	Louisville	0.86600	 Atlantic (Delray Beach, FL)    	FL	https://247sports.com/player/henry-bryant-90912
2632	Grant Mahon	DT 	Oklahoma State	0.84100	 Guyer (Denton, TX)    	TX	https://247sports.com/player/grant-mahon-46040750
2304	Lovie Jenkins	S 	Louisville	0.86550	 Ocoee (Ocoee, FL)    	FL	https://247sports.com/player/lovie-jenkins-46056445
2305	Tee Webb	PRO 	Louisville	0.86470	 Cartersville (Cartersville, GA)                    	GA	https://247sports.com/player/tee-webb-82510
2306	Christian Fitzpatrick	WR 	Louisville	0.86460	 Southfield (Southfield, MI)    	MI	https://247sports.com/player/christian-fitzpatrick-45572864
2307	Jared Dawson	DT 	Louisville	0.86280	 Collierville (Collierville, TN)    	TN	https://247sports.com/player/jared-dawson-46082171
2308	Jordan Watkins	ATH 	Louisville	0.85970	 Butler Traditional (Louisville, KY)    	KY	https://247sports.com/player/jordan-watkins-46057229
2309	Zay Peterson	OLB 	Louisville	0.85930	 IMG Academy (Bradenton, FL)    	FL	https://247sports.com/player/zay-peterson-46081777
2310	Kobe Baynes	OG 	Louisville	0.85480	 Sandalwood (Jacksonville, FL)                    	FL	https://247sports.com/player/kobe-baynes-46054199
2311	Josh Minkins Jr.	S 	Louisville	0.85320	 Ballard (Louisville, KY)    	KY	https://247sports.com/player/josh-minkins-jr-46052610
2312	Luke Kandra	OG 	Louisville	0.85320	 Elder (Cincinnati, OH)    	OH	https://247sports.com/player/luke-kandra-46056468
2313	Dexter Rentz Jr.	ATH 	Louisville	0.84850	 Ocoee (Ocoee, FL)    	FL	https://247sports.com/player/dexter-rentz-jr-46058594
2314	Nick Malito	WR 	Louisville	0.84440	 Girard (Girard, OH)    	OH	https://247sports.com/player/nick-malito-46085741
2315	Braden Smith	WR 	Louisville	0.84400	 Northwest Mississippi C.C. (Senatobia, MS)    	MS	https://247sports.com/player/braden-smith-94456
2316	Dezmond Tell	DT 	Louisville	0.84030	 Dutchtown (Hampton, GA)  	GA	https://247sports.com/player/dezmond-tell-46083342
2317	Austin Collins	OG 	Louisville	0.83560	 Perrysburg (Perrysburg, OH)  	OH	https://247sports.com/player/austin-collins-46057135
2318	Desmond Daniels	TE 	Louisville	0.83420	 Langston Hughes (Fairburn, GA)  	GA	https://247sports.com/player/desmond-daniels-46081039
2319	Duane Martin	ATH 	Louisville	0.83360	 Laurens Dist 55 (Laurens, SC)    	SC	https://247sports.com/player/duane-martin-46081253
2320	Brock Travelstead	K 	Louisville	0.82010	 North Paulding (Dallas, GA)    	GA	https://247sports.com/player/brock-travelstead-46085618
2321	Arik Gilbert	TE 	LSU	0.99560	 Marietta (Marietta, GA)                    	GA	https://247sports.com/player/arik-gilbert-94709
2322	Elias Ricks	CB 	LSU	0.99520	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/elias-ricks-46042180
2324	Kayshon Boutte	WR 	LSU	0.97950	 Westgate (New Iberia, LA)    	LA	https://247sports.com/player/kayshon-boutte-46047097
2325	Jaquelin Roy	DT 	LSU	0.97640	 University Lab (Baton Rouge, LA)    	LA	https://247sports.com/player/jaquelin-roy-46050000
2326	Jermaine Burton	WR 	LSU	0.97490	 Calabasas (Calabasas, CA)    	CA	https://247sports.com/player/jermaine-burton-46039009
2327	Antoine Sampah	ILB 	LSU	0.96950	 Woodbridge (Woodbridge, VA)    	VA	https://247sports.com/player/antoine-sampah-46040680
2328	Jordan Toles	S 	LSU	0.95890	 St. Frances Academy (Baltimore, MD)    	MD	https://247sports.com/player/jordan-toles-46050292
2329	BJ Ojulari	WDE 	LSU	0.94100	 Marietta (Marietta, GA)                    	GA	https://247sports.com/player/bj-ojulari-46040436
2330	Demon Clowney	WDE 	LSU	0.94000	 St. Frances Academy (Baltimore, MD)    	MD	https://247sports.com/player/demon-clowney-94681
2331	Josh White	ILB 	LSU	0.93880	 Cy Creek (Houston, TX)    	TX	https://247sports.com/player/josh-white-46051830
2332	Jacobian Guillory	DT 	LSU	0.93480	 Alexandria (Alexandria, LA)                  	LA	https://247sports.com/player/jacobian-guillory-46051634
2333	Max Johnson	PRO 	LSU	0.90970	 Oconee County (Watkinsville, GA)                    	GA	https://247sports.com/player/max-johnson-89241
2334	Lorando Johnson	CB 	LSU	0.90550	 Lancaster (Lancaster, TX)    	TX	https://247sports.com/player/lorando-johnson-46038983
2335	Eric Taylor	DT 	LSU	0.90470	 Hewitt-Trussville (Trussville, AL)    	AL	https://247sports.com/player/eric-taylor-46052193
2336	Koy Moore	WR 	LSU	0.90070	 Archbishop Rummel (Metairie, LA)    	LA	https://247sports.com/player/koy-moore-46046675
2337	Malcolm Greene	S 	LSU	0.90070	 Highland Springs (Highland Springs, VA)                  	VA	https://247sports.com/player/malcolm-greene-46055228
2338	Kole Taylor	TE 	LSU	0.88500	 Central (Grand Junction, CO)      	CO	https://247sports.com/player/kole-taylor-46079998
2339	Marlon Martinez	OG 	LSU	0.88170	 St. Thomas Aquinas (Fort Lauderdale, FL)    	FL	https://247sports.com/player/marlon-martinez-46051533
2340	Xavier Hill	OG 	LSU	0.87970	 Olive Branch (Olive Branch, MS)    	MS	https://247sports.com/player/xavier-hill-46057832
2341	TJ Finley	PRO 	LSU	0.87840	 Ponchatoula (Ponchatoula, LA)                    	LA	https://247sports.com/player/tj-finley-46040985
2342	Ali Gaye	SDE 	LSU	0.87560	 Garden City C.C.  (Garden City, KS)    	KS	https://247sports.com/player/ali-gaye-89377
2343	CamRon Jackson	DT 	LSU	0.86820	 Haynesville (Haynesville, LA)    	LA	https://247sports.com/player/camron-jackson-46050243
2344	Ruben Hyppolite II	OLB 	Maryland	0.90650	 McArthur (Hollywood, FL)                    	FL	https://247sports.com/player/ruben-hyppolite-ii-46051515
2345	Peny Boone	RB 	Maryland	0.88830	 Martin Luther King (Detroit, MI)    	MI	https://247sports.com/player/peny-boone-46052941
2741	Greg Hudgins	WDE 	Purdue	0.87620	 St. John''s College HS (Washington, DC)    	DC	https://247sports.com/player/greg-hudgins-46051374
2347	Corey Dyches	WR 	Maryland	0.87130	 Potomac (Oxon Hill, MD)    	MD	https://247sports.com/player/corey-dyches-46049923
2348	Deajaun McDougle	WR 	Maryland	0.86890	 Deerfield Beach (Deerfield Beach, FL)                    	FL	https://247sports.com/player/deajaun-mcdougle-45572389
2349	Tarheeb Still	CB 	Maryland	0.86460	 Timber Creek (Sicklerville, NJ)  	NJ	https://247sports.com/player/tarheeb-still-46054767
2350	Beau Brade	S 	Maryland	0.85940	 River Hill (Clarksville, MD)    	MD	https://247sports.com/player/beau-brade-46080073
2351	Riyad Wilmot	SDE 	Maryland	0.85340	 St. Thomas Aquinas (Fort Lauderdale, FL)    	FL	https://247sports.com/player/riyad-wilmot-46079849
2352	Jerzhan Newton	SDE 	Maryland	0.85190	 Clearwater Central Catholic (Clearwater, FL)    	FL	https://247sports.com/player/jerzhan-newton-46046954
2353	Ami Finau	DT 	Maryland	0.84950	 Independence C.C. (Independence, KS)    	KS	https://247sports.com/player/ami-finau-46095071
2354	Mosiah Nasili-Kite	SDE 	Maryland	0.84850	 Independence C.C. (Independence, KS)    	KS	https://247sports.com/player/mosiah-nasili-kite-46047016
2355	Santana Saunders	OT 	Maryland	0.84690	 Charles Herbert Flowers (Upper Marlboro, MD)    	MD	https://247sports.com/player/santana-saunders-46081134
2356	Khristopher Love	OG 	Maryland	0.84520	 American Heritage (Fort Lauderdale, FL)    	FL	https://247sports.com/player/khristopher-love-46079323
2357	Delmar Glaze	OT 	Maryland	0.84380	 West Mecklenburg (Charlotte, NC)    	NC	https://247sports.com/player/delmar-glaze-46094079
2358	Devyn King	CB 	Maryland	0.84310	 Junipero Serra (Gardena, CA)                    	CA	https://247sports.com/player/devyn-king-46042489
2359	Nick DeGennaro	WR 	Maryland	0.83890	 Hun School  (Princeton, NJ)    	NJ	https://247sports.com/player/nick-degennaro-46085549
2360	Kyjuan Herndon	ATH 	Maryland	0.83860	 Trinity Christian Academy (Deltona, FL)                    	FL	https://247sports.com/player/kyjuan-herndon-46077016
2361	Shane Mosley	CB 	Maryland	0.83760	 Haverford (Havertown, PA)                    	PA	https://247sports.com/player/shane-mosley-46078932
2362	Glen Miller	S 	Maryland	0.83690	 Ridgeview (Orange Park, FL)  	FL	https://247sports.com/player/glen-miller-46097176
2364	Tre Smith	DT 	Maryland	0.82680	 Mountain Ridge (Frostburg, MD)    	MD	https://247sports.com/player/tre-smith-46082561
2365	Zach Perkins	OT 	Maryland	0.82680	 Berkeley Prep (Tampa, FL)    	FL	https://247sports.com/player/zach-perkins-46076723
2366	TJ Kautai	ILB 	Maryland	0.82410	 Independence C.C. (Independence, KS)                    	KS	https://247sports.com/player/tj-kautai-46086133
2367	Johari Branch	OG 	Maryland	0.82360	 Independence C.C. (Independence, KS)    	KS	https://247sports.com/player/johari-branch-46045355
2368	Don Chaney Jr.	RB 	Miami	0.98180	 Belen Jesuit Prep (Miami, FL)                    	FL	https://247sports.com/player/don-chaney-jr-92946
2369	Chantz Williams	WDE 	Miami	0.96500	 Oakleaf (Orange Park, FL)                    	FL	https://247sports.com/player/chantz-williams-46038938
2477	Calvin McMillian	OT 	Mississippi State	0.85800	 Houston (Houston, MS)    	MS	https://247sports.com/player/calvin-mcmillian-46059086
2370	Jaylan Knighton	RB 	Miami	0.95240	 Deerfield Beach (Deerfield Beach, FL)                    	FL	https://247sports.com/player/jaylan-knighton-46046875
2371	Jalen Rivers	OT 	Miami	0.93500	 Oakleaf (Orange Park, FL)                    	FL	https://247sports.com/player/jalen-rivers-46039457
2372	Michael Redding III	WR 	Miami	0.92930	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/michael-redding-iii-46055158
2373	Tyler Van Dyke	PRO 	Miami	0.91850	 Suffield Academy (Suffield, CT)                    	CT	https://247sports.com/player/tyler-van-dyke-88973
2374	Jalen Harrell	S 	Miami	0.91360	 Champagnat Catholic - Hialeah (Hialeah, FL)                  	FL	https://247sports.com/player/jalen-harrell-46059050
2375	Elijah Roberts	SDE 	Miami	0.89580	 Columbus (Miami, FL)                  	FL	https://247sports.com/player/elijah-roberts-46051699
2376	Willie Moise	DT 	Miami	0.89540	 Chaminade-Madonna Prep (Hollywood, FL)    	FL	https://247sports.com/player/willie-moise-46039152
2377	Dazalin Worsham	WR 	Miami	0.89540	 Hewitt-Trussville (Trussville, AL)                    	AL	https://247sports.com/player/dazalin-worsham-46042539
2378	Keshawn Washington	S 	Miami	0.89030	 South Dade (Homestead, FL)                    	FL	https://247sports.com/player/keshawn-washington-46037037
2379	Romello Height	OLB 	Miami	0.88840	 Dublin (Dublin, GA)                    	GA	https://247sports.com/player/romello-height-46080260
2380	Dominic Mammarelli	TE 	Miami	0.88580	 Naples (Naples, FL)                 	FL	https://247sports.com/player/dominic-mammarelli-46051465
2381	Tirek Austin-Cave	ILB 	Miami	0.87090	 Camden (Camden, NJ)                    	NJ	https://247sports.com/player/tirek-austin-cave-46054731
2382	Quentin Williams	WDE 	Miami	0.86680	 Mallard Creek (Charlotte, NC)                	NC	https://247sports.com/player/quentin-williams-46057246
2383	Marcus Clarke	CB 	Miami	0.86190	 Winter Park (Winter Park, FL)                  	FL	https://247sports.com/player/marcus-clarke-46058596
2384	Brian Balom	S 	Miami	0.86060	 Miramar (Hollywood, FL)                  	FL	https://247sports.com/player/brian-balom-46081747
2385	Xavier Restrepo	ATH 	Miami	0.85990	 Deerfield Beach (Deerfield Beach, FL)                    	FL	https://247sports.com/player/xavier-restrepo-46050952
2386	Corey Flagg	ILB 	Miami	0.85740	 North Shore (Houston, TX)                    	TX	https://247sports.com/player/corey-flagg-46052137
2387	Chris Washington	OT 	Miami	0.84780	 Overton (Nashville, TN)                    	TN	https://247sports.com/player/chris-washington-46080943
2388	A.J. Henning	WR 	Michigan	0.95800	 Lincoln-Way East (Frankfort, IL)                  	IL	https://247sports.com/player/a-j-henning-46047161
2859	Parker McQuarrie	PRO 	UCLA	0.90810	 St. Paul''s School (Concord, NH)                  	NH	https://247sports.com/player/parker-mcquarrie-46054816
2389	Braiden McGregor	SDE 	Michigan	0.94960	 Port Huron Northern (Port Huron, MI)                    	MI	https://247sports.com/player/braiden-mcgregor-46054251
2390	Blake Corum	RB 	Michigan	0.94580	 St. Frances Academy (Baltimore, MD)                    	MD	https://247sports.com/player/blake-corum-92992
2391	Kalel Mullings	OLB 	Michigan	0.93150	 Milton Academy (Milton, MA)                  	MA	https://247sports.com/player/kalel-mullings-46038392
2392	Jordan Morant	S 	Michigan	0.93000	 Bergen Catholic (Oradell, NJ)    	NJ	https://247sports.com/player/jordan-morant-46040100
2393	RJ Moten	S 	Michigan	0.91910	 Delran (Delran, NJ)                  	NJ	https://247sports.com/player/rj-moten-46080101
2394	Andre Seldon	CB 	Michigan	0.91460	 Belleville (Belleville, MI)                    	MI	https://247sports.com/player/andre-seldon-93977
2395	Makari Paige	S 	Michigan	0.91210	 West Bloomfield (West Bloomfield, MI)                  	MI	https://247sports.com/player/makari-paige-46048590
2396	Zak Zinter	OG 	Michigan	0.90600	 Buckingham Browne & Nichols School (Cambridge, MA)                    	MA	https://247sports.com/player/zak-zinter-46056669
2397	Jaylen Harrell	WDE 	Michigan	0.90020	 Berkeley Prep (Tampa, FL)    	FL	https://247sports.com/player/jaylen-harrell-46042851
2398	Osman Savage	OLB 	Michigan	0.89830	 St. Frances Academy (Baltimore, MD)                  	MD	https://247sports.com/player/osman-savage-46041191
2399	Jeffrey Persi	OT 	Michigan	0.89580	 J Serra Catholic (San Juan Capistrano, CA)                  	CA	https://247sports.com/player/jeffrey-persi-46058191
2400	Roman Wilson	WR 	Michigan	0.89080	 St. Louis (Honolulu, HI)    	HI	https://247sports.com/player/roman-wilson-46043085
2401	Nikhai Hill-Green	OLB 	Michigan	0.88840	 St. Frances Academy (Baltimore, MD)                    	MD	https://247sports.com/player/nikhai-hill-green-46051396
2402	Matthew Hibner	TE 	Michigan	0.88530	 Lake Braddock (Burke, VA)                  	VA	https://247sports.com/player/matthew-hibner-46083926
2403	Reece Atteberry	OC 	Michigan	0.88300	 Eaglecrest (Aurora, CO)                  	CO	https://247sports.com/player/reece-atteberry-46051579
2404	William Mohan	ATH 	Michigan	0.88160	 Erasmus Hall (Brooklyn, NY)                    	NY	https://247sports.com/player/william-mohan-89135
2405	Cornell Wheeler	ILB 	Michigan	0.88100	 West Bloomfield (West Bloomfield, MI)                  	MI	https://247sports.com/player/cornell-wheeler-46048480
2406	Aaron Lewis	SDE 	Michigan	0.88100	 Williamstown (Williamstown, NJ)                    	NJ	https://247sports.com/player/aaron-lewis-46059082
2407	JD Johnson	PRO 	Michigan	0.88040	 Pinnacle (Phoenix, AZ)    	AZ	https://247sports.com/player/jd-johnson-46056030
2409	Kris Jenkins	SDE 	Michigan	0.87760	 Our Lady Good Counsel HS (Olney, MD)    	MD	https://247sports.com/player/kris-jenkins-46059214
2410	Micah Mazzccua	OG 	Michigan	0.86960	 St. Frances Academy (Baltimore, MD)    	MD	https://247sports.com/player/micah-mazzccua-46056396
2411	Nick Patterson	TE 	Michigan	0.85920	 San Antonio Christian (San Antonio, TX)    	TX	https://247sports.com/player/nick-patterson-92465
2412	Gaige Garcia	RB 	Michigan	0.81730	 Southern Columbia (Catawissa, PA)    	PA	https://247sports.com/player/gaige-garcia-46042243
2413	Darius Snow	OLB 	Michigan State	0.88630	 Hebron (Carrollton, TX)    	TX	https://247sports.com/player/darius-snow-46047461
2414	Dallas Fincher	OG 	Michigan State	0.88090	 East Kentwood (Grand Rapids, MI)    	MI	https://247sports.com/player/dallas-fincher-46049614
2415	Terry Lockett	WR 	Michigan State	0.87330	 Minnehaha Academy (Minneapolis, MN)    	MN	https://247sports.com/player/terry-lockett-46050633
2416	Jordon Simmons	RB 	Michigan State	0.87090	 McEachern (Powder Springs, GA)    	GA	https://247sports.com/player/jordon-simmons-46042188
2417	Ian Stewart	WR 	Michigan State	0.86800	 Oscar A. Carlson (Rockwood, MI)    	MI	https://247sports.com/player/ian-stewart-90936
2418	Angelo Grose	CB 	Michigan State	0.86640	 Mansfield (Mansfield, OH)    	OH	https://247sports.com/player/angelo-grose-46053674
2419	Devin Hightower	OLB 	Michigan State	0.86460	 Archbishop Hoban (Akron, OH)    	OH	https://247sports.com/player/devin-hightower-46080523
2420	Cal Haladay	ILB 	Michigan State	0.86140	 Southern Columbia (Catawissa, PA)    	PA	https://247sports.com/player/cal-haladay-46059528
2421	Ricky White	WR 	Michigan State	0.86140	 Marietta (Marietta, GA)    	GA	https://247sports.com/player/ricky-white-46080062
2422	Tommy Guajardo	TE 	Michigan State	0.86060	 Dearborn (Dearborn, MI)    	MI	https://247sports.com/player/tommy-guajardo-46049882
2423	Simeon Barrow Jr.	WDE 	Michigan State	0.85930	 Grovetown (Grovetown, GA)    	GA	https://247sports.com/player/simeon-barrow-jr-46080670
2424	Kyle King	SDE 	Michigan State	0.85520	 New Palestine (New Palestine, IN)      	IN	https://247sports.com/player/kyle-king-46076572
2425	Avery Dunn	WDE 	Michigan State	0.85110	 Shaker Heights (Cleveland, OH)    	OH	https://247sports.com/player/avery-dunn-46094144
2426	Montorie Foster	WR 	Michigan State	0.84980	 St. Edward (Lakewood, OH)    	OH	https://247sports.com/player/montorie-foster-46093881
2427	Chris Mayfield	SDE 	Michigan State	0.84650	 Hilliard Bradley (Hilliard, OH)    	OH	https://247sports.com/player/chris-mayfield-46050516
2428	Noah Kim	PRO 	Michigan State	0.84590	 Westfield (Chantilly, VA)    	VA	https://247sports.com/player/noah-kim-46054819
2408	Eamonn Dennis	ATH 	Michigan	0.87760	 St John''s (Shrewsbury, MA)                  	MA	https://247sports.com/player/eamonn-dennis-46057139
2429	Jeff Pietrowski	WDE 	Michigan State	0.84440	 St. Edward (Lakewood, OH)    	OH	https://247sports.com/player/jeff-pietrowski-46052116
2430	Cole DeMarzo	OLB 	Michigan State	0.83570	 Hilton Head (Hilton Head Island, SC)    	SC	https://247sports.com/player/cole-demarzo-46082017
2431	Justin Stevens	OT 	Michigan State	0.83550	 Clarkson Football North (Mississauga, ON)  	ON	https://247sports.com/player/justin-stevens-46085514
2432	Jack Olsen	K 	Michigan State	0.83090	 Wheaton Warrenville South (Wheaton, IL)  	IL	https://247sports.com/player/jack-olsen-46079551
2433	Itayvion Brown	OLB 	Minnesota	0.89820	 Lutheran North (Saint Louis, MO)                  	MO	https://247sports.com/player/itayvion-brown-46053818
2434	Daniel Jackson	WR 	Minnesota	0.89780	 Bishop Miege (Mission, KS)                  	KS	https://247sports.com/player/daniel-jackson-46051925
2435	Ky Thomas	RB 	Minnesota	0.87890	 Topeka (Topeka, KS)                    	KS	https://247sports.com/player/ky-thomas-46035350
2436	Jaqwondis Burns	OLB 	Minnesota	0.87090	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/jaqwondis-burns-46078938
2437	Jonathan Mann	WR 	Minnesota	0.86680	 Rosemount Senior (Rosemount, MN)                  	MN	https://247sports.com/player/jonathan-mann-46050491
2438	Douglas Emilien	WR 	Minnesota	0.86520	 American Heritage (Fort Lauderdale, FL)                  	FL	https://247sports.com/player/douglas-emilien-46051391
2439	Danny Striggow	WDE 	Minnesota	0.86520	 Orono Senior (Long Lake, MN)                  	MN	https://247sports.com/player/danny-striggow-46082856
2440	Jalen Logan-Redding	WDE 	Minnesota	0.86470	 Rock Bridge (Columbia, MO)                  	MO	https://247sports.com/player/jalen-logan-redding-46056509
2441	Martes Lewis	OT 	Minnesota	0.86390	 Merrillville (Merrillville, IN)                  	IN	https://247sports.com/player/martes-lewis-46080445
2442	Michael Dixon	S 	Minnesota	0.86260	 Statesboro (Statesboro, GA)                  	GA	https://247sports.com/player/michael-dixon-46082608
2443	Gage Keys	SDE 	Minnesota	0.86060	 Hilliard Davidson (Hilliard, OH)                    	OH	https://247sports.com/player/gage-keys-46059285
2444	Lucas Finnessy	OLB 	Minnesota	0.85860	 Hamilton (Sussex, WI)                  	WI	https://247sports.com/player/lucas-finnessy-46058678
2445	Aireontae Ersery	OT 	Minnesota	0.85510	 Ruskin (Kansas City, MO)                  	MO	https://247sports.com/player/aireontae-ersery-46082414
2446	Justin Bellido	WR 	Minnesota	0.85380	 Erasmus Hall (Brooklyn, NY)                    	NY	https://247sports.com/player/justin-bellido-46053435
2447	Abner Dubar	S 	Minnesota	0.85320	 Anna (Anna, TX)                  	TX	https://247sports.com/player/abner-dubar-46055373
2448	Jalen Glaze	CB 	Minnesota	0.85060	 Lincoln (Tallahassee, FL)                  	FL	https://247sports.com/player/jalen-glaze-46054233
2449	Cody Lindenberg	OLB 	Minnesota	0.84900	 Anoka Senior (Anoka, MN)                    	MN	https://247sports.com/player/cody-lindenberg-46083547
2450	Miles Fleming	ATH 	Minnesota	0.84840	 Bishop Hartley (Columbus, OH)                  	OH	https://247sports.com/player/miles-fleming-46079775
2451	Dakota Thomas	WR 	Minnesota	0.84770	 Shiloh (Snellville, GA)    	GA	https://247sports.com/player/dakota-thomas-46039183
2478	Benjamin Key	SDE 	Mississippi State	0.85280	 East Los Angeles College (Monterey Park, CA)    	CA	https://247sports.com/player/benjamin-key-46082886
2945	Isaac Smith	WR 	Wisconsin	0.83820	 St. George''s - Collierville (Collierville, TN)    	TN	https://247sports.com/player/isaac-smith-46080585
2452	Ali Saad	DT 	Minnesota	0.84640	 Dearborn (Dearborn, MI)                  	MI	https://247sports.com/player/ali-saad-46059218
2453	Dylan McGill	ATH 	Minnesota	0.84440	 Mesquite (Mesquite, TX)    	TX	https://247sports.com/player/dylan-mcgill-46057672
2454	Victor Pless	ATH 	Minnesota	0.84100	 Harrison (Kennesaw, GA)                  	GA	https://247sports.com/player/victor-pless-46048136
2455	Tyrell Lawrence	OG 	Minnesota	0.83660	 Clearwater Academy International (Clearwater, FL)                    	FL	https://247sports.com/player/tyrell-lawrence-46082453
2456	Austin Henderson	TE 	Minnesota	0.83560	 Ensworth (Nashville, TN)                  	TN	https://247sports.com/player/austin-henderson-46080942
2457	Melle Kreuder	SDE 	Minnesota	0.83560	 Germany (Germany, GERM)                    	GE	https://247sports.com/player/melle-kreuder-46085413
2459	Emmanuel Forbes	CB 	Mississippi State	0.92800	 Grenada (Grenada, MS)    	MS	https://247sports.com/player/emmanuel-forbes-46080858
2460	Lideatrick Griffin	ATH 	Mississippi State	0.90430	 Philadelphia (Philadelphia, MS)    	MS	https://247sports.com/player/lideatrick-griffin-46054282
2461	Jordan Davis	WDE 	Mississippi State	0.90340	 Copiah-Lincoln C.C. (Wesson, MS)                    	MS	https://247sports.com/player/jordan-davis-91082
2462	Malik Heath	WR 	Mississippi State	0.89130	 Copiah-Lincoln C.C. (Wesson, MS)                    	MS	https://247sports.com/player/malik-heath-85252
2463	Dillon Johnson	ATH 	Mississippi State	0.88300	 St Joseph (Greenville, MS)                  	MS	https://247sports.com/player/dillon-johnson-46053816
2464	Janari Dean	S 	Mississippi State	0.87420	 South Panola (Batesville, MS)    	MS	https://247sports.com/player/janari-dean-46046825
2465	Rodney Groce Jr.	ILB 	Mississippi State	0.87420	 Pleasant Grove  (Pleasant Grove, AL)      	AL	https://247sports.com/player/rodney-groce-jr-46051888
2466	Tyrus Wheat	ILB 	Mississippi State	0.87220	 Copiah-Lincoln C.C. (Wesson, MS)    	MS	https://247sports.com/player/tyrus-wheat-46041869
2467	Javorrius Selmon	ATH 	Mississippi State	0.87100	 Provine (Jackson, MS)    	MS	https://247sports.com/player/javorrius-selmon-46053820
2469	Jevon Banks	SDE 	Mississippi State	0.86880	 Olive Branch (Olive Branch, MS)    	MS	https://247sports.com/player/jevon-banks-46053878
2470	Will Rogers	PRO 	Mississippi State	0.86880	 Brandon (Brandon, MS)      	MS	https://247sports.com/player/will-rogers-46052851
2471	Johnquarise Patterson	WR 	Mississippi State	0.86690	 Hinds C.C. (Raymond, MS)    	MS	https://247sports.com/player/johnquarise-patterson-46040101
2472	Caleb Ducking	WR 	Mississippi State	0.86270	 Holmes C.C. (Goodman, MS)    	MS	https://247sports.com/player/caleb-ducking-46085295
2473	Armondous Cooley	DT 	Mississippi State	0.86260	 Wayne County (Waynesboro, MS)    	MS	https://247sports.com/player/armondous-cooley-46081580
2474	Cameron Threatt	CB 	Mississippi State	0.86180	 Lewisburg (Olive Branch, MS)   	MS	https://247sports.com/player/cameron-threatt-46056657
2475	Tre Lawson	SDE 	Mississippi State	0.85940	 Mississippi Gulf Coast C.C. (Perkinston, MS)    	MS	https://247sports.com/player/tre-lawson-88156
2476	Grant Jackson	OT 	Mississippi State	0.85850	 West Lincoln School (Brookhaven, MS)  	MS	https://247sports.com/player/grant-jackson-46057261
2458	Jo''Quavious Marks	RB 	Mississippi State	0.93620	Carver (Atlanta, GA)	GA	https://247sports.com/player/joquavious-marks-46041108
2479	Porter Rooks	WR 	NC State	0.92260	 Myers Park (Charlotte, NC)    	NC	https://247sports.com/player/porter-rooks-93001
2480	Davin Vann	DT 	NC State	0.88870	 Cary (Cary, NC)    	NC	https://247sports.com/player/davin-vann-46082417
2481	Austin Blaske	OT 	NC State	0.87590	 South Effingham (Guyton, GA)    	GA	https://247sports.com/player/austin-blaske-46081392
2482	Jayland Parker	ILB 	NC State	0.87420	 Westside (Macon, GA)    	GA	https://247sports.com/player/jayland-parker-46080439
2483	Aydan White	CB 	NC State	0.86600	 Christ School (Arden, NC)  	NC	https://247sports.com/player/aydan-white-46082661
2484	Ben Finley	PRO 	NC State	0.86460	 Paradise Valley (Phoenix, AZ)    	AZ	https://247sports.com/player/ben-finley-46041629
2485	Nehki Meredith	S 	NC State	0.86360	 Catholic (Virginia Beach, VA)    	VA	https://247sports.com/player/nehki-meredith-46039194
2486	Devon Betty	OLB 	NC State	0.86250	 St. Thomas Aquinas (Fort Lauderdale, FL)    	FL	https://247sports.com/player/devon-betty-46051645
2487	Devan Boykin	CB 	NC State	0.86070	 Lucy Ragsdale (Jamestown, NC)    	NC	https://247sports.com/player/devan-boykin-46056004
2488	Ethan Lane	OC 	NC State	0.86010	 Archer (Lawrenceville, GA)  	GA	https://247sports.com/player/ethan-lane-46082094
2489	Anthony Smith	WR 	NC State	0.85740	 Huntingtown (Huntingtown, MD)    	MD	https://247sports.com/player/anthony-smith-46084529
2490	Sean Hill	OG 	NC State	0.85380	 Brookwood (Snellville, GA)    	GA	https://247sports.com/player/sean-hill-46081338
2491	Joshua Pierre-Louis	CB 	NC State	0.85270	 The Benjamin School (North Palm Beach, FL)    	FL	https://247sports.com/player/joshua-pierre-louis-46081855
2492	Chris Scott	WR 	NC State	0.85060	 Dacula (Dacula, GA)  	GA	https://247sports.com/player/chris-scott-46096716
2493	Jalen Coit	WR 	NC State	0.84310	 Cheraw (Cheraw, SC)    	SC	https://247sports.com/player/jalen-coit-46056398
2494	Ezemdi Udoh	TE 	NC State	0.84170	 Terry Sanford (Fayetteville, NC)    	NC	https://247sports.com/player/ezemdi-udoh-46057248
2495	Joshua Crabtree	WR 	NC State	0.83890	 Heritage (Wake Forest, NC)  	NC	https://247sports.com/player/joshua-crabtree-46057194
2496	Patrick Matan	OT 	NC State	0.83890	 Gonzaga  (Washington, DC)    	DC	https://247sports.com/player/patrick-matan-46081640
2497	Ian Williams	K 	NC State	0.78610	 Weddington (Matthews, NC)    	NC	https://247sports.com/player/ian-williams-46086366
2498	Turner Corcoran	OT 	Nebraska	0.98000	 Lawrence Free State (Lawrence, KS)    	KS	https://247sports.com/player/turner-corcoran-46054132
2499	Zavier Betts	WR 	Nebraska	0.95000	 Bellevue West (Bellevue, NE)    	NE	https://247sports.com/player/zavier-betts-46049733
2500	Keyshawn Greene	OLB 	Nebraska	0.93290	 Wakulla (Crawfordville, FL)    	FL	https://247sports.com/player/keyshawn-greene-46050924
2501	Henry Gray	S 	Nebraska	0.91220	 Miami Central (Miami, FL)    	FL	https://247sports.com/player/henry-gray-46051388
2502	Omar Manning	WR 	Nebraska	0.90530	 Kilgore J.C. (Kilgore, TX)    	TX	https://247sports.com/player/omar-manning-82004
2503	Logan Smothers	DUAL 	Nebraska	0.89720	 Muscle Shoals  (Muscle Shoals, AL)    	AL	https://247sports.com/player/logan-smothers-46051967
2504	Sevion Morrison	RB 	Nebraska	0.89390	 Edison (Tulsa, OK)    	OK	https://247sports.com/player/sevion-morrison-46059276
2505	Blaise Gunnerson	SDE 	Nebraska	0.88010	 Kuemper Catholic School System (Carroll, IA)    	IA	https://247sports.com/player/blaise-gunnerson-46056665
2506	Nash Hutmacher	DT 	Nebraska	0.87220	 Chamberlain (Chamberlain, SD)    	SD	https://247sports.com/player/nash-hutmacher-46056120
2507	Eteva Mauga-Clements	OLB 	Nebraska	0.86880	 Diablo Valley College (Pleasant Hill, CA)    	CA	https://247sports.com/player/eteva-mauga-clements-46097169
2508	William Nixon	WR 	Nebraska	0.86470	 Midway (Waco, TX)    	TX	https://247sports.com/player/william-nixon-46055579
2509	Marvin Scott III	RB 	Nebraska	0.86470	 Spruce Creek (Port Orange, FL)    	FL	https://247sports.com/player/marvin-scott-iii-46059013
2510	Alex Conn	OT 	Nebraska	0.86470	 Derby (Derby, KS)    	KS	https://247sports.com/player/alex-conn-46081240
2511	Marquis Black	DT 	Nebraska	0.86140	 Eagles Landing Christian Academy (McDonough, GA)  	GA	https://247sports.com/player/marquis-black-46055957
2512	Ronald Delancy III	CB 	Nebraska	0.84510	 Northwestern (Miami, FL)  	FL	https://247sports.com/player/ronald-delancy-iii-46079963
2513	Tamon Lynum	CB 	Nebraska	0.83750	 Evans (Orlando, FL)    	FL	https://247sports.com/player/tamon-lynum-46082028
2514	Junior Aho	SDE 	Nebraska	0.83580	 New Mexico Military Institute (Roswell, NM)    	NM	https://247sports.com/player/junior-aho-46084569
2515	Desmond Evans	WDE 	North Carolina	0.98300	 Lee County (Sanford, NC)    	NC	https://247sports.com/player/desmond-evans-46035517
2516	Myles Murphy	SDE 	North Carolina	0.94450	 Dudley (Greensboro, NC)    	NC	https://247sports.com/player/myles-murphy-46058211
2517	Kedrick Bingley-Jones	DT 	North Carolina	0.93630	 Providence Day School (Charlotte, NC)    	NC	https://247sports.com/player/kedrick-bingley-jones-46049745
2519	Josh Downs	WR 	North Carolina	0.91850	 North Gwinnett (Suwanee, GA)    	GA	https://247sports.com/player/josh-downs-94354
2520	Cameron Roseman-Sinclair	S 	North Carolina	0.91360	 Myers Park (Charlotte, NC)    	NC	https://247sports.com/player/cameron-roseman-sinclair-46042958
2521	Jacolby Criswell	DUAL 	North Carolina	0.90630	 Morrilton (Morrilton, AR)    	AR	https://247sports.com/player/jacolby-criswell-46049484
2522	Ray Rose	WR 	North Carolina	0.88620	 South Point (Belmont, NC)    	NC	https://247sports.com/player/ray-rose-46046344
2523	John Copenhaver	TE 	North Carolina	0.88300	 Roswell (Roswell, GA)    	GA	https://247sports.com/player/john-copenhaver-46059489
2524	Clyde Pinder Jr.	DT 	North Carolina	0.88290	 Armwood (Seffner, FL)    	FL	https://247sports.com/player/clyde-pinder-jr-46050947
2547	Jordan Butler	DT 	Northwestern	0.87040	 IMG Academy (Bradenton, FL)    	FL	https://247sports.com/player/jordan-butler-46052408
2525	Ethan West	ILB 	North Carolina	0.87840	 Cosby (Midlothian, VA)    	VA	https://247sports.com/player/ethan-west-46043262
2526	Trey Zimmerman	OT 	North Carolina	0.87090	 Roswell (Roswell, GA)    	GA	https://247sports.com/player/trey-zimmerman-46051906
2527	Kendall Karr	TE 	North Carolina	0.86680	 Stuart W. Cramer (Cramerton, NC)    	NC	https://247sports.com/player/kendall-karr-46054131
2528	Cayden Baker	OT 	North Carolina	0.86480	 Fort Myers (Fort Myers, FL)  	FL	https://247sports.com/player/cayden-baker-46081671
2529	Jonathan Adorno	OG 	North Carolina	0.86260	 Rolesville (Rolesville, NC)    	NC	https://247sports.com/player/jonathan-adorno-46082387
2530	Tylee Craft	WR 	North Carolina	0.85950	 Sumter (Sumter, SC)    	SC	https://247sports.com/player/tylee-craft-46083457
2531	D.J. Jones	RB 	North Carolina	0.85940	 Pine Forest (Fayetteville, NC)    	NC	https://247sports.com/player/d-j-jones-46083529
2532	Jefferson Boaz	TE 	North Carolina	0.85720	 East Surry (Pilot Mountain, NC)    	NC	https://247sports.com/player/jefferson-boaz-46084088
2533	AJ Beatty	SDE 	North Carolina	0.85580	 Central Catholic (Pittsburgh, PA)    	PA	https://247sports.com/player/aj-beatty-46076786
2534	Cedric Gray	ATH 	North Carolina	0.85520	 Ardrey Kell (Charlotte, NC)    	NC	https://247sports.com/player/cedric-gray-46056727
2535	Stephen Gosnell	WR 	North Carolina	0.85510	 East Surry (Pilot Mountain, NC)    	NC	https://247sports.com/player/stephen-gosnell-46082813
2536	Elijah Green	RB 	North Carolina	0.85340	 Blessed Trinity Catholic (Roswell, GA)    	GA	https://247sports.com/player/elijah-green-46053786
2537	Malik McGowan	OG 	North Carolina	0.84180	 Charlotte Catholic (Charlotte, NC)  	NC	https://247sports.com/player/malik-mcgowan-46058228
2538	Elijah Burris	RB 	North Carolina	0.83970	 Mountain Island Charter (Mount Holly, NC)    	NC	https://247sports.com/player/elijah-burris-46046325
2539	Kaimon Rucker	SDE 	North Carolina	0.83760	 Hart County (Hartwell, GA)    	GA	https://247sports.com/player/kaimon-rucker-46055014
2540	Jayden Chalmers	CB 	North Carolina	0.83360	 Lee County (Sanford, NC)    	NC	https://247sports.com/player/jayden-chalmers-46083454
2541	Peter Skoronski	OC 	Northwestern	0.94680	 Maine South (Park Ridge, IL)    	IL	https://247sports.com/player/peter-skoronski-46049080
2542	Aidan Atkinson	PRO 	Northwestern	0.90320	 Fairview (Boulder, CO)    	CO	https://247sports.com/player/aidan-atkinson-46050241
2543	Abdur-Rahmaan Yaseen	WR 	Northwestern	0.88910	 Walled Lake Western (Walled Lake, MI)    	MI	https://247sports.com/player/abdur-rahmaan-yaseen-46045585
2544	Josh Priebe	OG 	Northwestern	0.88300	 Edwardsburg (Edwardsburg, MI)    	MI	https://247sports.com/player/josh-priebe-46056908
2545	Cullen Coleman	OLB 	Northwestern	0.87560	 Rye Country Day School (Rye, NY)    	NY	https://247sports.com/player/cullen-coleman-46079317
2546	Cameron Porter	RB 	Northwestern	0.87420	 La Salle (Cincinnati, OH)    	OH	https://247sports.com/player/cameron-porter-46053258
2548	Garnett Hollis	CB 	Northwestern	0.86890	 Battle Ground Academy (Franklin, TN)    	TN	https://247sports.com/player/garnett-hollis-46047299
2549	Gunner Maldonado	S 	Northwestern	0.86810	 Chandler (Chandler, AZ)  	AZ	https://247sports.com/player/gunner-maldonado-46055456
2550	Xander Mueller	OLB 	Northwestern	0.86210	 Wheaton North (Wheaton, IL)    	IL	https://247sports.com/player/xander-mueller-46080633
2551	Terah Edwards	OG 	Northwestern	0.85940	 Groveport Madison (Groveport, OH)    	OH	https://247sports.com/player/terah-edwards-46059470
2552	Sean McLaughlin	SDE 	Northwestern	0.85730	 Lincoln-Way East (Frankfort, IL)  	IL	https://247sports.com/player/sean-mclaughlin-46080634
2553	Ben Wrather	OG 	Northwestern	0.85390	 Olentangy Liberty (Powell, OH)    	OH	https://247sports.com/player/ben-wrather-46080263
2554	Hunter Welcing	TE 	Northwestern	0.84730	 Lake Zurich (Lake Zurich, IL)  	IL	https://247sports.com/player/hunter-welcing-46082206
2555	Marshall Lang	TE 	Northwestern	0.84340	 St. Xavier (Cincinnati, OH)  	OH	https://247sports.com/player/marshall-lang-46081192
2556	Jaheem Joseph	CB 	Northwestern	0.84260	 Monsignor Pace (Opa Locka, FL)  	FL	https://247sports.com/player/jaheem-joseph-46047644
2557	Jaiden Cameron	WDE 	Northwestern	0.83770	 Northmont (Clayton, OH)    	OH	https://247sports.com/player/jaiden-cameron-46081187
2558	Nigel Williams	CB 	Northwestern	0.83760	 Collegiate School (Richmond, VA)    	VA	https://247sports.com/player/nigel-williams-46081778
2559	Chris Tyree	APB 	Notre Dame	0.98420	 Thomas Dale (Chester, VA)                  	VA	https://247sports.com/player/chris-tyree-85374
2560	Jordan Johnson	WR 	Notre Dame	0.98340	 DeSmet (Saint Louis, MO)                  	MO	https://247sports.com/player/jordan-johnson-46050063
2561	Michael Mayer	TE 	Notre Dame	0.97720	 Covington Catholic (Alexandria, KY)                  	KY	https://247sports.com/player/michael-mayer-46050106
2562	Tosh Baker	OT 	Notre Dame	0.96840	 Pinnacle (Phoenix, AZ)                  	AZ	https://247sports.com/player/tosh-baker-46059194
2563	Jordan Botelho	ILB 	Notre Dame	0.94770	 St. Louis (Honolulu, HI)                    	HI	https://247sports.com/player/jordan-botelho-46053425
2564	Michael Carmody	OT 	Notre Dame	0.93870	 Mars Area (Mars, PA)                  	PA	https://247sports.com/player/michael-carmody-46051689
2565	Rylie Mills	SDE 	Notre Dame	0.92990	 Lake Forest (Lake Forest, IL)                    	IL	https://247sports.com/player/rylie-mills-46051962
2566	Drew Pyne	PRO 	Notre Dame	0.92260	 New Canaan (New Canaan, CT)                    	CT	https://247sports.com/player/drew-pyne-88572
2567	Kevin Bauman	TE 	Notre Dame	0.91220	 Red Bank Catholic (Red Bank, NJ)                  	NJ	https://247sports.com/player/kevin-bauman-46047887
2631	Brennan Presley	ATH 	Oklahoma State	0.84240	 Bixby (Bixby, OK)    	OK	https://247sports.com/player/brennan-presley-46047128
2568	Aidan Keanaaina	DT 	Notre Dame	0.88710	 J.K. Mullen (Denver, CO)                  	CO	https://247sports.com/player/aidan-keanaaina-46053150
2569	Xavier Watts	WR 	Notre Dame	0.88100	 Burke (Omaha, NE)                    	NE	https://247sports.com/player/xavier-watts-46052273
2570	Caleb Offord	CB 	Notre Dame	0.87760	 Southaven (Southaven, MS)                    	MS	https://247sports.com/player/caleb-offord-46079053
2571	Landen Bartleson	ATH 	Notre Dame	0.87340	 Boyle County (Danville, KY)                	KY	https://247sports.com/player/landen-bartleson-46049990
2572	Clarence Lewis	CB 	Notre Dame	0.86470	 Mater Dei (Middletown, NJ)                  	NJ	https://247sports.com/player/clarence-lewis-46056956
2574	Alexander Ehrensberger	SDE 	Notre Dame	0.84120	 Germany (Germany, GERM)                    	GE	https://247sports.com/player/alexander-ehrensberger-46076819
2576	Julian Fleming	WR 	Ohio State	0.99900	 Southern Columbia (Catawissa, PA)                    	PA	https://247sports.com/player/julian-fleming-46040058
2577	Paris Johnson Jr.	OT 	Ohio State	0.99690	 Princeton (Cincinnati, OH)                    	OH	https://247sports.com/player/paris-johnson-jr-46042173
2578	Jaxon Smith-Njigba	WR 	Ohio State	0.98270	 Rockwall (Rockwall, TX)                    	TX	https://247sports.com/player/jaxon-smith-njigba-46047353
2579	Clark Phillips III	CB 	Ohio State	0.97720	 La Habra (La Habra, CA)                    	CA	https://247sports.com/player/clark-phillips-iii-46038933
2580	Gee Scott Jr.	WR 	Ohio State	0.97000	 Eastside Catholic (Sammamish, WA)                    	WA	https://247sports.com/player/gee-scott-jr-46039474
2581	Lathan Ransom	S 	Ohio State	0.96380	 Salpointe Catholic (Tucson, AZ)    	AZ	https://247sports.com/player/lathan-ransom-46053133
2582	Mookie Cooper	WR 	Ohio State	0.96280	 Pattonville (Maryland Heights, MO)                    	MO	https://247sports.com/player/mookie-cooper-46039953
2583	Luke Wypler	OC 	Ohio State	0.95680	 St Joseph Regional (Montvale, NJ)                    	NJ	https://247sports.com/player/luke-wypler-46052032
2584	Cody Simon	OLB 	Ohio State	0.94390	 St. Peters Prep (Jersey City, NJ)                  	NJ	https://247sports.com/player/cody-simon-46054099
2585	Kourt Williams	OLB 	Ohio State	0.93310	 St. John Bosco (Bellflower, CA)                    	CA	https://247sports.com/player/kourt-williams-46049569
2586	Jacolbe Cowan	DT 	Ohio State	0.93060	 Providence Day School (Charlotte, NC)                    	NC	https://247sports.com/player/jacolbe-cowan-46036315
2587	Darrion Henry	DT 	Ohio State	0.92940	 Princeton (Cincinnati, OH)                    	OH	https://247sports.com/player/darrion-henry-46049747
2588	Ryan Watts	CB 	Ohio State	0.90910	 Little Elm (Little Elm, TX)                    	TX	https://247sports.com/player/ryan-watts-46079300
2589	Lejond Cavazos	S 	Ohio State	0.90880	 IMG Academy (Bradenton, FL)                    	FL	https://247sports.com/player/lejond-cavazos-86707
2590	Jack Miller	PRO 	Ohio State	0.90210	 Chaparral (Scottsdale, AZ)                    	AZ	https://247sports.com/player/jack-miller-46037839
2591	Cameron Martinez	ATH 	Ohio State	0.89580	 Muskegon (Muskegon, MI)                  	MI	https://247sports.com/player/cameron-martinez-46036225
2592	Joe Royer	TE 	Ohio State	0.88610	 Elder (Cincinnati, OH)                  	OH	https://247sports.com/player/joe-royer-46058995
2593	Josh Fryar	OG 	Ohio State	0.88430	 Beech Grove (Beech Grove, IN)                  	IN	https://247sports.com/player/josh-fryar-46049949
2594	Grant Toutant	OT 	Ohio State	0.88060	 De La Salle Collegiate (Warren, MI)                  	MI	https://247sports.com/player/grant-toutant-46056839
2595	Mitchell Melton	OLB 	Ohio State	0.87420	 Good Counsel (Olney, MD)    	MD	https://247sports.com/player/mitchell-melton-46055245
2596	Miyan Williams	RB 	Ohio State	0.86930	 Winton Woods (Cincinnati, OH)                  	OH	https://247sports.com/player/miyan-williams-46042588
2597	Ty Hamilton	SDE 	Ohio State	0.86350	 Pickerington Central (Pickerington, OH)                  	OH	https://247sports.com/player/ty-hamilton-46080110
2598	Jakob James	OG 	Ohio State	0.85940	 Elder (Cincinnati, OH)                  	OH	https://247sports.com/player/jakob-james-46048738
2599	Trey Leroux	OT 	Ohio State	0.84930	 Norwalk (Norwalk, OH)                    	OH	https://247sports.com/player/trey-leroux-46048535
2600	Jake Seibert	K 	Ohio State	0.84050	 La Salle (Cincinnati, OH)                	OH	https://247sports.com/player/jake-seibert-46081749
2601	Jase McClellan	RB 	Oklahoma	0.97870	 Aledo (Aledo, TX)                    	TX	https://247sports.com/player/jase-mcclellan-46036686
2602	Nate Anderson	OG 	Oklahoma	0.97510	 Reedy (Frisco, TX)    	TX	https://247sports.com/player/nate-anderson-46057968
2603	Andrew Raym	OG 	Oklahoma	0.96020	 Broken Arrow (Broken Arrow, OK)    	OK	https://247sports.com/player/andrew-raym-46042593
2604	Reggie Grimes	WDE 	Oklahoma	0.95930	 Ravenwood (Brentwood, TN)    	TN	https://247sports.com/player/reggie-grimes-46043136
2605	Seth McGowan	RB 	Oklahoma	0.94000	 Poteet (Mesquite, TX)    	TX	https://247sports.com/player/seth-mcgowan-46042960
2606	Jalin Conyers	TE 	Oklahoma	0.92330	 Gruver (Gruver, TX)    	TX	https://247sports.com/player/jalin-conyers-46081785
2607	Aaryn Parks	OG 	Oklahoma	0.92050	 National Christian Academy (Fort Washington, MD)    	MD	https://247sports.com/player/aaryn-parks-46050455
2608	Bryson Washington	S 	Oklahoma	0.91860	 C.E. King (Houston, TX)    	TX	https://247sports.com/player/bryson-washington-46049451
2609	Perrion Winfrey	DT 	Oklahoma	0.91620	 Iowa Western C.C. (Council Bluffs, IA)    	IA	https://247sports.com/player/perrion-winfrey-46039840
2610	Anton Harrison	OT 	Oklahoma	0.91120	 Archbishop Carroll (Washington, DC)    	DC	https://247sports.com/player/anton-harrison-46036474
2611	Michael Henderson	ATH 	Oklahoma	0.90860	 Ranchview (Carrollton, TX)    	TX	https://247sports.com/player/michael-henderson-46037341
2612	Marvin Mims	WR 	Oklahoma	0.90700	 Lone Star (Frisco, TX)    	TX	https://247sports.com/player/marvin-mims-46049311
2613	DJ Graham	ATH 	Oklahoma	0.88170	 Keller Central (Keller, TX)    	TX	https://247sports.com/player/dj-graham-46037403
2614	Shane Whitter	ILB 	Oklahoma	0.87890	 Walter M Williams (Burlington, NC)    	NC	https://247sports.com/player/shane-whitter-46055031
2615	Noah Nelson	OT 	Oklahoma	0.87830	 Williams Field (Gilbert, AZ)    	AZ	https://247sports.com/player/noah-nelson-46047383
2616	Noah Arinze	WDE 	Oklahoma	0.87420	 Webster Groves (Saint Louis, MO)    	MO	https://247sports.com/player/noah-arinze-46078883
2617	Brynden Walker	OLB 	Oklahoma	0.86890	 Bishop McGuinness (Oklahoma City, OK)    	OK	https://247sports.com/player/brynden-walker-46047137
2618	Trevon West	WR 	Oklahoma	0.86680	 Lamar (Arlington, TX)    	TX	https://247sports.com/player/trevon-west-46049156
2619	Brian Darby	WR 	Oklahoma	0.85510	 A&M Consolidated (College Station, TX)    	TX	https://247sports.com/player/brian-darby-46037855
2620	Shane Illingworth	PRO 	Oklahoma State	0.93220	 Norco (Norco, CA)    	CA	https://247sports.com/player/shane-illingworth-46047021
2621	Trent Pullen	OG 	Oklahoma State	0.88170	 Connally (Waco, TX)    	TX	https://247sports.com/player/trent-pullen-46041328
2622	Eli Russ	OG 	Oklahoma State	0.87960	 Plainview (Ardmore, OK)    	OK	https://247sports.com/player/eli-russ-46051668
2623	Korie Black	CB 	Oklahoma State	0.87760	 Connally (Waco, TX)    	TX	https://247sports.com/player/korie-black-46041331
2624	Matt Polk	WR 	Oklahoma State	0.87350	 Saguaro (Scottsdale, AZ)    	AZ	https://247sports.com/player/matt-polk-46055203
2625	Quinton Stewart	TE 	Oklahoma State	0.86880	 Salina Central (Salina, KS)  	KS	https://247sports.com/player/quinton-stewart-46083717
2626	Cade Bennett	OG 	Oklahoma State	0.86130	 Notre Dame Preparatory (Scottsdale, AZ)    	AZ	https://247sports.com/player/cade-bennett-46055240
2627	Jeff Roberson	ILB 	Oklahoma State	0.85850	 Choctaw (Choctaw, OK)    	OK	https://247sports.com/player/jeff-roberson-46084874
2628	Jordan Reagan	CB 	Oklahoma State	0.85390	 Bixby (Bixby, OK)    	OK	https://247sports.com/player/jordan-reagan-46085534
2629	Jabbar Muhammad	CB 	Oklahoma State	0.85190	 DeSoto (DeSoto, TX)    	TX	https://247sports.com/player/jabbar-muhammad-46041814
2630	Cole Thompson	ILB 	Oklahoma State	0.84850	 Norman (Norman, OK)    	OK	https://247sports.com/player/cole-thompson-46081792
2633	Zach Middleton	S 	Oklahoma State	0.83900	 Bishop Kelley (Tulsa, OK)    	OK	https://247sports.com/player/zach-middleton-46080060
2634	Monroe Mills	OT 	Oklahoma State	0.83770	 Father Tolton (Columbia, MO)    	MO	https://247sports.com/player/monroe-mills-46057059
2635	Tyren Irby	WDE 	Oklahoma State	0.83160	 Northwest Mississippi C.C. (Senatobia, MS)  	MS	https://247sports.com/player/tyren-irby-46093559
2636	Nicolas Session	S 	Oklahoma State	0.82820	 East (Salt Lake City, UT)                  	UT	https://247sports.com/player/nicolas-session-46054063
2637	Jakivuan Brown	OLB 	Ole Miss	0.88930	 Horn Lake (Horn Lake, MS)                    	MS	https://247sports.com/player/jakivuan-brown-46053490
2639	Kris Abrams-Draine	WR 	Ole Miss	0.88510	 Spanish Fort (Spanish Fort, AL)                  	AL	https://247sports.com/player/kris-abrams-draine-46046921
2640	Eli Acker	OT 	Ole Miss	0.88510	 Heritage Academy (Columbus, MS)    	MS	https://247sports.com/player/eli-acker-46045402
2642	Robert Scott	OT 	Ole Miss	0.87760	 Conway (Conway, AR)    	AR	https://247sports.com/player/robert-scott-46082360
2643	Daran Branch	CB 	Ole Miss	0.86680	 Amite (Amite, LA)    	LA	https://247sports.com/player/daran-branch-46054701
2644	Austin Keys	ILB 	Ole Miss	0.86580	 Seminary (Seminary, MS)    	MS	https://247sports.com/player/austin-keys-46080850
2645	DeSanto Rollins	DT 	Ole Miss	0.85930	 Parkview Baptist School (Baton Rouge, LA)    	LA	https://247sports.com/player/desanto-rollins-46053453
2646	DaMarcus Thomas	TE 	Ole Miss	0.85440	 Saraland (Saraland, AL)    	AL	https://247sports.com/player/damarcus-thomas-46082648
2647	Cedric Johnson	WDE 	Ole Miss	0.85380	 WP Davidson (Mobile, AL)    	AL	https://247sports.com/player/cedric-johnson-46085554
2648	Luke Shouse	OT 	Ole Miss	0.85300	 Ravenwood (Brentwood, TN)    	TN	https://247sports.com/player/luke-shouse-46056814
2650	Daylen Gill	S 	Ole Miss	0.84950	 Jones County J.C. (Ellisville, MS)                 	MS	https://247sports.com/player/daylen-gill-90718
2651	Jaycob Horn	WR 	Ole Miss	0.83010	 Tupelo (Tupelo, MS)    	MS	https://247sports.com/player/jaycob-horn-46085257
2652	Noah Sewell	ILB 	Oregon	0.99030	 Orem (Orem, UT)                    	UT	https://247sports.com/player/noah-sewell-46040411
2653	Johnny Wilson	WR 	Oregon	0.95950	 Calabasas (Calabasas, CA)    	CA	https://247sports.com/player/johnny-wilson-46036733
2654	Jay Butterfield	PRO 	Oregon	0.94940	 Liberty (Brentwood, CA)                  	CA	https://247sports.com/player/jay-butterfield-46047108
2655	Luke Hill	CB 	Oregon	0.93840	 St. Frances Academy (Baltimore, MD)                  	MD	https://247sports.com/player/luke-hill-46046313
2656	Myles Slusher	S 	Oregon	0.93390	 Broken Arrow (Broken Arrow, OK)                    	OK	https://247sports.com/player/myles-slusher-46048503
2657	Kris Hutson	WR 	Oregon	0.91400	 St. John Bosco (Bellflower, CA)    	CA	https://247sports.com/player/kris-hutson-46047149
2658	Jaden Navarrette	ATH 	Oregon	0.90450	 Norco (Norco, CA)                  	CA	https://247sports.com/player/jaden-navarrette-46040464
2659	Jonathan Denis	OG 	Oregon	0.89010	 South Dade (Homestead, FL)                    	FL	https://247sports.com/player/jonathan-denis-46046872
2660	T.J. Bass	OG 	Oregon	0.88170	 Butte College (Oroville, CA)                    	CA	https://247sports.com/player/t-j-bass-46081145
2661	Jackson LaDuke	OLB 	Oregon	0.88080	 Spanish Springs (Sparks, NV)    	NV	https://247sports.com/player/jackson-laduke-46052106
2662	Trey Benson	RB 	Oregon	0.87760	 St Joseph (Greenville, MS)                  	MS	https://247sports.com/player/trey-benson-46057374
2663	Jaylan Jeffers	OT 	Oregon	0.87560	 Saguaro (Scottsdale, AZ)                  	AZ	https://247sports.com/player/jaylan-jeffers-46054398
2664	Jared Greenfield	S 	Oregon	0.87480	 Narbonne (Harbor City, CA)                  	CA	https://247sports.com/player/jared-greenfield-46042490
2665	Bradyn Swinson	SDE 	Oregon	0.87130	 Chapel Hill (Douglasville, GA)                    	GA	https://247sports.com/player/bradyn-swinson-46059344
2666	Marcus Harper	OG 	Oregon	0.86260	 Homewood-Flossmoor (Flossmoor, IL)                  	IL	https://247sports.com/player/marcus-harper-46054878
2667	Bennett Williams	S 	Oregon	0.85960	 College of San Mateo (San Mateo, CA)    	CA	https://247sports.com/player/bennett-williams-93119
2668	Jaylen Smith	DT 	Oregon	0.85800	 Hertford County (Ahoskie, NC)    	NC	https://247sports.com/player/jaylen-smith-46080603
2669	Maceal Afaese	DT 	Oregon	0.85730	 Kapolei (Kapolei, HI)                  	HI	https://247sports.com/player/maceal-afaese-46058422
2670	Jake Shipley	SDE 	Oregon	0.85600	 Shadow Hills  (Indio, CA)    	CA	https://247sports.com/player/jake-shipley-46077096
2671	Seth Figgins	TE 	Oregon	0.85130	 Sheldon (Eugene, OR)    	OR	https://247sports.com/player/seth-figgins-46047207
2672	Peter Latu	OLB 	Oregon	0.85120	 Bethel (Spanaway, WA)    	WA	https://247sports.com/player/peter-latu-46049975
2673	Faaope Laloulu	OT 	Oregon	0.85110	 Farrington (Honolulu, HI)  	HI	https://247sports.com/player/faaope-laloulu-46049088
2674	Chance Nolan	PRO 	Oregon State	0.87420	 Saddleback College (Mission Viejo, CA)                    	CA	https://247sports.com/player/chance-nolan-46040283
2675	Alex Lemon	SDE 	Oregon State	0.87230	 San Diego Mesa College (San Diego, CA)                	CA	https://247sports.com/player/alex-lemon-46082901
2676	Isaiah Newell	ATH 	Oregon State	0.87230	 Las Lomas (Walnut Creek, CA)                  	CA	https://247sports.com/player/isaiah-newell-46055074
2677	Ben Gulbranson	PRO 	Oregon State	0.86350	 Newbury Park (Newbury Park, CA)                    	CA	https://247sports.com/player/ben-gulbranson-46056211
2678	Zeriah Beason	WR 	Oregon State	0.86140	 Duncanville (Duncanville, TX)                    	TX	https://247sports.com/player/zeriah-beason-46037409
2679	John Miller	ILB 	Oregon State	0.86060	 Tualatin (Tualatin, OR)                  	OR	https://247sports.com/player/john-miller-46053802
2680	Alton Julian	CB 	Oregon State	0.86010	 College of San Mateo (San Mateo, CA)                    	CA	https://247sports.com/player/alton-julian-46042408
2681	Tavis Shippen	SDE 	Oregon State	0.85750	 Mt. San Jacinto College (San Jacinto, CA)                    	CA	https://247sports.com/player/tavis-shippen-46083541
2682	Junior Walling	ILB 	Oregon State	0.85730	 McNary (Keizer, OR)                  	OR	https://247sports.com/player/junior-walling-46050892
2683	Sione Lolohea	SDE 	Oregon State	0.85440	 Aquinas (San Bernardino, CA)                  	CA	https://247sports.com/player/sione-lolohea-93292
2684	Jake Overman	TE 	Oregon State	0.84770	 Servite (Anaheim, CA)                  	CA	https://247sports.com/player/jake-overman-46059478
2685	Silas Bolden	WR 	Oregon State	0.84480	 Rancho Cucamonga (Rancho Cucamonga, CA)                  	CA	https://247sports.com/player/silas-bolden-46081702
2686	Johnathan Riley	S 	Oregon State	0.84310	 Kilgore J.C. (Kilgore, TX)                    	TX	https://247sports.com/player/johnathan-riley-46042021
2687	Cooper Darling	OG 	Oregon State	0.83760	 Williams Field (Gilbert, AZ)                  	AZ	https://247sports.com/player/cooper-darling-46084385
2688	Trevor Pope	ATH 	Oregon State	0.83680	 Tracy (Tracy, CA)                  	CA	https://247sports.com/player/trevor-pope-46079358
2689	Taliese Fuaga	OT 	Oregon State	0.83430	 Mount Tahoma (Tacoma, WA)                  	WA	https://247sports.com/player/taliese-fuaga-46085245
2690	Shane Kady	WDE 	Oregon State	0.83020	 Mililani (Mililani, HI)                    	HI	https://247sports.com/player/shane-kady-46083948
2691	Tommy Spencer	TE 	Oregon State	0.82340	 Roseville (Roseville, CA)                  	CA	https://247sports.com/player/tommy-spencer-46085146
2692	Ron Hardge III	CB 	Oregon State	0.82040	 City College of San Francisco (San Francisco, CA)                    	CA	https://247sports.com/player/ron-hardge-iii-46039198
2693	Curtis Jacobs	OLB 	Penn State	0.97810	 McDonogh School (Owings Mills, MD)                  	MD	https://247sports.com/player/curtis-jacobs-46047374
2694	Theo Johnson	TE 	Penn State	0.96180	 Holy Names High School (Windsor, ON)                    	ON	https://247sports.com/player/theo-johnson-46056623
2695	Enzo Jennings	S 	Penn State	0.93180	 Oak Park (Oak Park, MI)                    	MI	https://247sports.com/player/enzo-jennings-91737
2696	KeAndre Lambert	WR 	Penn State	0.92680	 Maury (Norfolk, VA)                    	VA	https://247sports.com/player/keandre-lambert-46052214
2697	Caziah Holmes	APB 	Penn State	0.92190	 Cocoa (Cocoa, FL)                    	FL	https://247sports.com/player/caziah-holmes-46042112
2698	Cole Brevard	DT 	Penn State	0.92040	 Carmel (Carmel, IN)                    	IN	https://247sports.com/player/cole-brevard-46049014
2699	Coziah Izzard	DT 	Penn State	0.91270	 DeMatha Catholic (Hyattsville, MD)                  	MD	https://247sports.com/player/coziah-izzard-46036689
2700	Keyvone Lee	RB 	Penn State	0.90600	 American Collegiate Academy (Clearwater, FL)                  	FL	https://247sports.com/player/keyvone-lee-46037843
2701	Parker Washington	WR 	Penn State	0.90300	 Fort Bend Travis (Richmond, TX)                  	TX	https://247sports.com/player/parker-washington-46042319
2702	Jaden Dottin	WR 	Penn State	0.89980	 Suffield Academy (Suffield, CT)                    	CT	https://247sports.com/player/jaden-dottin-46042630
2703	Zuriah Fisher	WDE 	Penn State	0.89380	 Aliquippa (Aliquippa, PA)                  	PA	https://247sports.com/player/zuriah-fisher-46059329
2704	Jimmy Christ	OT 	Penn State	0.88950	 Dominion (Sterling, VA)                  	VA	https://247sports.com/player/jimmy-christ-46049851
2705	Joseph Johnson	CB 	Penn State	0.88840	 Life Christian Academy (Colonial Heights, VA)                    	VA	https://247sports.com/player/joseph-johnson-46081257
2706	Olu Fashanu	OT 	Penn State	0.88710	 Gonzaga  (Washington, DC)                  	DC	https://247sports.com/player/olu-fashanu-46058962
2707	Golden Israel-Achumba	OG 	Penn State	0.88490	 DeMatha Catholic (Hyattsville, MD)                  	MD	https://247sports.com/player/golden-israel-achumba-46054301
2708	Micah Bowens	DUAL 	Penn State	0.88490	 Bishop Gorman (Las Vegas, NV)                  	NV	https://247sports.com/player/micah-bowens-94083
2710	Amin Vanover	SDE 	Penn State	0.88290	 St Joseph Regional (Montvale, NJ)                  	NJ	https://247sports.com/player/amin-vanover-46058562
2711	Tyler Elsdon	ILB 	Penn State	0.87480	 North Schuylkill (Ashland, PA)                    	PA	https://247sports.com/player/tyler-elsdon-46079301
2712	Brandon Taylor	SDE 	Penn State	0.87210	 Lima Senior (Lima, OH)                  	OH	https://247sports.com/player/brandon-taylor-46080475
2713	Bryce Mostella	WDE 	Penn State	0.87150	 East Kentwood (Grand Rapids, MI)                    	MI	https://247sports.com/player/bryce-mostella-46051468
2714	Malick Meiga	WR 	Penn State	0.87020	 Cegep du Vieux  (Montreal, QC)                  	QC	https://247sports.com/player/malick-meiga-46083106
2715	Norval Black	WR 	Penn State	0.86900	 Lackawanna C.C. (Scranton, PA)                  	PA	https://247sports.com/player/norval-black-46084801
2716	Tyler Warren	ATH 	Penn State	0.86760	 Atlee (Mechanicsville, VA)                  	VA	https://247sports.com/player/tyler-warren-46049790
2717	Fatorma Mulbah	DT 	Penn State	0.86140	 Susquehanna Twp (Harrisburg, PA)                    	PA	https://247sports.com/player/fatorma-mulbah-46083390
2718	Ibrahim Traore	OT 	Penn State	0.85930	 Frederick Douglas Academy Ii (New York, NY)                  	NY	https://247sports.com/player/ibrahim-traore-46081211
2719	Nick Dawkins	OG 	Penn State	0.85860	 Parkland (Allentown, PA)                    	PA	https://247sports.com/player/nick-dawkins-46057948
2720	Jordan Addison	WR 	Pittsburgh	0.90440	 Tuscarora (Frederick, MD)    	MD	https://247sports.com/player/jordan-addison-46057163
2721	Dayon Hayes	SDE 	Pittsburgh	0.89340	 Westinghouse (Pittsburgh, PA)    	PA	https://247sports.com/player/dayon-hayes-46082054
2722	Israel Abanikanda	RB 	Pittsburgh	0.88420	 Abraham Lincoln (Brooklyn, NY)    	NY	https://247sports.com/player/israel-abanikanda-46041602
2723	Jaylon Barden	WR 	Pittsburgh	0.87800	 Westside (Macon, GA)    	GA	https://247sports.com/player/jaylon-barden-46054280
2724	Branson Taylor	OT 	Pittsburgh	0.87690	 Elyria Catholic (Elyria, OH)    	OH	https://247sports.com/player/branson-taylor-46079939
2725	Jahvante Royal	S 	Pittsburgh	0.87570	 St. Thomas Aquinas (Fort Lauderdale, FL)    	FL	https://247sports.com/player/jahvante-royal-46051550
2726	Bangally Kamara	OLB 	Pittsburgh	0.87270	 East (Akron, OH)    	OH	https://247sports.com/player/bangally-kamara-46056135
2727	Timothy Brown	DT 	Pittsburgh	0.86880	 Palm Beach Gardens (Palm Beach Gardens, FL)    	FL	https://247sports.com/player/timothy-brown-46080264
2728	Aydin Henningham	WR 	Pittsburgh	0.86620	 Deerfield Beach (Deerfield Beach, FL)    	FL	https://247sports.com/player/aydin-henningham-46037227
2729	Michael Statham	OT 	Pittsburgh	0.86350	 St. Frances Academy (Baltimore, MD)    	MD	https://247sports.com/player/michael-statham-46057170
2730	Solomon DeShields	OLB 	Pittsburgh	0.86060	 Millville (Millville, NJ)    	NJ	https://247sports.com/player/solomon-deshields-46051020
2731	AJ Roberts	OLB 	Pittsburgh	0.84850	 Tottenville (Staten Island, NY)    	NY	https://247sports.com/player/aj-roberts-46077063
2732	Hunter Sellers	CB 	Pittsburgh	0.84500	 Woodward Academy (Atlanta, GA)    	GA	https://247sports.com/player/hunter-sellers-46050450
2733	Emmanuel Belgrave	WDE 	Pittsburgh	0.84500	 Miami Southridge (Miami, FL)                  	FL	https://247sports.com/player/emmanuel-belgrave-46055221
2734	Samuel Williams	WDE 	Pittsburgh	0.84440	 Calvary Christian Academy (Fort Lauderdale, FL)    	FL	https://247sports.com/player/samuel-williams-46083310
2735	Cameron Guess	P 	Pittsburgh	0.78970	 Belle Vernon (Belle Vernon, PA)  	PA	https://247sports.com/player/cameron-guess-46081426
2736	Maliq Carr	TE 	Purdue	0.91970	 Oak Park (Oak Park, MI)    	MI	https://247sports.com/player/maliq-carr-46042966
2737	Michael Alaimo	PRO 	Purdue	0.90760	 St. Joseph Regional  (Montvale, NJ)    	NJ	https://247sports.com/player/michael-alaimo-46039728
2738	Tirek Murphy	RB 	Purdue	0.90540	 Christ The King Regional (Middle Village, NY)    	NY	https://247sports.com/player/tirek-murphy-46041773
2739	Collin Sullivan	WR 	Purdue	0.88090	 Round Rock (Round Rock, TX)    	TX	https://247sports.com/player/collin-sullivan-46037998
2740	Gus Hartwig	OC 	Purdue	0.87960	 Zionsville (Zionsville, IN)    	IN	https://247sports.com/player/gus-hartwig-46041714
2742	Bryce Austin	DT 	Purdue	0.86890	 Southfield (Southfield, MI)  	MI	https://247sports.com/player/bryce-austin-46055483
2743	Antonio Stevens	S 	Purdue	0.86820	 Battle Ground Academy (Franklin, TN)    	TN	https://247sports.com/player/antonio-stevens-46058739
2744	Ben Kreul	ILB 	Purdue	0.85930	 Catholic Memorial (Waukesha, WI)    	WI	https://247sports.com/player/ben-kreul-46055301
2767	Alaka''i Gilman	S 	Stanford	0.86610	Punahou (Honolulu, HI)	HI	https://247sports.com/player/alakai-gilman-46046603
2745	Marcellus Moore	APB 	Purdue	0.85510	 Plainfield North (Plainfield, IL)    	IL	https://247sports.com/player/marcellus-moore-46076682
2746	Jared Bycznski	OG 	Purdue	0.85390	 Midpark (Cleveland, OH)    	OH	https://247sports.com/player/jared-bycznski-46052072
2747	Josh Kaltenberger	OC 	Purdue	0.84980	 Seneca Valley (Harmony, PA)    	PA	https://247sports.com/player/josh-kaltenberger-46080403
2748	Sanoussi Kane	S 	Purdue	0.84980	 Blair Academy (Blairstown, NJ)    	NJ	https://247sports.com/player/sanoussi-kane-46041226
2749	Kydran Jenkins	ILB 	Purdue	0.84100	 Jefferson County (Louisville, GA)    	GA	https://247sports.com/player/kydran-jenkins-46058730
2750	Ryan Brandt	OLB 	Purdue	0.83220	 Angola (Angola, IN)    	IN	https://247sports.com/player/ryan-brandt-46051720
2751	Nalin Fox	OT 	Purdue	0.82460	 Notre Dame Preparatory School & Marist Academy (Pontiac, MI)    	MI	https://247sports.com/player/nalin-fox-46085614
2752	Clyde Washington	ILB 	Purdue	0.82420	 Lenape (Medford, NJ)    	NJ	https://247sports.com/player/clyde-washington-46082275
2753	Jaylen Stinson	ATH 	Purdue	0.85190	 Opelika (Opelika, AL)    	AL	https://247sports.com/player/jaylen-stinson-46055993
2754	Myles Hinton	OT 	Stanford	0.96750	 Greater Atlanta Christian School (Norcross, GA)    	GA	https://247sports.com/player/myles-hinton-46035273
2755	John Humphreys	WR 	Stanford	0.94700	 Corona Del Mar (Newport Beach, CA)    	CA	https://247sports.com/player/john-humphreys-46049082
2756	Ayden Hector	CB 	Stanford	0.90660	 Eastside Catholic (Sammamish, WA)    	WA	https://247sports.com/player/ayden-hector-46042835
2757	Connor McLaughlin	OT 	Stanford	0.90120	 Jesuit (Tampa, FL)    	FL	https://247sports.com/player/connor-mclaughlin-46079048
2758	Levi Rogers	OG 	Stanford	0.89050	 Woodinville (Woodinville, WA)    	WA	https://247sports.com/player/levi-rogers-46057296
2759	Brandon Jones	CB 	Stanford	0.89040	 Narbonne (Harbor City, CA)    	CA	https://247sports.com/player/brandon-jones-46036794
2760	Drake Metcalf	OC 	Stanford	0.88830	 St. John Bosco (Bellflower, CA)    	CA	https://247sports.com/player/drake-metcalf-46039817
2761	Lukas Ungar	TE 	Stanford	0.88710	 Delbarton School (Morristown, NJ)    	NJ	https://247sports.com/player/lukas-ungar-46052338
2762	Tobin Phillips	DT 	Stanford	0.88630	 San Joaquin Memorial (Fresno, CA)    	CA	https://247sports.com/player/tobin-phillips-46055067
2763	Bryce Farrell	WR 	Stanford	0.88470	 Oaks Christian (Westlake Village, CA)    	CA	https://247sports.com/player/bryce-farrell-46039103
2764	Ben Yurosek	TE 	Stanford	0.88220	 Bakersfield Christian (Bakersfield, CA)    	CA	https://247sports.com/player/ben-yurosek-46054100
2765	Omari Porter	CB 	Stanford	0.87630	 Auburn (Auburn, AL)    	AL	https://247sports.com/player/omari-porter-46054169
2766	Casey Filkins	APB 	Stanford	0.86930	 Lake Oswego (Lake Oswego, OR)    	OR	https://247sports.com/player/casey-filkins-46053087
2768	Lance Keneley	SDE 	Stanford	0.85850	 Mission Viejo (Mission Viejo, CA)    	CA	https://247sports.com/player/lance-keneley-46056918
2769	Silas Starr	WR 	Stanford	0.85390	 Central Catholic (Portland, OR)    	OR	https://247sports.com/player/silas-starr-46039729
2770	Joshua Karty	K 	Stanford	0.84260	 Western Alamance (Elon, NC)    	NC	https://247sports.com/player/joshua-karty-46057879
2771	Logan Berzins	DT 	Stanford	0.83860	 Cathedral Catholic (San Diego, CA)    	CA	https://247sports.com/player/logan-berzins-46084261
2772	Bailey Parsons	LS 	Stanford	0.75970	 Gardendale Sch (Gardendale, AL)  	AL	https://247sports.com/player/bailey-parsons-46056628
2773	Garrett Hayes	OT 	TCU	0.96560	 Athens (Athens, TX)    	TX	https://247sports.com/player/garrett-hayes-46051207
2774	Patrick Jenkins	DT 	TCU	0.90950	 John Ehret (Marrero, LA)    	LA	https://247sports.com/player/patrick-jenkins-46057350
2775	Keontae Jenkins	CB 	TCU	0.90620	 Frank W. Cox (Virginia Beach, VA)    	VA	https://247sports.com/player/keontae-jenkins-94747
2776	Danny Gray	WR 	TCU	0.88930	 Blinn College (Brenham, TX)    	TX	https://247sports.com/player/danny-gray-46039844
2777	Michael Nichols	OT 	TCU	0.88440	 Northwest (Justin, TX)    	TX	https://247sports.com/player/michael-nichols-46084872
2778	Altrique Barlow	OG 	TCU	0.86960	 Catholic (Virginia Beach, VA)    	VA	https://247sports.com/player/altrique-barlow-91484
2779	Dominic Richardson	RB 	TCU	0.86670	 Bishop McGuinness (Oklahoma City, OK)    	OK	https://247sports.com/player/dominic-richardson-46052171
2780	Brandon Coleman	OT 	TCU	0.86550	 Trinity Valley C.C. (Athens, TX)  	TX	https://247sports.com/player/brandon-coleman-46040674
2781	Tyler Bailey	OC 	TCU	0.86540	 Robert Vela (Edinburg, TX)    	TX	https://247sports.com/player/tyler-bailey-46080265
2782	Jimmy Holiday	ATH 	TCU	0.86210	 Madison Central (Madison, MS)    	MS	https://247sports.com/player/jimmy-holiday-46051110
2783	Eli Williams	DUAL 	TCU	0.86140	 Sapulpa (Sapulpa, OK)    	OK	https://247sports.com/player/eli-williams-46057766
2784	Caleb Medford	WR 	TCU	0.85940	 Henderson (Henderson, TX)    	TX	https://247sports.com/player/caleb-medford-46080193
2785	Blake Nowell	WR 	TCU	0.85190	 Plainview (Ardmore, OK)    	OK	https://247sports.com/player/blake-nowell-46080269
2786	Keshawn Lawrence	S 	Tennessee	0.96850	 Ensworth (Nashville, TN)                  	TN	https://247sports.com/player/keshawn-lawrence-46036849
2787	Omari Thomas	DT 	Tennessee	0.95140	 Briarcrest Christian (Memphis, TN)                  	TN	https://247sports.com/player/omari-thomas-46048092
2788	Harrison Bailey	PRO 	Tennessee	0.94380	 Marietta (Marietta, GA)                    	GA	https://247sports.com/player/harrison-bailey-83301
2789	Dominic Bailey	DT 	Tennessee	0.91840	 St. Frances Academy (Baltimore, MD)                    	MD	https://247sports.com/player/dominic-bailey-46053621
2790	Jimmy Calloway	ATH 	Tennessee	0.91040	 Morrow (Morrow, GA)    	GA	https://247sports.com/player/jimmy-calloway-46079871
2791	Bryson Eason	ILB 	Tennessee	0.89650	 Whitehaven (Memphis, TN)                  	TN	https://247sports.com/player/bryson-eason-46037377
2792	Cooper Mays	OC 	Tennessee	0.89600	 Knoxville Catholic (Knoxville, TN)                    	TN	https://247sports.com/player/cooper-mays-45573208
2793	Jalin Hyatt	WR 	Tennessee	0.89580	 Dutch Fork (Irmo, SC)                  	SC	https://247sports.com/player/jalin-hyatt-46056575
2794	Martavius French	ILB 	Tennessee	0.89480	 Whitehaven (Memphis, TN)                  	TN	https://247sports.com/player/martavius-french-46052714
2795	Tamarion McDonald	OLB 	Tennessee	0.87200	 Whitehaven (Memphis, TN)                  	TN	https://247sports.com/player/tamarion-mcdonald-46056639
2796	Jabari Small	APB 	Tennessee	0.86880	 Briarcrest Christian (Memphis, TN)    	TN	https://247sports.com/player/jabari-small-46047290
2797	Javontez Spraggins	OC 	Tennessee	0.86800	 East St. Louis (East Saint Louis, IL)                	IL	https://247sports.com/player/javontez-spraggins-46055680
2798	Doneiko Slaughter	S 	Tennessee	0.86740	 Roswell (Roswell, GA)    	GA	https://247sports.com/player/doneiko-slaughter-46059038
2799	James Robinson	OG 	Tennessee	0.86460	 Carver  (Montgomery, AL)    	AL	https://247sports.com/player/james-robinson-46053866
2800	Darion Williamson	ATH 	Tennessee	0.86070	 Haywood (Brownsville, TN)    	TN	https://247sports.com/player/darion-williamson-46086125
2801	Tee Hodge	RB 	Tennessee	0.85930	 Maryville (Maryville, TN)    	TN	https://247sports.com/player/tee-hodge-46056897
2802	Kyree Miller	OG 	Tennessee	0.84120	 West Mesquite (Mesquite, TX)                  	TX	https://247sports.com/player/kyree-miller-46056701
2803	Will Albright	LS 	Tennessee	0.77070	 Greeneville (Greeneville, TN)    	TN	https://247sports.com/player/will-albright-46056760
2804	Demond Demas	WR 	Texas A&M	0.99030	 Tomball (Tomball, TX)                  	TX	https://247sports.com/player/demond-demas-46041079
2805	Jaylon Jones	S 	Texas A&M	0.98320	 Steele (Cibolo, TX)                    	TX	https://247sports.com/player/jaylon-jones-46051979
2806	Donell Harris	WDE 	Texas A&M	0.97410	 Gulliver Prep (Miami, FL)                  	FL	https://247sports.com/player/donell-harris-46048344
2807	Haynes King	DUAL 	Texas A&M	0.96610	 Longview (Longview, TX)                    	TX	https://247sports.com/player/haynes-king-46049892
2808	Chris Morris	OG 	Texas A&M	0.95260	 West Memphis (West Memphis, AR)                    	AR	https://247sports.com/player/chris-morris-46047611
2809	Antonio Johnson	S 	Texas A&M	0.94470	 East St. Louis (East Saint Louis, IL)                    	IL	https://247sports.com/player/antonio-johnson-46051895
2810	Fadil Diggs	WDE 	Texas A&M	0.93490	 Woodrow Wilson (Camden, NJ)                    	NJ	https://247sports.com/player/fadil-diggs-46046852
2831	Kitan Crawford	CB 	Texas	0.93150	 John Tyler (Tyler, TX)    	TX	https://247sports.com/player/kitan-crawford-46056950
2811	Muhsin Muhammad III	WR 	Texas A&M	0.93370	 Myers Park (Charlotte, NC)                    	NC	https://247sports.com/player/muhsin-muhammad-iii-46038891
2812	Devon Achane	APB 	Texas A&M	0.91750	 Fort Bend Marshall (Missouri City, TX)                  	TX	https://247sports.com/player/devon-achane-46049139
2813	Akinola Ogunbiyi	OG 	Texas A&M	0.91390	 Kempner (Sugar Land, TX)                  	TX	https://247sports.com/player/akinola-ogunbiyi-46051490
2814	Joshuah Moten	CB 	Texas A&M	0.89090	 National Christian Academy (Fort Washington, MD)                    	MD	https://247sports.com/player/joshuah-moten-46041296
2815	Isaiah Raikes	DT 	Texas A&M	0.88810	 St. Augustine Prep (Richland, NJ)                    	NJ	https://247sports.com/player/isaiah-raikes-46051970
2816	Devin Price	WR 	Texas A&M	0.88170	 A&M Consolidated (College Station, TX)                    	TX	https://247sports.com/player/devin-price-46049177
2817	Dallas Walker	DT 	Texas A&M	0.87950	 Smyrna (Smyrna, TN)                  	TN	https://247sports.com/player/dallas-walker-46037432
2818	Blake Smith	TE 	Texas A&M	0.87210	 Southlake Carroll (Southlake, TX)                    	TX	https://247sports.com/player/blake-smith-46080137
2819	Josh Bankhead	OG 	Texas A&M	0.87090	 College Park (The Woodlands, TX)                    	TX	https://247sports.com/player/josh-bankhead-46053688
2820	Smart Chibuzo	OG 	Texas A&M	0.86960	 Hightower (Missouri City, TX)                  	TX	https://247sports.com/player/smart-chibuzo-46055720
2821	Deondre Jackson	RB 	Texas A&M	0.85930	 Stephenson (Stone Mountain, GA)                  	GA	https://247sports.com/player/deondre-jackson-46040540
2822	Kenneth Phillips III	OLB 	Texas A&M	0.85610	 Fort Bend Bush (Richmond, TX)                  	TX	https://247sports.com/player/kenneth-phillips-iii-46056168
2823	Jordan Jefferson	OC 	Texas A&M	0.84600	 Navasota (Navasota, TX)                  	TX	https://247sports.com/player/jordan-jefferson-46038743
2824	Bijan Robinson	RB 	Texas	0.99300	 Salpointe Catholic (Tucson, AZ)    	AZ	https://247sports.com/player/bijan-robinson-46040672
2825	Hudson Card	DUAL 	Texas	0.96970	 Lake Travis (Austin, TX)    	TX	https://247sports.com/player/hudson-card-46048769
2826	Quentin Johnston	WR 	Texas	0.96700	 Temple (Temple, TX)    	TX	https://247sports.com/player/quentin-johnston-46058426
2828	Vernon Broughton	DT 	Texas	0.95050	 Cy Ridge (Houston, TX)    	TX	https://247sports.com/player/vernon-broughton-46055073
2829	Prince Dorbah	OLB 	Texas	0.94080	 Highland Park (Dallas, TX)    	TX	https://247sports.com/player/prince-dorbah-46048851
2830	Xavion Alford	S 	Texas	0.94010	 Shadow Creek (Pearland, TX)      	TX	https://247sports.com/player/xavion-alford-46051445
2832	Jerrin Thompson	S 	Texas	0.92980	 Lufkin (Lufkin, TX)    	TX	https://247sports.com/player/jerrin-thompson-46050436
2833	Jake Majors	OC 	Texas	0.92810	 Prosper (Prosper, TX)    	TX	https://247sports.com/player/jake-majors-46049148
2834	Jaylen Garth	OT 	Texas	0.91770	 Port Neches-Groves (Port Neches, TX)    	TX	https://247sports.com/player/jaylen-garth-46040754
2835	Troy Omeire	WR 	Texas	0.91310	 Fort Bend Austin (Sugar Land, TX)    	TX	https://247sports.com/player/troy-omeire-46051486
2837	Andrej Karic	OT 	Texas	0.90360	 Southlake Carroll (Southlake, TX)    	TX	https://247sports.com/player/andrej-karic-46050370
2838	Jaden Hullaby	ATH 	Texas	0.87010	 Mansfield Timberview (Arlington, TX)    	TX	https://247sports.com/player/jaden-hullaby-46048841
2839	Dajon Harrison	WR 	Texas	0.86140	 Hutto (Hutto, TX)    	TX	https://247sports.com/player/dajon-harrison-46051172
2840	Sawyer Goram-Welch	DT 	Texas	0.84650	 Longview (Longview, TX)                    	TX	https://247sports.com/player/sawyer-goram-welch-46056596
2841	Loic Fouonji	WR 	Texas Tech	0.89840	 Lee (Midland, TX)    	TX	https://247sports.com/player/loic-fouonji-46052902
2843	Tahj Brooks	RB 	Texas Tech	0.87630	 Manor (Manor, TX)    	TX	https://247sports.com/player/tahj-brooks-46041969
2844	Myles Price	ATH 	Texas Tech	0.86680	 The Colony (The Colony, TX)    	TX	https://247sports.com/player/myles-price-46050101
2845	Philip Blidi	SDE 	Texas Tech	0.86610	 Portales (Portales, NM)    	NM	https://247sports.com/player/philip-blidi-46076581
2846	LB Moore	WDE 	Texas Tech	0.86140	 Tascosa (Amarillo, TX)    	TX	https://247sports.com/player/lb-moore-46080466
2847	Quin Bright	ATH 	Texas Tech	0.85730	 Cedar Hill (Cedar Hill, TX)    	TX	https://247sports.com/player/quin-bright-46038470
2848	JJ Sparkman	WR 	Texas Tech	0.85720	 Pine Tree (Longview, TX)    	TX	https://247sports.com/player/jj-sparkman-46056154
2849	Donovan Smith	ATH 	Texas Tech	0.85390	 Frenship (Wolfforth, TX)    	TX	https://247sports.com/player/donovan-smith-46054065
2850	Derrick Lewis	ILB 	Texas Tech	0.85190	 Samuel Clemens (Schertz, TX)    	TX	https://247sports.com/player/derrick-lewis-46080803
2851	Nate Floyd	CB 	Texas Tech	0.84980	 A&M Consolidated (College Station, TX)    	TX	https://247sports.com/player/nate-floyd-46051027
2852	John Holcomb	TE 	Texas Tech	0.84980	 Wellington (Wellington, TX)    	TX	https://247sports.com/player/john-holcomb-46081057
2853	Caleb Rogers	OT 	Texas Tech	0.84980	 Lake Ridge (Mansfield, TX)    	TX	https://247sports.com/player/caleb-rogers-46059017
2854	Larry Moore	OT 	Texas Tech	0.84770	 Fort Bend Marshall (Missouri City, TX)    	TX	https://247sports.com/player/larry-moore-46079314
2855	Ryan Frank	CB 	Texas Tech	0.84650	 Magnolia West (Magnolia, TX)    	TX	https://247sports.com/player/ryan-frank-46053601
2856	Jonathan Davis	S 	Texas Tech	0.84440	 South Oak Cliff (Dallas, TX)    	TX	https://247sports.com/player/jonathan-davis-46041672
2902	Gaard Memmelaar	OG 	Washington	0.87630	 Middleton (Middleton, ID)  	ID	https://247sports.com/player/gaard-memmelaar-46056981
2836	Logan Parr	OG 	Texas	0.90610	 O''Connor (Helotes, TX)    	TX	https://247sports.com/player/logan-parr-46051951
2842	Ja''Lynn Polk	WR 	Texas Tech	0.88090	Lufkin (Lufkin, TX)	TX	https://247sports.com/player/jalynn-polk-46047186
2857	Kobee Minor	S 	Texas Tech	0.84310	 Lake Dallas (Lake Dallas, TX)    	TX	https://247sports.com/player/kobee-minor-46053585
2858	Devin Drew	DT 	Texas Tech	0.83360	 Iowa Western C.C. (Council Bluffs, IA)    	IA	https://247sports.com/player/devin-drew-46041363
2860	John Humphrey	CB 	UCLA	0.88840	 John Muir (Pasadena, CA)                    	CA	https://247sports.com/player/john-humphrey-46079589
2861	Logan Loya	WR 	UCLA	0.88690	 St. John Bosco (Bellflower, CA)                    	CA	https://247sports.com/player/logan-loya-46047339
2862	Jonathan Vaughns	OLB 	UCLA	0.88630	 St. John Bosco (Bellflower, CA)                  	CA	https://247sports.com/player/jonathan-vaughns-46047340
2863	Choe Bryant-Strother	ILB 	UCLA	0.87960	 Greater Atlanta Christian School (Norcross, GA)                    	GA	https://247sports.com/player/choe-bryant-strother-46052981
2864	Nathaniel Jones	RB 	UCLA	0.87430	 St. John Bosco (Bellflower, CA)    	CA	https://247sports.com/player/nathaniel-jones-46041709
2865	Mitchell Agude	WDE 	UCLA	0.87340	 Riverside C.C. (Riverside, CA)                    	CA	https://247sports.com/player/mitchell-agude-46079579
2866	Kenny Mestidor	WDE 	UCLA	0.87210	 St. Thomas More (Oakdale, CT)                    	CT	https://247sports.com/player/kenny-mestidor-46051999
2867	Matt Sykes	WR 	UCLA	0.86940	 St Louis School (Honolulu, HI)                  	HI	https://247sports.com/player/matt-sykes-46047043
2868	Jay Max Jacobsen	SDE 	UCLA	0.86810	 Temecula Valley (Temecula, CA)                  	CA	https://247sports.com/player/jay-max-jacobsen-46059397
2869	Caleb Johnson	ILB 	UCLA	0.86690	 Fullerton College (Fullerton, CA)                    	CA	https://247sports.com/player/caleb-johnson-46056538
2870	DJ Warnell	CB 	UCLA	0.86680	 Dickinson (Dickinson, TX)                  	TX	https://247sports.com/player/dj-warnell-46049997
2871	Rachaad White	RB 	UCLA	0.86260	 Mt. San Antonio College (Walnut, CA)                  	CA	https://247sports.com/player/rachaad-white-46094746
2872	Myles Jackson	WDE 	UCLA	0.86180	 Mill Creek (Hoschton, GA)                    	GA	https://247sports.com/player/myles-jackson-46056600
2873	Bruno Fina	OG 	UCLA	0.85590	 Salpointe Catholic (Tucson, AZ)                  	AZ	https://247sports.com/player/bruno-fina-46082210
2874	Patrick Selna	OT 	UCLA	0.85110	 Piedmont (Oakland, CA)                  	CA	https://247sports.com/player/patrick-selna-46081611
2875	Jake Newman	S 	UCLA	0.84770	 St. John Bosco (Bellflower, CA)                  	CA	https://247sports.com/player/jake-newman-46054045
2876	Ioholani Raass	WDE 	UCLA	0.84100	 Skyridge (Lehi, UT)                  	UT	https://247sports.com/player/ioholani-raass-46079924
2877	Jeremiah Trojan	ILB 	UCLA	0.84020	 Hamilton (Chandler, AZ)                  	AZ	https://247sports.com/player/jeremiah-trojan-46051087
2878	Luke Akers	K 	UCLA	0.82840	 Ravenwood (Brentwood, TN)                  	TN	https://247sports.com/player/luke-akers-46082154
2879	Andrew Gentry	OT 	Virginia	0.97080	 Columbine (Littleton, CO)    	CO	https://247sports.com/player/andrew-gentry-46050894
2880	Bud Clark	S 	Virginia	0.89580	 Alexandria (Alexandria, LA)    	LA	https://247sports.com/player/bud-clark-46051630
2575	Alex Peitsch	LS 	Notre Dame	0.79970	 St. John''s College HS (Washington, DC)                	DC	https://247sports.com/player/alex-peitsch-46059241
2881	Brandon Williams	OLB 	Virginia	0.89280	 Isidore Newman (New Orleans, LA)    	LA	https://247sports.com/player/brandon-williams-46055966
2882	Elijah Gaines	S 	Virginia	0.87760	 Episcopal (Alexandria, VA)    	VA	https://247sports.com/player/elijah-gaines-46078864
2883	Donovan Johnson	S 	Virginia	0.86470	 Helen Cox (Harvey, LA)    	LA	https://247sports.com/player/donovan-johnson-46055724
2884	Jahmeer Carter	DT 	Virginia	0.86330	 Archbishop Spalding (Severn, MD)    	MD	https://247sports.com/player/jahmeer-carter-46048619
2885	Lavel Davis	WR 	Virginia	0.85190	 Woodland (Dorchester, SC)  	SC	https://247sports.com/player/lavel-davis-46056594
2886	Joshua Rawlings	TE 	Virginia	0.85060	 Woodland Hills (Pittsburgh, PA)    	PA	https://247sports.com/player/joshua-rawlings-46054410
2887	Jestus Johnson	OC 	Virginia	0.84840	 Gonzaga  (Washington, DC)    	DC	https://247sports.com/player/jestus-johnson-46056369
2888	Sam Brady	OLB 	Virginia	0.84640	 North Lincoln (Lincolnton, NC)    	NC	https://247sports.com/player/sam-brady-46084040
2889	Dave Herard	CB 	Virginia	0.84510	 Stranahan (Fort Lauderdale, FL)    	FL	https://247sports.com/player/dave-herard-46083131
2890	Lorenz Terry	SDE 	Virginia	0.83760	 Varina (Richmond, VA)    	VA	https://247sports.com/player/lorenz-terry-46094196
2891	Ira Armstead	ATH 	Virginia	0.83700	 Adams (South Bend, IN)    	IN	https://247sports.com/player/ira-armstead-46051880
2893	Jalen McMillan	WR 	Washington	0.97070	 San Joaquin Memorial (Fresno, CA)    	CA	https://247sports.com/player/jalen-mcmillan-46048408
2894	Myles Murao	OC 	Washington	0.95720	 Mater Dei (Santa Ana, CA)    	CA	https://247sports.com/player/myles-murao-46048409
2895	Roger Rosengarten	OT 	Washington	0.94630	 Valor Christian (Littleton, CO)    	CO	https://247sports.com/player/roger-rosengarten-46058991
2896	Ethan Garbers	PRO 	Washington	0.92650	 Corona Del Mar (Newport Beach, CA)    	CA	https://247sports.com/player/ethan-garbers-46053994
2897	Jacobe Covington	CB 	Washington	0.92440	 Saguaro (Scottsdale, AZ)    	AZ	https://247sports.com/player/jacobe-covington-46055059
2898	Geirean Hatchett	OG 	Washington	0.91990	 Ferndale (Ferndale, WA)    	WA	https://247sports.com/player/geirean-hatchett-46045864
2899	Sam Adams II	ATH 	Washington	0.91920	 Eastside Catholic (Sammamish, WA)    	WA	https://247sports.com/player/sam-adams-ii-46043149
2900	Rome Odunze	WR 	Washington	0.90570	 Bishop Gorman (Las Vegas, NV)    	NV	https://247sports.com/player/rome-odunze-46055828
2901	Mark Redman	TE 	Washington	0.89050	 Corona Del Mar (Newport Beach, CA)    	CA	https://247sports.com/player/mark-redman-46053505
2903	Elijah Jackson	CB 	Washington	0.87210	 Lawndale (Lawndale, CA)    	CA	https://247sports.com/player/elijah-jackson-46056573
2904	Makell Esteen	S 	Washington	0.87140	 Lawndale (Lawndale, CA)    	CA	https://247sports.com/player/makell-esteen-46046970
2906	Sawyer Racanelli	ATH 	Washington	0.86400	 Hockinson (Brush Prairie, WA)    	WA	https://247sports.com/player/sawyer-racanelli-46048393
2907	James Smith	CB 	Washington	0.86130	 St. John Bosco (Bellflower, CA)    	CA	https://247sports.com/player/james-smith-46057515
2908	Carson Bruener	ILB 	Washington	0.85380	 Redmond (Redmond, WA)  	WA	https://247sports.com/player/carson-bruener-46049987
2909	Cooper McDonald	ILB 	Washington	0.84980	 Northwest (Justin, TX)    	TX	https://247sports.com/player/cooper-mcdonald-46047171
2910	Mason West	TE 	Washington	0.84640	 La Habra (La Habra, CA)    	CA	https://247sports.com/player/mason-west-46058708
2911	Samuel Peacock	OT 	Washington	0.83330	 Gig Harbor (Gig Harbor, WA)    	WA	https://247sports.com/player/samuel-peacock-46084225
2912	Triston Brown	P 	Washington	0.79890	 Mt. San Antonio College (Walnut, CA)  	CA	https://247sports.com/player/triston-brown-46081414
2913	Jaden Green	LS 	Washington	0.77590	 Mesa (Mesa, AZ)  	AZ	https://247sports.com/player/jaden-green-46093548
2914	David Vincent-Okoli	CB 	West Virginia	0.90490	 The Bullis School (Potomac, MD)    	MD	https://247sports.com/player/david-vincent-okoli-46084530
2915	Chris Mayo	OG 	West Virginia	0.88240	 The Peddie School (Hightstown, NJ)    	NJ	https://247sports.com/player/chris-mayo-88525
2916	Sean Martin	SDE 	West Virginia	0.87670	 Bluefield (Bluefield, WV)    	WV	https://247sports.com/player/sean-martin-46058833
2917	Garrett Greene	DUAL 	West Virginia	0.87290	 Lawton Chiles (Tallahassee, FL)      	FL	https://247sports.com/player/garrett-greene-46051824
2918	Zach Frazier	OC 	West Virginia	0.87260	 Fairmont (Fairmont, WV)    	WV	https://247sports.com/player/zach-frazier-46047960
2919	Devell Washington	WR 	West Virginia	0.87210	 Arthur Hill (Saginaw, MI)    	MI	https://247sports.com/player/devell-washington-46049867
2920	Lanell Carr	OLB 	West Virginia	0.86470	 DeSmet (Saint Louis, MO)    	MO	https://247sports.com/player/lanell-carr-46050333
2921	Jacob Gamble	OT 	West Virginia	0.86430	 Iowa Western C.C. (Council Bluffs, IA)      	IA	https://247sports.com/player/jacob-gamble-46056141
2922	Jordan White	OG 	West Virginia	0.85930	 DeMatha Catholic (Hyattsville, MD)  	MD	https://247sports.com/player/jordan-white-46055582
2923	Reese Smith	WR 	West Virginia	0.85920	 Boyle County (Danville, KY)      	KY	https://247sports.com/player/reese-smith-46050016
2924	Quay Mays	DT 	West Virginia	0.85890	 Northwest Mississippi C.C. (Senatobia, MS)      	MS	https://247sports.com/player/quay-mays-46083583
2925	Jairo Faverus	CB 	West Virginia	0.85260	 Bristol Academy (Bristol, UK)      	UK	https://247sports.com/player/jairo-faverus-46080004
2926	Taurus Simmons	WDE 	West Virginia	0.84580	 Jenkins (Savannah, GA)    	GA	https://247sports.com/player/taurus-simmons-46053870
2927	Jackie Matthews	CB 	West Virginia	0.84450	 Mississippi Gulf Coast C.C. (Perkinston, MS)                    	MS	https://247sports.com/player/jackie-matthews-46084229
2928	Charles Finley	TE 	West Virginia	0.84440	 DePaul Catholic (Wayne, NJ)    	NJ	https://247sports.com/player/charles-finley-46059128
2929	Daryl Porter	CB 	West Virginia	0.83420	 American Heritage (Fort Lauderdale, FL)    	FL	https://247sports.com/player/daryl-porter-46053257
2930	Trey Wedig	OT 	Wisconsin	0.96670	 Kettle Moraine (Wales, WI)    	WI	https://247sports.com/player/trey-wedig-46048454
2931	Jack Nelson	OT 	Wisconsin	0.93470	 Stoughton (Stoughton, WI)    	WI	https://247sports.com/player/jack-nelson-46049650
2932	Nick Herbig	OLB 	Wisconsin	0.92340	 St Louis School (Honolulu, HI)      	HI	https://247sports.com/player/nick-herbig-46049916
2933	Cole Dakovich	OLB 	Wisconsin	0.87550	 Catholic Memorial (Waukesha, WI)    	WI	https://247sports.com/player/cole-dakovich-46058662
2934	Chimere Dike	WR 	Wisconsin	0.87270	 North (Waukesha, WI)    	WI	https://247sports.com/player/chimere-dike-46076679
2935	Malik Reed	OLB 	Wisconsin	0.86810	 Chandler (Chandler, AZ)    	AZ	https://247sports.com/player/malik-reed-46055685
2936	Jordan Turner	ILB 	Wisconsin	0.86800	 Farmington (Farmington, MI)    	MI	https://247sports.com/player/jordan-turner-46052690
2937	Aaron Witt	SDE 	Wisconsin	0.86560	 Winona (Winona, MN)                    	MN	https://247sports.com/player/aaron-witt-46056512
2938	Cam Large	TE 	Wisconsin	0.86470	 Noble And Greenough School (Dedham, MA)      	MA	https://247sports.com/player/cam-large-46052942
2939	Dylan Barrett	OG 	Wisconsin	0.86270	 St Charles East (Saint Charles, IL)    	IL	https://247sports.com/player/dylan-barrett-46052093
2940	Ben Barten	OT 	Wisconsin	0.85940	 Stratford (Stratford, WI)  	WI	https://247sports.com/player/ben-barten-46056009
2941	Tanor Bortolini	OG 	Wisconsin	0.84780	 Kewaunee (Kewaunee, WI)  	WI	https://247sports.com/player/tanor-bortolini-46052092
2942	Max Lofy	CB 	Wisconsin	0.84520	 Pine Creek (Colorado Springs, CO)    	CO	https://247sports.com/player/max-lofy-46084627
2943	Preston Zachman	OLB 	Wisconsin	0.84310	 Southern Columbia Area HS (Catawissa, PA)    	PA	https://247sports.com/player/preston-zachman-46079340
2944	Cade McDonald	SDE 	Wisconsin	0.84070	 Hudson (Hudson, WI)                  	WI	https://247sports.com/player/cade-mcdonald-46083934
2946	James Thompson Jr.	SDE 	Wisconsin	0.83350	 Roger Bacon (Cincinnati, OH)    	OH	https://247sports.com/player/james-thompson-jr-46056563
2204	Reggie Bracy	S 	Iowa	0.85930	 St. Paul''s Episcopal (Mobile, AL)    	AL	https://247sports.com/player/reggie-bracy-90201
2020	Daniel Foster-Allen	SDE 	Auburn	0.87630	 St. Paul''s Episcopal (Mobile, AL)                    	AL	https://247sports.com/player/daniel-foster-allen-46055661
2061	Tre Williams	DT 	Clemson	0.96080	 St. John''s College HS (Washington, DC)                  	DC	https://247sports.com/player/tre-williams-46047260
2110	Mordecai McDaniel	CB 	Florida	0.89460	 St. John''s College HS (Washington, DC)    	DC	https://247sports.com/player/mordecai-mcdaniel-46053292
2134	Mekhail Sherman	OLB 	Georgia	0.99210	 St. John''s College HS (Washington, DC)    	DC	https://247sports.com/player/mekhail-sherman-46043181
2146	Justin Robinson	WR 	Georgia	0.90200	 Eagle''s Landing Christian (Mcdonough, GA)                    	GA	https://247sports.com/player/justin-robinson-46058884
2244	Trevor Kardell	TE 	Kansas	0.84770	 Lee''s Summit West (Lees Summit, MO)    	MO	https://247sports.com/player/trevor-kardell-46081793
2276	Keyon Mozee	ATH 	Kansas State	0.83230	 Lee''s Summit North (Lees Summit, MO)    	MO	https://247sports.com/player/keyon-mozee-46081203
2323	Rakim Jarrett	WR 	LSU	0.99100	 St. John''s College HS (Washington, DC)    	DC	https://247sports.com/player/rakim-jarrett-46039172
2468	Jaden Walley	ATH 	Mississippi State	0.87020	 D''Iberville (Biloxi, MS)    	MS	https://247sports.com/player/jaden-walley-46053896
2573	Jay Brunelle	WR 	Notre Dame	0.85930	 St John''s (Shrewsbury, MA)                    	MA	https://247sports.com/player/jay-brunelle-46057567
2114	Tre''Vez Johnson	S 	Florida	0.87980	Bartram Trail (Jacksonville, FL)	FL	https://247sports.com/player/trevez-johnson-46051956
2126	Ja''Khi Douglas	WR 	Florida State	0.91070	Terrebonne (Houma, LA)	LA	https://247sports.com/player/jakhi-douglas-46050903
2247	Da''Vonshai Harden	ATH 	Kansas	0.84530	Topeka (Topeka, KS)	KS	https://247sports.com/player/davonshai-harden-46081212
2285	Tre''vonn Rybka	DT 	Kentucky	0.88500	Dickson County (Dickson, TN)	TN	https://247sports.com/player/trevonn-rybka-46080787
2294	D''Eryk Jackson	ILB 	Kentucky	0.85190	West Laurens (Dublin, GA)	GA	https://247sports.com/player/deryk-jackson-46080695
2363	Ja''Khi Green	OT 	Maryland	0.83510	St. Frances Academy (Baltimore, MD)	MD	https://247sports.com/player/jakhi-green-46080790
2518	Ja''Qurious Conley	S 	North Carolina	0.93130	Northside (Jacksonville, NC)	NC	https://247sports.com/player/jaqurious-conley-46058398
2638	De''Rickey Wright	ATH 	Ole Miss	0.88840	Gadsden City (Gadsden, AL)	AL	https://247sports.com/player/derickey-wright-46078869
2641	De''Arre McDonald	CB 	Ole Miss	0.88480	Oakland (Murfreesboro, TN)	TN	https://247sports.com/player/dearre-mcdonald-46058418
2649	An''Darius Coffey	ATH 	Ole Miss	0.84980	Winona Secondary School (Winona, MS)	MS	https://247sports.com/player/andarius-coffey-46080851
2709	Ji''Ayir Brown	S 	Penn State	0.88300	Lackawanna C.C. (Scranton, PA)	PA	https://247sports.com/player/jiayir-brown-46084802
2827	Ja''Quinden Jackson	ATH 	Texas	0.96540	Duncanville (Duncanville, TX)	TX	https://247sports.com/player/jaquinden-jackson-87600
2892	Sav''ell Smalls	OLB 	Washington	0.99530	Kennedy Catholic (Burien, WA)	WA	https://247sports.com/player/savell-smalls-46037523
2905	Jay''Veon Sunday	RB 	Washington	0.86670	Connally (Waco, TX)	TX	https://247sports.com/player/jayveon-sunday-46056699
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (team_name, conference) FROM stdin;
Clemson	ACC
Alabama	SEC
LSU	SEC
Ohio State	Big Ten
Texas A&M	SEC
Georgia	SEC
Texas	Big 12
Florida	SEC
Auburn	SEC
Oklahoma	Big 12
Michigan	Big Ten
Penn State	Big Ten
Notre Dame	Indep
Washington	Pac-12
Miami	ACC
Oregon	Pac-12
North Carolina	ACC
South Carolina	SEC
Tennessee	SEC
Stanford	Pac-12
Nebraska	Big Ten
Mississippi State	SEC
Georgia Tech	ACC
Kentucky	SEC
Iowa	Big Ten
Florida State	ACC
Wisconsin	Big Ten
UCLA	Pac-12
Louisville	ACC
Northwestern	Big Ten
Minnesota	Big Ten
California	Pac-12
Colorado	Pac-12
Purdue	Big Ten
Maryland	Big 12
NC State	ACC
Michigan State	Big Ten
Iowa State	Big 12
Pittsburgh	ACC
TCU	Big 12
Kansas	Big 12
Oklahoma State	Big 12
Texas Tech	Big 12
West Virginia	Big 12
Ole Miss	SEC
Arizona State	Pac-12
Oregon State	Pac-12
Kansas State	Big-12
Indiana	Big Ten
Virginia	ACC
\.


--
-- Name: recruits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recruits_id_seq', 2946, true);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_name);


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO PUBLIC;


--
-- PostgreSQL database dump complete
--

