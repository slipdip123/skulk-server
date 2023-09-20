require('./_INCLUDE_THIS.rb')

res=`http #{IP_ADDRESS}`
puts res
if res.include? 'xenia-fleet-server root'
  passed = true
end

test_result('root ping', passed)

res=`http #{IP_ADDRESS}/api/v1`

if res.include? 'API v1 root'
  passed = true
end

test_result('API v1 ping', passed)

