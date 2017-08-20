# HA
1. deploy many apps which are stateless .
2. deploy load balancer , if you don't have, deploy two nginx servers instead .
3. if using nginx as load balancer , you will deloy keepalived on all nginx server  and there is a virtual ip address.
4. you can add/remove backend servers(apps) dynamiclly.

# MONITOR and ALERT
1. deploy monitor, for example: nagios\cacti\ganglia\open-falcon\Prometheus, but I recommend zabbix.
	It is Enterprise-class, and more protocols are supported.  
2. create some scripts(python or shell) for alert, deploying more than one media types is recommended, for example : email\sms\wechat.
3. the zabbix support linux os, but  it‘s basic, you must deploy applications monitor. for example:  
there are two motheds in springboot app :
1. jmx 
2. http get metrics

# LOG
1. recommended : ELK (elasticsearch\logstash\kibana), it is really very good .
2. for linux: deploy rsyslog server to collect logs from  other servers
3. for applicatons: deploy filebeat or fluent

# TRACE
1. deploying APM(Application Performance Management) is very important for product system
2. recommended: zipkin\cat\pinpoint(java)
