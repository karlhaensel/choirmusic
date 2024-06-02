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
      \new Lyrics \lyricsto "vSopranI" {\tSopranI}
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
      \new Lyrics \lyricsto "vSopranII" {\tSopranII}
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
      \new Lyrics \lyricsto "vAltI" {\tAltI}
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
      \new Lyrics \lyricsto "vAltII" {\tAltII}
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
      \new Lyrics \lyricsto "vTenorI" {\tTenorI}
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
      \new Lyrics \lyricsto "vTenorII" {\tTenorII}
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
      \new Lyrics \lyricsto "vBassI" {\tBassI}
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
      \new Lyrics \lyricsto "vBassII" {\tBassII}
    >>