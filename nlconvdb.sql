PGDMP     .    /        	    	    x            nlconvdb    12.4    12.4 �    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16668    nlconvdb    DATABASE     �   CREATE DATABASE nlconvdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE nlconvdb;
                postgres    false            �            1259    16915    about_about    TABLE     .  CREATE TABLE public.about_about (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    short_description text NOT NULL,
    content text NOT NULL,
    image_1 character varying(100) NOT NULL,
    image_2 character varying(100) NOT NULL,
    image_3 character varying(100) NOT NULL
);
    DROP TABLE public.about_about;
       public         heap    postgres    false            �            1259    16913    about_about_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_about_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.about_about_id_seq;
       public          postgres    false    234                       0    0    about_about_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.about_about_id_seq OWNED BY public.about_about.id;
          public          postgres    false    233            �            1259    16926    about_information    TABLE       CREATE TABLE public.about_information (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    description character varying(145) NOT NULL,
    is_published boolean NOT NULL,
    sorting integer NOT NULL,
    created_date timestamp with time zone NOT NULL
);
 %   DROP TABLE public.about_information;
       public         heap    postgres    false            �            1259    16924    about_information_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_information_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.about_information_id_seq;
       public          postgres    false    236                       0    0    about_information_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.about_information_id_seq OWNED BY public.about_information.id;
          public          postgres    false    235            �            1259    16700 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16698    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16710    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16708    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16692    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16690    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16718 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16728    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16726    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16716    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16736    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16734 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16901 	   blog_blog    TABLE     ,  CREATE TABLE public.blog_blog (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    image character varying(100) NOT NULL,
    content text NOT NULL,
    is_published boolean NOT NULL,
    slug character varying(50) NOT NULL,
    created_date timestamp with time zone NOT NULL
);
    DROP TABLE public.blog_blog;
       public         heap    postgres    false            �            1259    16899    blog_blog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_blog_id_seq;
       public          postgres    false    232                       0    0    blog_blog_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_blog_id_seq OWNED BY public.blog_blog.id;
          public          postgres    false    231            �            1259    16934    contact_contact    TABLE     �  CREATE TABLE public.contact_contact (
    id integer NOT NULL,
    fullname character varying(250) NOT NULL,
    email character varying(254) NOT NULL,
    subject character varying(50) NOT NULL,
    message text NOT NULL,
    status character varying(10) NOT NULL,
    note character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    update_date timestamp with time zone NOT NULL
);
 #   DROP TABLE public.contact_contact;
       public         heap    postgres    false            �            1259    16932    contact_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_contact_id_seq;
       public          postgres    false    238                       0    0    contact_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;
          public          postgres    false    237            �            1259    16945    contact_contactimages    TABLE     �   CREATE TABLE public.contact_contactimages (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(100) NOT NULL,
    is_published boolean NOT NULL
);
 )   DROP TABLE public.contact_contactimages;
       public         heap    postgres    false            �            1259    16943    contact_contactimages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_contactimages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.contact_contactimages_id_seq;
       public          postgres    false    240                       0    0    contact_contactimages_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.contact_contactimages_id_seq OWNED BY public.contact_contactimages.id;
          public          postgres    false    239            �            1259    16796    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16794    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16682    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16680    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16671    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16669    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16827    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16882    home_partner    TABLE     �   CREATE TABLE public.home_partner (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    image character varying(100) NOT NULL,
    sorting integer NOT NULL,
    is_published boolean NOT NULL
);
     DROP TABLE public.home_partner;
       public         heap    postgres    false            �            1259    16880    home_partner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_partner_id_seq;
       public          postgres    false    228                       0    0    home_partner_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_partner_id_seq OWNED BY public.home_partner.id;
          public          postgres    false    227            �            1259    16890    home_setting    TABLE     �  CREATE TABLE public.home_setting (
    id integer NOT NULL,
    logo character varying(100) NOT NULL,
    favicon character varying(100) NOT NULL,
    title character varying(200) NOT NULL,
    keywords text NOT NULL,
    description text NOT NULL,
    short_address character varying(25) NOT NULL,
    long_address text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(100) NOT NULL,
    facebook character varying(200) NOT NULL,
    instagram character varying(200) NOT NULL,
    twitter character varying(200) NOT NULL,
    linked_in character varying(200) NOT NULL,
    logo_footer character varying(100) NOT NULL
);
     DROP TABLE public.home_setting;
       public         heap    postgres    false            �            1259    16888    home_setting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.home_setting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.home_setting_id_seq;
       public          postgres    false    230                       0    0    home_setting_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.home_setting_id_seq OWNED BY public.home_setting.id;
          public          postgres    false    229            �            1259    16839    product_category    TABLE     l   CREATE TABLE public.product_category (
    id integer NOT NULL,
    title character varying(50) NOT NULL
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false            �            1259    16837    product_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.product_category_id_seq;
       public          postgres    false    222                       0    0    product_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.product_category_id_seq OWNED BY public.product_category.id;
          public          postgres    false    221            �            1259    16860    product_images    TABLE     �   CREATE TABLE public.product_images (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(100),
    product_id integer NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    16858    product_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_images_id_seq;
       public          postgres    false    226                       0    0    product_images_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_images_id_seq OWNED BY public.product_images.id;
          public          postgres    false    225            �            1259    16847    product_product    TABLE     �  CREATE TABLE public.product_product (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL,
    youtube_link character varying(250),
    is_published boolean NOT NULL,
    sorting integer NOT NULL,
    slug character varying(50) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);
 #   DROP TABLE public.product_product;
       public         heap    postgres    false            �            1259    16845    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    224                       0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;
          public          postgres    false    223                       2604    16918    about_about id    DEFAULT     p   ALTER TABLE ONLY public.about_about ALTER COLUMN id SET DEFAULT nextval('public.about_about_id_seq'::regclass);
 =   ALTER TABLE public.about_about ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            	           2604    16929    about_information id    DEFAULT     |   ALTER TABLE ONLY public.about_information ALTER COLUMN id SET DEFAULT nextval('public.about_information_id_seq'::regclass);
 C   ALTER TABLE public.about_information ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �
           2604    16703    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16713    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16695    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16721    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    16731    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16739    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    16904    blog_blog id    DEFAULT     l   ALTER TABLE ONLY public.blog_blog ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_id_seq'::regclass);
 ;   ALTER TABLE public.blog_blog ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            
           2604    16937    contact_contact id    DEFAULT     x   ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);
 A   ALTER TABLE public.contact_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238                       2604    16948    contact_contactimages id    DEFAULT     �   ALTER TABLE ONLY public.contact_contactimages ALTER COLUMN id SET DEFAULT nextval('public.contact_contactimages_id_seq'::regclass);
 G   ALTER TABLE public.contact_contactimages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240                        2604    16799    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16685    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16674    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    16885    home_partner id    DEFAULT     r   ALTER TABLE ONLY public.home_partner ALTER COLUMN id SET DEFAULT nextval('public.home_partner_id_seq'::regclass);
 >   ALTER TABLE public.home_partner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228                       2604    16893    home_setting id    DEFAULT     r   ALTER TABLE ONLY public.home_setting ALTER COLUMN id SET DEFAULT nextval('public.home_setting_id_seq'::regclass);
 >   ALTER TABLE public.home_setting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230                       2604    16842    product_category id    DEFAULT     z   ALTER TABLE ONLY public.product_category ALTER COLUMN id SET DEFAULT nextval('public.product_category_id_seq'::regclass);
 B   ALTER TABLE public.product_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                       2604    16863    product_images id    DEFAULT     v   ALTER TABLE ONLY public.product_images ALTER COLUMN id SET DEFAULT nextval('public.product_images_id_seq'::regclass);
 @   ALTER TABLE public.product_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226                       2604    16850    product_product id    DEFAULT     x   ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224                       0    16915    about_about 
   TABLE DATA           g   COPY public.about_about (id, title, short_description, content, image_1, image_2, image_3) FROM stdin;
    public          postgres    false    234   ��                 0    16926    about_information 
   TABLE DATA           h   COPY public.about_information (id, title, description, is_published, sorting, created_date) FROM stdin;
    public          postgres    false    236   ��       �          0    16700 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   q�       �          0    16710    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       �          0    16692    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��       �          0    16718 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   P�       �          0    16728    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �       �          0    16736    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   +�       �          0    16901 	   blog_blog 
   TABLE DATA           `   COPY public.blog_blog (id, title, image, content, is_published, slug, created_date) FROM stdin;
    public          postgres    false    232   H�                 0    16934    contact_contact 
   TABLE DATA           y   COPY public.contact_contact (id, fullname, email, subject, message, status, note, created_date, update_date) FROM stdin;
    public          postgres    false    238   c�                 0    16945    contact_contactimages 
   TABLE DATA           O   COPY public.contact_contactimages (id, title, image, is_published) FROM stdin;
    public          postgres    false    240   ��       �          0    16796    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    16682    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    16671    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   M�       �          0    16827    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   S�       �          0    16882    home_partner 
   TABLE DATA           O   COPY public.home_partner (id, title, image, sorting, is_published) FROM stdin;
    public          postgres    false    228   �       �          0    16890    home_setting 
   TABLE DATA           �   COPY public.home_setting (id, logo, favicon, title, keywords, description, short_address, long_address, phone, email, facebook, instagram, twitter, linked_in, logo_footer) FROM stdin;
    public          postgres    false    230   "�       �          0    16839    product_category 
   TABLE DATA           5   COPY public.product_category (id, title) FROM stdin;
    public          postgres    false    222   K�       �          0    16860    product_images 
   TABLE DATA           F   COPY public.product_images (id, title, image, product_id) FROM stdin;
    public          postgres    false    226   ��       �          0    16847    product_product 
   TABLE DATA           �   COPY public.product_product (id, title, image, description, youtube_link, is_published, sorting, slug, created_date, category_id) FROM stdin;
    public          postgres    false    224   �                   0    0    about_about_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.about_about_id_seq', 1, true);
          public          postgres    false    233            !           0    0    about_information_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.about_information_id_seq', 3, true);
          public          postgres    false    235            "           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            #           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            $           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    206            %           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            &           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    212            '           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            (           0    0    blog_blog_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_blog_id_seq', 2, true);
          public          postgres    false    231            )           0    0    contact_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contact_contact_id_seq', 1, false);
          public          postgres    false    237            *           0    0    contact_contactimages_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_contactimages_id_seq', 3, true);
          public          postgres    false    239            +           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 67, true);
          public          postgres    false    218            ,           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    204            -           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          postgres    false    202            .           0    0    home_partner_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.home_partner_id_seq', 14, true);
          public          postgres    false    227            /           0    0    home_setting_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.home_setting_id_seq', 1, true);
          public          postgres    false    229            0           0    0    product_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_category_id_seq', 3, true);
          public          postgres    false    221            1           0    0    product_images_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_images_id_seq', 6, true);
          public          postgres    false    225            2           0    0    product_product_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_product_id_seq', 9, true);
          public          postgres    false    223            P           2606    16923    about_about about_about_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.about_about
    ADD CONSTRAINT about_about_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.about_about DROP CONSTRAINT about_about_pkey;
       public            postgres    false    234            R           2606    16931 (   about_information about_information_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.about_information
    ADD CONSTRAINT about_information_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.about_information DROP CONSTRAINT about_information_pkey;
       public            postgres    false    236                       2606    16825    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    16752 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            !           2606    16715 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    16705    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    16743 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    16697 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            )           2606    16733 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            ,           2606    16767 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            #           2606    16723    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            /           2606    16741 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            2           2606    16781 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            &           2606    16819     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            K           2606    16909    blog_blog blog_blog_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_blog DROP CONSTRAINT blog_blog_pkey;
       public            postgres    false    232            N           2606    16911    blog_blog blog_blog_slug_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_slug_key UNIQUE (slug);
 F   ALTER TABLE ONLY public.blog_blog DROP CONSTRAINT blog_blog_slug_key;
       public            postgres    false    232            T           2606    16942 $   contact_contact contact_contact_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.contact_contact DROP CONSTRAINT contact_contact_pkey;
       public            postgres    false    238            V           2606    16950 0   contact_contactimages contact_contactimages_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.contact_contactimages
    ADD CONSTRAINT contact_contactimages_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.contact_contactimages DROP CONSTRAINT contact_contactimages_pkey;
       public            postgres    false    240            5           2606    16805 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219                       2606    16689 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    16687 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    16679 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            9           2606    16834 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            G           2606    16887    home_partner home_partner_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_partner
    ADD CONSTRAINT home_partner_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_partner DROP CONSTRAINT home_partner_pkey;
       public            postgres    false    228            I           2606    16898    home_setting home_setting_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.home_setting
    ADD CONSTRAINT home_setting_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.home_setting DROP CONSTRAINT home_setting_pkey;
       public            postgres    false    230            <           2606    16844 &   product_category product_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.product_category DROP CONSTRAINT product_category_pkey;
       public            postgres    false    222            D           2606    16865 "   product_images product_images_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    226            ?           2606    16855 $   product_product product_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_pkey;
       public            postgres    false    224            B           2606    16857 (   product_product product_product_slug_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_slug_key UNIQUE (slug);
 R   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_slug_key;
       public            postgres    false    224                       1259    16826    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    16763 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    16764 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    16749 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            '           1259    16779 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            *           1259    16778 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            -           1259    16793 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            0           1259    16792 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            $           1259    16820     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            L           1259    16912    blog_blog_slug_4812aa2c_like    INDEX     f   CREATE INDEX blog_blog_slug_4812aa2c_like ON public.blog_blog USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_blog_slug_4812aa2c_like;
       public            postgres    false    232            3           1259    16816 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            6           1259    16817 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            7           1259    16836 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            :           1259    16835 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            E           1259    16878 "   product_images_product_id_28ebf5f0    INDEX     c   CREATE INDEX product_images_product_id_28ebf5f0 ON public.product_images USING btree (product_id);
 6   DROP INDEX public.product_images_product_id_28ebf5f0;
       public            postgres    false    226            =           1259    16872 $   product_product_category_id_0c725779    INDEX     g   CREATE INDEX product_product_category_id_0c725779 ON public.product_product USING btree (category_id);
 8   DROP INDEX public.product_product_category_id_0c725779;
       public            postgres    false    224            @           1259    16871 "   product_product_slug_76cde0ae_like    INDEX     r   CREATE INDEX product_product_slug_76cde0ae_like ON public.product_product USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.product_product_slug_76cde0ae_like;
       public            postgres    false    224            Y           2606    16758 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    207    2838            X           2606    16753 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2843    209    211            W           2606    16744 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2833    207            [           2606    16773 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2843    209    215            Z           2606    16768 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2851            ]           2606    16787 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2838    207    217            \           2606    16782 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    213    2851            ^           2606    16806 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2833    205    219            _           2606    16811 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2851    219    213            a           2606    16873 G   product_images product_images_product_id_28ebf5f0_fk_product_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_product_id_28ebf5f0_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_product_id_28ebf5f0_fk_product_product_id;
       public          postgres    false    226    224    2879            `           2606    16866 K   product_product product_product_category_id_0c725779_fk_product_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_category_id_0c725779_fk_product_category_id FOREIGN KEY (category_id) REFERENCES public.product_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.product_product DROP CONSTRAINT product_product_category_id_0c725779_fk_product_category_id;
       public          postgres    false    224    222    2876                   x������ � �         }   x�e�1�  ��s
