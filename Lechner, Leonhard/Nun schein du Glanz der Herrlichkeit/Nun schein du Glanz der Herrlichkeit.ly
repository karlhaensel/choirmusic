\version "2.22.1"

\header {
  title = "Nun schein du Glanz der Herrlichkeit"
  composer = "Leonhard Lechner (1553-1606)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

% sollen vorgeschlagene Alterationen lieber nur über den Noten gesetzt sein, Kommentar in folgender Variable entfernen:
ficta = { %\once \set suggestAccidentals = ##t 
}
% alle nicht mit \ficta (vor der Note) markierten Alterationen entstammen dem Erstdruck des Stimmenmaterials

\include "Nun schein du Glanz der Herrlichkeit_music.ily"
\include "Nun schein du Glanz der Herrlichkeit_lyrics.ily"


sOSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran I" % original: Discant
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranI" {\nSopranI}
      }
      \new Lyrics \lyricsto "vSopranI" {\keepWithTag #'sI \t_common}
    >>

sTSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran" % original: Discant
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranI" {\nSopranI}
      }
      \new Lyrics \lyricsto "vSopranI" {\keepWithTag #'sI \t_common}
    >>

sOSopranII = 
  \new Staff  = "zSopranII"
    \with {
      instrumentName = "Sopran II" % original: Quinta vox
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nSopranII}
      }
      \new Lyrics \lyricsto "vSopranII" {\keepWithTag #'sII \t_common}
    >>
    
sTSopranII = 
  \new Staff  = "zSopranII"
    \with {
      instrumentName = "Alt" % original: Quinta vox
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nSopranII}
      }
      \new Lyrics \lyricsto "vSopranII" {\keepWithTag #'sII \t_common}
    >>


sOAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt" % original: Altus
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \t_common}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>
    
sTAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Tenor I" % original: Altus
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\clef "violin_8" \nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \t_common}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sOTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \t_common}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
    >>

sTTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor II" % original: Tenor
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \t_common}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
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
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \t_common}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zBass"}
    >>
    

\book {
  \bookOutputSuffix "SSATB-original"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sOSopranI
      \sOSopranII
      \sOAlt
      \sOTenor
      \sBass
    >>
    \layout { }
    \midi {
      \tempo 2=76
    }
  }
}

\book {
  \bookOutputSuffix "SATTB-original"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sTSopranI
      \sTSopranII
      \sTAlt
      \sTTenor
      \sBass
    >>
    \layout { }
    \midi {
      \tempo 2=76
    }
  }
}

\book {
  \bookOutputSuffix "SSATB-transposed"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \transpose g a \sOSopranI
      \transpose g a \sOSopranII
      \transpose g a \sOAlt
      \transpose g a \sOTenor
      \transpose g a \sBass
    >>
    \layout { }
    \midi {
      \tempo 2=76
    }
  }
}
