\version "2.24.4"

\include "SWV-315_music.ily"
\include "SWV-315_lyrics.ily"

sSopran =
  \new Staff = "zSopran"
    \with {
      vocalName =  "Sopran"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vSopran" {\clef treble \dynamicUp \nSopran}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tText}
    >>

sTenor =
  \new Staff = "zTenor"
    \with {
      vocalName =  "Tenor"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vTenor" {\clef "treble_8" \dynamicUp \nTenor}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tText}
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