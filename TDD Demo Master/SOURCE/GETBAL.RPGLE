000002200417**free
000003200417ctl-opt nomain;
000004200417
000005200417/copy TDD_DEMO/source,getbal_h
000006200417
000007200417dcl-proc getBalance export;
000008200417   dcl-pi *n like(balance_t);
000009200417      id like(id_t) const;
000010200417   end-pi;
000011200417   dcl-f balancef keyed extdesc('TDD_DEMO/BALANCEF_D') extfile('BALANCEF');
000012200417   dcl-ds ds likerec(balancer) inz;
000013200417   chain id balancer ds;
000014200417   return ds.balance;
000015200417end-proc;
