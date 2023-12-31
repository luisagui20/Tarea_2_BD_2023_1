PGDMP         8                {            Tarea2bd    15.2    15.2 ?    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    24757    Tarea2bd    DATABASE     }   CREATE DATABASE "Tarea2bd" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Tarea2bd";
                postgres    false            �            1259    25018    Defensa_reino    TABLE     h   CREATE TABLE public."Defensa_reino" (
    id_reino integer NOT NULL,
    id_defensa integer NOT NULL
);
 #   DROP TABLE public."Defensa_reino";
       public         heap    postgres    false            �            1259    25012    Defensas    TABLE     h   CREATE TABLE public."Defensas" (
    id integer NOT NULL,
    defensa character varying(45) NOT NULL
);
    DROP TABLE public."Defensas";
       public         heap    postgres    false            �            1259    25011    Defensas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Defensas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Defensas_id_seq";
       public          postgres    false    226            T           0    0    Defensas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Defensas_id_seq" OWNED BY public."Defensas".id;
          public          postgres    false    225            �            1259    25023    Diplomacias    TABLE     �   CREATE TABLE public."Diplomacias" (
    id_reino_1 integer NOT NULL,
    id_reino_2 integer NOT NULL,
    es_aliado boolean NOT NULL
);
 !   DROP TABLE public."Diplomacias";
       public         heap    postgres    false            �            1259    24993    Karts    TABLE     �   CREATE TABLE public."Karts" (
    id integer NOT NULL,
    modelo character varying(45) NOT NULL,
    color character varying(45) NOT NULL,
    velocidad_maxima integer,
    id_personaje integer NOT NULL
);
    DROP TABLE public."Karts";
       public         heap    postgres    false            �            1259    24992    Karts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Karts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Karts_id_seq";
       public          postgres    false    221            U           0    0    Karts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Karts_id_seq" OWNED BY public."Karts".id;
          public          postgres    false    220            �            1259    25006    Personaje_habita_reino    TABLE     �   CREATE TABLE public."Personaje_habita_reino" (
    id_personaje integer NOT NULL,
    id_reino integer NOT NULL,
    fecha_registro timestamp(3) without time zone NOT NULL,
    es_gobernante boolean NOT NULL
);
 ,   DROP TABLE public."Personaje_habita_reino";
       public         heap    postgres    false            �            1259    24987    Personaje_tiene_trabajo    TABLE     �   CREATE TABLE public."Personaje_tiene_trabajo" (
    id_trabajo integer NOT NULL,
    id_personaje integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_termino date
);
 -   DROP TABLE public."Personaje_tiene_trabajo";
       public         heap    postgres    false            �            1259    24981 
   Personajes    TABLE     �   CREATE TABLE public."Personajes" (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    fuerza integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    objeto character varying(45)
);
     DROP TABLE public."Personajes";
       public         heap    postgres    false            �            1259    24980    Personajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Personajes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Personajes_id_seq";
       public          postgres    false    218            V           0    0    Personajes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Personajes_id_seq" OWNED BY public."Personajes".id;
          public          postgres    false    217            �            1259    25000    Reinos    TABLE     �   CREATE TABLE public."Reinos" (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    ubicacion character varying(45) NOT NULL,
    superficie integer NOT NULL
);
    DROP TABLE public."Reinos";
       public         heap    postgres    false            �            1259    24999    Reinos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reinos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Reinos_id_seq";
       public          postgres    false    223            W           0    0    Reinos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Reinos_id_seq" OWNED BY public."Reinos".id;
          public          postgres    false    222            �            1259    24974    Trabajos    TABLE     �   CREATE TABLE public."Trabajos" (
    id integer NOT NULL,
    descripcion character varying(45),
    sueldo integer NOT NULL
);
    DROP TABLE public."Trabajos";
       public         heap    postgres    false            �            1259    24973    Trabajos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Trabajos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Trabajos_id_seq";
       public          postgres    false    216            X           0    0    Trabajos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Trabajos_id_seq" OWNED BY public."Trabajos".id;
          public          postgres    false    215            �            1259    24964    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            �           2604    25015    Defensas id    DEFAULT     n   ALTER TABLE ONLY public."Defensas" ALTER COLUMN id SET DEFAULT nextval('public."Defensas_id_seq"'::regclass);
 <   ALTER TABLE public."Defensas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    24996    Karts id    DEFAULT     h   ALTER TABLE ONLY public."Karts" ALTER COLUMN id SET DEFAULT nextval('public."Karts_id_seq"'::regclass);
 9   ALTER TABLE public."Karts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    24984    Personajes id    DEFAULT     r   ALTER TABLE ONLY public."Personajes" ALTER COLUMN id SET DEFAULT nextval('public."Personajes_id_seq"'::regclass);
 >   ALTER TABLE public."Personajes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    25003 	   Reinos id    DEFAULT     j   ALTER TABLE ONLY public."Reinos" ALTER COLUMN id SET DEFAULT nextval('public."Reinos_id_seq"'::regclass);
 :   ALTER TABLE public."Reinos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24977    Trabajos id    DEFAULT     n   ALTER TABLE ONLY public."Trabajos" ALTER COLUMN id SET DEFAULT nextval('public."Trabajos_id_seq"'::regclass);
 <   ALTER TABLE public."Trabajos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            L          0    25018    Defensa_reino 
   TABLE DATA           ?   COPY public."Defensa_reino" (id_reino, id_defensa) FROM stdin;
    public          postgres    false    227   N       K          0    25012    Defensas 
   TABLE DATA           1   COPY public."Defensas" (id, defensa) FROM stdin;
    public          postgres    false    226   O       M          0    25023    Diplomacias 
   TABLE DATA           J   COPY public."Diplomacias" (id_reino_1, id_reino_2, es_aliado) FROM stdin;
    public          postgres    false    228   TP       F          0    24993    Karts 
   TABLE DATA           T   COPY public."Karts" (id, modelo, color, velocidad_maxima, id_personaje) FROM stdin;
    public          postgres    false    221   �P       I          0    25006    Personaje_habita_reino 
   TABLE DATA           i   COPY public."Personaje_habita_reino" (id_personaje, id_reino, fecha_registro, es_gobernante) FROM stdin;
    public          postgres    false    224   �S       D          0    24987    Personaje_tiene_trabajo 
   TABLE DATA           j   COPY public."Personaje_tiene_trabajo" (id_trabajo, id_personaje, fecha_inicio, fecha_termino) FROM stdin;
    public          postgres    false    219   qa       C          0    24981 
   Personajes 
   TABLE DATA           T   COPY public."Personajes" (id, nombre, fuerza, fecha_nacimiento, objeto) FROM stdin;
    public          postgres    false    218   �d       H          0    25000    Reinos 
   TABLE DATA           E   COPY public."Reinos" (id, nombre, ubicacion, superficie) FROM stdin;
    public          postgres    false    223   j       A          0    24974    Trabajos 
   TABLE DATA           =   COPY public."Trabajos" (id, descripcion, sueldo) FROM stdin;
    public          postgres    false    216   Mk       ?          0    24964    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   Km       Y           0    0    Defensas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Defensas_id_seq"', 22, true);
          public          postgres    false    225            Z           0    0    Karts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Karts_id_seq"', 41, true);
          public          postgres    false    220            [           0    0    Personajes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Personajes_id_seq"', 52, true);
          public          postgres    false    217            \           0    0    Reinos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Reinos_id_seq"', 11, true);
          public          postgres    false    222            ]           0    0    Trabajos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Trabajos_id_seq"', 46, true);
          public          postgres    false    215            �           2606    25022     Defensa_reino Defensa_reino_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Defensa_reino"
    ADD CONSTRAINT "Defensa_reino_pkey" PRIMARY KEY (id_reino, id_defensa);
 N   ALTER TABLE ONLY public."Defensa_reino" DROP CONSTRAINT "Defensa_reino_pkey";
       public            postgres    false    227    227            �           2606    25017    Defensas Defensas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Defensas"
    ADD CONSTRAINT "Defensas_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Defensas" DROP CONSTRAINT "Defensas_pkey";
       public            postgres    false    226            �           2606    25027    Diplomacias Diplomacias_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_pkey" PRIMARY KEY (id_reino_1, id_reino_2);
 J   ALTER TABLE ONLY public."Diplomacias" DROP CONSTRAINT "Diplomacias_pkey";
       public            postgres    false    228    228            �           2606    24998    Karts Karts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Karts"
    ADD CONSTRAINT "Karts_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Karts" DROP CONSTRAINT "Karts_pkey";
       public            postgres    false    221            �           2606    25010 2   Personaje_habita_reino Personaje_habita_reino_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_pkey" PRIMARY KEY (id_personaje, id_reino);
 `   ALTER TABLE ONLY public."Personaje_habita_reino" DROP CONSTRAINT "Personaje_habita_reino_pkey";
       public            postgres    false    224    224            �           2606    24991 4   Personaje_tiene_trabajo Personaje_tiene_trabajo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_tiene_trabajo"
    ADD CONSTRAINT "Personaje_tiene_trabajo_pkey" PRIMARY KEY (id_trabajo, id_personaje);
 b   ALTER TABLE ONLY public."Personaje_tiene_trabajo" DROP CONSTRAINT "Personaje_tiene_trabajo_pkey";
       public            postgres    false    219    219            �           2606    24986    Personajes Personajes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Personajes"
    ADD CONSTRAINT "Personajes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Personajes" DROP CONSTRAINT "Personajes_pkey";
       public            postgres    false    218            �           2606    25005    Reinos Reinos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Reinos"
    ADD CONSTRAINT "Reinos_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Reinos" DROP CONSTRAINT "Reinos_pkey";
       public            postgres    false    223            �           2606    24979    Trabajos Trabajos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Trabajos"
    ADD CONSTRAINT "Trabajos_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Trabajos" DROP CONSTRAINT "Trabajos_pkey";
       public            postgres    false    216            �           2606    24972 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            �           2606    25058 +   Defensa_reino Defensa_reino_id_defensa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Defensa_reino"
    ADD CONSTRAINT "Defensa_reino_id_defensa_fkey" FOREIGN KEY (id_defensa) REFERENCES public."Defensas"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public."Defensa_reino" DROP CONSTRAINT "Defensa_reino_id_defensa_fkey";
       public          postgres    false    227    3235    226            �           2606    25053 )   Defensa_reino Defensa_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Defensa_reino"
    ADD CONSTRAINT "Defensa_reino_id_reino_fkey" FOREIGN KEY (id_reino) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public."Defensa_reino" DROP CONSTRAINT "Defensa_reino_id_reino_fkey";
       public          postgres    false    223    3231    227            �           2606    25063 '   Diplomacias Diplomacias_id_reino_1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_id_reino_1_fkey" FOREIGN KEY (id_reino_1) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public."Diplomacias" DROP CONSTRAINT "Diplomacias_id_reino_1_fkey";
       public          postgres    false    223    228    3231            �           2606    25068 '   Diplomacias Diplomacias_id_reino_2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_id_reino_2_fkey" FOREIGN KEY (id_reino_2) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public."Diplomacias" DROP CONSTRAINT "Diplomacias_id_reino_2_fkey";
       public          postgres    false    223    3231    228            �           2606    25038    Karts Karts_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Karts"
    ADD CONSTRAINT "Karts_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personajes"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public."Karts" DROP CONSTRAINT "Karts_id_personaje_fkey";
       public          postgres    false    221    218    3225            �           2606    25043 ?   Personaje_habita_reino Personaje_habita_reino_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personajes"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 m   ALTER TABLE ONLY public."Personaje_habita_reino" DROP CONSTRAINT "Personaje_habita_reino_id_personaje_fkey";
       public          postgres    false    3225    224    218            �           2606    25048 ;   Personaje_habita_reino Personaje_habita_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_id_reino_fkey" FOREIGN KEY (id_reino) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 i   ALTER TABLE ONLY public."Personaje_habita_reino" DROP CONSTRAINT "Personaje_habita_reino_id_reino_fkey";
       public          postgres    false    223    224    3231            �           2606    25033 A   Personaje_tiene_trabajo Personaje_tiene_trabajo_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_tiene_trabajo"
    ADD CONSTRAINT "Personaje_tiene_trabajo_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personajes"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 o   ALTER TABLE ONLY public."Personaje_tiene_trabajo" DROP CONSTRAINT "Personaje_tiene_trabajo_id_personaje_fkey";
       public          postgres    false    218    3225    219            �           2606    25028 ?   Personaje_tiene_trabajo Personaje_tiene_trabajo_id_trabajo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_tiene_trabajo"
    ADD CONSTRAINT "Personaje_tiene_trabajo_id_trabajo_fkey" FOREIGN KEY (id_trabajo) REFERENCES public."Trabajos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 m   ALTER TABLE ONLY public."Personaje_tiene_trabajo" DROP CONSTRAINT "Personaje_tiene_trabajo_id_trabajo_fkey";
       public          postgres    false    219    216    3223            L   �   x�%��D!�̖�(��Ǳ��a��ïꭱ��X<� ��d�-�N�+۪qZ�qN��� ���w�k��3\"I�H{�4�B]��!+X��c�{c lu+bt��;PI�`�NQ	h��)�Y ޯ=M{t<�E�qr!��_�@���-5,՘L�I}R�mkp���P�K���Ғ­�mS3���ϣ�P���avx��ǯ}?f�t�F�      K   >  x�M�Kn1D��)|��gI`򑂂b�M3� G�m�p�,���Xz>���z�Zd!O�W**�H�PȾX���ԛ/�A�*X^��C£�C�8 �ʚ|�<7�_'Gb�ɷ�t5���cqD�œA�夃�.ji�Ɓ��O+�ٝM0{ck���`Q�[�x���Խ���w�rR��҄�)T�|�"ב��e���RļL�/���S3��u��bɗpt��hru������`A<�yj�^�����xL@���7�Zb����gly����g��w��~�J���ƚq���-h�~'��?�&      M   �   x�5��C1c(�c� ��X��1Z�����-G�L����g����d�h���@dY[	CVVG.ae�D���L�M^�F^C�Y��&��9����m�y��F��_�0g���͇���]me��T�7-+      F   �  x�eTYn�0��B'(�E�g��H$uc�(���2!1�H������z��d-)�=���)<JV����|Po�݋F�0ص���h_���<��3*H�EB?T[_|to�U��^��
