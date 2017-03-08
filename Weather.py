import requests
#parcing lib
from BeautifulSoup import BeautifulSoup

# inport url
url = 'https://www.yr.no/place/Ireland/Leinster/Dublin/'
response = requests.get(url)
html = response.content
# print html -> will just print strat to the terminal

#Prints in terminal too in a prettier format this time
soup = BeautifulSoup(html)
#print soup.prettify()

table = soup.body.find('table', attrs={'class':'yr-table yr-table-overview2 yr-popup-area'})

for row in table.findAll('tr'):
    for cell in row.findAll('td'):
        print cell.text.replace('&nbsp;', '')
#print table.prettify()
