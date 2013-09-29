::
::  ames (4a), networking
::
  |=  pit=vase
  ^-  vane
  =>  =~
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aA, identity logic           ::
  ::
  |%
  ::
  ++  grip                                              ::  extend will
    |=  [wet=will law=will]
    ^-  will
    ?~  wet  law
    ?:  =(wet law)  law
    ?^  t.wet
      ?>((meld i.wet i.t.wet) [i.wet $(wet t.wet)])
    ?~  law
      ?>((pier i.wet) [i.wet ~])
    ?~  q.p.q.i.wet
      ?>((meld i.wet i.law) [i.wet law])
    =+  rul=(sein r.p.q.i.wet)
    |-  ^-  will
    ?:  ?&  =(rul r.p.q.i.law)
            =(p.p.q.i.law u.q.p.q.i.wet)
        ==
      ?>((meld i.wet i.law) [i.wet law])
    ?>(?=(^ t.law) $(law t.law))
  ::
  ++  meld                                              ::  verify connect
    |=  [new=deed old=deed]
    ^-  &
    ?>  (melt new old)
    ?>  =((shaf %meld (sham q.new)) (need (sure:pu:(hail r.q.old) *code p.new)))
    %&
  ::
  ++  melt                                              ::  proper connect
    |=  [new=deed old=deed]
    ^-  ?
    =+  rac=(clan r.p.q.new)
    ?&  ?~  q.p.q.new
          ?&  =(r.p.q.old r.p.q.new) 
              &(!=(%earl rac) =(p.p.q.old (dec p.p.q.new)))
          ==
        ?&  &(!=(%pawn rac) !=(%czar rac))
            |(=(0 p.p.q.new) =(%earl rac))
            =(r.p.q.old (sein r.p.q.new))
            =(p.p.q.old u.q.p.q.new)
        ==
    ==
  ::
  ++  pare                                              ::  shorten against
    |=  [fou=will law=will]
    ::  ~&  [%pare-fou fou]
    ::  ~&  [%pare-law law]
    ^-  will
    =+  [ouf=(flop fou) wal=(flop law)] 
    %-  flop  
    |-  ^-  will
    ?~  ouf  wal
    ?~  wal  ?>(=(~ ouf) ~)
    ?.  =(i.wal i.ouf)  ouf
    $(wal t.wal, ouf t.ouf)
  ::
  ++  pier                                              ::  initial deed
    |=  wed=deed
    ^-  &
    ?>  =+  rac=(clan r.p.q.wed)
        =+  loy=(hail r.q.wed)
        ?>  =(0 p.p.q.wed)
        ?>  =(fig:ex:loy ?+(rac !! %czar (zeno r.p.q.wed), %pawn r.p.q.wed))
        ?>  =((shaf %self (sham q.wed)) (need (sure:pu:loy *code p.wed)))
        %&
    %&
  ::
  ++  real                                              ::  validate
    |=  [mac=mace law=will]  
    ?>  ?&  |-  ^-  ?
            ?~  mac  &
            ?>  ?&  ?=(^ law)
                    (lth p.p.q.i.law 9)                 ::  9-lives rule
                    =(p.p.q.i.law p.i.mac)
                    =(r.q.i.law pub:ex:(wear q.i.mac))
                ==
            $(mac t.mac, law t.law)
        ==
    %&          
  ::
  ++  rice                                              ::  mace at life
    |=  [mar=life mac=mace]
    ^-  (unit mace)
    ?~  mac  ~
    ?:  =(mar p.i.mac)  [~ mac]
    ?:  (gth mar p.i.mac)  ~
    $(mac t.mac)
  ::
  ++  rick                                              ::  will at life
    |=  [mar=life lag=ship law=will]
    ^-  (unit will)
    ?~  law  ~
    ?:  =(mar p.p.q.i.law)  [~ law]
    ?:  (gth mar p.p.q.i.law)  ~
    ?:  |(?=(~ q.p.q.i.law) !=(lag r.p.q.i.law))  ~
    $(law t.law)
  ::
  ++  zeno                                              ::  imperial keyprint
    |=  zar=@pD
    ^-  @uvH  ^-  @
    %+  snag  zar
    :~  0wN.Kdp5k.p5ncD.4Wsih.bFQFu   ::  0, ~zod, Curtis Yarvin (sator)
        0w0                           ::  1, ~nec
        0w0                           ::  2, ~bud
        0w0                           ::  3, ~wes
        0w0                           ::  4, ~sev
        0w0                           ::  5, ~per
        0w0                           ::  6, ~sut
        0w0                           ::  7, ~let
        0w0                           ::  8, ~ful
        0w0                           ::  9, ~pen
        0w0                           ::  10, ~syt
        0w0                           ::  11, ~dur
        0w0                           ::  12, ~wep
        0w0                           ::  13, ~ser
        0w3j.H0sty.jHa3F.JlD26.4LPwV  ::  14, ~wyl, Zimran Ahmed (donum)
        0w3F.QdvV-.toAsR.hvUNk.fHjW6  ::  15, ~sun, Colin Smith (fortuna)
        0w0                           ::  16, ~ryp
        0w0                           ::  17, ~syx
        0w0                           ::  18, ~dyr
        0w0                           ::  19, ~nup
        0w0                           ::  20, ~heb
        0w0                           ::  21, ~peg
        0w0                           ::  22, ~lup
        0w0                           ::  23, ~dep
        0wO.9KmGJ.OngO1.DHMsK.GcY1S   ::  24, ~dys, S. Datskovskiy (fortuna)
        0w0                           ::  25, ~put
        0w0                           ::  26, ~lug
        0w0                           ::  27, ~hec
        0w0                           ::  28, ~ryt
        0w0                           ::  29, ~tyv
        0w0                           ::  30, ~syd
        0wp.BgRGJ.kslnv.PLAqb.TRKbr   ::  31, ~nex, Prakhar Goel (fortuna)
        0w0                           ::  32, ~lun
        0w0                           ::  33, ~mep
        0w0                           ::  34, ~lut
        0w0                           ::  35, ~sep
        0w0                           ::  36, ~pes
        0w0                           ::  37, ~del
        0w1w.KF-J1.5I63F.khFyv.h0n4J  ::  38, ~sul, John Burnham (donum)
        0w0                           ::  39, ~ped
        0w0                           ::  40, ~tem
        0w0                           ::  41, ~led
        0w0                           ::  42, ~tul
        0w0                           ::  43, ~met
        0w0                           ::  44, ~wen
        0w0                           ::  45, ~byn
        0w0                           ::  46, ~hex
        0w0                           ::  47, ~feb
        0w0                           ::  48, ~pyl
        0w0                           ::  49, ~dul
        0w0                           ::  50, ~het
        0w0                           ::  51, ~mev
        0w0                           ::  52, ~rut
        0w0                           ::  53, ~tyl
        0w0                           ::  54, ~wyd
        0w0                           ::  55, ~tep
        0w0                           ::  56, ~bes
        0w0                           ::  57, ~dex
        0w0                           ::  58, ~sef
        0w0                           ::  59, ~wyc
        0w0                           ::  60, ~bur
        0w0                           ::  61, ~der
        0w0                           ::  62, ~nep
        0w0                           ::  63, ~pur
        0w0                           ::  64, ~rys
        0w0                           ::  65, ~reb
        0w0                           ::  66, ~den
        0w0                           ::  67, ~nut
        0w0                           ::  68, ~sub
        0w0                           ::  69, ~pet
        0w0                           ::  70, ~rul
        0w0                           ::  71, ~syn
        0w0                           ::  72, ~reg
        0w0                           ::  73, ~tyd
        0w0                           ::  74, ~sup
        0w0                           ::  75, ~sem
        0w0                           ::  76, ~wyn
        0w0                           ::  77, ~rec
        0w0                           ::  78, ~meg
        0w0                           ::  79, ~net
        0w0                           ::  80, ~sec
        0w0                           ::  81, ~mul
        0w0                           ::  82, ~nym
        0w0                           ::  83, ~tev
        0w0                           ::  84, ~web
        0w0                           ::  85, ~sum
        0w0                           ::  86, ~mut
        0w0                           ::  87, ~nyx
        0w0                           ::  88, ~rex
        0w0                           ::  89, ~teb
        0w0                           ::  90, ~fus
        0w0                           ::  91, ~hep
        0w0                           ::  92, ~ben
        0w0                           ::  93, ~mus
        0w0                           ::  94, ~wyx
        0w0                           ::  95, ~sym
        0w0                           ::  96, ~sel
        0w0                           ::  97, ~ruc
        0w0                           ::  98, ~dec
        0w0                           ::  99, ~wex
        0w0                           ::  100, ~syr
        0w0                           ::  101, ~wet
        0w0                           ::  102, ~dyl
        0w0                           ::  103, ~myn
        0w0                           ::  104, ~mes
        0w0                           ::  105, ~det
        0w0                           ::  106, ~bet
        0w0                           ::  107, ~bel
        0w0                           ::  108, ~tux
        0w0                           ::  109, ~tug
        0w0                           ::  110, ~myr
        0w0                           ::  111, ~pel
        0w0                           ::  112, ~syp
        0w0                           ::  113, ~ter
        0w0                           ::  114, ~meb
        0w0                           ::  115, ~set
        0w0                           ::  116, ~dut
        0w0                           ::  117, ~deg
        0w0                           ::  118, ~tex
        0w0                           ::  119, ~sur
        0w0                           ::  120, ~fel
        0w0                           ::  121, ~tud
        0w0                           ::  122, ~nux
        0w0                           ::  123, ~rux
        0w0                           ::  124, ~ren
        0w0                           ::  125, ~wyt
        0w0                           ::  126, ~nub
        0w0                           ::  127, ~med
        0w0                           ::  128, ~lyt
        0w0                           ::  129, ~dus
        0w0                           ::  130, ~neb
        0w0                           ::  131, ~rum
        0w0                           ::  132, ~tyn
        0w0                           ::  133, ~seg
        0w0                           ::  134, ~lyx
        0w0                           ::  135, ~pun
        0w0                           ::  136, ~res
        0w0                           ::  137, ~red
        0w3J.15iJA.0pbNk.mZXyh.A~uKb  ::  138, ~fun, Aaron Beckerman (fortuna)
        0w0                           ::  139, ~rev
        0w3m.Cqumo.ZC7-e.794A4.Bqhh8  ::  140, ~ref, Matt Brubeck (fortuna)
        0w0                           ::  141, ~mec
        0w0                           ::  142, ~ted
        0w2d.GLlYg.-MwtO.ZCPBE.OqGB9  ::  143, ~rus, Stephen Burnham (donum)
        0w0                           ::  144, ~bex
        0w0                           ::  145, ~leb
        0w0                           ::  146, ~dux
        0w0                           ::  147, ~ryn
        0w0                           ::  148, ~num
        0w0                           ::  149, ~pyx
        0w0                           ::  150, ~ryg
        0w0                           ::  151, ~ryx
        0w0                           ::  152, ~fep
        0w0                           ::  153, ~tyr
        0w0                           ::  154, ~tus
        0w0                           ::  155, ~tyc
        0w0                           ::  156, ~leg
        0w0                           ::  157, ~nem
        0w0                           ::  158, ~fer
        0w0                           ::  159, ~mer
        0w0                           ::  160, ~ten
        0w0                           ::  161, ~lus
        0w0                           ::  162, ~nus
        0w0                           ::  163, ~syl
        0w0                           ::  164, ~tec
        0w0                           ::  165, ~mex
        0w0                           ::  166, ~pub
        0w0                           ::  167, ~rym
        0w0                           ::  168, ~tuc
        0w0                           ::  169, ~fyl
        0w0                           ::  170, ~lep
        0w0                           ::  171, ~deb
        0w0                           ::  172, ~ber
        0w0                           ::  173, ~mug
        0w0                           ::  174, ~hut
        0w0                           ::  175, ~tun
        0w0                           ::  176, ~byl
        0w0                           ::  177, ~sud
        0w0                           ::  178, ~pem
        0w0                           ::  179, ~dev
        0w0                           ::  180, ~lur
        0w0                           ::  181, ~def
        0w0                           ::  182, ~bus
        0w0                           ::  183, ~bep
        0w0                           ::  184, ~run
        0w0                           ::  185, ~mel
        0w0                           ::  186, ~pex
        0w0                           ::  187, ~dyt
        0w0                           ::  188, ~byt
        0w0                           ::  189, ~typ
        0w0                           ::  190, ~lev
        0w0                           ::  191, ~myl
        0w0                           ::  192, ~wed
        0w0                           ::  193, ~duc
        0w0                           ::  194, ~fur
        0w0                           ::  195, ~fex
        0w0                           ::  196, ~nul
        0w0                           ::  197, ~luc
        0w0                           ::  198, ~len
        0w0                           ::  199, ~ner
        0w0                           ::  200, ~lex
        0w0                           ::  201, ~rup
        0w0                           ::  202, ~ned
        0w0                           ::  203, ~lec
        0w0                           ::  204, ~ryd
        0w1U.n361n.FC3jj.9cX26.V1Wif  ::  205, ~lyd, Adam Bliss (fortuna)
        0w0                           ::  206, ~fen
        0w0                           ::  207, ~wel
        0w0                           ::  208, ~nyd
        0w0                           ::  209, ~hus
        0w0                           ::  210, ~rel
        0w0                           ::  211, ~rud
        0w0                           ::  212, ~nes
        0w0                           ::  213, ~hes
        0w0                           ::  214, ~fet
        0w0                           ::  215, ~des
        0w0                           ::  216, ~ret
        0w0                           ::  217, ~dun
        0w0                           ::  218, ~ler
        0w0                           ::  219, ~nyr
        0w0                           ::  220, ~seb
        0w0                           ::  221, ~hul
        0w0                           ::  222, ~ryl
        0w0                           ::  223, ~lud
        0w0                           ::  224, ~rem
        0w0                           ::  225, ~lys
        0w3C.YXlEl.pFbYV.9pYWI.d7cla  ::  226, ~fyn, Stephen Burnham (donum)
        0w0                           ::  227, ~wer
        0w0                           ::  228, ~ryc
        0w0                           ::  229, ~sug
        0w0                           ::  230, ~nys
        0w0                           ::  231, ~nyl
        0w0                           ::  232, ~lyn
        0w0                           ::  233, ~dyn
        0w0                           ::  234, ~dem
        0w0                           ::  235, ~lux
        0w0                           ::  236, ~fed
        0w0                           ::  237, ~sed
        0w0                           ::  238, ~bec
        0w0                           ::  239, ~mun
        0w0                           ::  240, ~lyr
        0w0                           ::  241, ~tes
        0w0                           ::  242, ~mud
        0w0                           ::  243, ~nyt
        0w0                           ::  244, ~byr
        0w0                           ::  245, ~sen
        0w0                           ::  246, ~weg
        0w0                           ::  247, ~fyr
        0w0                           ::  248, ~mur
        0w0                           ::  249, ~tel
        0w0                           ::  250, ~rep
        0w0                           ::  251, ~teg
        0w0                           ::  252, ~pec
        0w0                           ::  253, ~nel
        0w0                           ::  254, ~nev
        0wY.a0HAU.7Lbkf.6V514.OsJBv   ::  255, ~fes, John Burnham (donum)
    ==
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aB, packet format            ::
  ::
  |%
  ++  bite                                              ::  packet to cake
    |=  pac=rock  ^-  cake
    =+  [mag=(end 5 1 pac) bod=(rsh 5 1 pac)]
    =+  :*  vez=(end 0 3 mag)                           ::  protocol version
            chk=(cut 0 [3 20] mag)                      ::  checksum
            wix=(bex +((cut 0 [23 2] mag)))             ::  width of receiver
            vix=(bex +((cut 0 [25 2] mag)))             ::  width of sender
            tay=(cut 0 [27 5] mag)                      ::  message type
        ==
    ?>  =(0 vez)
    ?>  =(chk (end 0 20 (mug bod)))
    :+  [(end 3 wix bod) (cut 3 [wix vix] bod)]
      (kins tay)
    (rsh 3 (add wix vix) bod)
  ::
  ++  kins |=(tay=@ `skin`(snag tay [%none %open %fast %full ~]))
  ++  ksin |=(sin=skin `@`?-(sin %none 0, %open 1, %fast 2, %full 3))
  ++  spit                                              ::  cake to packet
    |=  kec=cake  ^-  @
    =+  wim=(met 3 p.p.kec)
    =+  dum=(met 3 q.p.kec)
    =+  yax=?:((lte wim 2) 0 ?:((lte wim 4) 1 ?:((lte wim 8) 2 3)))
    =+  qax=?:((lte dum 2) 0 ?:((lte dum 4) 1 ?:((lte dum 8) 2 3)))
    =+  wix=(bex +(yax))
    =+  vix=(bex +(qax))
    =+  bod=:(mix p.p.kec (lsh 3 wix q.p.kec) (lsh 3 (add wix vix) r.kec))
    =+  tay=(ksin q.kec)
    %+  mix
      %+  can  0
      :~  [3 0]
          [20 (mug bod)]
          [2 yax]
          [2 qax]
          [5 tay]
      ==
    (lsh 5 1 bod)
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aC, PKI engine               ::
  ::
  |%
  ++  go                                                ::    go
    |_  ton=town                                        ::  ames state
    ++  as                                              ::    as:go
      |_  [our=ship saf=safe]                           ::  per server
      ++  born                                          ::    born:as:go
        |=  [now=@da her=@p tic=@pG ges=gens pub=pass]  ::  register user
        ^-  [(unit will) _+>]
        ?.  =(our (sein her))  [~ +>.$]
        =+  nes=sen
        ?.  =(tic (end 6 1 (shaf %tick (mix her (shax sec:ex:q.nes)))))
          [~ +>.$]
        =+  rad=(~(get by hoc.saf) her)
        ?^  rad
          ?>  ?=(^ lew.wod.u.rad)
          ?.  =(pub r.q.i.lew.wod.u.rad)  [~ +>.$]
          [[~ lew.wod.u.rad] +>.$] 
        =+  syp=[[0 [~ p.nes] her now] ges pub]
        =+  ded=[(sign:se:q.nes *code (shaf %meld (sham syp))) syp]
        =+  wil=[ded law.saf]
        ?>  =(wil (grip wil ~))
        :-  [~ wil]
        +>.$(hoc.saf (~(put by hoc.saf) her [[~31337.1.1 ~ wil] ~ *cask]))
      :: 
      ++  lax                                           ::    lax:as:go
        |_  [her=ship dur=door]                         ::  per client
        ++  cluy                                        ::    cluy:lax:as:go
          ^-  [p=life q=gens r=acro]                    ::  client crypto
          ?~  lew.wod.dur  !!
          :+  p.p.q.i.lew.wod.dur 
            q.q.i.lew.wod.dur 
          (hail r.q.i.lew.wod.dur)
        ::
        ++  clon
          ^-  life
          ?~(lew.wod.dur 0 p.p.q.i.lew.wod.dur)
        ::
        ++  deng
          |=  law=will
          %_(+> lew.wod.dur (grip law lew.wod.dur))
        ::
        ++  griz                                        ::    griz:lax:as:go
          |=  now=@da                                   ::  generate key for
          ^-  [p=code q=_+>]
          =+  key=(shas %enty (mix now any.ton))
          :-  key
          %=  +>.$
            any.ton      (shax (mix now any.ton))
            heg.caq.dur  (~(put by heg.caq.dur) (shaf %hand key) key)
          ==
        ::
        ++  pode                                        ::    pode:lax:as:go
          ^+  .                                         ::  timeout route
          ?:  (lth her 256)  .
          .(lun.wod.dur ~)
        ::
        ++  kuch                                        ::    kuch:lax:as:go
          |=  had=hand                                  ::  hear key tag
          ^-  (unit ,[code _+>])
          =+  wey=(~(get by heg.caq.dur) had)
          ?^  wey
            =+  key=u.wey
            :+  ~  key
            %=    ..kuch
                yed.caq.dur  [~ had u.wey]
                heg.caq.dur  (~(del by heg.caq.dur) had)
                qim.caq.dur  (~(put by qim.caq.dur) had key)
            ==
          =+  dyv=(~(get by qim.caq.dur) had)
          ?~  dyv  ~
          [~ u.dyv ..kuch]
        ::
        ++  trox                                        ::    trox:lax:as:go
          |=  [now=@da]                                 ::  expire by date
          ^+  +>
          +>    ::  XX
        ::
        ++  wasc                                        ::    wasc:lax:as:go
          |=  key=code                                  ::  hear foreign code
          ^+  +>
          =+  had=(shaf %hand key)
          %_    ..wasc
              yed.caq.dur  [~ had key]
              qim.caq.dur  (~(put by qim.caq.dur) had key)
          ==
        ::
        ++  wast                                        ::    wast:lax:as:go
          |=  ryn=lane                                  ::  set route
          ^+  +>
          %=    +>
              lun.wod.dur
            ?:  ?=([%ix *] ryn)
              ?:  ?|  ?=(~ lun.wod.dur)
                      ?&  ?=([%ix *] u.lun.wod.dur)
                          !=(q.ryn q.u.lun.wod.dur) 
                          !=(r.ryn r.u.lun.wod.dur) 
                      ==
                  ==
                [~ ryn]
              lun.wod.dur
            [~ ryn]
          ==
        ::
        ++  wist                                        ::    wist:lax:as:go
          |=  $:  now=@da                               ::  route via
                  waz=(list ,@p) 
                  ryn=(unit lane) 
                  pac=rock
              ==
          ^-  (list boon)
          ?:  =(our her)  [[%ouzo *lane pac] ~]
          ?~  waz  ~
          =+  dyr=?:(=(her i.waz) dur (gur i.waz))
          ?.  ?&  !=(our i.waz)
                  ?=(^ lun.wod.dyr)
              ==
            $(waz t.waz)
          :_  ?:  ?=(%ix -.u.lun.wod.dyr) 
                $(waz t.waz)
              ~
          :+  %ouzo  u.lun.wod.dyr
          ?:  &(=(i.waz her) =(~ ryn))  pac
          =+  mal=(jam `meal`[%fore her ryn pac])
          %-  spit
          ^-  cake
          :*  [our i.waz]
              ?~  yed.caq.dyr  [%none mal]
              :-  %fast
              %^  cat  7
                p.u.yed.caq.dyr 
              (en:crya q.u.yed.caq.dyr mal)
          ==
        ::
        ++  xeno                                        ::    xeno:lax:as:go
          ^-  (list ship)                               ::  foreign canon
          (saxo her)
        ::
        ++  xong                                        ::    xong:lax:as:go
          ^-  (list ship)                               ::  route unto
          =+  [fro=xen too=xeno]
          =+  ^=  oot  ^-  (list ship)
              =|  oot=(list ship)
              |-  ^+  oot
              ?~  too  ~
              ?:  (lien fro |=(a=ship =(a i.too)))  ~
              [i.too $(too t.too)]
          ::  ~&  [%xong-to [our her] (weld oot ?>(?=(^ fro) t.fro))]
          (weld oot ?>(?=(^ fro) t.fro))
        ::
        ++  zuul                                        ::    zuul:lax:as:go
          |=  [now=@da ham=meal]                        ::  encode message
          ^-  [p=(list rock) q=_+>]
          =<  weft
          |%
          ++  wasp                                      ::  null security
            ^-([p=skin q=@] [%none (jam ham)])
          ::
          ++  weft                                      ::  fragment message
            ^-  [p=(list rock) q=_+>.$]
            =^  gim  ..weft  wisp
            :_  +>.$
            ^-  (list rock)
            =+  wit=(met 13 q.gim)
            ?<  =(0 wit)
            ?:  =(1 wit)
              =+  yup=(spit [our her] p.gim q.gim)
              [yup ~]
            =+  ruv=(rip 13 q.gim)
            =+  gom=(shaf %thug q.gim)
            =+  inx=0
            |-  ^-  (list rock)
            ?~  ruv  ~
            =+  ^=  vie
                %+  spit
                  [our her]
                wasp(ham [%carp (ksin p.gim) inx wit gom i.ruv])
            :-  vie
            $(ruv t.ruv, inx +(inx))
          ::
          ++  wisp                                      ::  generate message
            ^-  [[p=skin q=@] q=_..wisp]
            ?:  =(%carp -.ham)
              [wasp ..wisp]
            ?:  !=(~ yed.caq.dur)
              :_  ..wisp
              :-  %fast
              %^  cat  7
                p.u.yed.caq.dur 
              (en:r:cluy q.u.yed.caq.dur (jam ham))
            ?:  &(=(~ lew.wod.dur) =(%back -.ham))
              [wasp ..wisp]
            =^  tuy  +>.$
              ?:(=(~ lew.wod.dur) [*code +>.$] (griz now))
            :_  ..wisp
            =+  yig=sen
            =+  ^=  gom
                %^    jam
                    `life`p.yig
                  ::  `will`(pare wyl.dur law.saf)      ::  XX not set
                  law.saf                               ::  XX send whole will
                `@`(sign:se:q.yig tuy (jam ham))
            ?:  =(~ lew.wod.dur)
              [%open gom]
            :-  %full
            =+  cay=cluy
            (jam p.cay (seal:pu:r.cay tuy gom))
          --                                            ::  --zuul:lax:as:go
        --                                              ::  --lax:as:go
      ::
      ++  gur                                           ::  default door
        |=  her=ship
        ^-  door
        =+  def=?.((lth her 256) ~ [~ %if 0 (mix her .0.0.1.0)])
        [[~2100.1.1 def ~] ~ *cask]
      ::
      ++  myx                                           ::  door by ship
        |=  her=ship
        ^+  lax
        =+  fod=(~(get by hoc.saf) her)
        ~(. lax [her ?~(fod (gur her) u.fod)])
      ::
      ++  nux                                           ::  install door
        |=  new=_lax
        ^+  +>
        +>(hoc.saf (~(put by hoc.saf) her.new dur.new))
      ::
      ++  sen                                           ::  current crypto
        ^-  [p=life q=acro]
        ?~(val.saf !! [p.i.val.saf r.i.val.saf])
      ::
      ++  sev                                           ::  crypto by life
        |=  mar=life
        ^-  [p=? q=acro]
        ?~  val.saf  !!
        ?:  =(mar p.i.val.saf)
          [& r.i.val.saf]
        ?>  (lth mar p.i.val.saf)
        :-  |
        |-  ^-  acro
        ?:  =(mar p.i.t.val.saf) 
          r.i.t.val.saf 
        $(t.val.saf t.t.val.saf)
      ::
      ++  sex                                           ::  export secrets
        |-  ^-  mace
        ?~  val.saf  ~
        :-  [p.i.val.saf sec:ex:r.i.val.saf] 
        $(val.saf t.val.saf)
      ::
      ++  xen                                           ::  canon
        |-  ^-  (list ship)
        (saxo our)
      ::
      ++  yew                                           ::  best will for
        |=  her=ship
        ^-  will
        =+  gel=(~(get by hoc.saf) her)
        ?^  gel
          lew.wod.u.gel
        ?:((lth her 256) ~ $(her (sein her)))
      --                                                ::  --as:go
    ::
    ++  ha                                              ::  adopt new license
      |=  [our=ship mac=mace wil=will] 
      ^-  town
      ?>  !=(~ mac) 
      ?>  ?=(^ wil) 
      ::  ?>  =(our r.p.q.i.wil) 
      ?>  =(wil (grip wil ~))
      ?>  (real mac wil)
      %_    ton
          urb
        %+  ~(put by urb.ton)
          our
        :*  %-  flop
            |-  ^-  (list ship) 
            ?:((lth our 256) ~ =+(seg=(sein our) [seg $(our seg)]))
        ::
            (turn mac |=([p=life q=ring] [p q (wear q)])) 
            wil 
            ~
            ~
        ==
      ==
    ::
    ++  su                                              ::  install safe
      |=  new=_as
      ^-  town
      ton(urb (~(put by urb.ton) our.new saf.new))
    ::
    ++  ti                                              ::  expire by time
      |=  [now=@da]
      ^-  town
      !!
    ::
    ++  us                                              ::  produce safe
      |=  our=ship
      ^-  (unit ,_as)
      =+  goh=(~(get by urb.ton) our)
      ?~  goh  ~
      [~ ~(. as [our u.goh])]
    --                                                ::  --go
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aF, packet pump             ::
  |%
  ++  pu                                                ::  packet pump
    |_  shed
    ++  abet  +<
    ++  ahoy                                            ::    ahoy:pu
      ^+  .                                             ::  initialize
      %_    .
          rtt  ~s1
          rto  ~s4
          rtn  ~
          rue  ~
          nus  0
          nif  0
          nep  0
          caw  2
          cag  64
          diq  ~
          pyz  ~
          puq  ~
      ==
    ::
    ++  bick                                            ::    bick:pu
      |=  [now=@da fap=flap]                            ::  ack by hash
      ^-  [[p=(unit soup) q=(list rock)] _+>]
      =+  sun=(~(get by diq) fap)
      ?~  sun
        ::  ~&  [%bick-none `@p`(mug fap)]              ::  not a real error
        [[~ ~] +>.$]
      ::  ~&  [%bick-good `@p`(mug fap) u.sun]
      =.  diq  (~(del by diq) fap)
      =^  gub  +>.$  (bock now u.sun)
      =^  yop  +>.$  (harv now)
      [[gub yop] +>.$]
    ::
    ++  bilk                                            ::    bilk:pu
      |=  now=@da                                       ::  inbound packet
      ^+  +>
      =+  trt=(mul 2 rtt)
      %=  +>.$
        rue  [~ now]
        rto  trt
        rtn  ?~(puq ~ [~ (add now trt)])
      ==
    ::
    ++  bust                                            ::    bust:pu
      ^-  ?                                             ::  not responding
      &(?=(^ rtn) (gte rto ~s16))
    ::
    ++  bike                                            ::    bike:pu
      ^+  .                                             ::  check stats
      ?>  .=  nif
          |-  ^-  @
          ?~  puq  0
          :(add !liv.q.n.puq $(puq l.puq) $(puq r.puq))
      .
    ::
    ++  beet                                            ::    beet:pu
      ^+  .                                             ::  advance unacked
      =-  +(nep ?~(foh nus u.foh))
      ^=  foh
      |-  ^-  (unit ,@ud)
      ?~  puq  ~
      ?:  (lte p.n.puq nep)  $(puq l.puq)
      =+  rig=$(puq r.puq)
      ?^(rig rig [~ p.n.puq])
    ::
    ++  bine                                            ::    bine:pu
      |=  [now=@da num=@ud]                             ::  apply ack
      ^-  [(unit soup) _+>]
      ?~  puq  !!
      ?.  =(num p.n.puq)
        ?:  (gth num p.n.puq)
          =+  lef=$(puq l.puq)
          [-.lef +.lef(puq [n.puq puq.lef r.puq])]
        =+  rig=$(puq r.puq)
        [-.rig +.rig(puq [n.puq l.puq puq.rig])]
      =:  rtt  ?.  &(liv.q.n.puq =(1 nux.q.n.puq))  rtt
               =+  gap=(sub now lys.q.n.puq)
               ::  ~&  [%bock-trip num (div gap (div ~s1 1.000))]
               (div (add (mul 2 rtt) gap) 3)
          nif  (sub nif !liv.q.n.puq)
        ==
      =+  lez=(dec (need (~(get by pyz) gom.q.n.puq)))
      =^  gub  pyz
          ?:  =(0 lez)  
            [[~ gom.q.n.puq] (~(del by pyz) gom.q.n.puq)]
          [~ (~(put by pyz) gom.q.n.puq lez)]
      :-  gub
      +>.$(puq ~(nap to puq))
    ::
    ++  bock                                            ::    bock:pu
      |=  [now=@da num=@ud]                             ::  ack by sequence
      ^-  [(unit soup) _+>]
      =^  gym  +>  (bine now num)
      :-  gym
      ?:  (gth num nep)
        =+  cam=(max 2 (div caw 2)) 
        ::  ~&  [%bock-hole num nep cam]
        beet:(wept(nep num, cag cam, caw cam) nep num)
      =.  caw  ?:  (lth caw cag)  +(caw)
               (add caw !=(0 (mod (mug now) caw)))
      ?:  =(num nep) 
        ::  ~&  [%bock-fine num nif caw cag]
        beet
      ::  ~&  [%bock-fill num nif caw cag]
      +>.$ 
    ::
    ++  harv                                            ::    harv:pu 
      |=  now=@da                                       ::  harvest queue
      ^-  [(list rock) _+>]
      ?:  =(~ puq)  [~ +>(rtn ~)]
      ?.  (gth caw nif)  [~ +>]
      =+  wid=(sub caw nif)
      =|  rub=(list rock)
      =<  abet  =<  apse
      |%  
      ++  abet  
        ?~  rub  [~ +>.$]
        [(flop rub) +>.$(rtn [~ (add rto now)])]
      ::
      ++  apse
        ^+  .
        ?~  puq  .
        ?:  =(0 wid)  .
        =>  rigt  =<  left
        ?:  =(0 wid)  .
        ?.  =(| liv.q.n.puq)  .
        ::  ~&  [%harv nux.q.n.puq p.n.puq]
        %_    .
          wid          (dec wid)
          rub          [pac.q.n.puq rub]
          nif          +(nif)
          liv.q.n.puq  &
          nux.q.n.puq  +(nux.q.n.puq)
          lys.q.n.puq  now
        ==
      ::
      ++  left  ^+(. =+(lef=apse(puq l.puq) lef(puq [n.puq puq.lef r.puq])))
      ++  rigt  ^+(. =+(rig=apse(puq r.puq) rig(puq [n.puq l.puq puq.rig])))
      --
    ::
    ++  wack                                            ::    wack:pu
      |=  now=@da                                       ::  wakeup (timeout)
      ^-  [(list rock) _+>]
      ?.  &(!=(~ rtn) (gte now u.rtn))  [~ +>]
      ::  ~&  [%slow (div rto (div ~s1 1.000))]
      =.  +>  (wept 0 nus)
      ?>  =(0 nif)
      =+  oub=(gte rto ~s16)
      =:  caw  2
          rto  ;:  min  
                 (mul 2 rto) 
                 ~m2
                 (mul ~s16 ?~(rue 1 +((div (sub now u.rue) ~d1))))
               ==
        ==
      (harv now)
    ::
    ++  wept                                            ::    wept:pu
      |=  [fip=@ud lap=@ud]                             ::  fip thru lap-1
      =<  abet  =<  apse
      |%
      ++  abet  +>.$
      ++  apse
        ^+  .
        ?~  puq  .
        ?:  (lth p.n.puq fip)  ?~(l.puq . left)
        ?:  (gte p.n.puq lap)  ?~(r.puq . rigt)
        =>  rigt  =<  left
        ?.(liv.q.n.puq . .(nif (dec nif), liv.q.n.puq |))
      ::
      ++  left  ^+(. =+(lef=apse(puq l.puq) lef(puq [n.puq puq.lef r.puq])))
      ++  rigt  ^+(. =+(rig=apse(puq r.puq) rig(puq [n.puq l.puq puq.rig])))
      --
    ::
    ++  whap                                            ::    whap:pu
      |=  [now=@da gom=soup wyv=(list rock)]            ::  send a message
      ^-  [(list rock) _+>]
      =.  pyz  (~(put by pyz) gom (lent wyv))
      =.  +>
        |-  ^+  +>.^$
        ?~  wyv  +>.^$
        %=  $
          wyv  t.wyv
          nus  +(nus)
          diq  (~(put by diq) (shaf %flap i.wyv) nus)
          puq  (~(put to puq) [nus `soul`[gom 0 | ~2000.1.1 i.wyv]])
        ==
      (harv now)
    --
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aG, protocol engine          ::
  ::
  |%
  ++  am                                                ::    am
    |_  [now=@da fox=fort]                              ::  protocol engine
    ++  boot                                            ::    boot:am
      ^-  fort                                          ::  restore from noun
      %=    fox
          urb.ton
        %-  ~(gas by *(map ship safe))
        %+  turn
          (~(tap by urb.ton.fox) ~)
        |=  [p=ship q=safe]  ^-  [p=ship q=safe]
        :-  p
        %=    q
            val
          (turn val.q |=([p=life q=ring r=acro] [p q (wear q)]))
        ==
      ==
    ++  come                                            ::    come:am
      |=  [ges=(unit ,@t) wid=@ bur=@]                  ::  instantiate pawn
      ^-  [p=[p=ship q=@uvG] q=fort]
      =+  loy=(brew wid bur)
      =+  rig=sec:ex:loy
      =+  our=`@p`fig:ex:loy
      =+  syp=[[0 ~ our now] [%en %pawn ges] pub:ex:loy]
      :-  [our pac:ex:loy]
      %_    fox
          ton
        %^    ~(ha go ton.fox)
            our
          `mace`[[0 rig] ~]
        `will`[[(sign:se:loy @ (shaf %self (sham syp))) syp] ~]
      ==
    ::
    ++  czar                                            ::    czar:am
      |=  [our=ship ger=@uw]                            ::  instantiate emperor
      ^-  [p=(list boon) q=fort]
      =+  loy=(brew 2.048 ger)
      ?>  =(fig:ex:loy (zeno our))
      =+  mac=`mace`[[0 sec:ex:loy] ~]
      =+  syp=`step`[`bray`[0 ~ our now] [%en %czar ~] pub:ex:loy]
      =+  ded=`deed`[(sign:se:loy @ (shaf %self (sham syp))) syp]
      =+  buq=`buck`[mac [ded ~]]
      =:  ton.fox  (~(ha go ton.fox) our buq)
          zac.fox  (~(put by zac.fox) our *oven)
        ==
      [[[%beer our pac:ex:loy] ~] fox]
    ::
    ++  gnaw                                            ::    gnaw:am
      |=  [kay=cape ryn=lane pac=rock]                  ::  process packet
      ^-  [p=(list boon) q=fort]
      =+  kec=(bite pac)
      ?.  (~(has by urb.ton.fox) q.p.kec)
        [~ fox]
      =<  zork
      =<  zank
      ::  ~&  [%hear p.p.kec ryn `@p`(mug (shaf %flap pac))]
      %-  ~(chew la:(ho:(um q.p.kec) p.p.kec) kay ryn %none (shaf %flap pac))
      [q.kec r.kec]
    ::
    ++  hall                                            ::    hall:am
      ^-  (list sock)                                   ::  all sockets 
      =|  sox=(list sock)                               ::  XX hideous
      |-  ^+  sox 
      ?~  zac.fox  sox
      =.  sox  $(zac.fox l.zac.fox)
      =.  sox  $(zac.fox r.zac.fox)
      |-  ^+  sox
      ?~  wab.q.n.zac.fox  sox
      =.  sox  $(wab.q.n.zac.fox l.wab.q.n.zac.fox)  
      =.  sox  $(wab.q.n.zac.fox r.wab.q.n.zac.fox)  
      [[p.n.zac.fox p.n.wab.q.n.zac.fox] sox]
    ::
    ++  have                                            ::    have:am 
      |=  [our=ship buq=buck]                           ::  acquire license
      ^-  [p=(list boon) q=fort]
      =:  ton.fox  (~(ha go ton.fox) our buq)
          zac.fox  (~(put by zac.fox) our *oven)
        ==
      [[[%beer our pac:ex:q:sen:(need (~(us go ton.fox) our))] ~] fox]
    ::
    ++  kick                                            ::    kick:am
      |=  hen=duct                                      ::  refresh net
      =+  aks=(turn (~(tap by urb.ton.fox) ~) |=([p=ship q=safe] p))
      |-  ^-  [p=(list boon) q=fort]
      ?~  aks  [~ fox]
      =^  buz  fox  zork:(kick:(um i.aks) hen)
      =^  biz  fox  $(aks t.aks)
      [(weld p.buz p.biz) fox]
    ::
    ++  wake                                            ::    wake:am
      ^-  [p=(list boon) q=fort]                        ::  harvest packets
      =+  sox=hall
      =|  bin=(list boon)
      |-  ^-  [p=(list boon) q=fort]
      ?~  sox  [bin fox]
      =^  bun  fox  zork:zank:thaw:(ho:(um p.i.sox) q.i.sox)
      $(sox t.sox, bin (weld p.bun bin))
    ::
    ++  wash                                            ::    wash:am
      |=  [soq=sock sup=soap ham=meal]                  ::  dispatch and send
      ^-  [p=(list boon) q=fort]
      zork:zank:(wind:(ho:(um p.soq) q.soq) [q.sup r.sup] ham)
    ::
    ++  went                                            ::    went:am
      |=  [soq=sock hen=duct cap=cape sup=soap]         ::  internal react
      ^-  [p=(list boon) q=fort]
      zork:(kick:(um p.soq) hen)
    ::
    ++  wert                                            ::    wert:am
      |=  [soq=sock hen=duct inx=@ud rot=riot]          ::  serve a file
      ^-  [p=(list boon) q=fort]
      =+  ruv=(need (~(get by rop.fox) [inx soq]))
      (wise soq [/a hen] %ru [inx rot])
    ::
    ++  wise                                            ::    wise:am
      |=  [soq=sock hen=duct cha=@ta val=*]             ::  send a statement
      ^-  [p=(list boon) q=fort]
      zork:zank:(wool:(ho:(um p.soq) q.soq) hen cha val)
    ::
    ++  um                                              ::  per server
      |=  our=ship
      =+  gus=(need (~(us go ton.fox) our))
      =+  ^=  weg  ^-  oven
          =+  weg=(~(get by zac.fox) our)
          ?^(weg u.weg *oven)
      =|  bin=(list boon)
      |%
      ++  ho                                            ::    ho:um:am
        |=  her=ship                                    ::  per friend
        =+  diz=(myx:gus her)
        =+  bah=(~(get by wab.weg) her)
        =+  puz=?~(bah ahoy:pu %*(. pu +< sop.u.bah))
        =>  .(bah `bath`?~(bah [abet:puz ~ ~] u.bah))
        |%
        ++  busk                                        ::    busk:ho:um:am
          |=  [waz=(list ship) pax=(list rock)]         ::  send packets
          %_    +>
              bin
            |-  ^+  bin
            ?~  pax  bin
            $(pax t.pax, bin (weld (flop (wist:diz now waz ~ i.pax)) bin))
          ==
        ::
        ++  done                                        ::    done:ho:um:am
          |=  [cha=@ta num=@ud]                         ::  complete outgoing
          ^-  [(unit duct) _+>]
          =+  rol=(need (~(get by ryl.bah) cha))
          =+  rix=(~(get by san.rol) num)
          ?~  rix  [~ +>.$]
          :-  rix
          %_    +>.$
              ryl.bah  
            (~(put by ryl.bah) cha rol(san (~(del by san.rol) num)))
          ==
        ::
        ++  la                                          ::    la:ho:um:am
          |_  [kay=cape ryn=lane aut=skin dam=flap]     ::  per packet
          ::
          ++  chew                                      ::    chew:la:ho:um:am
            |=  [sin=skin msg=@]                        ::  receive
            ^+  +>
            =<  apse
            |%  
            ++  apse
              ^+  +>.$
              =+  oub=bust:puz
              =+  neg==(~ yed.caq.dur.diz)
              =.  +>.$  east
              =+  eng==(~ yed.caq.dur.diz)
              =.  puz  (bilk:puz now)  
              =+  bou=bust:puz
              =.  bin
                ?.  &(oub !bou) bin
                :_(bin [%wine [our her] " is ok"])
              =.  bin
                ?.  &(neg !eng)  bin
                :_(bin [%wine [our her] " is your neighbor"])
              +>.$
            ::
            ++  east
              ^+  +>.$
              ?-    sin
                  %none  
                ::  ~&  %chew-none
                (chow ((hard meal) (cue msg)))
              ::
                  %fast
                ::  ~&  %chew-fast
                =+  [mag=`hand`(end 7 1 msg) bod=(rsh 7 1 msg)]
                =+  dey=(kuch:diz mag)
                ?~  dey  +>.$                           ::  ignore unknown key
                =.  +>.$  enuf
                =^  key  diz  u.dey
                (chow(aut sin) ((hard meal) (cue (dy:q:sen:gus key bod))))
              ::
                  %full
                ::  ~&  %chew-full
                =+  mex=((hard ,[p=life q=@]) (cue msg))
                =+  gey=(sev:gus p.mex)
                =+  mes=(need (tear:se:q.gey q.mex))
                =.  diz  (wasc:diz p.mes)
                =.  +>.$  enuf
                (west(msg q.mes) p.mes)
              ::
                  %open  
                ::  ~&  %chew-open
                (west *code)
              ==
            ++  west
              |=  key=code
              =+  ^=  mex
                  %.  (cue msg)
                  (hard ,[p=life q=will r=@])
              =.  diz  (deng:diz q.mex)
              =+  wug=cluy:diz
              ?>  =(p.mex p.wug)
              %-  chow(aut sin)
              ((hard meal) (cue (need (sure:pu:r.wug key r.mex))))
            --
          ::
          ++  chow                                      ::    chow:la:ho:um:am 
            |=  fud=meal                                ::  interpret meal
            ^+  +>
            =.  diz  ?:(=(%none aut) diz (wast:diz ryn))
            (dine fud)
          ::
          ++  cock                                      ::    cock:la:ho:um:am
            ^+  .                                       ::  acknowledgment
            ::  ~&  [%back kay dam]
            =^  pax  diz  (zuul:diz now [%back kay dam ~s0])
            +(+> (busk(diz (wast:diz ryn)) xong:diz pax))
          ::
          ++  coot                                      ::    coot:la:ho:um:am
            |=  [cha=@ta rum=race]                      ::  update input race
            ^+  +>
            =+  cun=(~(get by mis.rum) did.rum)
            ?~  cun  
              +>.$(raz.bah (~(put by raz.bah) cha rum))
            =.  +>.$  cock(kay p.u.cun, dam q.u.cun)
            =.  +>.$  ?.  =(%good p.u.cun)  +>.$ 
                      (emit [%milk [our her] cha did.rum r.u.cun])
            %=  $
              mis.rum  (~(del by mis.rum) did.rum)
              did.rum  +(did.rum)
            ==
          ::
          ++  dear                                      ::    dear:la:ho:um:am
            |=  [cha=@ta num=@ud dut=(unit)]            ::  interpret message
            ^+  +>
            =+  ^=  rum  ^-  race
                =+  rum=(~(get by raz.bah) cha)
                ?~(rum *race u.rum)
            ?.  (gte num did.rum)
              cock                                      ::  always ack a dup
            (coot cha rum(mis (~(put by mis.rum) num [kay dam dut])))
          ::
          ++  dine                                      ::    dine:la:ho:um:am
            |=  fud=meal                                ::  interpret meal
            ^+  +>
            ?-    -.fud
                %back
              ::  ~&  [%back aut her ryn `@p`(mug dam)]
              =.  +>  ?.(=(%full aut) +> cock)          ::  finish key exch
              +>(..la (tuck p.fud q.fud r.fud))
            ::
                %bond
              ::  ~&  [%bond q.fud r.fud]
              ?>  =(p:sen:gus p.fud)
              (dear q.fud r.fud ?-(kay ?(%dead %lost) ~, %good [~ s.fud]))
            ::
                %carp
              =+  zol=(~(get by olz.weg) s.fud)
              ?^  zol  cock(kay u.zol)
              =^  neb  nys.weg
                  =+  neb=(~(get by nys.weg) s.fud)
                  ?^  neb  [u.neb nys.weg]
                  =+  neb=`bait`[(kins p.fud) 0 r.fud ~]
                  [neb (~(put by nys.weg) s.fud neb)]
              ?>  (lth q.fud p.r.neb)
              ?>  =((kins p.fud) p.neb)
              ?>  =(r.fud p.r.neb)
              =+  doy=`(unit ,@)`(~(get by q.r.neb) q.fud)
              ?^  doy  cock
              =>  ^+  .   %=  .
                    q.r.neb  (~(put by q.r.neb) q.fud t.fud)
                    q.neb    +(q.neb)
                  ==
              ::  ~&  [%carp q.fud s.fud q.neb p.r.neb]
              ?:  =(q.neb p.r.neb)
                =:  nys.weg  (~(del by nys.weg) s.fud)
                    olz.weg  (~(put by olz.weg) s.fud kay)
                  ==
                (golf p.neb r.neb)
              =.  +>.$  cock
              +>.$(nys.weg (~(put by nys.weg) s.fud neb))
            ::
                %fore
              =+  ^=  lyn  ^-  lane
                  ?~  q.fud  ryn 
                  ?.  ?=(%if -.u.q.fud)  u.q.fud
                  [%ix now +.u.q.fud]
                  ::  u.q.fud
              ?:  =(our p.fud)
                (emit %mead lyn r.fud) 
              =+  zid=(myx:gus p.fud)
              (emir (wist:zid now xong:zid [~ lyn] r.fud))
            ==
          ::
          ++  emir                                      ::    emir:la:ho:um:am
            |=  ben=(list boon)                         ::  emit boons
            ^+  +>
            ?~(ben +> $(ben t.ben, bin [i.ben bin]))
          ::
          ++  emit                                      ::    emit:la:ho:um:am
            |=  bun=boon                                ::  emit a boon
            +>(bin [bun bin]) 
          ::
          ++  enuf                                      ::    enuf:la:ho:um:am
            %_(. puz (bilk:puz now))                    ::  heard fast on
          ::
          ++  golf                                      ::    golf:la:ho:um:am 
            |=  [sin=skin duv=dove]                     ::  assemble fragments
            ^+  +>
            %+  chew  sin
            =+  [nix=0 rax=*(list ,@)]
            |-  ^-  @
            ?:  =(p.duv nix)
              (can 13 (turn (flop rax) |=(a=@ [1 a])))
            $(nix +(nix), rax [(need (~(get by q.duv) nix)) rax])
          ::
          ++  wait                                      ::    wait:la:ho:um:am
            |=  [sin=skin msg=@]                        ::  receive indirect
            ^+  +>
            =+  pay=((hard ,[p=@ud q=@uvH r=@]) (cue msg))
            =.  nys.weg  (~(put by nys.weg) q.pay [sin 0 p.pay ~])
            (dine [%carp (ksin sin) 0 p.pay q.pay r.pay])
          --                                            ::  --la:ho:um:am
        ::
        ++  pong                                        ::    pong:ho:um:am
          |=  hen=duct                                  ::  test connection
          ^+  [? +>]
          ?.  |(?=(~ rue.puz) (lth u.rue.puz hop.fox) bust:puz)
            ::  ~&  [%pong-no her]
            [| +>.$]
          ::  ~&  [%pong-yes now her]
          [& (wool [/a hen] %pi ~)]
        ::
        ++  thaw                                        ::    thaw:ho:um:am
          ^+  .                                         ::  wakeup bomb
          =+  oub=bust:puz
          =^  yem  puz  (wack:puz now)
          =+  bou=bust:puz
          =.  bin  
              ?.  &(bou !oub) bin
              :_(bin [%wine [our her] " not responding still trying"])
          (busk xong:diz yem)
        ::
        ++  tuck                                        ::    tuck:ho:um:am
          |=  [kay=cape fap=flap cot=@dr]               ::  ack by hash
          ^+  +> 
          =^  yoh  puz  (bick:puz now fap)
          =.  +>.$
            ?~  p.yoh  +>.$
            =^  hud  +>.$  (done p.u.p.yoh q.u.p.yoh)
            ?~  hud  +>.$
            %=    +>.$
                bin
              :_  bin
              `boon`[%coke [our her] kay [[p:sen:gus clon:diz] u.p.yoh] u.hud]
            ==
          (busk xong:diz q.yoh)
        ::
        ++  wind                                        ::    wind:ho:um:am
          |=  [gom=soup ham=meal]
          ::  ~&  [%wind her gom]
          ^+  +>
          =^  wyv  diz  (zuul:diz now ham)
          =^  feh  puz  (whap:puz now gom wyv)
          (busk xong:diz feh)
        ::
        ++  wool                                        ::    wool:ho:um:am
          |=  [hen=duct cha=@ta val=*]                  ::  send a statement
          ^+  +>
          =+  ^=  rol  ^-  rill
              =+  rol=(~(get by ryl.bah) cha)
              ?~(rol *rill u.rol)
          =+  sex=sed.rol
          ::  ~&  [%tx [our her] cha sex]
          =.  ryl.bah  
              %+  ~(put by ryl.bah)  cha
              rol(sed +(sed.rol), san (~(put by san.rol) sex hen))
          =+  cov=[p=p:sen:gus q=clon:diz]
          (wind [cha sex] [%bond q.cov cha sex val])
        ::
        ++  zank                                        ::    zank:ho:um:am
          %=  +>.$                                      ::  resolve
            gus      (nux:gus diz)
            wab.weg  (~(put by wab.weg) her bah(sop abet:puz))
          ==
        --                                              ::  --ho:um:am
      ::
      ++  kick                                          ::    kick:um:am
        |=  hen=duct                                    ::  test connection
        =+  hoy=hoy.saf.gus
        |-  ^+  +>.^$
        ?~  hoy
          +>.^$
        =^  fyx  +>.^$  (pong i.hoy hen)
        ?:  fyx  +>.^$ 
        $(hoy t.hoy)
      ::
      ++  pals                                          ::    pals:um:am
        ^-  (list ,@p)                                  ::  active neighbors
        %+  turn  
          ::  (skim (~(tap by wab.weg) ~) |=([a=ship b=bath] gay.b))
          (~(tap by wab.weg) ~)                         ::  everyone for now
        |=([a=ship b=bath] a)
      ::
      ++  pong                                          ::    pong:um:am
        |=  [her=ship hen=duct]                         ::  test neighbor
        ^+  [? +>]
        =+  xup=(pong:(ho her) hen)
        ?.  -.xup  [| +>.$]
        [& zank:+.xup] 
      ::
      ++  zork                                          ::    zork:um:am
        ^-  [p=(list boon) q=fort]                      ::  resolve
        :-  (flop bin)
        %_  fox
          ton  (~(su go ton.fox) gus)
          zac  (~(put by zac.fox) our.gus weg)
        ==
      --                                                ::  --um:am
    --                                                  ::  --am
  --
  . ==
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aH, protocol vane            ::
  :: 
  =|  $:  fox=fort                                      ::  kernel state
      ==                                                ::
  |=  [now=@da eny=@ sky=||(* (unit))]                  ::  current invocation
  ^?                                                    ::  opaque core
  =< 
    |%                                                  ::  vane interface
    ++  beat
      |=  [wru=(unit writ) tea=wire hen=duct fav=curd]
      =>  .(fav ((hard card) fav))
      ^-  [p=(list move) q=vane]
      =^  duy  ..knap
        (knap wru tea hen fav)
      [duy ..^$]
    ::
    ++  come  
      |=  old=vase
      ^-  vane
      ~|(%load-nest-ames !!)
    ::
    ++  doze
      |=  [now=@da hen=duct]
      =|  doz=(unit ,@da)
      |-  ^+  doz
      ?~  zac.fox  doz
      =.  doz  $(zac.fox l.zac.fox)
      =.  doz  $(zac.fox r.zac.fox)
      =+  yem=q.n.zac.fox
      |-  ^+  doz
      ?~  wab.yem  doz
      =.  doz  $(wab.yem l.wab.yem)
      =.  doz  $(wab.yem r.wab.yem)
      =+  bah=q.n.wab.yem
      (hunt doz rtn.sop.bah)
    ::
    ++  flee  stay
    ++  load
      |=  new=vase
      ^-  vane
      ?.  (~(nest ut -:!>(fox)) & p.new)
        (come new)
      ..^$(fox ~(boot am [now (fort q.new)]))
    ::
    ++  raze  
      ^-  vane
      ..$(fox *fort)
    ::
    ++  scry
      |=  [our=ship ren=@tas his=ship syd=disc lot=coin tyl=path]
      ^-  (unit)
      ?.  =(0 ren)  ~
      ?+    lot  ~
          [%$ %ud @]
        (perm our his q.p.lot [syd tyl])
      ::
          [%$ %da @]
        ?.  =(now q.p.lot)  ~
        (temp our his [syd tyl])
      ==
    ::
    ++  stay  `vase`!>(fox)
    --
  |%
  ++  claw  |=(our=ship ^-(duct hen:(need (~(get by zac.fox) our))))
  ++  clop
    |=  [wru=(unit writ) now=@da hen=duct bon=boon]
    ^-  [(list move) fort]
    ?-    -.bon
        %beer
      :_  fox(zac (~(put by zac.fox) p.bon `oven`[hen ~ ~ ~]))
      :*  [[~ %gold p.bon] [/c hen] [%init p.bon]]
          [[~ %gold p.bon] hen [%init p.bon]]
          [[~ %gold p.bon] [/a hen] [%kick now]]
          =+  bos=(sein p.bon)
          =.  bos  ?.(=(bos p.bon) bos ~zod)
          ?:  =(~zod p.bon)  ~
          :~  [[~ %iron p.bon] [/c hen] [%pull bos %main ~[%main]]]
              [[~ %iron p.bon] [/c hen] [%pull bos %spec ~[%spec]]]
              [[~ %iron p.bon] [/c hen] [%pull bos %try ~[%try]]]
              [[~ %iron p.bon] [/c hen] [%pull bos %arvo ~[%arvo]]]
          ==
      ==
    ::
        %coke  
      ::  ~&  [%tz p.bon q.bon q.r.bon r.r.bon]
      :_  fox
      :~  [[~ %iron p.p.bon] s.bon [%went q.p.bon q.bon r.bon]]
      ==
    ::
        %mead  :_(fox [[wru hen [%hear p.bon q.bon]] ~])
        %milk 
      ::  ~&  [%rx p.bon q.bon r.bon !=(~ s.bon)]
      ?+    q.bon
        :_  fox
        :~  :+  [~ %iron p.p.bon] 
              (claw p.p.bon)
            [%wart q.p.bon q.bon r.bon s.bon]
        ==
      ::                                                
          %hi                                           ::    %hi
        %=    $
            bon
          :+  %wine  p.bon
          ^-  tape
          ?~  s.bon 
            " is not feeling well"
          ?:  =(0 u.s.bon)
            =+  hum=(end 0 3 (mug r.bon))
            ?+   hum  !!
              0  " was thinking about something else" 
              1  " prefers not to comment"
              2  " has no words for what just happened"
              3  " is still in the building"
              4  " remains quietly present"
              5  " isn't into drama"
              6  " likes to let others speak"
              7  " sincerely wants to know more"
            ==
          =+  str=(need ((sand %t) ((hard ,@) u.s.bon)))
          [':' ' ' (trip str)]
        ==
      ::                                                
          %ye                                           ::    %ye
        ::  ~&  [%ye bon]
        ?~  s.bon  [~ fox]
        ?>  =(p.p.bon (sein q.p.bon))
        =+  ^=  paz  ^-  (list ,@p)
            %+  skim  pals:(~(um am [now fox]) p.p.bon)
            |=(a=@p =(p.p.bon (sein a)))
        :_  fox
        %+  turn  paz
        |=  him=ship
        :+  [~ %iron p.p.bon]
          [/a /a hen]
        [%want him %yu [q.p.bon u.s.bon]]
      ::
          %yu                                           ::    %yu
        ::  ~&  [%yu bon]
        ?.  =(q.p.bon (sein p.p.bon))  [~ fox]
        ?~  s.bon  [~ fox]
        =+  dof=((hard ,[p=@p q=@t]) u.s.bon)
        $(bon [%milk [p.p.bon p.dof] %hi r.bon [~ q.dof]])
      ::
          %pi                                           ::    %pi
        $(bon [%wine p.bon " sent a ping"])             ::  ping
      ::
          %ta                                           ::    %ta
        ?~  s.bon  [~ fox]                              ::  register
        =+  gox=((hard ,[p=@p q=@pG r=gens s=pass]) u.s.bon)
        =+  gus=(need (~(us go ton.fox) p.p.bon))
        =^  wyl  gus  (born:gus now gox)
        =.  ton.fox  (~(su go ton.fox) gus)
        :_  fox
        :~  :+  [~ %iron p.p.bon]
              [/a /a hen]
            [%want q.p.bon %to `(unit will)`wyl]
        ==
      ::
          %re                                           ::    %re
        ?~  s.bon  [~ fox]                              ::  file request
        =+  gox=((hard ,[p=@ud q=riff]) u.s.bon)
        =+  gut=(~(get by rop.fox) [p.gox p.bon])
        =.  rop.fox
          ?^  gut
            ?>(?=(~ q.q.gox) (~(del by rop.fox) [p.gox p.bon]))
          ?>(?=(^ q.q.gox) (~(put by rop.fox) [p.gox p.bon] q.gox))
        :_  fox
        :~  :+  [~ %iron p.p.bon] 
              [/c [%a (scot %p q.p.bon) (scot %ud p.gox) ~] hen]
            [%warp p.p.bon q.gox]
        ==
      ::
          %ru                                           ::    %ru
        :_  fox
        :~  :+  [~ %iron p.p.bon]                       ::  file response
              [/c (claw p.p.bon)] 
            [%wart q.p.bon q.bon r.bon s.bon]
        ==
      ::
          %su                                           ::    %su
        ?~  s.bon  [~ fox]
        =+  gox=((hard ,@t) u.s.bon)                    ::  suicide
        !!
      ==
    ::
        %ouzo  
      ::  ~&  [%send now p.bon `@p`(mug (shaf %flap q.bon))]
      :_  fox
      [[wru hen [%send p.bon q.bon]] ~]
    ::  
        %wine
      :_  fox
      =+  nym=(temp p.p.bon q.p.bon /name)
      =+  fom=~(rend co %$ %p q.p.bon)
      :~  :+  wru  [/d hen]
          :+  %flog  %text
          ;:  weld
            "; "
            ?:  |(?=(~ nym) =(%$ u.nym))  fom 
            :(weld fom " " (trip ((hard ,@) u.nym)))
            q.bon
          ==
      ==
    ==
  ::
  ++  knap
    |=  [wru=(unit writ) tea=wire hen=duct fav=card]
    ^-  [(list move) _+>]
    ?:  ?=([%crud *] fav)
      [[[wru [/d hen] [%flog fav]] ~] +>]
    =+  ^=  fuy  ^-  [p=(list boon) q=fort]
        ?+    -.fav  
          [~ fox]
        ::
            %cash
          (~(have am [now fox]) p.fav q.fav)
        ::
            %hear
          (~(gnaw am [now fox]) %good p.fav q.fav)
        ::
            %hole
          (~(gnaw am [now fox]) %dead p.fav q.fav)
        ::
            %junk
          [~ fox(any.ton (shax (mix any.ton.fox p.fav)))]
        ::
            %kick
          (~(kick am [now fox(hop p.fav)]) hen)
        ::
            %make
          =+  vun=(~(come am [now fox]) p.fav (bex q.fav) r.fav)
          [[[%beer p.vun] ~] q.vun]
        ::
            %sith
          (~(czar am [now fox]) p.fav q.fav)
        ::
            %want
          ?>  ?=(^ wru)
          (~(wise am [now fox]) [q.u.wru p.fav] hen q.fav r.fav)
        ::
            %went 
          (~(went am [now fox]) [q.u.wru p.fav] hen q.fav r.fav)
        ::
            %wake
          ~(wake am [now fox])
        ::
            %writ
          ?>  ?=(^ wru)
          ?>  ?=([@ @ ~] tea)
          =+  fyg=(slay i.tea)
          =+  haw=(slay i.t.tea)
          ?>  &(?=([~ %$ %p @] fyg) ?=([~ %$ %ud @] haw))
          (~(wert am [now fox]) [q.u.wru q.p.u.fyg] hen q.p.u.haw p.fav)
        ==
    =>  %_(. fox q.fuy)
    =|  out=(list move)
    |-  ^-  [p=(list move) q=_+>.^$]
    ?~  p.fuy
      [(flop out) +>.^$]
    =^  toe  fox  (clop wru now hen i.p.fuy)
    $(p.fuy t.p.fuy, out (weld (flop toe) out))
  ::
  ++  perm
    |=  [our=ship his=ship mar=@ud tyl=path]
    ^-  (unit)
    ?~  tyl  ~
    ?:  ?=([%name ~] tyl)
      =+  wul=$(tyl [%will ~])
      ?~(wul ~ [~ (gnow his q.q.q:((hard deed) -.u.wul))])
    =+  gys=(~(us go ton.fox) our)
    ?~  gys  ~
    ?.  =(our his)
      ?:  ?=([%will ~] tyl)
        =+  fod=(~(get by hoc.saf.u.gys) his)
        ?~  fod  ~
        (rick mar his lew.wod.u.fod)
      ~
    ?:  ?=([%buck ~] tyl)
      =+  muc=(rice mar sex:u.gys)
      =+  luw=(rick mar our law.saf.u.gys)
      ?.  &(?=(^ muc) ?=(^ luw))  ~
      [~ `buck`[u.muc u.luw]]
    ?:  ?=([%tick @ ~] tyl)
      =+  hur=(slaw %p i.t.tyl)
      ?~  hur  ~
      ?.  =(our (sein u.hur))  ~
      [~ (end 6 1 (shaf %tick (mix u.hur (shax sec:ex:q:sen:u.gys))))]
    ?:  ?=([%will ~] tyl)
      (rick mar our law.saf.u.gys)
    ~
  ::
  ++  temp
    |=  [our=ship his=ship tyl=path]
    ::  ~&  [%temp our his tyl]
    ^-  (unit)
    ?.  ?=([%life ~] tyl)
      =+  muc=$(tyl [%life ~])
      ?~  muc  ~
      (perm our his (,@ud u.muc) tyl)
    =+  gys=(~(us go ton.fox) our)
    ?~  gys  ~
    ?.  =(our his)
      =+  fod=(~(get by hoc.saf.u.gys) his)
      ?~  fod  ~
      ?~  lew.wod.u.fod  ~
      [~ `@ud`p.p.q.i.lew.wod.u.fod]
    ?~  val.saf.u.gys  ~
    [~ `@ud`p.i.val.saf.u.gys]
  --