\e\��%�z�(����9pJؔF����V��'8*])́3�:�l���pD��8N'<8���ɝ%����U�����Q!�X]5����r`������-��_߱bq2���Fk�MQB)|�}=��'ظ�b����G}/�Q^5-g�C�u;g$
}�;�,��Ӡ:��N�]�q�w��+:�1�)2�I?U�xJh
�Vy��Z�m��]1�C3�x��q�B�י�,�9l{��ܕ~�D�8(�s�C�<�h�-Q�\ڲvaȓG��IW�)Q� ��jw�{�%4��?���?&���o�Kb
�X��,Oۣϕ�ks�G�X|�׾���;��8����8�5pB�|ѥ�u��w_���²����LXݣy	��W���f���l��CA�
_�$g b��%�73D<8�N���Ջ{8���,�x7�X�����n=f��]O'��a����hv��Yl�zBx��<)�Z��0���H�kop��9b�Ns��l8 ��k4y���< �D���Q��_��ِ�D�
HV�f� .� ��@�
zg      I   �  x�]Yɱ$;;w[�x⢭l��X���!@JY"�ƒR������I��_�?������߿�UV��O�]������X9~%��G���O�=V�������i������ia�\+�M�o�O,���8�
k���,����C⻖;+��G�#����:��穰s��}~�<Õkq[m���#����G�?�`��w�"n$�Y4;O����O�#���xZG��͸2��K=�q��g�w�W�V����T=o��_Yu�8�lkG�hrm�}u~LmkGz�c�̺?nOg�FF7��?-�G�˸��F�Wc������s��!�M��i�ŝ��;���x��\{"h������Z�F�U�>ݞ���̝���J\y<k����ɏ,fN{Z�
V�|m�Ǒ���YOμ�\� Gf��L󮔝��>A�tǪŭ���1�b^i�Y(�0ƱL��a��V�	ݚq�^�p��	����7׎
?�=R��՟��Z�(6�+;;k�-g!�gY��|����M�P�8�/�u�b��GG�5�h�)��
S8c=�e��TV�"� �g/��8ڂ##eۊ�����Xk�E1,uZ��EؘX?w&���ε��n�����R�U&V�
r�f�9��CgF�����УK�"g�����ګ�h7��>ÕpVl�j�GfE%�
����`�*�����i�Uň��"�|y�~������짳$¼+EXO�/|�5��ZY�<�!�.a��ګ�b��.������lG<���i��#M��6���"�	t9�s�ۂܶ4[��3���9
u�1��q3�^^u���Ń��/r�l�Y��z���\�,rI�2Ӽj�i����;�3K������s��~�!�|ϴGkq��Bzd1�o��f{�|"m�={�4�ק	a�U��\[L����/�y��'�FQA�fi�r�d�e��!Y]��Q�q2�)�_�o,0DL�4v��
!yt�\=��.&Cd�������
��R�+��j��� ��d����F@u�(�;D�_�I:#ǽ�I�����'2�V	��s���Msu�a�;  /Tg��Ս{�!6�DZ�7���iE�	/̇nH�[�=W�x!_�,i��<9.�J\Y�G�j-�2�+ŀ,L��-��8��x�>ʜ��y11��ฐL��W����iaH���M������4�[b�w�$t�3�'��J�{@�\y�~E��J!RU1����ѕn�e����f�|��m��� ��K\�Z-7�+��#l���旧�STJ�S[���M�l8Z�r?��=�q �����4_��T�T�`�����'>>�N�K�I��N6"����jE��/��d�^�7z5�9�>Q�Z4�:)�۩��M���##݆j���W��E�l��a>��G<7v��~���(/���q�Qw�Ur�U��{EQ� Qy�Ւ���d^4a�-
���mUh�5s��[������W�_TE��k���>s�"h��C�"Bר���ˆ:�l���lTTX��Q��^�l���
��@��ߦ(
�&�j�L���0�z<���f!tE�I|�y~�h8�m����x9�>�f��i����sZ�dR{�"�RTh2�L2���P�\��iЁ���ܝ^k��g��\4J�=�e���m�H��j!5�d��A
n%-�_�%�H��]����6Y2̫�M2A�����wH�2�:x5fb��LLH�mֈ��ChB��{�N��@���f-��\�0��H���D��?��h.��/l��8�4[�:ex��&��4�ꝥq�����2_�j���v;W�!э�a@{���-�!3D�����Y"�S����A�,Xф�o�܎�dW���x�<ħK��^�B���GC![,Ak��<k����L�C�0��#�&3�G9��R�F��Q{�1aG��������g���,k=W�˯����~��q��!D}ڎ��uu�"Ol��(����}eI������U�>�j�㋁�M�˖Xٚ���L prE�ȑ���;��H%e��=1�#
+��;o(��ng3f���I�Lɴ8;1���h&j$�Xi���c�Ў���j����pQݓ��`>������z.?�
0��	�jd�ۅ�3��D���E��s��i#�YM��W�At`��!�BM�@e�\���R��y��u$�e��L������a~^�^HU0$[w�wn��q��an�#��ͫ��ȄɈf.g������� �B�wN�%�䒢VI�!A��c�:�6�(����˅S�H�%���.��/�{�F`I��js��!�KFHu2���9����ǽV[��@@A����|BF��|�9�|��T�yt5�r����6Q�E���sg۲ #b�!I�2��p�����u
�T�+�a��3��=�-�,Su�a>������ؖؼC*���TC]b����R�t�D[n��D�����\�_�.!R����d�5���|[w�oU��M���QN'�@EJxHEO��8o�*i��(ۺ�:�$��?^cC�jc�F��:HD�_��e�PS8 �};"?"�A͔mY��� �a�k^�q/H� �]';�f4�V�ؙ�W]{P�9j,�B���z���H�j�b��D��������5�A"�h :�o�*6�9�I�(!��}���{�'9�v��R��������11�h�a�{���S1��O4��)0�sm�"�j��.7"d���L.�a�YCR���r�d�%6���G3197�g��r���L8���|��C�B�=>L�е���B��gBM�zf9�<�j�gn�K�o�q�$Ė������+R{�,����l·<yA��AG� 9��p
�v߃�MgB�ŧ=���`K!j���x���z�$Ր��O�;�d 2M9Dv����X���I-?��j��Ȉ�|��Y�	�i0�6��o�)�b�!K��{6rIC��i̦�ƕ�r�Q�ͧ�=O�P��ۨ���3���cUp||qI[��]�\e�ڂ����TxL{۝y�圭��|Ł�dw�8H�q���C5�b`_������tT�Np9�x	 9��c��}}�=�6���:�@�(���+tp.�B�]*��������^�?n����I1;͎�	.���^�k�W3ǈ�>}y��T�|3�z^�Ma"|ͣ��u7G��[��z��}(���$��q���k|V�`�\�پ�;�YѼ���|�M�;�����5V���� �:�|���0�4ｿV(~ī�ɿ'�b�/s��q/ߘf�z�|r)��܀{��kz{�&vt���Vx�یW�9�%z�UF��qRL��;?�~/�o��x�� |��c{��o�LE�=��{q��Ql#�VU <�y�����&̋S��2���g��ٸ�l8~�������������K5      D   H  x�eVk�&!��w鍀�z�=���C���l2���P�C��
7nO{�6����C��v?m>4�9��TŅ�`�f���P��>*���o%r��Aw��"���-\/�W�Ti@$q^�<�߸M���Rz8Jם\D�p��QF�T+[T>u���E���k.��N#r��F	�0lzyOn	�[8�<�Ѷ�Ohj��S{��vTM�Z@��A(dl^�E�#.��9qU�(�y�)�Q�h����4%/����mVyCg�÷���k�!����mUޡ�kA(���t�H�H�#l�H�\rB��ĪN�Hh��2#��C�6ü*�x/���M��쥢P�뷏4A��f�2�1�Ue�@k�)�����3� ,��I���4,�Ե�t��ڌ��JF�8h�L=^j�y�g�$N9e�8�7\;����0�G�U$U0	�z�S��Q�V����>}�tK��jmݸN��Z$�)3f"�Q�nC��	��:��w�Z#K!�}�����3��g���kUIs�q�ʑ~��t0٤S�Ϭ3�����"kj/���!�� EB�6nw��"p��2�dӌ(�"���V %�YѸ�:oٍ�ط}Yn��~���]L����MvDm��i���jQ_t����~�ٖֈ���|qq����ԓ܈œr0�5���Q����r m,�~��;�[�5rν��	�[�=ٜ��l��y�������6���5��Nh�Kav�]�;�.M�#6zVܝVꕫ�o�>/�H�7��Y4��a�̕�c���ٰ��\��\,��wҊg����_*��|&�xUt������;˟_͛/0d�?��P��Sk����      C   3  x�uV]R�8~�O�̖�� 
�dkk_�2#"KS�<n��i����k�ð@^]����k��XKC��J7��iۤ�$[d�8�4�Koՠ��5�����(_ȯ��'�5��҉2Y��$]����n$��F-G��E����������Ж|!�rqN�+�-n�-mT�ϊ���,ј5�H���Eڈk�j�M(2J�eT��^jE��� �f&M�a���~(MK�*qDZ����wk���y�6Y$�"Ką4K%��C,MGƣ�!��7�y�P�<f(��z���d�p-�@K5�W��:�^�~�c4�@�f��⣦��s�Zq��(�r9�Ug|<�ā	���,Q�`������ݠ���o�i!\O@cw�ӣWEi*�{���#�7\H�9�(���Ƈ
��oQ��O#P5q�����q�]����i+�^1 �(�;rZz�[�"#ʂo����ç�n�� N+��+yC��2�t/ф����B������-�sj�i�,���U�V�O�*��5�Th��o�@`!��^1�|�ɁG2���Z|�j�/�a`вj��J�=θ�t�B�"=�_w8n���rF�d����R�y6Ixu.��d�Tr,�䕈!�����N��~Ka���Mux���Q�����2>�ƀQ%�QL[�;��D�O���n��u��)@��1ى�N�,�3R5:ʹ�	�؍��ac��N�R�@_��+_�0�W:�������H{e��J�R}o� ���/���@+6�V��U�a�\�����b�dټ�H��@0�/,S9���L9�G�a_>kĩ4���DV̑�2h��84�"����5�4a*�@^�� ��vg���@y">K�����,�IR��ߐ���ʇ4�N�C7`Ķj��]K���L|��&�p��om����r.Nɘ��VUsV��{��ż6��u�@�V�	�WF�Kq30�3>m����=���O%�"��>>�� ��6��r��z_o���x`�G���WFÒh����wʬƩ��g}��?�-��7�,��]f!��P��R�[ء� Q� �N��#�hXE�|��`�o
��w�Ɇik���Td�E����FT�N�[y`�v�}�Z�匼٭��z�?��������Y��9��C�0������n��(w;#>XR�`����x�;�q��n�4r�����@�9n�b�mt��8��PM�q�UC���9	�j�
�V�ٲ �g5��g���[�-�G�ߍ�%t��i�"o�yʄg��[��)�`H_�c�Ji��eTb�o��7�(����&���޻��Q�:���      H   1  x�e�MN�0F��S�(m��%T��H��Lc��p2�v(��#�b�E醅W~ߛ�f���	O��
�
4�`�[6�z���Y("x��4��)��QRː��c(G=���LI�D��J�G�(�(q�D"9O�C���VYR���ip�A�0,D
��:�5��پM[bPn����Q,2���x�����ԁͫ��e�ȡRƷ�؃���Vhз�����(�n:ի�6��h��K/j����F���'�4��*��vhF�=�8���a�o�~j[e,�j-VP}���[�?οZ>
y%��J�߀�L      A   �  x�eRAn�0<�^��(���q�E�S/4E+4(ҡ(�or�!��O�Ǻ$%�iy������x=��(�c���%9<�^�|(m��z��@r�F�P\�꤀����u((�i|k<`�|ѭ�RX�ry�
ʀ[���V:�(�a��Yj��@CM;%����ޱi �`�,�P���>
�yT�Lr�ؗA:��,��5G�/"I�-k�L��8aD*x||�^�4|{a�i�h	Y�ޭeݍ���Go���"6�`�;;^��f�9�{�|Ql��s�� ��%�ʴ}ԣ���Mjw�*�P�2ށX�".�w�4��5lp;N��H/��D?��
Éar�A�,�/C�:^C_�m��@)�ˉ�+`o�g����B7�Y�����~Pnq����َ��mp���)�:�rZ�V���=\ilWd�Mpq���O��ӦHV� ��<I7'�X�{N�&ҳb�؜.�t�p\�������ࡨ��5.����K��/A��      ?   �   x�m�K
�@DיSx�	������|Ņ
��c�Z((�G�,=���{��ޢ��l�.�+N0F�����Z%m�S/�(m(S`(�)�@��j�d�r�'bу\�%���zL?
X醟}{�o��_�i���+��G��ι/u�0�     