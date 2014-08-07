::  iris test app
!:
=>  |%  
        ++  axel  ,[%0 @]                               ::  pointless state...
        ++  move  ,[p=bone q=(mold note gift)]          ::  arvo
        ++  gift  ,[%nice ~]                            ::
        ++  note                                        ::  outgoing request
          $?  $:  %i                                    ::
              $%  [%conn p=lant]                        ::  connect to iris
                  [%drop p=tock]                        ::  drop iris connect
                  [%send p=tock q=@]                    ::  send over iris
          ==  ==  ==                                    ::
        ++  sign                                        ::  incoming response
          $?  $:  %i                                    ::
              $%  [%foam p=(unit tock)]                 ::
                  [%hear p=tock q=@]                    ::
                  [%done p=tock]                        ::
                  [%sent p=tock q=@]                    ::
          ==  ==  ==                                    ::
        ++  tcpu                                        ::  kiss
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
  `move`[ost %pass [%mess (scot %ud ost) ~] %i %conn 4.444 .127.0.0.1]
::
++  pour
  |=  [way=path sih=sign]
  ^-  [(list move) _+>]
  ~&  [%iris-over-gall sih]
  ?>  ?=(%i -.sih) 
  ?>  ?=([@ @ ~] way)
  ?-  +<.sih 
    %foam  [~ +>]
    %done  [~ +>]
    %hear  :_  +>  :_  ~
           ?:  =("drop" (scag 4 (trip q.sih))) ::  newlin
             [(slav %ud i.t.way) %pass ~ %i %drop p.sih]
           [(slav %ud i.t.way) %pass ~ %i %send p.sih q.sih]
    %sent  [~ +>]
  ==
:: 
--
