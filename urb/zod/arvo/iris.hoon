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
              lax=(set tock)                            ::  established tocks
              lux=(set dock)                            ::  established docks
              fox=(map tock dock)                       ::  dock by tock
              tcp=duct                                  ::  tcpu duct
              let=@                                     ::  for uniqueness
              gex=(unit ,@)                             ::  max socket in use
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
++  next
  ?~  gex.sno  0
  +(u.gex.sno)
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
    [%give %bind next p.kyz let.sno]
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
          lux.sno  (~(put in lux.sno) [p.kyz u.r.kyz])
          gex.sno  [~ u.r.kyz]
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
    [%give %drop next p.kyz]
    ::
    ::
    ::
      %done
    =+  tok=p.kyz
    :_  %=  ..^$
          tax.sno  (~(del by tax.sno) soc.tok)
          lax.sno  (~(del in lax.sno) tok)
          fox.sno  (~(del by fox.sno) tok)
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
          lax.sno  (~(put in lax.sno) [p.kyz u.r.kyz])
          gex.sno  [~ u.r.kyz]
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
    [%give %conn next p.kyz let.sno]
    ::
    ::
    ::
      %gone                                             ::  dock closed
    =+  dok=p.kyz
    :_  %=  ..^$
          tax.sno  (~(del by tax.sno) soc.dok)
          lux.sno  (~(del in lux.sno) dok)
          fox.sno  %-  mo  
                   ^-  (list ,[tock dock])
                   %-  zing
                   ^-  (list (list ,[tock dock]))
                   %+  turn  (~(tap by fox.sno) ~)
                   |=  [toc=tock doc=dock]
                   ^-  (list ,[tock dock])
                   ?:  =(soc.doc soc.p.kyz)
                     ~
                   :_  ~  [toc doc]
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
    [%give %send next p.kyz q.kyz]
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
    :_  %=  ..^$
          tax.sno  ~
          tux.sno  ~
          lax.sno  ~
          lux.sno  ~
          tcp.sno  hen
        ==
    %+  welp
      %+  turn  (~(tap in lax.sno) ~)
      |=  toc=tock
      :-  (~(got by tax.sno) soc.toc)
      [%give %done toc]
    %+  turn  (~(tap by lux.sno) ~)
    |=  doc=dock
    :-  (~(got by tax.sno) soc.doc)
    [%give %gone doc]
    ::
    ::
    ::
      %tick
    :_  %=  ..^$
          tax.sno  (~(put by tax.sno) soc.q.kyz (~(got by tax.sno) soc.p.kyz))
          gex.sno  [~ soc.q.kyz]
          lax.sno  (~(put in lax.sno) q.kyz)
          fox.sno  (~(put by fox.sno) q.kyz p.kyz)
        ==
    :_  ~  :-  `duct`(~(got by tax.sno) soc.p.kyz)
    [%give `gift`[%tick p.kyz q.kyz]]
    ::
    ::
    ::
      %stop
    :_  ..^$
    %+  welp
      ^-  (list move)
      %-  zing
      ^-  (list (list move))
      %+  turn  (~(tap by fox.sno) ~)                   ::  XX could be faster
      |=  [toc=tock doc=dock]
      ^-  (list move)
      ?:  =(soc.doc soc.p.kyz)
        :_  ~
        :-  tcp.sno
        [%give %drop next toc]
      ~
    :_  ~  :-  tcp.sno
    [%give %stop next p.kyz]
  ==
++  load
  |=  [%0 bar=snow]
  ^+  ..^$
  ..^$(sno bar)
++  stay  +>-.$
--
