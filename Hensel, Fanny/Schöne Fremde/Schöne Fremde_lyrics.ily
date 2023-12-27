\version "2.24.3"

tText = \lyricmode {
  % Text laut Erstdruck, orthografisch leicht angepasst
  Es rau -- schen die \tag #'s \tag #'a { Wi -- pfel und schau -- ern } \tag #'t { Wi -- pfel } \tag #'b { Wi -- pfel, es }
  \tag #'b { rau -- schen die Wip -- fel, } als hiel -- ten \tag #'s \tag #'a { zu die -- ser } \tag #'t { zur } \tag #'s { Stund, } \tag #'a \tag #'t { Stund, __ } \tag #'s \tag #'a \tag #'t { um die halb -- ver -- fal -- le -- nen Mau -- ern, } \tag #'b { die al -- ten, } die
  al -- ten Göt -- ter die Rund, __  es rau -- schen die Wip -- fel, als
  
  hiel -- ten zu die -- ser Stund, __ die al -- ten, al -- ten
  Göt -- ter die Rund. __ Hier un -- ter den \tag #'s \tag #'t { Myr -- ten -- bäu -- men  } \tag #'a \tag #'b { Bäu -- men } in
  \tag #'s \tag #'t { heim -- lich däm -- mern -- der } \tag #'a \tag #'b { heim -- li -- cher } Pracht, __ was sprichst du \tag #'s \tag #'a { wirr wie }  in Träu -- men \tag #'s \tag #'a { zu  mir __ } phan -- 
  
  tas -- ti -- sche \tag #'s \tag #'b { Nacht, } \tag #'a \tag #'t { Nacht, __ } was sprichst du \tag #'s { wirr wie } in Träu -- men zu
  mir __ phan -- tas -- ti -- sche Nacht, hier un -- ter den Bäu -- men in heim -- li -- cher 
  \tag #'s { Pracht, was sprichst __ du wirr __ wie in Träu -- men, } \tag #'a \tag #'t \tag #'b { Pracht, __  was sprichst du wirr, o Nacht, }
  
  phan -- tas -- ti -- sche \tag #'s { Nacht, __ } \tag #'a \tag #'t \tag #'b { Nacht, } phan -- tas -- ti -- sche Nacht! __
}

tTextOriginal = {
  % Text von Joseph von Eichendorff
  \override LyricText.font-size = #-1
  \override LyricText.font-shape = #'italic
  
  \lyricmode {
    \tag #'s \tag #'a { \repeat unfold 3 {\skip 1} } \repeat unfold 7 {\skip 1} mach -- ten 
    \tag #'s \tag #'a {\repeat unfold 2 {\skip 1} } \repeat unfold 4 { \skip 1 } \tag #'s \tag #'a \tag #'t { halb -- ver -- sun -- ke -- nen } \tag #'b { mach -- ten \skip 1 }
    \repeat unfold 16 {\skip 1} mach -- ten
    \repeat unfold 14 {\skip 1} hin -- ter
    \tag #'s {\repeat unfold 10 {\skip 1}} \tag #'a \tag #'t { \repeat unfold 4 {\skip 1}} \repeat unfold 33 {\skip 1} hin -- ter
    \tag #'s {\repeat unfold 2 {\skip 1}} \repeat unfold 23 {\skip 1} Nacht? __
  }
}