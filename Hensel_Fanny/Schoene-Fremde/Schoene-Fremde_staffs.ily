\version "2.24.3"

\include "Schoene-Fremde_music.ily"
\include "Schoene-Fremde_lyrics.ily"


sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \common
      \new Voice = "vSopran" {\clef violin \dynamicUp \nSopran}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tText }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTextOriginal }
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
     \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \common
      \new Voice = "vAlt" {\clef violin \dynamicUp \nAlt}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tText }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTextOriginal }
         >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'t \common
      \new Voice = "vTenor" {\clef "treble_8" \dynamicUp \nTenor}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tText }  
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTextOriginal }
    >>
    
sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'b \common
      \new Voice = "vBass" {\clef bass \dynamicUp \nBass}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tText }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTextOriginal }
    >>