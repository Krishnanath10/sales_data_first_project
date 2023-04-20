create database sales_data_analysis;
use sales_data_analysis;
select * from sales_data_sample_analysis;

-- 1. Which month had a highest sales?

select month_id, sales from sales_data_sample_analysis t1
where sales = (select max(sales) from sales_data_sample_analysis);


-- 2.Which 3 cities sold the most products?

select city, sum(quantityordered) as max_order from sales_data_sample_analysis
group by 1
order by 2 desc
limit 3;

-- 3.What is the average order value?

select ordernumber, round(avg(sales), 2) as avrage_order_value from sales_data_sample_analysis
group by 1
order by 2 desc;

-- 4.What are the top 5 best-selling products?

select productline from sales_data_sample_analysis
where sales = (select max(sales) from sales_data_sample_analysis)
group by 1
order by 1 desc;
