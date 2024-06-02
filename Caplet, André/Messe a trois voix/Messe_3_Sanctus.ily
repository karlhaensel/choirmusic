\version "2.22.1"

Sglobal = {
  \global
  \key e \major
  \time 6/4
}

dMarcF = { s8^\markup{\right-align{\italic marc. \dynamic f}} }

dSTutti = {
  \Sglobal
  \tempo "Modéré, mais sans lenteur" s4^\markup{\dynamic pp \italic dolce} \tag #'s {s2 s2\> s4\!} \tag #'m \tag #'a {s4 s\> s2 s4\!} \breathe | s2\< s4\! s2\> s4\! \breathe | s4\p\< s2 s2 s4\! \breathe |
  s4\mf\< s4. s8\! s2\> s4\! | s2^\markup{\dynamic pp \italic dolce} s4\> s2 s4\! \breathe | \repeat unfold 2 {s4 s2\< s2 s4\! \breathe |}
  s4\mf s2 s2.\> | \mark #16 \tempo "Un peu moins lent" s4\f s2 s2. | s1. | \tempo "a Tempo" \tag #'s \tag #'m {s4\p} \tag #'a {s4^\markup{\dynamic p \italic expressif}} s2 s2. |
  s4 s\< s s4 s2\! | s4\f s2 \tag #'s \tag #'a {s2. } \tag #'m {s2\< s4\!} | s2. s2 s8 \tag #'s {s8\pp} \tag #'m {s8} \tag #'a {\dMarcF} |
  
  \tag #'s { s2. s2 s8 \dMarcF } \tag #'m { s2 s8 \dMarcF s2. } \tag #'a { s1. } | s2\< s8 s\! s2 s8 s\f |
  s2. s2 s4\ff | s1.*2 |
  \time 3/4 \mark \default \tempo "Sans lenteur" s4\ppp s2 | s2. | s4 s^\markup{\right-align \italic {poco}}\< s | s\> s s\! | s2. | s4 s\< s |
  s2 s4\! \breathe | s2\mf s8\> s16 s\! | s2. | s2.\pp | \tag #'s {s2.} \tag #'m \tag #'a {s8 s\> s s s\! s } |
  
  s2. | \tag #'s {s2 \breathe s8\mf\< s} \tag #'m {s8 s\< s4. s16 s\!} \tag #'a {s2 s8\mf\< s8} | s4\> s\! s8\< s16 s\! | s8 s\> s s\! s4 \breathe | s2.\pp |
  s2 \mark \default \tempo "Moins lent" s8 s\pp | \time 6/4 s2. s2 s8 s\f | s2. s2 s8 s\ff |
  \time 3/4 s4.\< s8\! \breathe s4 | \time 6/4 s2. s2 s8 s^\markup{\center-align{\italic sonore}} | s1. |
  \tempo "En retenant peu à peu" s2 s4\pp\< s2 \breathe s8 s16 s\! | s2\> s8 s\! s4 s4\dim s8 s16 s\! \bar "|."
}

