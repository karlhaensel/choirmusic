\version "2.22.1"

common_vers_eins = {
  \global_zwei
  s2\p | s1*3 | s2\breathe s\< | s1 |
  s2\! s | s\> s | \tag #'sab { s\!\breathe s } \tag #'t { s2\! s4 \breathe s4 } | s2 s\< | s1 | s8 s\! s4 s2\> | s4 s\! s2\p |
  s1*3 | s2\breathe s\< | s1 | s2\! s |
  
  s\> s | s\!\breathe s | s\< s | s8 s\! s4 s2\> | s1 | s2\! \bar "||"
}

nISopran = \relative c'' {
  \global_zwei
  \keepWithTag #'s \melodie
}

nIAlt = \relative c' {
  \global_zwei
  b2 | b2. b4 | e2 cis | b4( e2) dis4 | b2 e | e e |
  fis b, | a b4( cis) | dis2 dis | e fis | e2. dis4 | fis2.( e4) | dis2\fermata e |
  fis b, | b a4( e') | e2 dis | e e | e2. e4 | fis2. e4 |
  
  e( dis) e2 | b dis | e dis4( cis) | b( e2) e4 | e2( dis) | b\fermata
}

nITenor = \relative c' {
  \global_zwei
  e2 | b gis | cis2. e4 | e( b2) b4 | gis2 gis | a b |
  b4( fis'2) e4 | e( dis) e2 | b2. b4 | b2. b4 | b2 b | b4( gis ais2) | b\fermata b |
  cis4( dis) e2 | e2. e4 | e( b2) b4 | b2 r4 e | cis2 b | b2. b4 |
  
  a2 b4( cis) | dis2 b4( a) | gis( cis) b( a) | gis( b) cis2 | b2.( a4) | gis2\fermata
}

nIBass = \relative c {
  \global_zwei
  e2 | dis e | cis a | b b | e e | a gis |
  dis e | fis gis4( a) | b2 b, | e dis | e4( fis) gis2 | fis1 | b,2\fermata e |
  a gis4( fis) | e( dis) cis2 | b2. a4 | gis2 gis' | a gis | dis e |
  
  fis gis4( a) | b2 b, | cis dis | e a, | b1 | <e e,>2\fermata
}


sISopran = 
  \new Staff  = "zISopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {
        <<
          \keepWithTag #'sab \common_vers_eins
          \new Voice = "vISopran" {\nISopran}
        >>
      }
      \new Lyrics \lyricsto "vISopran" {\keepWithTag #'s \t_eins}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zSopran"}
    >>

sIAlt = 
  \new Staff  = "zIAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'sab \common_vers_eins
          \new Voice = "vIAlt" {\nIAlt}
        >>
      }
      \new Lyrics \lyricsto "vIAlt" {\keepWithTag #'a \t_eins}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sITenor = 
  \new Staff  = "zITenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'t \common_vers_eins
          \new Voice = "vITenor" {\clef "violin_8" \nITenor}
        >>
      }
      \new Lyrics \lyricsto "vITenor" {\keepWithTag #'t \t_eins}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
    >>

sIBass = 
  \new Staff  = "zIBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'sab \common_vers_eins
          \new Voice = "vIBass" {\clef bass \nIBass}
        >>
      }
      \new Lyrics \lyricsto "vIBass" {\keepWithTag #'b \t_eins}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zBass"}
    >>