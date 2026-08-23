\version "2.27.2"

\include "SWV-303_music.ily"
\include "SWV-303_lyrics.ily"

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

sBass =
  \new Staff = "zBass"
    \with {
      vocalName =  "Bass"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vBass" {\clef bass \dynamicUp \nBass}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tText}
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