000002200417**free
000003220521// Adding a comment to this application
000005200417ctl-opt nomain;
000006200417
000007210524/copy source,getbal_h
000008200417
000009200417dcl-proc getBalance export;
000010200417   dcl-pi *n like(balance_t);
000011200417      id like(id_t) const;
000012200417      found ind options(*nopass);
000013200417   end-pi;
000014210524   dcl-f balancef keyed extdesc('BALANCEF_D') extfile('BALANCEF');
000015200417   dcl-ds ds likerec(balancer) inz;
000016200417   chain id balancer ds;
000017200417   if %found;
000018200417      if %parms >= %parmnum(found);
000019200417         found = *off;
000020200417      endif;
000021200417      return ds.balance;
000022200417   else;
000023200417      if %parms >= %parmnum(found);
000024200417         found = *off;
000025200417      endif;
000026200417      return 0;
000027200417   endif;
000028200417end-proc;
