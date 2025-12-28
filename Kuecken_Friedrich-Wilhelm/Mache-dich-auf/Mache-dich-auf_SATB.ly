\version "2.22.1"

\header {
  title = \markup{\smallCaps "Motette"}
  subtitle = "\"Mache dich auf! Werde Licht!\""
  composer = "Friedrich Wilhelm Kücken (1810-1882)"
  opus = "Op. 66"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Mache-dich-auf_music.ily"
\include "Mache-dich-auf_lyrics.ily"


sSopran = 
\new Staff = "zSopran"
\with {
  instrumentName = "Sopran" % original "Sopran I"
  \chormidi
  \consists "Merge_rests_engraver"
} 
<<
  { 
    <<
      \keepWithTag #'s \common
      \new Voice = "vSopran" {\nSopran}
    >>
  }
  \new Lyrics \lyricsto "vSopran" {\tSopran}
>>

sAlt = 
\new Staff  = "zAlt"
\with {
  instrumentName = "Alt" % original "Sopran II"
  \chormidi
  \consists "Merge_rests_engraver"
} 
<<
  { 
    <<
      \keepWithTag #'a \common
      \new Voice = "vAlt" {\nAlt}
    >>
  }
  \new Lyrics \lyricsto "vAlt" {\tAlt}
>>

sTenor = 
\new Staff  = "zTenor"
\with {
  instrumentName = "Tenor"
  \chormidi
  \consists "Merge_rests_engraver"
} 
<<
  { 
    <<
      \keepWithTag #'t \common
      \new Voice = "vTenor" {\clef "violin_8" \nTenor} % original im C-Schlüssel Tenor
    >>
  }
  \new Lyrics \lyricsto "vTenor" {\tTenor}
>>

sBass = 
\new Staff  = "zBass"
\with {
  instrumentName = "Bass"
  \chormidi
  \consists "Merge_rests_engraver"
} 
<<
  { 
    <<
      \keepWithTag #'b \common
      \new Voice = "vBass" {\clef bass \nBass}
    >>
  }
  \new Lyrics \lyricsto "vBass" {\tBass}
>>


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
