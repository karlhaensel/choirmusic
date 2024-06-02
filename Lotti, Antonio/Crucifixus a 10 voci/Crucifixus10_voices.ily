\version "2.22.1"

sSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran I"
      %shortInstrumentName = "S1"
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
      %shortInstrumentName = "S2"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nSopranII}
      }
      \new Lyrics \lyricsto "vSopranII" {\tSopranII}
    >>
    
sSopranIII = 
  \new Staff  = "zSopranIII"
    \with {
      instrumentName = "Sopran III"
      %shortInstrumentName = "S3"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranIII" {\nSopranIII}
      }
      \new Lyrics \lyricsto "vSopranIII" {\tSopranIII}
    >>

sAltI = 
  \new Staff  = "zAltI"
    \with {
      instrumentName = "Alt I"
      %shortInstrumentName = "A1"
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
      %shortInstrumentName = "A2"
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
      %shortInstrumentName = "T1"
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
      %shortInstrumentName = "T2"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenorII" {\clef "violin_8" \nTenorII}
      }
      \new Lyrics \lyricsto "vTenorII" {\tTenorII}
    >>
   
sTenorIII = 
  \new Staff  = "zTenorIII"
    \with {
      instrumentName = "Tenor III"
      %shortInstrumentName = "T3"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenorIII" {\clef "violin_8" \nTenorIII}
      }
      \new Lyrics \lyricsto "vTenorIII" {\tTenorIII}
    >>

sBassI = 
  \new Staff  = "zBassI"
    \with {
      instrumentName = "Bass I"
      %shortInstrumentName = "B1"
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
      %shortInstrumentName = "B2"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBassII" {\clef bass \nBassII}
      }
      \new Lyrics \lyricsto "vBassII" {\tBassII}
    >>