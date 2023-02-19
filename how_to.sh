# creatve py venv
python3 -m env venv
# activate venv
source venv/bin/activate
# install scrapy
pip install scrapy
# create project in scrapy
scrapy startproject starwars_ebay
# go to project
cd starwars_ebay
# view composition
tree
# scrapy shell
scrapy shell
# fetch url to scrape (expected 200 resp)
fetch("https://www.ebay.com/sch/i.html?_from=R40&_nkw=star+wars+vintage+collection&_sacat=246&LH_TitleDesc=0&_fsrp=1&_pgn=1")

# Testing how xpath on Ebay.com works
test_ = response.xpath('//*[contains(@class, "srp-river-results")]')
test_2 = test_.xpath('//*[contains(@class, "srp-results")]')
test_3 = test_2.xpath('//*[@id="srp-river-results"]')
test_4 = test_3.xpath('//*[@data-gr4="1"]')

# ebay product page container path
response.xpath('//*[@id="srp-river-results"]').get()
# response.xpath('//*[@id="srp-river-results"]').extract()[0]
# first product in url
response.xpath('//div/div/ul/li[contains(@class, "s-item" )]').get()
response.xpath('//div/div/ul/li[contains(@class, "s-item" )]').extract_first(default='not-found')
# save variable to all items
products = response.xpath('//div/div/ul/li[contains(@class, "s-item" )]')

# get 1st name
products.xpath('.//*[@class="s-item__title"]//text()').get()
# get price
products.xpath('.//*[@class="s-item__price"]//text()').get()
# get shipping cost
products.xpath('.//*[contains(@class, "s-item__shipping")]//text()').get()
# dynamic ("Last one") // could add with error handling
products.xpath('.//*[contains(@class, "s-item__dynamic")]//text()').get()

# run spyder & save to .json or .csv
scrapy crawl starwars_ebay -O starwars_ebay.csv