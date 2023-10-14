SELECT * FROM project_data_set_first1.dataset_csv_file;

select * from dataset_csv_file;

SELECT 'Purchase Address', value From dataset_csv_file;
SELECT `Purchase Address`, value as Purchase_adress FROM dataset_csv_file LIMIT 0, 1000;

SELECT `Purchase Address`, value FROM your_schema.dataset_csv_file LIMIT 0, 1000;


select * from carbon_footprint_by_product;
select * from green_house_emmision;
 select * from normalization_factors;
 
select g.Fiscal_Year, c.product, sum(Emissions) from green_house_emmision g inner join carbon_footprint_by_product c on g.Fiscal_Year=c.Release_Year group by g.Fiscal_Year, c. Product;

select Emissions, fiscal_year from green_house_emmision;

select Fiscal_Year, Category, Type, Scope, Description, Emissions from green_house_emmision group by Fiscal_Year;

SELECT Fiscal_Year, Category, SUM(Emissions) AS Total_Emissions from  green_house_emmision group by Fiscal_Year, Category;

select scope, sum(Emissions)as Emissions from green_house_emmision group by scope;
select scope, sum(Emissions)as Emissions from green_house_emmision where scope="Scope 1";
select scope, sum(Emissions)as Emissions from green_house_emmision where scope="Scope 2 (market-based)";
select scope, sum(Emissions)as Emissions from green_house_emmision where scope="Scope 3";
    
select Description, sum(Emissions)as Emissions from green_house_emmision group by Description order by Emissions desc;

select scope, Sum(Emissions) as total from green_house_emmision where Scope="Scope 1" group by Scope;
select Type, sum(Emissions) as "Achieved " from green_house_emmision where Type="Carbon removals" group by type;
select Type, sum(Emissions) as "Emmisions" from green_house_emmision where Type="Carbon removals" group by type;












