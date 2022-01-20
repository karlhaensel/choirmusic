\version "2.22.1"

common_vers_elf = {
  \global_zwei
  s2\f | s1*3 | \tag #'sa2tb {s2\breathe s} \tag #'a1 {s2. \breathe s4} |
  
  s1*5 |
  s1*3 | s2 \breathe s | s1 |
  
  s1*5 |
  s1 | \tag #'sa1 {s2 s2} \tag #'a2tb {s2\breathe s2} | s1*2 | s4\> s2. | s4 s\! \bar "||"
}


nXISopran = \relative c'' {
  \global_zwei
  e2 | b2. gis4 | cis2. e4 | e( b2) b4 | gis2 e' |
  cis b | b2. b4 | cis2 b | b2. b4 | b2. b4 |
  cis4( dis) e2 | fis1~( | fis4 dis) dis2~ | dis e | b gis |
  r4 cis2 e4 | e( b2) b4 | gis2 r4 e' | cis2 b | b2. b4 |
  cis2 b | b r | r4 e dis cis | b( e2) e4 | b1 | gis2\fermata
}

nXIAltI = \relative c'' {
  \global_zwei
  b2~( | b4 fis) gis e | e( gis) cis2 | b b, | b2. b'4 |
  b( a2) gis4 | fis2 e | e e | dis2. b4 | b( e) fis( b) |
  e,2. b'4 | b2( ais) | b1~ | b2 b | fis gis |
  gis cis | b b, | b e | e4( fis) gis2 | fis e |
  e e | dis r4 dis | e( cis') b( a) | gis( e) cis( e) | e2( dis) | e\fermata
}

nXIAltII = \relative c' {
  \global_zwei
  e2 | fis4( b,) b2 | cis4( e) e2 | e dis | e e |
  e e | fis4( dis) b2 | a b | b2. dis4 | e2 b |
  e2. e4 | cis4( fis2 e4 | dis fis) fis2~ | fis e | fis4( dis) b( e) |
  e2 e | e dis | e e | e2. e4 | fis4( dis) b2 |
  a b | b b | gis b | b cis | b1 | b2\fermata
}

nXITenor = \relative c' {
  \global_zwei
  \keepWithTag #'t \melodie
}

nXIBass = \relative c {
  \global_zwei
  e2 | dis e | cis a | b b | e gis |
  a e | dis e | << {\voiceTwo a,2 e4( gis) } \new Voice = "vXIBassIa" {\voiceOne a4( cis) e2 }>> | \oneVoice b2 b | e dis |
  << {\voiceTwo cis gis | fis1 | b~ | b2 } \new Voice = "VXIBassIb" {\voiceOne cis2 gis' | fis1 | fis~ | fis2 } >> \oneVoice e2 | dis e |
  cis a | b b | e gis | a e | dis e |
  << {\voiceTwo a,2 e4( gis) } \new Voice = "vXIBassIa" {\voiceOne a4( cis) e2 }>> | \oneVoice b2 b | cis dis | e a, | b1 | <e e,>2\fermata
}


sXISopran = 
  \new Staff  = "zXISopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {
        <<
          \removeWithTag #'a1 \removeWithTag #'a2tb \common_vers_elf
          \new Voice = "vXISopran" {\nXISopran}
        >>
      }
      \new Lyrics \lyricsto "vXISopran" {\keepWithTag #'s \t_elf}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zSopran"}
    >>

sXIAltI = 
  \new Staff  = "zXIAltI"
    \with {
      instrumentName = "Alt I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \removeWithTag #'sa2tb \removeWithTag #'a2tb \common_vers_elf
          \new Voice = "vXIAltI" {\nXIAltI}
        >>
      }
      \new Lyrics \lyricsto "vXIAltI" {\keepWithTag #'a1 \t_elf}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sXIAltII = 
  \new Staff  = "zXIAltII"
    \with {
      instrumentName = "Alt II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \removeWithTag #'sa1 \removeWithTag #'a1 \common_vers_elf
          \new Voice = "vXIAltII" {\nXIAltII}
        >>
      }
      \new Lyrics \lyricsto "vXIAltII" {\keepWithTag #'a2 \t_elf}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sXITenor = 
  \new Staff  = "zXITenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \removeWithTag #'sa1 \removeWithTag #'a1 \common_vers_elf
          \new Voice = "vXITenor" {\clef "violin_8" \nXITenor}
        >>
      }
      \new Lyrics \lyricsto "vXITenor" {\keepWithTag #'t \t_elf}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
    >>

sXIBass = 
  \new Staff  = "zXIBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \removeWithTag #'sa1 \removeWithTag #'a1 \common_vers_elf
          \new Voice = "vXIBass" {\clef bass \nXIBass}
        >>
      }
      \new Lyrics \lyricsto "vXIBass" {\keepWithTag #'b \t_elf}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zBass"}
    >>