:INPUT,FORWARD,OUTPUT
-p sctp -m sctp --sport 1;=;OK
-p sctp -m sctp --sport 65535;=;OK
-p sctp -m sctp --sport 1:65535;=;OK
-p sctp -m sctp --sport -1;;FAIL
-p sctp -m sctp --sport 65536;;FAIL
-p sctp -m sctp --dport 1;=;OK
-p sctp -m sctp --dport 1:65535;=;OK
-p sctp -m sctp --dport 65535;=;OK
-p sctp -m sctp --dport -1;;FAIL
-p sctp -m sctp --dport 65536;;FAIL
-p sctp -m sctp --chunk-types all DATA;=;OK
-p sctp -m sctp --chunk-types all INIT;=;OK
-p sctp -m sctp --chunk-types all INIT_ACK;=;OK
-p sctp -m sctp --chunk-types all SACK;=;OK
-p sctp -m sctp --chunk-types all HEARTBEAT;=;OK
-p sctp -m sctp --chunk-types all HEARTBEAT_ACK;=;OK
-p sctp -m sctp --chunk-types all ABORT;=;OK
-p sctp -m sctp --chunk-types all SHUTDOWN;=;OK
-p sctp -m sctp --chunk-types all SHUTDOWN_ACK;=;OK
-p sctp -m sctp --chunk-types all ERROR;=;OK
-p sctp -m sctp --chunk-types all COOKIE_ECHO;=;OK
-p sctp -m sctp --chunk-types all COOKIE_ACK;=;OK
-p sctp -m sctp --chunk-types all ECN_ECNE;=;OK
-p sctp -m sctp --chunk-types all ECN_CWR;=;OK
# ERROR: iptables-save segfaults: iptables -A INPUT -p sctp -m sctp --chunk-types all ASCONF
# -p sctp -m sctp --chunk-types all ASCONF;=;OK
# ERROR: iptables-save segfaults: iptables -A INPUT -p sctp -m sctp --chunk-types all ASCONF_ACK
# -p sctp -m sctp --chunk-types all ASCONF_ACK;=;OK
# ERROR: iptables-save segfaults: iptables -A INPUT -p sctp -m sctp --chunk-types all FORWARD_TSN
# -p sctp -m sctp --chunk-types all FORWARD_TSN;=;OK
-p sctp -m sctp --chunk-types all SHUTDOWN_COMPLETE;=;OK
