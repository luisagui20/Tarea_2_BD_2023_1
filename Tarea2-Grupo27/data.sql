PGDMP                         {         	   tarea2-bd    14.8    14.8 ?    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    16394 	   tarea2-bd    DATABASE     g   CREATE DATABASE "tarea2-bd" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "tarea2-bd";
                postgres    false            �            1259    17476    Defensa_reino    TABLE     h   CREATE TABLE public."Defensa_reino" (
    id_reino integer NOT NULL,
    id_defensa integer NOT NULL
);
 #   DROP TABLE public."Defensa_reino";
       public         heap    postgres    false            �            1259    17470    Defensas    TABLE     h   CREATE TABLE public."Defensas" (
    id integer NOT NULL,
    defensa character varying(45) NOT NULL
);
    DROP TABLE public."Defensas";
       public         heap    postgres    false            �            1259    17469    Defensas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Defensas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Defensas_id_seq";
       public          postgres    false    221            H           0    0    Defensas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Defensas_id_seq" OWNED BY public."Defensas".id;
          public          postgres    false    220            �            1259    17481    Diplomacias    TABLE     �   CREATE TABLE public."Diplomacias" (
    id_reino_1 integer NOT NULL,
    id_reino_2 integer NOT NULL,
    es_aliado boolean NOT NULL
);
 !   DROP TABLE public."Diplomacias";
       public         heap    postgres    false            �            1259    17451    Karts    TABLE     �   CREATE TABLE public."Karts" (
    id integer NOT NULL,
    modelo character varying(45) NOT NULL,
    color character varying(45) NOT NULL,
    velocidad_maxima integer,
    id_personaje integer NOT NULL
);
    DROP TABLE public."Karts";
       public         heap    postgres    false            �            1259    17450    Karts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Karts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Karts_id_seq";
       public          postgres    false    216            I           0    0    Karts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Karts_id_seq" OWNED BY public."Karts".id;
          public          postgres    false    215            �            1259    17464    Personaje_habita_reino    TABLE     �   CREATE TABLE public."Personaje_habita_reino" (
    id_personaje integer NOT NULL,
    id_reino integer NOT NULL,
    fecha_registro timestamp(3) without time zone NOT NULL,
    es_gobernante boolean NOT NULL
);
 ,   DROP TABLE public."Personaje_habita_reino";
       public         heap    postgres    false            �            1259    17445    Personaje_tiene_trabajo    TABLE     �   CREATE TABLE public."Personaje_tiene_trabajo" (
    id_trabajo integer NOT NULL,
    id_personaje integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_termino date
);
 -   DROP TABLE public."Personaje_tiene_trabajo";
       public         heap    postgres    false            �            1259    17439 
   Personajes    TABLE     �   CREATE TABLE public."Personajes" (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    fuerza integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    objeto character varying(45)
);
     DROP TABLE public."Personajes";
       public         heap    postgres    false            �            1259    17438    Personajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Personajes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Personajes_id_seq";
       public          postgres    false    213            J           0    0    Personajes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Personajes_id_seq" OWNED BY public."Personajes".id;
          public          postgres    false    212            �            1259    17458    Reinos    TABLE     �   CREATE TABLE public."Reinos" (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    ubicacion character varying(45) NOT NULL,
    superficie integer NOT NULL
);
    DROP TABLE public."Reinos";
       public         heap    postgres    false            �            1259    17457    Reinos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reinos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Reinos_id_seq";
       public          postgres    false    218            K           0    0    Reinos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Reinos_id_seq" OWNED BY public."Reinos".id;
          public          postgres    false    217            �            1259    17432    Trabajos    TABLE     �   CREATE TABLE public."Trabajos" (
    id integer NOT NULL,
    descripcion character varying(45),
    sueldo integer NOT NULL
);
    DROP TABLE public."Trabajos";
       public         heap    postgres    false            �            1259    17431    Trabajos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Trabajos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Trabajos_id_seq";
       public          postgres    false    211            L           0    0    Trabajos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Trabajos_id_seq" OWNED BY public."Trabajos".id;
          public          postgres    false    210            �            1259    17422    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
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
       public         heap    postgres    false            �           2604    17473    Defensas id    DEFAULT     n   ALTER TABLE ONLY public."Defensas" ALTER COLUMN id SET DEFAULT nextval('public."Defensas_id_seq"'::regclass);
 <   ALTER TABLE public."Defensas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17454    Karts id    DEFAULT     h   ALTER TABLE ONLY public."Karts" ALTER COLUMN id SET DEFAULT nextval('public."Karts_id_seq"'::regclass);
 9   ALTER TABLE public."Karts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    17442    Personajes id    DEFAULT     r   ALTER TABLE ONLY public."Personajes" ALTER COLUMN id SET DEFAULT nextval('public."Personajes_id_seq"'::regclass);
 >   ALTER TABLE public."Personajes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    17461 	   Reinos id    DEFAULT     j   ALTER TABLE ONLY public."Reinos" ALTER COLUMN id SET DEFAULT nextval('public."Reinos_id_seq"'::regclass);
 :   ALTER TABLE public."Reinos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    17435    Trabajos id    DEFAULT     n   ALTER TABLE ONLY public."Trabajos" ALTER COLUMN id SET DEFAULT nextval('public."Trabajos_id_seq"'::regclass);
 <   ALTER TABLE public."Trabajos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            @          0    17476    Defensa_reino 
   TABLE DATA           ?   COPY public."Defensa_reino" (id_reino, id_defensa) FROM stdin;
    public          postgres    false    222   
N       ?          0    17470    Defensas 
   TABLE DATA           1   COPY public."Defensas" (id, defensa) FROM stdin;
    public          postgres    false    221   �N       A          0    17481    Diplomacias 
   TABLE DATA           J   COPY public."Diplomacias" (id_reino_1, id_reino_2, es_aliado) FROM stdin;
    public          postgres    false    223   !P       :          0    17451    Karts 
   TABLE DATA           T   COPY public."Karts" (id, modelo, color, velocidad_maxima, id_personaje) FROM stdin;
    public          postgres    false    216   �P       =          0    17464    Personaje_habita_reino 
   TABLE DATA           i   COPY public."Personaje_habita_reino" (id_personaje, id_reino, fecha_registro, es_gobernante) FROM stdin;
    public          postgres    false    219   pS       8          0    17445    Personaje_tiene_trabajo 
   TABLE DATA           j   COPY public."Personaje_tiene_trabajo" (id_trabajo, id_personaje, fecha_inicio, fecha_termino) FROM stdin;
    public          postgres    false    214   �a       7          0    17439 
   Personajes 
   TABLE DATA           T   COPY public."Personajes" (id, nombre, fuerza, fecha_nacimiento, objeto) FROM stdin;
    public          postgres    false    213   ae       <          0    17458    Reinos 
   TABLE DATA           E   COPY public."Reinos" (id, nombre, ubicacion, superficie) FROM stdin;
    public          postgres    false    218   �j       5          0    17432    Trabajos 
   TABLE DATA           =   COPY public."Trabajos" (id, descripcion, sueldo) FROM stdin;
    public          postgres    false    211   �k       3          0    17422    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    209   �m       M           0    0    Defensas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Defensas_id_seq"', 21, true);
          public          postgres    false    220            N           0    0    Karts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Karts_id_seq"', 40, true);
          public          postgres    false    215            O           0    0    Personajes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Personajes_id_seq"', 51, true);
          public          postgres    false    212            P           0    0    Reinos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Reinos_id_seq"', 10, true);
          public          postgres    false    217            Q           0    0    Trabajos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Trabajos_id_seq"', 41, true);
          public          postgres    false    210            �           2606    17480     Defensa_reino Defensa_reino_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Defensa_reino"
    ADD CONSTRAINT "Defensa_reino_pkey" PRIMARY KEY (id_reino, id_defensa);
 N   ALTER TABLE ONLY public."Defensa_reino" DROP CONSTRAINT "Defensa_reino_pkey";
       public            postgres    false    222    222            �           2606    17475    Defensas Defensas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Defensas"
    ADD CONSTRAINT "Defensas_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Defensas" DROP CONSTRAINT "Defensas_pkey";
       public            postgres    false    221            �           2606    17485    Diplomacias Diplomacias_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_pkey" PRIMARY KEY (id_reino_1, id_reino_2);
 J   ALTER TABLE ONLY public."Diplomacias" DROP CONSTRAINT "Diplomacias_pkey";
       public            postgres    false    223    223            �           2606    17456    Karts Karts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Karts"
    ADD CONSTRAINT "Karts_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Karts" DROP CONSTRAINT "Karts_pkey";
       public            postgres    false    216            �           2606    17468 2   Personaje_habita_reino Personaje_habita_reino_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_pkey" PRIMARY KEY (id_personaje, id_reino);
 `   ALTER TABLE ONLY public."Personaje_habita_reino" DROP CONSTRAINT "Personaje_habita_reino_pkey";
       public            postgres    false    219    219            �           2606    17449 4   Personaje_tiene_trabajo Personaje_tiene_trabajo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_tiene_trabajo"
    ADD CONSTRAINT "Personaje_tiene_trabajo_pkey" PRIMARY KEY (id_trabajo, id_personaje);
 b   ALTER TABLE ONLY public."Personaje_tiene_trabajo" DROP CONSTRAINT "Personaje_tiene_trabajo_pkey";
       public            postgres    false    214    214            �           2606    17444    Personajes Personajes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Personajes"
    ADD CONSTRAINT "Personajes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Personajes" DROP CONSTRAINT "Personajes_pkey";
       public            postgres    false    213            �           2606    17463    Reinos Reinos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Reinos"
    ADD CONSTRAINT "Reinos_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Reinos" DROP CONSTRAINT "Reinos_pkey";
       public            postgres    false    218            �           2606    17437    Trabajos Trabajos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Trabajos"
    ADD CONSTRAINT "Trabajos_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Trabajos" DROP CONSTRAINT "Trabajos_pkey";
       public            postgres    false    211            �           2606    17430 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    209            �           2606    17516 +   Defensa_reino Defensa_reino_id_defensa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Defensa_reino"
    ADD CONSTRAINT "Defensa_reino_id_defensa_fkey" FOREIGN KEY (id_defensa) REFERENCES public."Defensas"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public."Defensa_reino" DROP CONSTRAINT "Defensa_reino_id_defensa_fkey";
       public          postgres    false    3226    221    222            �           2606    17511 )   Defensa_reino Defensa_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Defensa_reino"
    ADD CONSTRAINT "Defensa_reino_id_reino_fkey" FOREIGN KEY (id_reino) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public."Defensa_reino" DROP CONSTRAINT "Defensa_reino_id_reino_fkey";
       public          postgres    false    222    3222    218            �           2606    17521 '   Diplomacias Diplomacias_id_reino_1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_id_reino_1_fkey" FOREIGN KEY (id_reino_1) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public."Diplomacias" DROP CONSTRAINT "Diplomacias_id_reino_1_fkey";
       public          postgres    false    218    223    3222            �           2606    17526 '   Diplomacias Diplomacias_id_reino_2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Diplomacias"
    ADD CONSTRAINT "Diplomacias_id_reino_2_fkey" FOREIGN KEY (id_reino_2) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public."Diplomacias" DROP CONSTRAINT "Diplomacias_id_reino_2_fkey";
       public          postgres    false    218    3222    223            �           2606    17496    Karts Karts_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Karts"
    ADD CONSTRAINT "Karts_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personajes"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public."Karts" DROP CONSTRAINT "Karts_id_personaje_fkey";
       public          postgres    false    213    3216    216            �           2606    17501 ?   Personaje_habita_reino Personaje_habita_reino_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personajes"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 m   ALTER TABLE ONLY public."Personaje_habita_reino" DROP CONSTRAINT "Personaje_habita_reino_id_personaje_fkey";
       public          postgres    false    213    3216    219            �           2606    17506 ;   Personaje_habita_reino Personaje_habita_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_habita_reino"
    ADD CONSTRAINT "Personaje_habita_reino_id_reino_fkey" FOREIGN KEY (id_reino) REFERENCES public."Reinos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 i   ALTER TABLE ONLY public."Personaje_habita_reino" DROP CONSTRAINT "Personaje_habita_reino_id_reino_fkey";
       public          postgres    false    219    3222    218            �           2606    17491 A   Personaje_tiene_trabajo Personaje_tiene_trabajo_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_tiene_trabajo"
    ADD CONSTRAINT "Personaje_tiene_trabajo_id_personaje_fkey" FOREIGN KEY (id_personaje) REFERENCES public."Personajes"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 o   ALTER TABLE ONLY public."Personaje_tiene_trabajo" DROP CONSTRAINT "Personaje_tiene_trabajo_id_personaje_fkey";
       public          postgres    false    214    3216    213            �           2606    17486 ?   Personaje_tiene_trabajo Personaje_tiene_trabajo_id_trabajo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Personaje_tiene_trabajo"
    ADD CONSTRAINT "Personaje_tiene_trabajo_id_trabajo_fkey" FOREIGN KEY (id_trabajo) REFERENCES public."Trabajos"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 m   ALTER TABLE ONLY public."Personaje_tiene_trabajo" DROP CONSTRAINT "Personaje_tiene_trabajo_id_trabajo_fkey";
       public          postgres    false    3214    211    214            @   �   x����!��>q1���šk �	��aq@�(���˷E�p8BH��$Z�X��a�*�i?�8K�&� %��Í+��<Y��SK�fm��zYKJ
c������݋)ec �@5h��~�m��̈́��=#�$LD�I-aѺǃ�f=#�8��Ě�������),5,      ?   H  x�M�Kn�0���)|�
�f�B����(ꪛ!�+�Fc�ܨ��z.�!IE��<����"E*�*QYPyDr��R��\l��^|�%r ���r+���R���G,
s�ur$�P|�H'P��[ j'Z/'O��hȩx��E|tG�����L�����x��A�^g��w�
R뫗�	�S���8�G�~�ӫA�.�@dU��\!�O-fx]�I�r�E$_�ޝ��)<��$|�����8Yj�/Y����z"�Pi�a�������������8^R̘v��6���g���s�y�Q�쇚k�I����ۍ��,��      A   �   x�-��D!C�X��G���
���$zyBL�Ǿ�l�ö��/��a�c̚�bJ�6P�#um;���L���5�`��%�Lc����D\H�hq33m�u�li��ҩK9Bu�tț���7,�����-      :   �  x�e�Mn�0���S��H�w��)�I��0��Z"$&�RT�Z=B/�ѿӮəy��7�{�Z��h��o ����s�`���;k�CݛR:h���@c��l�n��H����N Md$��ԶP��j$R��˩;'1�Z����T�p%8���Y�_H��ԣ����l�!JR��N]Pأ}�#�r���Fb+�;��F\�B��î�Ҩ�`�zA_��k�C�	�ѓ/#+g�o>�F��za|�O��ʓ���<�ep����MN���5�B9�F-]��5PZ'ʡy<#�*�}�*���3�1��"�)xh��(���������)�Q�i�A��S�x6���,�`*��o��|H�f��5�㦘�[�E1L��wn�����/ͳ�~ ���m��3T�u̕��m������SQL[r��
GN�JG9<�Rau�2��I*̇���h]��v}痥�dP�6�v5����=	Gm	|����0�	�<K�G���.�d�_����l��Q�����@Nɯ6䕩��	1e�����B�V���jx��ĳ�x�!�k�_�３�Y�)���㲅�vV3H	�&|��,��v``�:����o�Qt��Y� =F�(YQ���ID{�q�Eǀ�4�
�)�+�#�]E�����ʃ��"����!� ~      =   D  x�]Z�q;;�Q8w����?�&��Ԟ��Z��ԓ��M�����O[�����Ϸ|)��Wگ�����Ti5X����Bk�gk��im�W䧅i}�~��׿���n�uXM?���%��k������g���K`]��̃;ۓ6���3��1��|�w��a��-���8�~F3Z��Z���<>���z��_�i������x�#ǯ��]?b�.�u������c��Þ;�wa��X��3��z�*�#�KX�c�єkq%Wi���|��*]�V ��j��|�G����7~DaE���J7+���w��G�ܹBg��3G�g����ݺnxr<���Ĩ#~b��?��<�B�t�4�D�Ⱥ�8�ơ�W�G�x��8�y���G���"帴��2D-�u�sg��F�G�G�g6��W���nFR�g5�wTxcԱ��J��#��W�aCRFn�����#�+�UDA-� �\�+7P+�p�,��{,eNZܸ=jȜ�+i��pV|�cmG�����Jq��<Ӝk�/�u���촞�u�� Q�7w�ʫ�Ʌ3{C>��CEQO6|�Zt�7�#��#W&l/G"%7G�b��Y�}�F�(�	O��dc�& a��+,����pe��J�O̭2�Ƽ�ǽ�=��z ^	�g��}��'��,��;��~ ����U>�O7�@�,j�.�ū.6�������~�Xy�KBi<�$��*����.���`I	�!pk,ͽW�P�լ���X��O��>��,��=�L��D�LЅhk���iᕉ����\�O5�ru��������[�f�*"�e�YЂ�YG�<D��yG������:@�;яf/�:��Љ,>�/�8����qt�|�['qY 6N�Z��lDHPX5��y��x�� d�O�Tݹz�y�fe�[��$}&* f
���D?n"��IsRf�L%��b ��/�zh���=�|�\��9N�)Q%\�7�P�%�al�K�9�&8���4g�&�=�V��N��:a��,��>jw�RHi�Y�[�>��Ć�I(�@�zc2�=
��,R��Ƙ����\�\,�"4�C8�C��4�� yd[��*̔$E$�1��~���LO�4��� ��ȓ-���NP����·�o��@�9o��QGϛ�K��`��tw.��E�_�r� �/�r��r�_,<7"�w��0��p�F���W:�E&�	���D����N! ��O��N�����̻�з�����`6A��4W6!�V�MD���pE,d��l��#?�����H��|�l@ _\�e�{��#�y�G���V/�fN�hܛ¼��`N��������r4r8-��Y�G�4)��F�Wn~��*X��	qg��E�)��Xg�.��y㝄 ��|�ݶA��"sm��g[���jE��/�J���j�7���H�a.�J��*r�����bO�J��(�t'jL4R��\��Y��Ž���t���5��3��l�����Bwiq��m�g���L�������B�w��ˮo��5-�����|�-�"����Xi^7�H&���1�Ls9M��P�li�WS)�!�ɤ��~E7Rq��$���kV2x����ِ�]a�*�zG6!Zhg�M@j�-�I�Z�d�l" �4�H�N���kOl"�<��J̴Ć��\�.W����e�e�4@Z��N�T;»�'���2�Q�o�;$lȭĤ����՗) Ϣ>���~��F]C7��s����J1��@� -L�XzR͙�h��6T��"�qn���&8��R;3���H}���B�`v����H��k>8�)��y1�b�*�߃��i.O��4Z,>���G���Rv$چ����]���gֱ�����ECD; -b����gR��j����c�D+����Z���S����$Xs�}=)R#b��3��%YuͲT�<�bVp�8]��8��h��&%���5� ,�1@�_��>1���6�|�e0�,2�e��I��d�/|�<��d�2F2Q&�%AV�̋A�D@y4k�L :؅5�'w��.��H&��<X����W���8@��4[m~e���D�]��%���CTP�q.�(*J0ڊ���#�9����#�F�hz�^6L�bNU2�	-~� I46�4��9V�NlB�N�Ͳ9�k��5hN���\YEm���3s�L�$ΦE�ZsL�Gw���㽓G��G��#R��KRF*������~l�����j�E)Qs�0d���+	rP%��%z��y�$N��q�-�z���tm䞹�����Xc֏��b�I��=��qZ�SX㧐=�����5��n���kLJ��4�7(Ф��H��x�exM���$�a	�b����X��H���X����,ũ-�!�
ʳ�ٱ�!6;q+�!֟g�ݙZ
P�>�8#ͽT���}�X�+K&a� ���a�6<��<�ak��+��wM"a�;�{�N#�s {G���1�����i>!��D�8������VAr�?6V���#�A��> �G_Gx�苹�yIԈ�y�OD�wp�Pz���.���`�r�K4)"���/�v����Ё.��뚛Y��Iz��!�|k@pŷ[&�	�".��(��z��E���kN��ڮS�H�'�I����wN�8�T��W��{����Zp�i0W��b��o�I��9vvv휼y;��Y���g�>���q�7)PZ�u�8��#ܘi�l�����5v����پ2^(��˝�,������������[`HC.�˝�[�jE�#lg\�3@�N@�V�˝W�
��32`rtE��9P�,���P��J8��l�]/��4d-�)�#S�:������Y�`�~�+��9ۡ�ׄ&כL��Ƙ8p���y'���=���;R�/����Y=�� 
����?Mk�^I$|j�Vؙ.v��ΐ�]��nW��3Y#�j_i>%8j�o5���v�4��P���ȇ����`��o4z2�f��8��9�s;�{}bu@r4�}��~Ş��	O���Vg���.�Ђ|u;R��I�sҲ��
����MB�ⷕL:��I�%����^���dd#�c�w�&���9��`��*������B�> a��^|� �x�����`�c^���B�A�8[i�/(�G�k3��ptk�� 6s�Q5Y�ć �����{��B�;�1�|��&�fs�֬{�Wr��8Zo�L��6)�^���m���25�m������MIs�/�������e���i~_eE롆�̣"B����Id�=>�ь��&�v�ڮ�j�*|tI�W vL�K�HJ���tV�m����{>o;���e��u�׽��7֘�[֟'E�_Zb�i+W��NVi.��e��3��gRa�!.��m��ļ��2�?8�8杏q<��x��"_h�-���}��|i���9�L�����z\�����x�������ڦ���Q�|�R�K���%�b�,�@��1�q�.w iՎaZ�5��rU��H�t&�Jps�E���ι� bw���Z}��V�͵����ӵV�aN6.9�iqq�j�3� �.��f�.�rbz�L1W|\��gj(��$�T��������e��      8   �  x�MVɑ�0|۹xK�.'�l�q,�%W�����h_tq�������i�p��k���0��}Z��,�lh�~o~/	cz�>���C㦝*�����*�)8����
;$�J�a���q�t���ޮQY�7���M��*x�
an�R�*EAn�kz �c]����Y���!i�v��^�<��*�؆�H�[��)ja�ԯ�V���#Dl�쀗H�#�HY��[i����"*W͐�@�)��"�WH����Pq�-C�iH��쬚�rG�<�����p� 80td����$GxY�y2v>�;���vU(ᢣ��"u#���H��R�N���mGȀ��<������t�5jd-�:C��W���9����h[(*�}�^����xk��9�*�<����N9T���w���v�2QA�py(��J&�/{�-�F���vę֊�t�f���G$Z�e+��F#���Np�_zҴ��*��P6[�'$b �,I��bc��,6�{U�j]Q�Br��4��c��wi҇�y��*$y�Q��Y����\�X��g���6���V�am INg��R�y��=u�n�B�d�ԁ��/����"e؎S*yE�]��1��#���C��l =��v󐸾�kC~t�2�r�G7�T/��f��1CLK�UL��f��+-��1�ޒs���zI^';�a7�M)o���w�6P��g��v�W=��-���Dŏ��N�լդ)��sݍ�˭�顣�=$�m�<���k��=�"���0�K{�C�_�}��W���ycݽ��������<�X5�\O��pe�ep�l4��M��T��K���>��r��Գ�@�i�$x<�U�v�r4�	��=���hU��M8!�:7br���Yi>��* ��y`u����}��3���      7   >  x�}V�r7<c�?��}qGIV��D[��T*��"acv���7���r�U?��J,�U<�D���݃T�eI������D�4i�Tq��#�QrPF�l�w~�V?�m�L��aGV^�1��)/�Ȓd'9��yߎ'7����r�r��V���-J>��)��ӣ�sҫ������
q���'vlΊ�bt�����&�3�C�'�2��w�K/�p���&Ns�����i�7����R��Qk��C�Sƈ�@E��)>�8u@�%n�Y����j��WT�����e?�~@7�b��qV�+C%;�_i�ST�d��v�f�=w������B\x���D�z;��� )@a0JmD��T97f�h&M���VF�9��&��Q�&Iޓ�[m@Y�����^�Q��kD��)���� ۿ� ��%�A[� �$���"NK�|z�[�1m�>hį�O�g�K緄�s�5>?"��Ԛ��o��{Ջ�������C�'�A�5\䌮�Ybڿ���t@&�k��[tV��頕��;m����jx�yh,H�����Qm]���` j�f�{&o�5�^�Y!N���ޫV�\�bI_�p20�\O@?�����[�kg���8a�]�a�@�U���Md�8����v7L��$5ar�����q}�3N�Se-F4�}��A��2���/�#������W2�8c_�'X.]k�7���:�V={�H]n���Se?S��� �mf1y߈j�bm�t�9�d�j�8I�7�~G������w�IXW<X����I���$\e�X��嵻.
10�Z#.F�@!m�I�ť��s_'/4I`��a��!�Z���'�8�jȢ#�}���� �Dy"��C��;�VKUS7|�y*VC��Od8��9� z?�h�UL�&��p�����U��4����wO�6�xp幸$k��e9���P� `e\��(/���� �;���-�sʦ����X�#Li��Ԝ�I�ڻy)� f�^^��Y��Rp�o+k����R򞨲`��7�����:�d<��y��9<��{���}��m��"��(BVc#zu�Y!�x�U߰�}�H�aN�	~�}L�n�j�i�f❃�t+W#~� L��jO�]0G�Q[e7�|��K\��ݧd+�&ҷ̃(��7H���]�Gu#)Nl���������5�y��.XL�a!4/�x�^g;,�o\6'O��D��x���`=��1�}�
"A�wx�DE-��t�@��aZ��j�0�QZ�A*ۂfp!��d�Wϙݔǽl��H8tFΩ�7���Ӑ�K�z��]���Gx���[���Yx|�W�ț��ϟ�(�r�O      <   4  x�e�;N�@���S��v�J�@A��DE3������	�����H�����DP}�N�����@R�0��n���|`F����Q� �	���R�`�Zm���B��
�������z�$��Yr�!͒B$P�j��yMɓD��Jݏ�PjC�$�Ezq�ã��=Y&���P�����uX�n��WlG���m�}� i��"���/N��z���x�et���B� Td|�e$��pVhз��'�&��B�t��e��i:y�R+�O{�!3��"�c�P��(u���o���t�ږ�O���x�B��J�s      5   �  x�MR�n�0<���_P����q�E�S/4E�(2!)�O�9�P��c]��b�H����.�G�sVk�Yu���𨼜�ŧ����^	M�cp�&$p�E����	P����EB��|7�4J:��4ԉ����B,��[8p��L@$����QK���4$%���|#p4�tcd�ʄ�޽M* ���089�K��$�r��DT�k8a�Ui�Y���D7K�N�)�%A9����ǻ��bP&��\Z��7_�oZ)�;�#(�ya�b�~%�x��|�vX��{����'i*ڠmc��� .�5$�yZt{�N��Nn.��Hk��-8O/?�ę�S��b����)�����:e�<1jQ�T��d5Z��K֬���t�[����j~�a��������1���04�DQ9���BS�gZ�\�*��U(k�b�'����?ߊ��xD�      3   �   x�m�Q
�0C��S�)���q�J�&��`��Y��@ ���)C�ɳDnk��#w�ɉs��"��iUm%�Z*ͳ+v�6�J9�#�1_�ւ�417���R����eMQ��ѯ9_$.�����^�؟�a�~�PČ��0�!���0�     