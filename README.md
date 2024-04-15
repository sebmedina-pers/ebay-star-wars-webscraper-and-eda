# Ebay Scraper and EDA for StarWars vintage collection

## Project Description
This project consists of two parts:
1. Scraping data for StarWars vintage collection items on Ebay.
2. Using that data to conduct an Exploratory Data Analysis (EDA) to find inisghts on these products.

### Scraping data on Ebay with Scrapy ([Code](https://github.com/sebmedina-pers/ebay-star-wars-webscraper-and-eda/blob/main/starwars_ebay/starwars_ebay/spiders/star_wars_ebay_scrape.py))
 - This is done with the Scrapy framework in Python by using a search url.
 - Locating every product in a container through HTML elements and iterating on each product to extract several fields: `product_name, price, geo, condition, shipping_cost, etc`.
 - Then save all the data in a .csv file.

### EDA on StarWars vintage collection items ([EDA Code](https://github.com/sebmedina-pers/ebay-star-wars-webscraper-and-eda/blob/main/eda.ipynb))
 - Conduct an EDA in a py notebook 
