\version "2.24.4"

\include "SWV-311_music.ily"
\include "SWV-311_lyrics.ily"

sSopranI =
  \new Staff = "zSopranI"
    \with {
      vocalName =  "Sopran I"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vSopranI" {\clef treble \dynamicUp \nSopranI}
      \new Lyrics \lyricsto "vSopranI" {\keepWithTag #'I \tText}
    >>

sSopranII =
  \new Staff = "zSopranII"
    \with {
      vocalName =  "Sopran II"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vSopranII" {\clef treble \dynamicUp \nSopranII}
      \new Lyrics \lyricsto "vSopranII" {\keepWithTag #'II \tText}
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