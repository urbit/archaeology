::  iris, tcp
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
              gex=@                                     ::
          ==                                            ::
++  gift                                                ::  out result <-$
          $%                                            ::
              [%bond p=(unit dock) q=@]                 ::  bound (-> user)
              [%done p=tock]                            ::  close (-> user)
              [%gone p=dock]                            ::  close (-> user)
              [%hear p=tock q=@]                        ::  receive (-> user)
              [%sent p=tock q=@]                        ::  packet sent (-> user)
              [%tick p=dock q=tock]                     ::  new endpoint (-> user)
              [%tock p=(unit tock) q=lant]              ::  connected (-> user)
                                                        ::
              [%bind i=@ p=@ q=@]                       ::  bind (-> tcpu)
              [%conn i=@ p=lant q=@]                    ::  connect (-> tcpu)
              [%drop i=@ p=tock]                        ::  terminate (-> tcpu)
              [%send i=@ p=tock q=@]                    ::  send packet (-> tcpu)
              [%stop i=@ p=dock]                        ::  close (-> tcpu)
          ==                                            ::
++  kiss                                                ::  in request ->$
          $%                                            ::
              [%bind p=@]                               ::  bind (<- user)
              [%drop p=tock]                            ::  terminate (<- user)
                                                        ::  p=port, q=id, r=soc
                                                        ::  q=id, r=socket
              [%hear p=tock q=@]                        ::  hear (<- tcpu)
              [%conn p=lant]                            ::  connect (<- user)
              [%send p=tock q=@]                        ::  send (<- user)
              [%stop p=dock]                            ::  stop bind  (<- user)
                                                        ::
              [%bond p=@ q=@ r=(unit ,@)]               ::  bound (<- tcpu)
              [%cone p=lant q=@ r=(unit ,@)]            ::  connected (<- tcpu)
              [%done p=tock]                            ::  terminate (<- tcpu)
              [%gone p=dock]                            ::  terminate (<- tcpu)
              [%sent p=tock q=@]                        ::  sent (<- tcpu)
              [%tick p=dock q=tock]                     ::  new endpoint (<- tcpu)
              [%star *]                                 ::  start duct (<- tcpu)
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
    ::
    ::
    ::
      %bind                                             ::  request bind
    :_  %=  ..^$
          let.sno  +(let.sno)
          tux.sno  (~(put by tux.sno) let.sno hen)
        ==
    :_  ~  :-  tcp.sno
    [%give %bind +(gex.sno) p.kyz let.sno]
    ::
    ::
    ::
      %bond                                             ::  got connection
    ?~  r.kyz
      :_  %=  ..^$
            tux.sno  (~(del by tux.sno) q.kyz)
          ==
      :_  ~  :-  (~(got by tux.sno) q.kyz)              ::  trans duct
      [%give %bond ~ p.kyz]
    :_  %=  ..^$
          tax.sno  (~(put by tax.sno) u.r.kyz (~(got by tux.sno) q.kyz))
          tux.sno  (~(del by tux.sno) q.kyz)
          gex.sno  u.r.kyz
        ==
    :_  ~  :-  (~(got by tux.sno) q.kyz)                ::  trans duct
    [%give %bond [~ p.kyz u.r.kyz] p.kyz]
    ::
    ::
    ::
      %drop
    :_  ..^$
    :_  ~
    :-  tcp.sno                                         ::  to tcpu
    [%give %drop +(gex.sno) p.kyz]
    ::
    ::
    ::
      %done
    =+  tok=p.kyz
    :_  %=  ..^$
          tax.sno  (~(del by tax.sno) soc.tok)
        ==
    :_  ~
    :-  (~(got by tax.sno) soc.tok)                     ::  trans duct
    [%give %done tok]
    ::
    ::
    ::
      %cone                                             ::  got connection
    ?~  r.kyz
      :_  %=  ..^$
            tux.sno  (~(del by tux.sno) q.kyz)
          ==
      :_  ~  :-  (~(got by tux.sno) q.kyz)              ::  trans duct
      [%give %tock ~ p.kyz]
    :_  %=  ..^$
          tax.sno  (~(put by tax.sno) u.r.kyz (~(got by tux.sno) q.kyz))
          tux.sno  (~(del by tux.sno) q.kyz)
          gex.sno  u.r.kyz
        ==
    :_  ~  :-  (~(got by tux.sno) q.kyz)                ::  trans duct
    [%give %tock [~ [p.kyz u.r.kyz]] p.kyz]
    ::
    ::
    ::
      %conn                                             ::  request connection
    :_  %=  ..^$
          let.sno  +(let.sno)
          tux.sno  (~(put by tux.sno) let.sno hen)
        ==
    :_  ~  :-  tcp.sno
    [%give %conn gex.sno p.kyz let.sno]
    ::
    ::
    ::
      %gone                                             ::  dock closed
    =+  dok=p.kyz
    :_  %=  ..^$
          tax.sno  (~(del by tax.sno) soc.dok)
        ==
    :_  ~
    :-  (~(got by tax.sno) soc.dok)                     ::  trans duct
    [%give %gone dok]
    ::
    ::
    ::
      %hear
    :_  ..^$  :_  ~
    :-  (~(got by tax.sno) soc.p.kyz)
    [%give kyz]
    ::
    ::
    ::
      %send
    :_  ..^$
    :_  ~  :-  tcp.sno
    [%give %send +(gex.sno) p.kyz q.kyz]
    ::
    ::
    ::
      %sent
    :_  ..^$
    :_  ~  :-  (~(got by tax.sno) soc.p.kyz)
    [%give %sent p.kyz q.kyz]
    ::
    ::
    ::
      %star
    :-  ~
    ..^$(tcp.sno hen)
    ::
    ::
    ::
      %tick
    :_  %=  ..^$
          tax.sno  (~(put by tax.sno) soc.q.kyz (~(got by tax.sno) soc.p.kyz))
        ==
    :_  ~  :-  `duct`(~(got by tax.sno) soc.p.kyz)
    [%give `gift`[%tick p.kyz q.kyz]]
    ::
    ::
    ::
      %stop
    :_  ..^$
    :_  ~  :-  tcp.sno
    [%give %stop +(gex.sno) p.kyz]
  ==
++  load
  |=  [%0 bar=snow]
  ^+  ..^$
  ..^$(sno bar)
++  stay  +>-.$
--
