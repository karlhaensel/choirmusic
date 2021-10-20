\version "2.22.00"

\header {
  title = "Es wird ein Stern aus Jacob aufgehn"
  composer = "Felix Mendelssohn (1809-1847)"
  poet = "aus dem Oratorium \"Christus\""
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 13) 
  \override Score.BarNumber.font-size = #2
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

global = {
  \key es \major
  \time 4/4
  \tempo "Allegro moderato"
  \set Score.markFormatter = #format-mark-box-alphabet % Umrandung Studierzeichen
  \override DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
}

global_voice = {
  \dynamicUp % wenn nur Chor, mit Instrumentalbegleitung in die Noten verschieben!
  \autoBeamOff % außer viele Melismen/Kolloraturen
  \override DynamicTextSpanner.style = #'none  
}

\include "03 Es wird ein Stern aus Jacob aufgehn_choir.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_lyrics.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_pianoReduction.ily"

sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\tSopran}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
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
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
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
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\tBass}
    >>
   
sRechts =
  \new Staff = "zRechts"
    \with {
      midiInstrument = "acoustic grand"
    }
    {\nRechts}

sLinks =
  \new Staff = "zLinks"
    \with {
      midiInstrument = "acoustic grand"
    }
    {\clef bass \nLinks}

\score {
  <<
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \new PianoStaff
  <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sRechts
    \dKlavierauszug
    \sLinks
  >>
  >>
  \layout {
    \context {
    }
  }
  \midi {
    \tempo 4=124
  }
}
