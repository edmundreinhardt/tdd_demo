000001200417**free
000002200417ctl-opt option(*srcstmt);
000003200417ctl-opt nomain;
000004200417ctl-opt bnddir('TDD_DEMO/UNITTEST');
000005200417/copy rpgunit/rpgunit1,testcase
000006200417/copy tdd_demo/source,getbal_h
000007200417
000008200417dcl-proc Test_returnZeroForIdNotFound export;
000009200417  dcl-pi *n extproc(*dclcase) end-pi;
000010200417  dcl-s balance packed(11:2);
000011200417  balance = getBalance ('abc');
000012200417  assert (balance = 0 : 'Balance not 0 for id not found');
000013200417end-proc;
000014200417
000015200417dcl-proc Test_returnBalanceForValidId export;
000016200417  dcl-pi *n extproc(*dclcase) end-pi;
000017200417  dcl-s balance packed(11:2);
000018200417  add_record ('123' : 123.45);
000019200417  balance = getBalance ('123');
000020200417  assert (123.45 = balance : 'Balance <> 123.45');
000021200417end-proc;
000022200417
000023200417dcl-proc create_empty_file;
000024200417  runCmd ('CRTPF QTEMP/BALANCEF SRCFILE(TDD_DEMO/SOURCE) '
000025200417           + 'SRCMBR(BALANCEF)');
000026200417  runCmd ('OVRDBF BALANCEF QTEMP/BALANCEF');
000027200417end-proc;
000028200417
000029200417dcl-proc add_record;
000030200417  dcl-pi *n;
000031200417    id like(id_t) const;
000032200417    balance like(balance_t) const;
000033200417  end-pi;
000034200417  dcl-f balancef usage(*output) extdesc('TDD_DEMO/BALANCEF');
000035200417  dcl-ds ds likerec(balancer);
000036200417  ds.id = id;
000037200417  ds.balance = balance;
000038200417  write balancer ds;
000039200417end-proc;
000040200417
000041200417dcl-proc setup export;
000042200417  callp(e) runCmd ('DLTF QTEMP/BALANCEF');
000043200417  create_empty_file ();
000044200417end-proc;
000045200417
000046200417dcl-proc teardown export;
000047200417  callp(e) runCmd ('DLTF QTEMP/BALANCEF');
000048200417end-proc;
000049200417 **free
000050190326ctl-opt option(*srcstmt);
000051190326ctl-opt nomain;
000052190326ctl-opt bnddir('TDD_DEMO/UNITTEST');
000053190326/copy rpgunit/rpgunit1,testcase
000054190326/copy tdd_demo/source,getbal_h
000055190326
000056190326dcl-proc Test_returnZeroForIdNotFound export;
000057190326  dcl-pi *n extproc(*dclcase) end-pi;
000058190326  dcl-s balance packed(11:2);
000059190326  balance = getBalance ('abc');
000060190326  assert (balance = 0 : 'Balance not 0 for id not found');
000061190326end-proc;
