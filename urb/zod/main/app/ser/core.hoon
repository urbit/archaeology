::  iris test app
!:
=>  |%  
        ++  axel  ,[%0 p=(unit dock)]                   ::  pointless state...
        ++  move  ,[p=bone q=(mold note gift)]          ::  arvo
        ++  gift  ,[%nice ~]                            ::
        ++  note                                        ::  outgoing request
          $?  $:  %i                                    ::
              $%  [%conn p=lant]                        ::  connect to iris
                  [%bind p=@]                           ::  bind to iris
                  [%drop p=tock]                        ::  drop iris connect
                  [%send p=tock q=@]                    ::  send over iris
                  [%stop p=dock]                        ::
          ==  ==  ==                                    ::
        ++  sign                                        ::  incoming response
          $?  $:  %i                                    ::
              $%  [%tock p=(unit tock) q=lant]          ::
                  [%hear p=tock q=@]                    ::
                  [%done p=tock]                        ::
                  [%gone p=dock]                        ::
                  [%sent p=tock q=@]                    ::
                  [%bond p=(unit dock) q=@]             ::  bound to iris
                  [%tick p=dock q=tock]                 ::  new tock
          ==  ==  ==                                    ::
        ++  tcpv                                        ::  kiss
          $%  [%star ~]                                 ::
              [%send q=@]                               ::
          ==
    --                                                    
|_  [hid=hide vat=axel]
++  poke
  |=  [ost=bone *]
  ^-  [(list move) _+>]
  ~&  %poke
  :_  +>
  :_  ~  
  :::-  [ost %give %nice ~]
  ::
  ::
  ::`move`[ost %pass [%mess (scot %ud ost) ~] `note`[%i %conn 4.444 .127.0.0.1]]
  `move`[ost %pass [%mess (scot %ud ost) ~] %i %bind 5.555]
::
++  pour
  |=  [way=path sih=sign]
  ^-  [(list move) _+>]
  ~&  [%iris-over-gall sih]
  ?>  ?=(%i -.sih) 
  ?>  ?=([@ @ ~] way)
  ?-  +<.sih 
    %bond  [~ +>(p.vat p.sih)]
    %tock  [~ +>]
    %done  [~ +>]
    %gone  [~ +>]
    %hear  :_  +>  :_  ~
           ?:  =("drop" (scag 4 (trip q.sih))) ::  newlin
             [(slav %ud i.t.way) %pass ~ %i %drop p.sih]
           ?:  =("stop" (scag 4 (trip q.sih)))
             [(slav %ud i.t.way) %pass ~ %i %stop (need p.vat)]
           [(slav %ud i.t.way) %pass ~ %i %send p.sih q.sih]
    %sent  [~ +>]
    %tick  [~ +>]
  ==
:: 
--
