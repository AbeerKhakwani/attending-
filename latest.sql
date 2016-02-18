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
       public         fanwbylidhohfv    false    176    176            �	   �
  x��Y�r�8}F�B���`IQ�7+���Ş�=����r�LȀŋ�㡿~O�,J�D)�b4o �O�>O&�5���*��#=S*�dNV�y3[�?䤳��E<������ +�Y�si��qV�d�窬����7�B�F�9�[ZkQa��9�(Y<�BJc���)���ZC$.�2#�kA�������]�"�JZ2�M=��<�Jd����V����Rey��t*������BbIJ(*
Rw��r�����H\���QJ� mՖ����$S�V[x�J�+�@9����:n&������^b�W��Ù�v�(i��L9������[�S�w�x���U#>�r������'x���2y���*����?��(��-�&ޒ]���n����p���̱X��⫬Li�����0������^?a7C>�bq[+�ш+:b	ﻐoU�q��p�<0��e��*���	8-����)�j ����K���)���h���9OčN�	�!�c�+��7�_;?���i(��f-3ٌ�F~y��گ�w/-|��R�1��@�yY��DiឈTi x�id[�(��^R:�}<�� Rd�����Yݙ�3��Ge	��,|���(ӝI�׀�� �*��+���fx?��%~Y�i�1�ҟ�cx*��u
�����$pc�9O�|�����ƈz�2e���w���_ �t1���\�*��4�oц��&�ot��5\������D��&���� -p1 �T���.�
�+�&&(��>R&��S� ��!�A���2��R�~V2�@������-q��"X��CN��^a����ѷy?�%!b$�������l�&� ��B�<�a�é��l"�KFC	O�T�߳,�n���kmݪ,��pV��u��ޙ���,��5�����<y<�'���2��w�c-k{��~9��u	@�(<�5$�q���\|���w�;�EG�\8N��6�-<س�F��YQ<N��5��O��RW��\�Go'��piusc���b
X!(72%Q�w2ˏDŎ������~PȞ?슲�^�/g�J��,+�g>���qt��٤�qW���:���Z�46L��'
8W�����B�_�-\[�k���aȀg�V��I�<��������ťv��*���o5�ご�nE?�Ơ�6άZcH�CfKF�g�\[A*���Hmz���=3�6*m<��5Bӻ�!�K���C�ex�N��߹�o� �@�C��֎��c,�,��K�H/L�0�3���J���Ni��۲F��G|)f�.B[we	��4I|!9��iI�v�amr�����5�"�Oa�6[A,Sy�- Z��#7(�R�6�s[�v���nz&�Jҽ��C�/B�k��,�S^�/�G:�uj�}���ɴ������_��>Q���g��þ1�+���Ʌ��g��r���X|t��*�cf3�0��׮ј�ddi�`4dY�=�p3w�Z��HWd�6�~����vuUv�"���,N��]VM\S�%`�ɳ���{,��{�,�&���Gg�L��T�6�Kn.��C��D�� -�-���ޕ�Ӯ+k����q�t[�Y�;�K2+p�����ap����,��V��>m�1�����ή1<�AK��=D�RA܍�e#�P�Juq �|�4�A�&	�6��()L��Rވ�=e:��L>$e�e0N~ԐS4���K*H����f@�l|�^nj(���*�g��Ҥ����P� ��0@{���bi����0��SsU+��w&�5��X\�E�p�&VĭnN�G(��dQ4;��x�m誮�՘O
P�0�o������S�+%�p�|'[<}L��#�{/'�/�疼�4��Q��O�#m�p'���-�;)����x(� �&���0���壑�3�6|5�}�a(g�l-+h����:�31pE:�5��ݍD�㴶3�x��F+���UYgX!V�O��{�Ee��;YU�/N�=��oy*o�����(���u��3P�+}��\|��[y��Y�AI�Mt�h"nj	u���dY'�A�K�}D� �O���ٽ�py��I&�K���n͎�Y�ߵ�xM��~ޙj�v	�.f� izg�9C�$��{o��!�9�x���6��a�Z� �;Z��g�X�|�q}q��v��O����G����F��qn�c#�$�eo~ty f��=?-�퉏ט-�WN�F�v�x��eٸry�7�m)�H��)�0�X���5K�\-�;X�^�0j�2�mt��j�8,r�
���-?�.�_��\I���'k�/O�i�Z?҈@4޶��#]�֜�a����l�q��p��sg ^fvB�U�{��|��d���R��Ϫ�=ckl��,�z>P�m���]e}kJN��c��C��7�/-�qF@l�3�C7P�p�rU�9z�y�����������SS[^؞��8�Ѕ.�)�X�_�O:�G����s>�@Ϟ�q���l�_�ɕ�ޏ��x�A�� �m_��
P^�G���A�O�ֻW������-ޖ�|��;����>@�
ɐ�@N�!0㵔�U�艚������Z?[�Ș|{F�S����c���E�|P���q��qX�I��nwS e�MtJ���\P�ņY{��X6�(+��z�J�<oe�>�o�ͼ;/Yv��R:�Lie2�8yi���B���NQ�k�Ԑ�hi!k\��
G��ͻ�5���3x�����%�      �	      x������ � �      �	   b   x�3�LL��̃�1~��\F���)U�99�F�ٙy���y�@���1gJJ
PqZ1�	�p�f&'f@HC#c��)�kNYf1g@�kp��k$X0F��� �W     