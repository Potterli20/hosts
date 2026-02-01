echo " download"
wget -O ad-hosts-pro https://github.com/Potterli20/file/releases/download/ad-hosts-pro/ad-domains.txt
wget -O ad-hosts-sqlist https://github.com/Potterli20/file/releases/download/ad-hosts-lite/ad-domains.txt
wget -O allow https://github.com/Potterli20/file/releases/download/github-hosts/allow.txt
wget -O ad-youtube-hosts https://github.com/Potterli20/file/releases/download/ad-youtube-hosts/ad-youtube-domains.txt
wget -O dns-hosts-china https://github.com/Potterli20/file/releases/download/dns-hosts-all/dnshosts-all-domain-whitelist_full.txt
wget -O dns-hosts-gfw  https://github.com/Potterli20/file/releases/download/dns-hosts-all/dnshosts-all-domain-blacklist_full.txt

echo "Adding Title and SYNC data..."
sed -i '24cTotal ad-hosts-pro 屏蔽追踪广告总数: '$(wc -l ad-hosts-pro)'  <br/> ' README.md  
sed -i '26cTotal ad-hosts-lite 屏蔽追踪广告总数: '$(wc -l ad-hosts-sqlist)'   <br/> ' README.md  
sed -i '28cTotal allowlist list 允许名单总数: '$(wc -l allow)'  <br/>' README.md 
sed -i '30cTotal ad-youtube-hosts 屏蔽追踪广告总数: '$(wc -l ad-youtube-hosts)'  <br/>' README.md  
sed -i '32cTotal DNS分流加速国内规则列表总数: '$(wc -l dns-hosts-china)'  <br/>' README.md  
sed -i '34cTotal DNS分流加速国外规则列表总数: '$(wc -l dns-hosts-gfw)'  <br/>' README.md  

sed -i '85c<li>Total ad-hosts-pro 屏蔽追踪广告总数: '$(wc -l ad-hosts-pro)' </li> ' index.html
sed -i '86c<li>Total ad-hosts-lite 屏蔽追踪广告总数: '$(wc -l ad-hosts-sqlist)'  </li> ' index.html
sed -i '87c<li>Total allowlist list 允许名单总数: '$(wc -l allow)'  </li>' index.html
sed -i '88c<li>Total ad-youtube-hosts 屏蔽追踪广告总数: '$(wc -l ad-youtube-hosts)'  </li> ' index.html
sed -i '89c<li>Total DNS分流加速国内规则列表总数: '$(wc -l dns-hosts-china)'  </li>' index.html
sed -i '90c<li>Total DNS分流加速国外规则列表总数: '$(wc -l dns-hosts-gfw)'  </li>' index.html

rm ad-*
rm dns-*
rm allow
