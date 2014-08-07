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
              lax=(map ,@ (set tock))                   ::  bound sockets XX
              tcp=duct                                  ::  tcpu duct
              let=@                                     ::  for uniqueness
          ==                                            ::
++  gift                                                ::  out result <-$
          $%                                            ::
              [%conn p=lant q=@]                        ::  connect (-> tcpu)
              [%done p=tock]                            ::  close (-> user)
              [%hear p=tock q=@]                        ::  receive (-> user)
              [%foam p=(unit tock)]                     ::  connected (-> user)
              [%send p=tock q=@]                        ::  send packet (-> tcpu)
              [%sent p=tock q=@]                        ::  packet sent (-> user)
          ==                                            ::
++  kiss                                                ::  in request ->$
          $%                                            ::
              [%done p=tock]                            ::  terminate connection
              [%cone p=lant q=@ r=(unit ,@)]            ::  connected (<- tcpu)
                                                        ::  q=id, r=socket
              [%hear p=tock q=@]                        ::  hear (<- tcpu)
              [%conn p=lant]                            ::  connect (<- user)
              [%star *]                                 ::  start duct (<- tcpu)
              [%send p=tock q=@]                        ::  send (<- user)
              [%sent p=tock q=@]                        ::  sent (<- tcpu)
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
  ~&  [%iris-request q.hic]
  =>  .(q.hic ?.(?=(%soft -.q.hic) q.hic ((hard kiss) p.q.hic)))
  (knob hen q.hic)
::
++  knob
  |=  [hen=duct kyz=kiss]
  ^-  [p=(list move) q=_..^$]
  ?-    -.kyz
      %done
    =+  tok=p.kyz
    :_  ..^$(tax.sno (~(del by tax.sno) soc.tok))
    :_  ~
    :-  (~(got by tax.sno) soc.tok)                     ::  trans duct
    [%give %done tok]
    ::
      %cone                                             ::  got connection
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
    :_  ..^$  :_  ~
    :-  (~(got by tax.sno) soc.p.kyz)
    [%give kyz]
    ::
      %send
    :_  ..^$
    :_  ~  :-  tcp.sno
    [%give %send p.kyz q.kyz]
    ::
      %sent
    :_  ..^$
    :_  ~  :-  (~(got by tax.sno) soc.p.kyz)
    [%give %sent p.kyz q.kyz]
    ::
      %star
    :-  ~
    ..^$(tcp.sno hen)
  ==
++  load
  |=  [%0 bar=snow]
  ^+  ..^$
  ..^$(sno bar)
++  stay  +>-.$
--
