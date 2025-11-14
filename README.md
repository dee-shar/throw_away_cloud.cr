# throw_away_cloud.cr
Web-API for [throwaway.cloud](https://throwaway.cloud/) a comprehensive, real-time API for detecting disposable email addresses which is trusted by developers worldwide to maintain data quality and prevent abuse

## Example
```cr
require "./throw_away_cloud"

throw_away_cloud = ThrowAwayCloud.new
domains = throw_away_cloud.get_domains()
puts domains
```
