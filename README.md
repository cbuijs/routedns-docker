<h1>My RouteDNS Docker</h1>
<h4>Install</h4>
To build and run:<br>
<code>docker build -t routedns .</code><br>
<code>docker run -dit --rm --network host --name routedns routedns</code><br><br>
Or from the Docker-Hub:<br>
<code>docker pull cbuijs/routedns</code><br>
<code>docker run -dit --rm --network host --name routedns routedns</code>
<h4>Usage</h4>
Default runs on port 53 and forwards to <a href="https://quad9.net">Quad9 DNS Services</a> using DNS-Over-HTTPS (DOH).
<h4>Logging</h4>
Logging can be done executing:<br>
<code>docker logs -f routedns</code>
<h4>Filtering</h4>
Using <a href="https://github.com/cbuijs/accomplist/tree/master/my-routedns">My RouteDNS-Filters</a> by default. Which generate quite some false-positives but blocks ads, trackers, malicious and adult stuff. Also filtering out <a href="https://github.com/cbuijs/accomplist/tree/master/mal-ip-tiny">Unwanted/Bad IP-Addresses</a> from answer/replies.
