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
}

chormidi = \with {
  midiInstrument = "choir aahs"
}

global_transpose = {
  \time 4/4
  \tempo "Allegro moderato"
  \dynamicDown
  \override DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
}

global = {
  \key es \major
  \global_transpose
}

global_voice = {
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none  
}

\include "03 Es wird ein Stern aus Jacob aufgehn_staffs.ily"


\book {
  \bookOutputSuffix "vocalScore"
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
}


\book {
  \bookOutputSuffix "Score"
  \score {
    <<
    \new StaffGroup <<
      \sFl
      \sOb
      \sKlar
      \sFag
    >>
    \new StaffGroup <<
      \sHrn
      \new GrandStaff <<
        \sPosAT
        \sPosB
      >>
    >>
    \sPk
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
    \new StaffGroup <<
      \sVioI
      \sVioII
      \sVla
      \sVc
      \sCb
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
}
