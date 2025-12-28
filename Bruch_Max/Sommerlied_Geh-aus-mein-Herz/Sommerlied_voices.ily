\version "2.22.1"

chormidi = \with {midiInstrument = "choir aahs"}


sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'s \dTutti}
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tEins}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tZwei}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tDrei}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tAcht}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'a \dTutti}
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tEins}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tZwei}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tDrei}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tAcht}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'t \dTutti}
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tEins}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tZwei}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tDrei}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tAcht}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'b \dTutti}
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tEins}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tZwei}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tDrei}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tAcht}
    >>