:- op(601, xfx, (/)).
:- op(601, xfx, (\)).
:- multifile ccg/2, id/2.
:- discontiguous ccg/2, id/2.

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   ba(np:nb,
    fa(np:nb,
     t(np:nb/n,'Every',every,'DT','O','O'),
     t(n,shirt,shirt,'NN','O','O')),
    fa(np\np,
     t((np\np)/np,in,in,'IN','O','O'),
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G2444/ (s:_G2450\np),
      t(np,'I',i,'PRP','O','O')),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   ba(np:nb,
    fa(np:nb,
     t(np:nb/n,'Every',every,'DT','O','O'),
     t(n,shirt,shirt,'NN','O','O')),
    fa(np\np,
     t((np\np)/np,in,in,'IN','O','O'),
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G1881/ (s:_G1887\np),
      t(np,'I',i,'PRP','O','O')),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    t(n,shirt,shirt,'NN','O','O')),
   fa(np\np,
    t((np\np)/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G1794/ (s:_G1800\np),
        t(np,'I',i,'PRP','O','O')),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O')))))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    t(n,shirt,shirt,'NN','O','O')),
   fa(np\np,
    t((np\np)/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G1692/ (s:_G1698\np),
        t(np,'I',i,'PRP','O','O')),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O')))))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    t(n,shirt,shirt,'NN','O','O')),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     fa(s/s,
      t((s/s)/np,in,in,'IN','O','O'),
      lx(np, n,
       t(n,'Zara','Zara','NNP','O','I-LOC'))),
     fc(s:dcl/np,
      tr(s:_G1590/ (s:_G1596\np),
       t(np,'I',i,'PRP','O','O')),
      t((s:dcl\np)/np,liked,lik,'VBD','O','O'))))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    t(n,shirt,shirt,'NN','O','O')),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     fa(s/s,
      t((s/s)/np,in,in,'IN','O','O'),
      lx(np, n,
       t(n,'Zara','Zara','NNP','O','I-LOC'))),
     fc(s:dcl/np,
      tr(s:_G1482/ (s:_G1488\np),
       t(np,'I',i,'PRP','O','O')),
      t((s:dcl\np)/np,liked,lik,'VBD','O','O'))))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    t(n,shirt,shirt,'NN','O','O')),
   fa(np\np,
    t((np\np)/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G1365/ (s:_G1371\np),
        lx(np, n,
         t(n,'I',i,'PRP','O','O'))),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O')))))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    t(n,shirt,shirt,'NN','O','O')),
   fa(np\np,
    t((np\np)/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G1272/ (s:_G1278\np),
        lx(np, n,
         t(n,'I',i,'PRP','O','O'))),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O')))))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   ba(np:nb,
    fa(np:nb,
     t(np:nb/n,'Every',every,'DT','O','O'),
     t(n,shirt,shirt,'NN','O','O')),
    fa(np\np,
     t((np\np)/np,in,in,'IN','O','O'),
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G1170/ (s:_G1176\np),
      lx(np, n,
       t(n,'I',i,'PRP','O','O'))),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   ba(np:nb,
    fa(np:nb,
     t(np:nb/n,'Every',every,'DT','O','O'),
     t(n,shirt,shirt,'NN','O','O')),
    fa(np\np,
     t((np\np)/np,in,in,'IN','O','O'),
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G1065/ (s:_G1071\np),
      lx(np, n,
       t(n,'I',i,'PRP','O','O'))),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    ba(n,
     t(n,shirt,shirt,'NN','O','O'),
     fa(n\n,
      t((n\n)/np,in,in,'IN','O','O'),
      lx(np, n,
       t(n,'Zara','Zara','NNP','O','I-LOC'))))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G960/ (s:_G966\np),
      t(np,'I',i,'PRP','O','O')),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np:nb,
   fa(np:nb,
    t(np:nb/n,'Every',every,'DT','O','O'),
    ba(n,
     t(n,shirt,shirt,'NN','O','O'),
     fa(n\n,
      t((n\n)/np,in,in,'IN','O','O'),
      lx(np, n,
       t(n,'Zara','Zara','NNP','O','I-LOC'))))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G858/ (s:_G864\np),
      t(np,'I',i,'PRP','O','O')),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  fa(np:nb,
   t(np:nb/n,'Every',every,'DT','O','O'),
   ba(n,
    t(n,shirt,shirt,'NN','O','O'),
    fa(n\n,
     t((n\n)/np,in,in,'IN','O','O'),
     ba(np,
      lx(np, n,
       t(n,'Zara','Zara','NNP','O','I-LOC')),
      lx(np\np, s:dcl/np,
       fc(s:dcl/np,
        tr(s:_G741/ (s:_G747\np),
         t(np,'I',i,'PRP','O','O')),
        t((s:dcl\np)/np,liked,lik,'VBD','O','O'))))))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  fa(np:nb,
   t(np:nb/n,'Every',every,'DT','O','O'),
   ba(n,
    t(n,shirt,shirt,'NN','O','O'),
    fa(n\n,
     t((n\n)/np,in,in,'IN','O','O'),
     ba(np,
      lx(np, n,
       t(n,'Zara','Zara','NNP','O','I-LOC')),
      lx(np\np, s:dcl/np,
       fc(s:dcl/np,
        tr(s:_G657/ (s:_G663\np),
         t(np,'I',i,'PRP','O','O')),
        t((s:dcl\np)/np,liked,lik,'VBD','O','O'))))))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  fa(np:nb,
   t(np:nb/n,'Every',every,'DT','O','O'),
   t(n,shirt,shirt,'NN','O','O')),
  fa(s:dcl\np,
   fa((s\np)/ (s\np),
    t(((s\np)/ (s\np))/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G558/ (s:_G564\np),
        t(np,'I',i,'PRP','O','O')),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O'))))),
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    ba(s:pss\np,
     t(s:pss\np,sold,sell,'VBN','O','O'),
     t((s\np)\ (s\np),out,out,'RP','O','O')))))).

ccg(1,
 ba(s:dcl,
  fa(np:nb,
   t(np:nb/n,'Every',every,'DT','O','O'),
   t(n,shirt,shirt,'NN','O','O')),
  fa(s:dcl\np,
   fa((s\np)/ (s\np),
    t(((s\np)/ (s\np))/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G441/ (s:_G447\np),
        t(np,'I',i,'PRP','O','O')),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O'))))),
   ba(s:dcl\np,
    fa(s:dcl\np,
     t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
     t(s:pss\np,sold,sell,'VBN','O','O')),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np,
   lx(np, n,
    fa(n,
     t(n/n,'Every',every,'DT','O','O'),
     t(n,shirt,shirt,'NN','O','O'))),
   fa(np\np,
    t((np\np)/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G324/ (s:_G330\np),
        t(np,'I',i,'PRP','O','O')),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O')))))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

ccg(1,
 ba(s:dcl,
  ba(np,
   lx(np, n,
    fa(n,
     t(n/n,'Every',every,'DT','O','O'),
     t(n,shirt,shirt,'NN','O','O'))),
   fa(np\np,
    t((np\np)/np,in,in,'IN','O','O'),
    ba(np,
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')),
     lx(np\np, s:dcl/np,
      fc(s:dcl/np,
       tr(s:_G231/ (s:_G237\np),
        t(np,'I',i,'PRP','O','O')),
       t((s:dcl\np)/np,liked,lik,'VBD','O','O')))))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np,
   ba(np,
    lx(np, n,
     fa(n,
      t(n/n,'Every',every,'DT','O','O'),
      t(n,shirt,shirt,'NN','O','O'))),
    fa(np\np,
     t((np\np)/np,in,in,'IN','O','O'),
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G138/ (s:_G144\np),
      t(np,'I',i,'PRP','O','O')),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  fa(s:dcl\np,
   t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
   ba(s:pss\np,
    t(s:pss\np,sold,sell,'VBN','O','O'),
    t((s\np)\ (s\np),out,out,'RP','O','O'))))).

ccg(1,
 ba(s:dcl,
  ba(np,
   ba(np,
    lx(np, n,
     fa(n,
      t(n/n,'Every',every,'DT','O','O'),
      t(n,shirt,shirt,'NN','O','O'))),
    fa(np\np,
     t((np\np)/np,in,in,'IN','O','O'),
     lx(np, n,
      t(n,'Zara','Zara','NNP','O','I-LOC')))),
   lx(np\np, s:dcl/np,
    fc(s:dcl/np,
     tr(s:_G45/ (s:_G51\np),
      t(np,'I',i,'PRP','O','O')),
     t((s:dcl\np)/np,liked,lik,'VBD','O','O')))),
  ba(s:dcl\np,
   fa(s:dcl\np,
    t((s:dcl\np)/ (s:pss\np),is,be,'VBZ','O','O'),
    t(s:pss\np,sold,sell,'VBN','O','O')),
   t((s\np)\ (s\np),out,out,'RP','O','O')))).