tSTutti = \lyricmode {
  \tag #'s \tag #'m { Sanc -- tus, __ Sanc -- tus, __ } \tag #'a { Sanc -- tus, Sanc -- tus, } Sanc -- tus, __
  Do -- mi -- nus __ \tag #'s \tag #'m { Sanc -- tus, Sanc -- tus, Sanc -- tus, __ Do -- mi -- nus __ } \tag #'a { Sanc -- tus, __ Sanc -- tus, __  Sanc -- tus, __ Do -- mi -- nus }
  De -- us Sa -- ba -- oth. __ Ple -- ni sunt __
  cae -- li et ter -- ra glo -- ri -- a __ tu -- a: __ 
  
  \tag #'s {Ho -- san -- na, Ho -- san -- na, Ho -- san -- na __ } \tag #'m {Ho -- san -- na __ in ex -- cel -- sis } \tag #'a {Ho -- san -- na __ in ex -- cel -- sis __ in ex -- cel -- sis } in ex -- cel -- sis. Ho --
  san -- na in ex -- cel -- sis Ho -- san -- na __ in ex -- cel -- sis. __
  Be -- ne -- dic -- tus, Be -- ne -- dic -- tus Qui __ ve -- nit in
  no -- mi -- ne Do -- mi -- ni, __ \tag #'s {Do -- mi -- ni, __ Do -- mi -- ni, __ } \tag #'m \tag #'a { Be -- ne -- dic -- tus __ Be -- ne -- dic -- tus }
  
  \tag #'s \tag #'m { qui } \tag #'a { qui __ } ve -- nit in no -- mi -- ne Do -- mi --
  ni, Ho -- san -- na in ex -- cel -- sis Ho -- san -- na in ex -- cel -- sis Ho --
  san __ na __ in ex cel -- sis __ Ho -- san -- na in ex -- cel -- sis Ho --
  san -- na in ex -- cel -- sis __ in ex -- cel -- sis
}

nBenedictus = {
  gis4\(( a4.) a8 | b4 b2\) | r4 b\( cis | cis b2\) | r4 fis\(( e) | b' a gis |
  cis( b8) b cis4 | e2~ e8 e, | e2~ e8\) r8 |
}

nSSopran = \relative c' {
  \Sglobal
  e4( fis2) fis4( a2) | e4( fis2) a4( b2) | fis4( a b) b--( a cis) |
  b( e4.) cis8 cis2~ cis8 r | b2. b | b b | cis-- b4( cis e) |
  e4( fis4.) b,8 b4( dis2) | fis4--( dis) cis cis( dis4.) gis,8 | gis2.~ gis8 r r4 r | cis4\(( b) b e( cis2)\) |
  cis4\( b e fis dis2\) | gis4.--\(( fis8) fis8([ e]) fis4( e cis) | e2-> b4~ b2\) r8 b |
  
  b4 b4. b8 b4 b4. b8-^| b-^([ cis]) e([ fis]) dis cis gis'4 gis, r8 dis'8 |
  dis4 gis, gis8 cis dis4 gis, gis8([ cis]) | dis([ cis]) cis([ eis]) eis dis gis4.( dis8) dis4~ | dis2 r4 r2 r4 |
  \relative c'' \nBenedictus
  e2~\( e8 e, | e2~ e8\) r |
  
  e'2~\( e8 e, | e2\) e'4 | f-- e a, | c--( b8) b gis!4 | dis'2~\( dis8 dis, |
  dis2\) r8 gis-^ | gis4-^ gis-^ gis8-^ fis-^ gis4-^ gis-^ r8 dis' | dis4 gis, gis8 cis dis4 gis, gis8([ cis]) |
  dis([ cis]) cis([ eis]) eis dis | gis([ fis dis cis]) dis4~ dis~ dis8 r r e-^ | e4-^ b-^ b8-^ e-^ e4-^ b-^ r8 e-^ |
  e4-^ e-^ b8 b b([ e]) e([ b]) b e | gis2( gis,4) gis2.\fermata |
}

