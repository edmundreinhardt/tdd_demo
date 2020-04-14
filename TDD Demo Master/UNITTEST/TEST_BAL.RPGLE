000001190521**free
000002190326ctl-opt option(*srcstmt);
000003190326ctl-opt nomain;
000004190326ctl-opt bnddir('TDD_DEMO/UNITTEST');
000005190326/copy rpgunit/rpgunit1,testcase
000006190326/copy tdd_demo/source,getbal_h
000007190326
000008190326dcl-proc Test_returnZeroForIdNotFound export;
000009190326  dcl-pi *n extproc(*dclcase) end-pi;
000010190326  dcl-s balance packed(11:2);
000011190326  balance = getBalance ('abc');
000012190326  assert (balance = 0 : 'Balance not 0 for id not found');
000013190326end-proc;
