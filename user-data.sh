#!/bin/bash

ip_address=$(hostname -I | awk '{print $1}')

cat > index.html <<EOF
<h1>Hello word: $ip_address</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &
