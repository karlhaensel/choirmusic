\version "2.22.1"

sSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranI" {\nSopranI}
      }
      \new Lyrics \lyricsto "vSopranI" {\keepWithTag #'sI \tTutti}
    >>

sAltI = 
  \new Staff  = "zAltI"
    \with {
      instrumentName = "Alt I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAltI" {\nAltI}
      }
      \new Lyrics \lyricsto "vAltI" {\keepWithTag #'aI \tTutti}
    >>

sTenorI = 
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

sBassI = 
  \new Staff  = "zBassI"
    \with {
      instrumentName = "Bass I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBassI" {\clef bass \nBassI}
      }
      \new Lyrics \lyricsto "vBassI" {\keepWithTag #'bI \tTutti}
    >>
    

sSopranII = 
  \new Staff  = "zSopranII"
    \with {
      instrumentName = "Sopran II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nSopranII}
      }
      \new Lyrics \lyricsto "vSopranII" {\keepWithTag #'sII \tTutti}
    >>

sAltII = 
  \new Staff  = "zAltII"
    \with {
      instrumentName = "Alt II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAltII" {\nAltII}
      }
      \new Lyrics \lyricsto "vAltII" {\keepWithTag #'aII \tTutti}
    >>

sTenorII = 
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

sBassII = 
  \new Staff  = "zBassII"
    \with {
      instrumentName = "Bass II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBassII" {\clef bass \nBassII}
      }
      \new Lyrics \lyricsto "vBassII" {\keepWithTag #'bII \tTutti}
    >>