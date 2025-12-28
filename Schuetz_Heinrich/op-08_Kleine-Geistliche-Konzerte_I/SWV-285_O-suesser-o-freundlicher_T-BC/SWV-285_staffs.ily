\version "2.24.4"

\include "SWV-285_music.ily"
\include "SWV-285_lyrics.ily"

sTenor =
  \new Staff = "zTenor"
    \with {
      vocalName =  \markup  {\center-column {"Tenor" "oder Sopran"}}
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vTenor" {\clef "treble_8" \dynamicUp \nTenor}
      \new Lyrics \lyricsto "vTenor" {\tText}
    >>
 
 sBC =
   \new Staff = "zBC"
     \with {
       instrumentName = ""
       shortInstrumentName = ""
       midiInstrument = "cello"
       \consists "Merge_rests_engraver"
     }
     <<
       \new Voice = "vBC"  {\clef bass \dynamicDown \nBC}
       \new FiguredBass {\nBCfigured}
     >>