\version "2.22.1"

common_vers_neun = {
  \global_vier
  \tempo "etwas ruhiger"
  s2 | s1*29 | s2 \bar "||"
}

versIXKanonST = {
  gis2\mf | fis2. e4 | a2 gis | gis4->( fis2) e4 | b'1 |
  r2 b\< | cis4( dis) e2 | e2.\! b4\> | a2 gis | fis\! r |
  r fis | gis\< a | gis4( cis2) b4 | b2\!( ais4\> b) | b2\! r |
  r gis | fis2. e4 | a2 gis | gis4( fis2) e4 | b'1 |
  r2 b\< | cis4( dis) e2 | e2.\! b4 | a2\> gis | fis\! r |
  r b\mf | e, fis | gis a | gis( fis) | \tag #'t { e r | r2\fermata } \tag #'s  {e2\fermata }
}

nIXSopran = \relative c'' {
  \global_vier
  r2 | r \keepWithTag #'s \versIXKanonST
}

nIXAlt = \relative c' {
  \global_vier
  r4\mf e~\< | e\> dis8\! cis b4. b8 | cis( dis4) cis8 b2 | cis4 dis b4. e8 | dis2. e4~ |
  e e gis2~( | gis4 fis) e( fis) | gis2 b | e,4 fis gis( e~ | e) dis e2~ |
  
  e4 dis8([ cis]) dis2~ | dis4 cis2 b4~(  | b e2) dis4 | e2. dis4 | dis b e fis | gis( e dis cis~ |
  cis) bis8([ cis]) dis4 cis~ | cis dis b4. b8 | cis4 dis b4. e8 | dis2. e4 | e e gis2~( |
  gis4 fis e) fis | gis2 b | e,4 fis gis( e~ | e) dis e2~( | e4 dis8[ cis] dis[ fis] a4~ |
  
  a) gis fis b,~ | b cis2 bis8([ cis]) | dis4( e2) dis4 | b!4( cis dis2) | e2\fermata
}

nIXTenor = \relative c' {
  \global_vier
  \keepWithTag #'t \versIXKanonST
}

nIXBass = \relative c' {
  \global_vier
  r2 | R1*2 | r2 b~\p\< | b\> a4 gis\! |
  gis2. gis4 | a2 gis4( fis) | e2 gis | cis,4( dis) e2 | fis gis4( a) |
  
  b2 b, | e2. dis4 | e1~ | e2 fis | b,( cis4 dis | e2.) e4 |
  dis2( bis4 cis | a b) <e e,>2 | r b'~\p\< | b\> a4\! gis | gis2. gis4 |
  a2 gis4( fis) | e2 gis | cis,4( dis) e2 | fis gis4\>( a) | b2\! b, |
  
  cis dis | e2. dis8([ cis]) | bis4( cis) fis,2 | gis4( a b2) | <e e,>\fermata
}


sIXSopran = 
  \new Staff  = "zIXSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {
        <<
          \common_vers_neun
          \new Voice = "vIXSopran" {\nIXSopran}
        >>
      }
      \new Lyrics \lyricsto "vIXSopran" {\t_IX_ST}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zSopran"}
    >>

sIXAlt = 
  \new Staff  = "zIXAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \common_vers_neun
          \new Voice = "vIXAlt" {\nIXAlt}
        >>
      }
      \new Lyrics \lyricsto "vIXAlt" {\t_IX_A}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sIXTenor = 
  \new Staff  = "zIXTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \common_vers_neun
          \new Voice = "vIXTenor" {\clef "violin_8" \nIXTenor}
        >>
      }
      \new Lyrics \lyricsto "vIXTenor" {\t_IX_ST}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
    >>

sIXBass = 
  \new Staff  = "zIXBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \common_vers_neun
          \new Voice = "vIXBass" {\clef bass \nIXBass}
        >>
      }
      \new Lyrics \lyricsto "vIXBass" {\t_IX_B}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zBass"}
    >>