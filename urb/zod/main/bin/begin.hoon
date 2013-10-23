!:
::  /=main=/bin/begin/hoon
::
=>  .(-< `who=@p`-<)
=>  .(+ =>(+ ^/===/lib/pony))
|=  [est=time *]
|=  arg=$|(~ [p=@p ~])
=-  ^-  bowl
    ?^  arg  (fud p.arg)
    %+  pomp  ""
    %+  (polo %text "Do you have a ship and a ticket? " "yes" ~)
      ;~(pose (jest %yes) (jest %no))
    |=  [* ans=@t]
    ?.  =(%yes ans)
      :_  ~
      :~  [%la %leaf "Please ask urbit@urbit.org for one."]
      ==
    %+  (polo %text "Your ship: ~" ~ ~)
      fed:ag
    |=  [* mig=@p]
    ^-  bowl
    (fud mig)
^=  fud
|=  mig=@p 
=+  bos=(sein mig)
?>  !=(bos mig)
=<  main
|%
++  looc  ;~(pose alp (shim 128 255))
++  loon  
  %+  cook
    |=  all=(list ,@t)
    |-  ^-  @t
    ?~  all  %$
    ?~  t.all  i.all
    (cat 3 i.all (cat 3 ' ' $(all t.all)))
  (most ace (cook |=(a=(list ,@) (rap 3 a)) (plus looc)))
::
++  main
  ^-  bowl
  =+  ran=(clan mig)
  =+  ^=  cow
      |-  ^-  @ud 
      ?-  ran
        %czar  (bex 8)
        %king  (mul (bex 8) (dec (bex 8)))
        %duke  (mul (bex 16) (dec (bex 16)))
        %earl  (mul (bex 32) (dec (bex 32)))
        %pawn  (mul (bex 64) (dec (bex 64)))
      ==
  =+  ^=  ves  ^-  tape
      ?-  ran
        %czar  "carriers"
        %king  "cruisers"
        %duke  "destroyers"
        %earl  "yachts"
        %pawn  "submarines"
      ==
  =+  gup=(scow %p mig)
  %+  pomp  ""
  %+  pomp  "Launching {gup}, one of {<cow>} Urbit {ves}..."
  %+  pomp  ""
  %+  pomp  "            If I did not build for myself"
  %+  pomp  "            for whom should I build?"
  %+  pomp  ""
  %+  pomp  "                  -- Bunting, _Chomei at Toyama_"
  %+  pogo  (pond ^:@/===doc%/warning/txt)
  %+  (polo %text "Your ticket: ~" ~ ~)
    fed:ag
  |=  [* tic=@p]
  %+  pogo  (pond ^:@/===doc%/entropy/txt)
  %+  (polo %pass "Entropy: " ~ ~)
    (boss 256 (more gon qit))
  |=  [* tey=@]
  =.  tey  (shax tey)
  %+  pomp  "Entropy check: {<`@p`(mug tey)>}"
  %+  pogo  (pond ^:@/===doc%/language/txt)
  %+  (polo %text "Language: " "en" ~) 
    %+  sear
      |=  [a=@ b=@]
      ^-  (unit ,@ta)
      =+  c=(cat 3 a b)
      =+(d=(glon c) ?~(d ~ [~ c]))
    ;~(plug low low)
  |=  [* lag=lang]
  %+  pomp  ""
  %+  pomp  "Okay, we'll be speaking {(need (glon lag))}."
  ^-  bowl
  ?.  ?=(%duke ran)
    %+  (polo %text "Name: " ~ ~)
      (boss 256 (more gon qit))
    |=  [now=@da nam=@]
    (moss now tic tey lag (gcos [ran nam]))
  %+  pogo  (pond ^:@/===doc%/identity/txt)
  %+  (polo %text "Form: %" "lady" ~)
    ;~  pose
      (jest %anon)
      (jest %band)
      (jest %crew)
      (jest %dept)
      (jest %fair)
      (jest %holy)
      (jest %home)
      (jest %lady)
      (jest %lord)
      (jest %punk)
    ==
  |=  [now=@da fom=@t]
  ?+    fom  !!
      %anon  (moss now tic tey lag [%duke %anon ~])
      %punk
    %+  (polo %text "Handle: " ~ ~)
      (boss 256 (plus alp))
    |=  [now=@da puc=@t]
    (moss now tic tey lag [%duke %punk puc])
  ::
      ?(%band %crew %dept %fair %home %holy)
    %-  moon  
    |=  [* gov=govt]
    %+  (polo %text "Name: " ~ ~) 
      loon 
    |=  [now=@da nam=@t]
    (moss now tic tey lag [%duke (what fom `corp`[nam gov])])
  ::
      ?(%lord %lady)
    %+  pogo  (pond ^:@/===doc%/person/txt)
    %+  (polo %text "Year you were born: " "19" ~)
      dim:ag
    |=  [* yar=@]
    %-  moon 
    |=  [* gov=govt]
    %+  pogo  (pond ^:@/===doc%/name/txt)
    %+  (polo %text "First name: " ~ ~)
      loon
    |=  [* fis=@t]
    %+  (polo %text "Middle name (or blank): " ~ ~)
      ;~(pose (stag ~ loon) (easy ~))
    |=  [* mid=(unit ,@t)]
    %+  (polo %text "Nickname/handle (or blank): " ~ ~)
      ;~(pose (stag ~ loon) (easy ~))
    |=  [* nik=(unit ,@t)]
    %+  (polo %text "Last name: " ~ ~)
      loon
    |=  [* las=@t]
    %+  pogo  (pond ^:@/===doc%/banner/txt)
    %+  (polo %text "Banner: %" "blue" ~)
      ;~  pose 
        (jest %white) 
        (jest %blue) 
        (jest %red) 
        (jest %black)
        (jest %orange)
      ==
    |=  [now=@da ban=@t]
    =>  .(ban (?(%white %blue %red %black %orange) ban))
    =+  nam=`name`[fis mid nik las]
    (moss now tic tey lag `gcos`[%duke %lord `whom`[yar gov ban nam]])
  ==
::
++  moon
  |*  woo=||([@da govt] bowl)
  %+  pogo  (pond ^:@/===doc%/location/txt)
  %+  (polo %text "Location: " "us/94114" ~)
    ;~  pose
      ;~  plug
        (cook |=([a=@ b=@] (cat 3 a b)) ;~(plug low low))
        ;~  pose
          ;~(pfix fas (plus ;~(pose hig hep nud)))
          (easy ~)
        ==
      ==
      (easy ~)
    ==
  woo
::
++  moss
  |=  [now=@da tic=@p tey=@ ges=gens]
  ^-  bowl
  =+  bur=(shax :(mix (jam ges) tey))
  %+  pomp  "generating 2048-bit RSA key..."
  %-  (posh (add ~s1 now))
  |=  now=@da
  =+  loy=(brew 2.048 bur)
  %-  (post bos %ta [mig tic ges pub:ex:loy])
  |=  [now=@da rup=(unit ,*)]
  :_  ~
  ?~  rup  ~[la/leaf/"request rejected"]
  =+  mac=`mace`[[0 sec:ex:loy] ~]
  =+  wil=((hard (unit will)) u.rup)
  ?~  wil
    :~  [%la %leaf "request rejected - invalid ticket"]
    ==
  :~  [%la %leaf "request approved"]
      [%xy /a `card`[%cash mig mac u.wil]]
  ==
--
