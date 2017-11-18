
# jun/16/2009 19:43:05 by RouterOS 2.9.26
# software id = ILTS-NX0
#
/ queue simple 
add name="queue1" target-addresses=1.1.1.1/32 dst-address=0.0.0.0/0 \
    interface=all parent=none direction=both priority=8 \
    queue=default-small/default-small limit-at=64000/128000 \
    max-limit=64000/128000 burst-limit=128000/256000 \
    burst-threshold=128000/256000 burst-time=10s/10s total-queue=default-small \
    disabled=no 
