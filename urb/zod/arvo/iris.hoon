::  iris, tcp
!:
|=  pit=vase
=>  =~
::  structures
|%
++  snow  $:                                            ::  tcp state
              tax=(map ,@ duct)                         ::  established sockets
                                                        ::  by iris id
              tux=(map ,@ duct)                         ::  unestablished reqs
                                                        ::  by tcpu id
              tcp=duct                                  ::  tcpu duct
              let=@                                     ::  for uniqueness
          ==                                            ::
++  gift                                                ::  out result <-$
          $%                                            ::
              [%conn p=lant q=@]                        ::  connect (-> tcpu)
              [%hear p=tock q=@]                        ::  receive packet
              [%foam p=(unit tock)]                     ::  connected (-> user)
              [%went p=tock q=@]                        ::  packet sent (-> user)
          ==                                            ::
++  kiss                                                ::  in request ->$
          $%                                            ::
              [%clos p=lant]                            ::  terminate connection
              [%cone p=lant q=@ r=(unit ,@)]            ::  connected (<- tcpu)
                                                        ::  q=id, r=socket
              [%hear p=tock q=@]                        ::  hear (<- tcpu)
              [%conn p=lant]                            ::  connect (<- user)
              [%star *]                                 ::  start duct
              [%want p=tock q=@]                        ::  send message to path
          ==                                            ::
++  move  ,[p=duct q=(mold note gift)]                  ::
--
.  ==                                                   ::  tcp vane
=|  $:  %0                                              ::  vane version 
        sno=snow                                        ::  local state
    ==
|=  [now=@da eny=@ ski=sled]
^?
|%
++  call                                                ::  request
  |=  [hen=duct hic=(hypo (hobo kiss))]
  ^-  [p=(list move) q=_..^$]
  =>  .(q.hic ?.(?=(%soft -.q.hic) q.hic ((hard kiss) p.q.hic)))
  (knob hen q.hic)
::
++  knob
  |=  [hen=duct kyz=kiss]
  ^-  [p=(list move) q=_..^$]
  ?-    -.kyz
      %clos
    !!
    ::
      %cone                                             ::  got connection
    ~&  [%iris %cone]
    ?~  r.kyz
      :_  %=  ..^$
            tux.sno  (~(del by tux.sno) q.kyz)
          ==
      :_  ~  :-  (~(got by tux.sno) q.kyz)              ::  trans duct
      [%give %foam ~]
    :_  %=  ..^$
          tax.sno  (~(put by tax.sno) u.r.kyz (~(got by tux.sno) q.kyz))
          tux.sno  (~(del by tux.sno) q.kyz)
        ==
    :_  ~  :-  (~(got by tux.sno) q.kyz)                ::  trans duct
    [%give %foam [~ [p.kyz u.r.kyz]]]
    ::
      %conn                                             ::  request connection
    :_  %=  ..^$
          let.sno  +(let.sno)
          tux.sno  (~(put by tux.sno) let.sno hen)
        ==
    :_  ~  :-  tcp.sno
    [%give %conn p.kyz let.sno]
    ::
      %hear
    ~&  [%iris %hear]
    :-  ~
    ..^$
      %star
    :-  ~
    ..^$(tcp.sno hen)
    ::
      %want 
    !!
    ::  pass to unix
  ==
++  load
  |=  [%0 bar=snow]
  ^+  ..^$
  ..^$(sno bar)
++  stay  +>-.$
--