nSMezzo = \relative c' {
  \Sglobal
  e4( fis2) fis2. | e4( fis2) fis4( a2) | fis2. e2( a4) |
  a2~  a8 gis gis2~ gis8 r | b4( a2) a2. | b4( a2) a2. | a2.-- a4( b cis) |
  cis( dis4.) fis,8 fis4( dis2) | fis4--( dis') cis cis( dis4.) gis,8 | gis2.~ gis8 r r4 r | gis\(( fis) fis b( gis2)\) |
  gis4\( fis b cis gis2\) | gis2--\( gis4-- gis2( a4) | a2-> gis4~ gis2\) r4 |
  
  r4 r r8 e-^ e-^([ fis]) a([ b]) gis fis | a4 cis b8 a gis4 gis r8 bis |
  bis4 gis gis8 ais bis4 gis gis8([ ais]) | bis([ ais]) ais([ cis]) cis bis dis4.( bis8) bis4~ | bis2 r4 r2 r4 |
  \nBenedictus
  cis'2\( c4 | g gis~ gis8\) r |
  
  cis4\(( c) b | ais b\) bis | cis-- cis a | gis!4.-- gis8 gis4 | bis2~\( bis8 bis, |
  bis2\) r8 gis'-^ | gis4-^ gis-^ gis8-^ fis-^ gis4-^ gis-^ r8 bis | bis4 gis gis8 ais bis4 gis gis8([ ais]) |
  bis([ ais]) ais([ cis]) cis bis | dis([ cis bis ais]) bis4~ bis~ bis8 r r cis-^ | cis4-^ gis-^ gis8-^ cis-^ cis4-^ gis-^ r8 cis-^ |
  cis4-^ cis-^ gis8 gis gis([ b]) b([ gis]) gis b | e2( e,4) e2.\fermata |
}

nSAlt = \relative c' {
  \Sglobal
  e2. e | e dis | fis4( e dis) cis2( e4) |
  b'4.( cis,8) cis4 cis2~ cis8 r | b'4( a fis) e( b2) | b'4( a fis) e( cis2) | r4 dis( e) fis( gis a) |
  a( b4.) dis,8 dis2. | fis4--( dis) cis cis( dis4.) gis8 | gis2.~ gis8 r r4 r | cis,\(( b) b e( cis2)\) |
  cis4\( b e fis dis2\) | gis4.--\(( fis8) fis8([ e]) fis4( e cis) | e2-> e4~ e2\) r8 b-^ |
  
  b-^([ cis]) e([ fis]) dis cis cis([ dis]) fis([ gis]) e dis | fis4 a gis8 fis gis4 gis r8 gis |
  gis4 gis gis8 fis gis4 gis gis8([ fis]) | gis([ fis]) fis([ ais]) ais gis bis4.( gis8) gis4~ | gis2 r4 r2 r4 |
  \nBenedictus
  a2\( a4 | c, cis~ cis8\) r |
  
  a'4\(( gis) g | fis g\) g8\(([ bes]) | bes4-- a\) a | f--( e8) e gis4 | gis2~\( gis8 gis, |
  gis2\) r8 gis'-^ | gis4-^ gis-^ gis8-^ fis-^ gis4-^ gis-^ r8 gis | gis4 gis gis8 fis gis4 gis gis8([ fis]) |
  gis([ fis]) fis([ ais]) ais gis | bis([ ais gis fis]) gis4~ gis~ gis8 r r a-^ | a4-^ e-^ e8-^ a-^ a4-^ e-^ r8 a-^ |
  a4-^ a-^ e8 e e([ gis]) gis([ e]) e gis | b4 b2~  b2.\fermata |
}



sSSopran = 
  \new Staff  = "zSSopran"
    \with {
      instrumentName = "Soprani"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dSTutti
      { 
        \new Voice = "vSSopran" {\nSSopran}
      }

      \new Lyrics \lyricsto "vSSopran" {\keepWithTag #'s \tSTutti}
    >>
    
sSMezzo = 
  \new Staff  = "zSMezzo"
    \with {
      instrumentName = \markup{\right-column{"Mezzo-" "Soprani"}}
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dSTutti
      { 
        \new Voice = "vSMezzo" {\nSMezzo}
      }
      \new Lyrics \lyricsto "vSMezzo" {\keepWithTag #'m \tSTutti}
    >>

sSAlt = 
  \new Staff  = "zSAlt"
    \with {
      instrumentName = "Contralti"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dSTutti
      { 
        \new Voice = "vSAlt" {\nSAlt}
      }
      \new Lyrics \lyricsto "vSAlt" {\keepWithTag #'a \tSTutti}
    >>