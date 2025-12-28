\version "2.22.1"

common_halleluja = {
  \global_vier
  \override TextSpanner.bound-details.left.text = \markup{\bold ritardando}
  \tempo "ziemlich schnell"
  s2 | s1*20 |
  
  \tag #'s {s4 s2.\startTextSpan | s4 } 
  \tag #'a \tag #'t \tag #'b {s2 s4\> s | s\p}
  
  \tag #'s \tag #'a {s4\mf s\> s | s\p s }
  \tag #'t \tag #'b { s2. | s4 }

  \tag #'s { s2 | s4 s\stopTextSpan }
  \tag #'t \tag #'b { s4\p } \tag #'a \tag #'t \tag #'b { s4\> s | s16\pp s\> s8 s4 }
   
  \override TextSpanner.bound-details.left.text = \markup{\bold rit.}
  
  \tempo "Allegro moderato maestoso" s4\p\< s | s1 | s4\f s2. | s4 s\>
  
  \tag #'s { s\startTextSpan s | s\p s s s\stopTextSpan | }
  \tag #'a \tag #'t \tag #'b { s4 s | s\p s2. | }
  
  \tempo "Adagio" s4\< s s\> s | s\! s2. \bar "|."
}


nHSopran = \relative c'' {
  \global_vier
  r4 b4~\f | b a8([ gis]) fis4( b) | b b cis dis | e2 dis~( | dis4 e cis) b |
  a2( b) | cis1~ | cis4 d cis b | a2 a | gis2. gis4 |
  fis2. fis4~( | fis e8[ fis] gis4) gis | fis( e dis gis) | gis2 cis-^ | dis-^ eis-^ |
  
  fis2.-^ cis4 | d2-^ cis-^ | ais r | R1 | r4 b-^ cis-^ dis-^ |
  e4. b8 cis4 b | gis r r2 | r4 << {\voiceOne b4 cis b | gis} \new Voice = "vHSopranII" {\voiceTwo b4 a8([ gis]) fis4 | e } >> \oneVoice r4 r2 |
  r2 b' | cis dis | e2. b4 | cis2 b | gis1 | e | e\fermata |
}

nHAlt = \relative c' {
  \global_vier
  r2 | r4 e\f fis4. fis8 | gis1~ | gis4 a2 gis8([ fis]) | e4( b') gis2 |
  a2. gis8([ fis]) | e4 e fis gis | a2 gis~ | gis4 gis fis e | dis2 gis-^ |
  ais-^ bis-^ | cis2.-^ gis4 | a2-^ gis-^ | eis fis~ | fis gis |
  
  a1( | gis) | fis~ | fis4 fis e fis | fis fis gis a |
  b b a8([ gis]) fis4 | e
  <<
    {\voiceOne e e e | dis e e dis | e e e e |
    dis2 gis | gis b | b2. gis4 | a2 fis | e1 | e |}
    \new Voice = "vHAltII" {\voiceTwo e4 e b | b gis a b | cis e e b |
    b2 e | e fis | e2. e4 | e2 dis | b1 | cis2.( e4) |}
  >>
  \oneVoice e1\fermata |
}

nHTenor = \relative c' {
  \global_vier
  b2-^\f | cis-^ dis-^ | e2.-^ b4 | cis2-^ b-^ | gis e'~ |
  e4 dis8([ cis]) b4( e) | e1 | a,2( e'~ | e) dis4( cis) | bis bis cis2~ |
  cis4 cis dis2 | gis, e'4 e | dis1 | cis2 r4 cis~ | cis b8([ a]) gis4( cis) |
  
  cis( d cis) a | b( a) gis( cis) | cis ais b cis | dis dis b <ais cis> | b dis e fis |
  e e e dis | b b cis b | gis r r2 | r4 b cis b |
  gis2
  <<
    {\voiceOne e'2 | e dis | b e | cis dis | e1 | cis | b\fermata |}
    \new Voice = "vHTenorII" {\voiceTwo b2 | e b | e, e | cis' fis, | gis1 | a | gis\fermata |}
  >>
}

nHBass = \relative c {
  \global_vier
  r2 | R1*3 | r2 e2-^\f | 
  fis-^ gis-^ | a2.-^ e4 | fis2-^ e-^ | cis fis~ | fis e~ |
  e dis | cis cis'4 cis | cis2 b4 b~( | b a8[ gis] a2~ | a4 gis8[ fis] cis4) cis |
  
  fis1~( | fis2 eis) | fis4 fis-^ fis-^ ais-^ | b4.-^ fis8 gis4-^ fis-^ | dis a'2( gis8[ fis] |
  gis4) gis a( b) |
  <<
    {\voiceOne e,4 gis gis gis | gis r4 r2 | r4 gis gis gis |
    gis2 gis | cis b | gis2. gis4 | a2 b | e,1 | e | e\fermata |}
    \new Voice = "vHBassII" {\voiceTwo e4 e cis8([ dis]) e([ fis]) | gis4 r r2 | r4 e4 cis8([ dis]) e([ fis])
    gis2 e | cis b | gis2. gis4 | a2 b | e,1 | a | e\fermata |}
  >>
}


sHSopran = 
  \new Staff  = "zHSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {
        <<
          \keepWithTag #'s \common_halleluja
          \new Voice = "vHSopran" {\nHSopran}
        >>
      }
      \new Lyrics \lyricsto "vHSopran" {\t_H_S}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zSopran"}
    >>

sHAlt = 
  \new Staff  = "zHAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'a \common_halleluja
          \new Voice = "vHAlt" {\nHAlt}
        >>
      }
      \new Lyrics \lyricsto "vHAlt" {\t_H_A}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sHTenor = 
  \new Staff  = "zHTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'t \common_halleluja
          \new Voice = "vHTenor" {\clef "violin_8" \nHTenor}
        >>
      }
      \new Lyrics \lyricsto "vHTenor" {\t_H_T}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
    >>

sHBass = 
  \new Staff  = "zHBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'b \common_halleluja
          \new Voice = "vHBass" {\clef bass \nHBass}
        >>
      }
      \new Lyrics \lyricsto "vHBass" {\t_H_B}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zBass"}
    >>