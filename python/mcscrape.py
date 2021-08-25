#Written by Barkuto

import re
import urllib.request

url_pattern = r'\"(https:\/\/nightly.link\/OmnifactoryDevs\/Omnifactory\/workflows\/nightly\/dev\/omnifactory-dev-.*-server.zip)\"'
url_regex = re.compile(url_pattern)
site_url = 'https://nightly.link/OmnifactoryDevs/Omnifactory/workflows/nightly/dev'

try:
    url = urllib.request.urlopen(site_url)
    content = url.read().decode('utf-8')

    with open('url.env', 'w') as f:
        f.write(f'URL={url_regex.search(content).groups()[0]}')
except Exception as e:
    print(e)