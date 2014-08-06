::  iris test app
!:
=>  |%  
        ++  axel  ,[%0 @]                               ::  pointless state...
        ++  move  ,[p=bone q=(mold note gift)]          ::  arvo
        ++  gift  ,[%nice ~]                            ::
        ++  note                                        ::  outgoing request
          $?  $:  %i                                    ::
              $%  [%conn p=lant]                        ::  connect to iris
          ==  ==  ==                                    ::
        ++  sign                                        ::  incoming response
          $?  $:  %i                                    ::
              $%  [%foam (unit tock)]                   ::
          ==  ==  ==                                    ::
    --                                                    
|_  [hid=hide vat=axel]
++  poke-json
  |=  [ost=bone *]
  ^-  [(list move) _+>]
  ~&  %poke
  :_  +>
  :_  ~  
  :::-  [ost %give %nice ~]
  `move`[ost %pass ~ `note`[%i %conn 4.444 .127.0.0.1]]
::
++  pour
  |=  [way=path sih=sign]
  ~&  [%iris-over-galll sih]
  [~ +>]
::
--