v#��~al��h�8tb3�Cp�֎� �!̵<������N�y��>!Y��=M�Y�#/n�,+�g-{�S�a��.awY���mҷ��Rni�V�� <^�e�R�D.T      �      x������ � �      �      x������ � �      �   �  x�m�A��0@��)zT�I�.�B �Hȝz2f��J\P9W�{vS�Eb����]?�O�zk������Y�.ge�4�:��Pyx�]��>ep��;� ��)�e�{�C`�UdvtC�����*�Z��k.'@�c��	�Ɋ����ےe3���ZE��[�%��y��p'D@�"� -`zE�����OmJ�?���	��� ��	���0�N�k�����tj�p>:UE�4�f�En`��{�����b�5o�+XC֣K�ZGa�B���$LԞ1�#����hEH.�����S�T���OA�qB�o�D�Da�H���IM#��~o�k���M:�4���Qx����gH k�a��ʥv�o�6j��6n�+;`����A�%�D���\�';�n��=�畆z%jg�r�r��W���N�\�볝�4��]�����E#D=�zFj ����f��f驪]�"e�����	����	�iz������z���ʤ����S��R�H� 5�H� h��$�%���+�^m�=�Ck��*T�g�0hN���Ĭ9��&.�ͩ\������o�.>��~�^��ϻ���J�~�g/|\"����=��]��蝏x�������s-n���7.�D.�ָ���sg����Z�niB      �   �   x�%�M�0 ������}�\sd_�@B�� �L3�҈~}A���=o�����"�3 �og���y�%��KWn���h��a�hq�OɌ���-W�����b����B�� QW )H�2 N:���v����U����Yss��]Eͭ���@b< �"TSs������y_T�2<      �      x������ � �      �      x������ � �      �     x��SAn�0<ۯX��/�e�I�81���@���C�bemeF$%PbP�3~�� �+KS*��	ͅ$��ٙ]n2��)�d��2�~����'�j��[�|�XZ�𹪝^/��+��>��L�b]���f�i��YK�N)4}����΂�FE6�6�3�+��YR���Ԓ�#��I�}�,�f����������J厇�Y�{�t�hqπ9��%Z�h���Xg�Jn�x��z��z	ri�M�>j�5��K��i=�G����v�-�AZ��l�Ѫ��xƀ�CB��P������=j�** �� �M^0)*|�d���C�w��2ɔx&+Y-�lϻ���|��_��55�H�Ś�lŎO�SZdo��k� Y;���8j~�2W�7��\�\��"�X��i߶�0=�-	���?
W�-�����4�J����f�Lva
D,�y�������]��o�|_OEq1,?���NE�:4�C�?��wh��h�.�Y��������9l��            x������ � �         L   x�3��/-R�OK�LN�L��+IL.)��/-�����e�s�pT_���j��`LXC��OY��	TC� �&/H      �   �  x����r�H���S�|]�����-!PT����A���-���@�&<ܹ%�=%83�';���ӣ���!c�ч�>�3(�)@��f�/�3Ȟ�''W?�W?>�K��ݗI9�W�I����C��-S�&�)-z�������篧�ߦ !<�K4�Z8��\}�����h�47³�W��;�b�c9e�Ѕ��i+e��Gm�Z������B�)��+� =���*qtTϪB!B��e4��=���3f��{���a
�e�\c����n�E��$� �	�"��G���M�[/��ZV�`B̔@���k�A��c����O��e�,����8[0F�ᚁ���㶩�� � <pK$3 �<���O�D��
���^�us��;�X҂*"���Ld��ϛy����>L_�M(H�B�׀��!�K9�N*۽h�e=�ً !�Jv������!B��

�)&���M����̟U�z9@aa�"E
x��S��v�ƥ�����&�<�7����+|3y�\N���jv�����9N1�gu�?iM�����Ѭ��onx}P�p$+���#�W�?�V�*�B�  Q�b��L� lJ�U|C8��X��Ţj�U9_T)u�P-ȑ�(�i����*�WoIźJ-�{�m�y5h	ź"��Jͽ�v���#�t�;���l�l���z�Iĺn%��{�=��g)�z�H Xi(vL!$x�=iӍߙ�HhnQ@�{�=��v���v�Rw���Kk�j>'{Sg�b{�nm4�~iZ�>���,�A<��&	ה2����ώ�f�����%a/�������G��26���oԽ9s���ؗ���Z�����d�WX����j �ŋG������JD`<���Vr3=Ɠ� S�����hAC4�4e����^7��L�=O�TSD+N�O&�]~k�?��4�O�
DXj}��@����E��Bu#�U8+������fh!B4�}��}��2@s�m�M,>w���r]^����hٿ�����O�iu�����%Tp*��ܧ���a���a�)@j��0���T��f�nB��.�˛�j��t{�.
l4��r#T_d�L]58���ǣ��`�o��g�}��H�WZ)}3�;W����� t�
 �E����+�����������d��nq������������z��C�,%Gl��"��N���x�ϗ1_�n.h_]��`�:P�G��J�	��y;�lKDI-�?�g��P��;N��w�}����[���B��s?�P�SJ��xQ4���^�S���X�ܓ��m]c��+�x2�ɸ�H!����}���{6fM�m6�'��b�8��|�_��*�D�>�b��T���2�s�~b��϶�?�^*f�P���ki���mxp�A�F,ݐ�lmm�Ќ�m      �   �   x�]���0C��� c��p��U�Mզ��=e���Y�l3y�%���O`��9y�������$%bנdNx�Q�֘.��/`��t��BL2�Qw�������~�Z����x�h���I�8���Cݾ�:u���"u���~fP[m>�M��k+�l�a�      �   �  x����n� ���S�~T����,#!���6.������D��d�>�@u���i�n�!`|�'oۊJ^�~��І�c��L�%�@+;O�O(�Y�*{�|�X�)C²��$ԴᜌƋ���Τ�����6��]yf���Ig�q�7o�=��{�ǔ�&��Y�#.��fY0y���s�(HJ��Qc��E3���q̖��t�˴�?���QY�P�(���1}\g}���D�~ɟ�&�N:����!�����O���ΙK���R0��1���[b79���RN��S.N>m�Ov
q,g�b�tn�y�����c+Nm��(d��+I���9�DYH�d!�c��'(�NMAyW�yH	93��u���V<��P�Ze��3����P	�5U�n���;�euyZ@W��i>N���h���$B�)��C����P�0L!�W�B����+��p� Ԡ�8����a���"Y�5p ׫HYyf�/�P��� �֪�������Aژ0      �   �  x���K��@  �u{��O4��*�)���"�f�t�G��s����3�;����RN��1�f�`_�D[\�L�z|[�������;ġ���ٞ����T��U}x�Ǧq�"���B������q�%�[N]x+8��Q��F�)�ա��[U�|M��%��N�a�!���0�F�k&.G3/I�k��n)e'7�mm<��A�����6p��]���TXX���i�m%��dH4�j��3�R���I���W� s� ��JPEd	�H��,���`�+ɇly����M�E��t��8��Fݹ
�
c�� i�����O�t�{ D��n��yS��_CDV]`"a�
*+��(G��j��cA�{Y��n��W�rE��k��������S����w��ih��y	۔`\�����;�*�*`(C��k��b6���      �      x�M�MN�0FדS�-u��-Ӣ�YX�q�)�p��6z��].��Ve/��=k<à�l�y'�F��Dm���P/F�l�C5�ObQ�0'X@����o�QA��}���	�$��G.�ʘ��PxeE��h����E�ׄ7pTO(%7YM}��m����1hڋľC�(�*�no�������Q�U�$����#\�|GxO(�Jv��셭T����F���0�ݒ�0�I1�f5��e��ts���<<p~_dY��Ȣ      �     x�m��N�@��ۧ��-�#'�/��f�u)�ng��B�/��+\|�{�F�!z���~�o��W!�>�'�uU��n��,�"&w�7�u�L� C���Q+��`��[���������
a�ܷm��"���ϝZ��A��y�6��k
��GW"ӛ�I���aJ��3�*ԝ/a�vw��Ef����n�����i�u
�W�xao���da+�a�Gq\׵\`�����g��-VQ�)��Ap�k�B�N��-U����޲ϓ| W\F�2��/I+��      �   K   x�3�tJ,�>�Q�71;3/5'�(�ˈ�)?)3O�%3'37'57YҘ32�(����d�&��̂�ļ��"�=... V��      �   ]   x�3�,��O�ˬ0�,(�O)M.)և���sr���c(1�*1�L��K��LF2�������������P/� �ӌ����:s3��=... �	/\      �   O  x���n�6���������Z��� @����6K�b�� ��bmV"��b�e�~�z��5i�����,A<�}�d��B%��)u��eeNS�l^M�n�V�yyqn*]����BsI~-�����W$ە w�$`�fO�JO���Z#T�If�T��"����k"y%T�u*�Ky~E E/�ȅ���
��`���K�fm��QVZ�!D	�+r�������NƖk~�Q�V�A[]�@�2��7�*���Ј��w���[	��ib�T�Rhw���J��I���K.�î�e��HR�V-�܁λ�����>��<�1G�%�a���n�UAJ���7;񰓼�s��Yן��:1��d��@��H��>]Lw��`�k�V����cMy�+�WX�3>X�S�0{	�Ԏ磆�]4��Sk���Ȱl+��'��"t7ٶ����t�>4�fֵ�d�A+�,�δk�쎋{~Z^8��N����`�^<e�xlċ��t��g�w�$p>�-o�"@� ���z3�4�t| N�����[x���$6	�ț��e��:����h:Q�)��x��V�׈؈�Q!�M9��3:s=P�a6w>���;n�|���v��w5N���Cj��$�� �LхG]����'��K�@��w�h�aEC���_�������&��6� M���x<N>scϧ~��� �����o^���q2�PT��4X���4���aH�/*�ܬ����Q-m��.�������9�P\����S/��ٜ��}t �;M�N�����Q����}����צ@�� �s�sٜͺ�D'��d2�^fx�     