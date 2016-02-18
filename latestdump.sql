PGDMP     *                    t            dd3din7eateshp    9.4.5    9.4.0     �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    6555932    dd3din7eateshp    DATABASE     �   CREATE DATABASE dd3din7eateshp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE dd3din7eateshp;
             fanwbylidhohfv    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             fanwbylidhohfv    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  fanwbylidhohfv    false    6            �            3079    11861    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    177            �            1259    6556838 	   attendees    TABLE       CREATE TABLE attendees (
    id integer NOT NULL,
    fname character varying(50),
    lname character varying(50),
    email character varying(50),
    amount integer,
    type integer,
    here integer DEFAULT 0,
    rafflewon integer DEFAULT 0,
    event_id integer
);
    DROP TABLE public.attendees;
       public         fanwbylidhohfv    false    6            �            1259    6556836    attendees_id_seq    SEQUENCE     r   CREATE SEQUENCE attendees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.attendees_id_seq;
       public       fanwbylidhohfv    false    175    6            �	           0    0    attendees_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE attendees_id_seq OWNED BY attendees.id;
            public       fanwbylidhohfv    false    174            �            1259    15194126    events    TABLE     �   CREATE TABLE events (
    id integer NOT NULL,
    name character varying(30),
    location character(50),
    type character varying(12)
);
    DROP TABLE public.events;
       public         fanwbylidhohfv    false    6            �            1259    6556821    users    TABLE     �   CREATE TABLE users (
    id integer NOT NULL,
    username character varying,
    password character varying,
    vegie integer,
    admin integer
);
    DROP TABLE public.users;
       public         fanwbylidhohfv    false    6            �            1259    6556819    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       fanwbylidhohfv    false    6    173            �	           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       fanwbylidhohfv    false    172            m	           2604    6556841    id    DEFAULT     ^   ALTER TABLE ONLY attendees ALTER COLUMN id SET DEFAULT nextval('attendees_id_seq'::regclass);
 ;   ALTER TABLE public.attendees ALTER COLUMN id DROP DEFAULT;
       public       fanwbylidhohfv    false    175    174    175            l	           2604    6556824    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       fanwbylidhohfv    false    172    173    173            �	          0    6556838 	   attendees 
   TABLE DATA               ^   COPY attendees (id, fname, lname, email, amount, type, here, rafflewon, event_id) FROM stdin;
    public       fanwbylidhohfv    false    175            �	           0    0    attendees_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('attendees_id_seq', 199, true);
            public       fanwbylidhohfv    false    174            �	          0    15194126    events 
   TABLE DATA               3   COPY events (id, name, location, type) FROM stdin;
    public       fanwbylidhohfv    false    176            �	          0    6556821    users 
   TABLE DATA               >   COPY users (id, username, password, vegie, admin) FROM stdin;
    public       fanwbylidhohfv    false    173            �	           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 5, true);
            public       fanwbylidhohfv    false    172            q	           2606    15194130    events_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
     
