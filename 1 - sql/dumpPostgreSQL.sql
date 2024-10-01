--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

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
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    customername character varying(255) NOT NULL,
    address text,
    isactive boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    id integer NOT NULL,
    productname character varying(255) NOT NULL,
    productprice numeric(10,2),
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: sales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sales (
    id integer NOT NULL,
    customer integer,
    product integer,
    salesdate date,
    quantity integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: sales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);


--
-- Name: sales sales_customer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_customer_fkey FOREIGN KEY (customer) REFERENCES public.customers(id);


--
-- Name: sales sales_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_product_fkey FOREIGN KEY (product) REFERENCES public.products(id);

INSERT INTO public.products (productName, productPrice, Description) VALUES 
('Laptop', 1200.99, 'High performance laptop'),
('Smartphone', 699.99, 'Latest smartphone model'),
('Headphones', 199.50, 'Noise-cancelling headphones'),
('Tablet', 499.99, '10-inch display tablet'),
('Monitor', 259.75, '27-inch 4K monitor'),
('Keyboard', 79.99, 'Mechanical keyboard'),
('Mouse', 39.50, 'Wireless mouse'),
('External Hard Drive', 89.90, '1TB external hard drive'),
('Smartwatch', 249.00, 'Fitness tracking smartwatch'),
('Bluetooth Speaker', 129.99, 'Portable Bluetooth speaker');


INSERT INTO public.customers (customerName, address, isActive) VALUES 
('Alice Johnson', '123 Maple St, Cityville', TRUE),
('Bob Smith', '456 Oak St, Townsville', TRUE),
('Charlie Brown', '789 Pine St, Villagetown', TRUE),
('Diana Ross', '101 Elm St, Metrocity', TRUE),
('Edward Norton', '202 Cedar St, Urbanland', TRUE),
('Fiona Apple', '303 Birch St, Countryville', TRUE),
('George Clooney', '404 Walnut St, Suburbtown', TRUE),
('Helen Mirren', '505 Maple St, Cityville', FALSE),
('Ivan Drago', '606 Oak St, Townsville', TRUE),
('Julia Roberts', '707 Pine St, Villagetown', TRUE),
('Kevin Hart', '808 Elm St, Metrocity', TRUE),
('Laura Palmer', '909 Cedar St, Urbanland', FALSE),
('Michael Scott', '1010 Birch St, Countryville', TRUE),
('Nina Simone', '1111 Walnut St, Suburbtown', TRUE),
('Oscar Wilde', '1212 Maple St, Cityville', TRUE);


INSERT INTO public.sales (Customer, Product, salesDate, quantity) VALUES 
(1, 1, '2023-08-01', 1),
(2, 2, '2023-08-02', 2),
(3, 3, '2023-08-03', 1),
(4, 4, '2023-08-04', 1),
(5, 5, '2023-08-05', 3),
(6, 6, '2023-08-06', 2),
(7, 7, '2023-08-07', 1),
(8, 8, '2023-08-08', 4),
(9, 9, '2023-08-09', 1),
(10, 10, '2023-08-10', 2),
(11, 1, '2023-08-11', 1),
(12, 2, '2023-08-12', 1),
(13, 3, '2023-08-13', 3),
(14, 4, '2023-08-14', 2),
(15, 5, '2023-08-15', 1),
(1, 6, '2023-08-16', 2),
(2, 7, '2023-08-17', 4),
(3, 8, '2023-08-18', 1),
(4, 9, '2023-08-19', 1),
(5, 10, '2023-08-20', 3),
(6, 1, '2023-08-21', 1),
(7, 2, '2023-08-22', 1),
(8, 3, '2023-08-23', 2),
(9, 4, '2023-08-24', 1),
(10, 5, '2023-08-25', 3),
(11, 6, '2023-08-26', 2),
(12, 7, '2023-08-27', 4),
(13, 8, '2023-08-28', 1),
(14, 9, '2023-08-29', 2),
(15, 10, '2023-08-30', 1),
(1, 1, '2023-09-01', 1),
(2, 2, '2023-09-02', 3),
(3, 3, '2023-09-03', 2),
(4, 4, '2023-09-04', 1),
(5, 5, '2023-09-05', 4),
(6, 6, '2023-09-06', 3),
(7, 7, '2023-09-07', 1),
(8, 8, '2023-09-08', 2),
(9, 9, '2023-09-09', 1),
(10, 10, '2023-09-10', 3),
(11, 1, '2023-09-11', 2),
(12, 2, '2023-09-12', 1),
(13, 3, '2023-09-13', 1),
(14, 4, '2023-09-14', 2),
(15, 5, '2023-09-15', 1);


--
-- PostgreSQL database dump complete
--

