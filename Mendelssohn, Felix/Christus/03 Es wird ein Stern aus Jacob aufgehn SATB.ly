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
}

global = {
  \key es \major
  \global_transpose
}

global_voice = {
  \dynamicUp
  \autoBeamOff
}

\include "03 Es wird ein Stern aus Jacob aufgehn_staffs.ily"


\book {
  \bookOutputSuffix "vocalScore"
  \score {
    <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
    \new ChoirStaff <<
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
    \new PianoStaff
    <<
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
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
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
