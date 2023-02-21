PGDMP                         {            postgres    13.9    14.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3025                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16400    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16429 	   mahasiswa    TABLE     n   CREATE TABLE public.mahasiswa (
    nama character varying,
    nim integer,
    jurusan character varying
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    16424 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16416    pembeli    TABLE     �   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying NOT NULL,
    jk character(1),
    alamat character varying
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            �            1259    16395    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16408 	   transaksi    TABLE     �   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            �          0    16400    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    202   �       �          0    16429 	   mahasiswa 
   TABLE DATA           7   COPY public.mahasiswa (nama, nim, jurusan) FROM stdin;
    public          postgres    false    206   u       �          0    16424 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    205   �       �          0    16416    pembeli 
   TABLE DATA           G   COPY public.pembeli (id_pembeli, nama_pembeli, jk, alamat) FROM stdin;
    public          postgres    false    204   �       �          0    16395    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    201   V       �          0    16408 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    203   �        <           2606    16407    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    202            B           2606    16428    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    205            @           2606    16423    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    204            :           2606    16399    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    201            >           2606    16415    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    203            C           2606    16468    barang fk_supplier_barang    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    201    2874    202            �   �  x�M�Mr�0���9A��=:]u#'4uLx:�}�mH�$��lYߓ�dZ�֟e�*�G\�*��R�}ڦB� ��T��,+5Y��^A�i."s*Eu�kȚ�]]�[*1�5���i�Q(��b��ϯ$�ζ�;��5��Ɉ�����`��'?��^�/��b�iF�r����fG#�*u�)&�?�#d��m���X��+�b��#g�_ ���%���ت�~����H�UKFna�7wx��y���f�JJg��6�U��g��>*ԅ� 0J'#B��L�bೢ�\-�4�4*>c���D>z�HF�N�(��\%7�_C\ӆl�k�����v�U�>7��p��C�A�-ݭw�{��m�s�%q��l)z3��v��d@�"*=0C�l�*�(����	      �   =   x��--NI��LK�42246����K�/�M,��N�*.-�L�K���˚��5F������ ��      �     x�M�Kn1מ�8�6�s����ͣ=���Д����ͻ��_��O��E!��-�(��f� �E��V�$�B�j8�֋��n^hm�s��D�E�î�I��h�0"
����q���ChiVІm�����6<K��B��Sh^	i�W��,Uцo���)D~�|�1��aIp�A�%u ��Z,��n�Ǌ�ԁ��!u �.I��`z͢��a�ԁ��q͢UAw��1�={W�i����<���m      �   r  x�e��n�0�ϫ���)��	�&E�襗	�����a�O�]���"P�����vtA�©�'�L="��E�Ԟ�L$���7tˣ`��;䐳5ͩ=�Y���2�6<i�i��ݕ��%=�1�S2���#���� YϑTy�0�5������j<�5 #iuC�g��n���FA�w�s���I�r�K.��G��.�y���5��+O&�P��m���Y��~���� nI¹�ҡ���H�_�5�.�d}C[�������_��@��I&U�h�}<+�7���~N�Ǵ;�7c��x�5�,w�)�+�"�r��֥Nњ���?���J7�S��E붦V���T��t�~���/�x      �   �  x�]��n�0E��W�>$>�^��-� E�nF1�В(�Q�_�!i8q��ܙ�w�'ߟ�����ˑ0��Jikx�(�d����� O?���o�ޑ^�;D�'�iEBt���
�7b�� "�!�i�P���Fp!��]��!�d_��`>e���`�XzZ�KJ)z˸�kuʋ;A�V���O�I��4��ot�6���_�^������Mϐ%�s���z*��K)P�G7�6��5m�N>@��.c�Hf4W�b �*8#ǔS���j�mX^C����c���t��ѝK���w�F+�:L�+ɢ�1�2�t�ч�j��Bb(Wݛ�#������5Jj�iƞ����!n:mz����C��_2Z��v�9�\Ч�*���5��6@���<��E����i.:�龸!g�������
y�%)8@�4eĸ�{�L�k��ѵ�#0%���a��@��LQ���q�v�[�+�	�6�e���dr.E9L�5��\I^!�C�ҶƆiC���-:�h�i_cm�a��6C�@O�����Hy��}�������o.���ŞK�W]���>F�5Y��VF�wgՔ����	S"s��t�CZZ(i��ػ7��ok8�S�h���G�--Y���s�h��~\����p�.�Nb      �     x�m�An� D���.��.0p�l���lr�{���䒥~6��k��=��ov]��ߣ���o��b(P/,3ceX�826�l�=�������3�`����p2��TB+'��7�x̉,*��f��7�ei���r}F3DV7�ei���.a#�ٳ!]{��,�Y�4Cd#��i��f`���f���i��-���B�!ri��8�v!�y}���4C�-�΅4C���mBO�c��rx"�kO_��'RY_��}����⮲     