#!/bin/bash

# -s or --slient
curl -s 'http://members.3322.org/dyndns/getip'

# -d or --data Sends the specified data in a POST request to the HTTP server
curl 'http://ip.taobao.com/service/getIpInfo.php' --data 'ip=211.152.98.163'

# -d or --data in a local file
curl 'http://ip.taobao.com/service/getIpInfo.php' --data '@test.json'

# -G or --get Sends the specified data in a POST request to the HTTP server
curl --get 'http://ip.taobao.com/service/getIpInfo.php' --data 'ip=211.152.98.163'

# -I or --head Fetch the HTTP-header only
curl --head 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=211.152.98.163'

# -i or --include Include the HTTP-header in the output
curl -i 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js&ip=211.152.98.163'

# -H or --header Extra header to use when getting a web page

# --rerty <num>

curl --get 'http://api.trie.top:10086/test/yiyi/showip' --resolve "api.trie.top:10086:127.0.0.1"
