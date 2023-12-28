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
  Es fun -- keln mir zu al -- le Ster -- ne \tag #'s { mit __ } \tag #'a \tag #'t \tag #'b { mit } \tag #'s \tag #'b { glü -- hen -- dem } \tag #'a \tag #'t { glü -- hen -- dem __ } \tag #'s \tag #'t { Lie -- bes -- blick, } \tag #'a \tag #'b { Blick, }
  es \tag #'s \tag #'t { re -- det __ } \tag #'a \tag #'b { re -- det } trun -- ken die Fer -- ne, es re -- det die
  
  \tag #'s { Fer -- ne von künf -- ti -- gem } \tag #'a \tag #'t \tag #'b { Fer -- ne, die Fer -- ne re -- det von } gro -- ßen \tag #'s \tag #'a \tag #'t { Glück, __ } \tag #'b { Glück, } es
  fun -- keln mir zu al -- le Ster -- ne, \tag #'s { mit __ } \tag #'a \tag #'t \tag #'b { mit } \tag #'s \tag #'b { glü -- hen -- dem } \tag #'a \tag #'t { glü -- hen -- dem __ } \tag #'s \tag #'t { Lie -- bes -- blick, } \tag #'a \tag #'b { Blick, }
  es \tag #'s \tag #'t { re -- det __ } \tag #'a \tag #'b { re -- det } trun -- ken die Fer -- ne, \tag #'s \tag #'a { es __ re -- det die __ Fer -- ne, } \tag #'t \tag #'b { es re -- det die Fer -- ne } \tag #'a \tag #'t \tag #'b { es re -- det, es re -- det trun -- ken }
  
  \tag #'s { es re -- det } die Fer -- ne von
  \tag #'s { künf -- ti -- gem gro -- ßen } \tag #'a \tag #'t \tag #'b { gro -- ßem } \tag #'s \tag #'a \tag #'t { Glück, __ } \tag #'b { Glück, } es re -- det \tag #'s { trun -- ken } die Fer -- ne von
  \tag #'s \tag #'t { gro -- ßem __ } \tag #'a \tag #'b { gro -- ßem } Glück, es re -- det trun -- ken die Fer -- ne von
  
  künft -- ti -- gem \tag #'s \tag #'t { gro -- ßen __ } \tag #'a \tag #'b { gro -- ßen } \tag #'s \tag #'t { Glück, __ } \tag #'a \tag #'b { Glück, } \tag #'s { vom } \tag #'a \tag #'t \tag #'b { vom } künf -- ti -- gen \tag #'s { gro -- ßen } Glück. __
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
    \tag #'s {\repeat unfold 2 {\skip 1}} \repeat unfold 23 {\skip 1} Nacht?
    \repeat unfold 3 {\skip 1} auf mich
    \repeat unfold 25 {\skip 1} \tag #'a \tag #'b {\repeat unfold 3 {\skip 1}} \tag #'t {\repeat unfold 5 {\skip 1}} "wie von"
    \tag #'s {\repeat unfold 3 {\skip 1}} \repeat unfold 6 {\skip 1} auf mich
    \tag #'s {\repeat unfold 31 {\skip 1}} \tag #'a \tag #'b {\repeat unfold 34 {\skip 1}} \tag #'t {\repeat unfold 36 {\skip 1}} "wie von"
    \tag #'s {\repeat unfold 14 {\skip 1}} \tag #'a \tag #'t \tag #'b {\repeat unfold 9 {\skip 1}} "wie von"
    \repeat unfold 11 {\skip 1} "wie von"
    \repeat unfold 6 {\skip 1} "wie von" künf -- ti -- gem \tag #'s { gro -- ßen } Glück! __
  }
}