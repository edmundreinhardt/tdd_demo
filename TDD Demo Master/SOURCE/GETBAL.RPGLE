000002200417**free
000004220522// Fantastic new feature to demonstrate the need for a new branch
000005220522
000006200417ctl-opt nomain;
000007200417
000008210524/copy source,getbal_h
000009200417
000010200417dcl-proc getBalance export;
000011200417   dcl-pi *n like(balance_t);
000012200417      id like(id_t) const;
000013200417      found ind options(*nopass);
000014200417   end-pi;
000015210524   dcl-f balancef keyed extdesc('BALANCEF_D') extfile('BALANCEF');
000016200417   dcl-ds ds likerec(balancer) inz;
000017200417   chain id balancer ds;
000018200417   if %found;
000019200417      if %parms >= %parmnum(found);
000020200417         found = *off;
000021200417      endif;
000022200417      return ds.balance;
000023200417   else;
000024200417      if %parms >= %parmnum(found);
000025200417         found = *off;
000026200417      endif;
000027200417      return 0;
000028200417   endif;
000029200417end-proc;
