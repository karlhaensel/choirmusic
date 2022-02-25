\version "2.22.1"

chormidi = \with {midiInstrument = "choir aahs"}

%%%% ORIGINAL SATTB in F %%%%%%
soSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTutti}
    >>

soAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
    >>

soTenorI = 
  \new Staff  = "zTenorI"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenorI" {\clef "violin_8" \nTenorI}
      }
      \new Lyrics \lyricsto "vTenorI" {\keepWithTag #'tI \tTutti}
    >>

soTenorII = 
  \new Staff  = "zTenorII"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenorII" {\clef "violin_8" \nTenorII}
      }
      \new Lyrics \lyricsto "vTenorII" {\keepWithTag #'tII \tTutti}
    >>

soBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>
    
    
%%%% TRANSPONIERT SSATB %%%%%%%%%

stSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranI" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopranI" {\keepWithTag #'s \tTutti}
    >>

stSopranII = 
  \new Staff  = "zSopranII"
    \with {
      instrumentName = "Sopran II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nAlt}
      }
      \new Lyrics \lyricsto "vSopranII" {\keepWithTag #'a \tTutti}
    >>

stAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" { \nTenorI}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'tI \tTutti}
    >>

stTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenorII}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'tII \tTutti}
    >>

stBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>