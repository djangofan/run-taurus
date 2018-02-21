# run-taurus

A project demonstratinga load test with a Taurus jmx Jmeter project.

Other instructions here:  (https://gettaurus.org/docs/JMeter/)


## Other Instructions

Tests require Apache server setup locally: (https://medium.com/@JohnFoderaro/how-to-set-up-apache-in-macos-sierra-10-12-bca5a5dfffba)

Set X display if you want:  https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
If XQuart starts slow, delete: /opt/X11/var/run/font_cache.lock

Probably should use XMing X11 display on Windows, but I didn't try.

If you correctly set XDisplay , and enable jmeter GUI in .yml,  then you will see both Jmeter
start on your local machine and also a browser pointing to the test report.
Once jmeter GUI starts up, you have to execute the RUN button manually, which is useful for debugging.
