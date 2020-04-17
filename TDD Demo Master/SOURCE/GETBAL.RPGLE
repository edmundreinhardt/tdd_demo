000002200417**free
000003200417ctl-opt nomain;
000004200417
000005200417/copy TDD_DEMO/source,getbal_h
000006200417
000007200417dcl-proc getBalance export;
000008200417   dcl-pi *n like(balance_t);
000009200417      id like(id_t) const;
000010200417   end-pi;
000011200417   return 0;
000012200417end-proc;
