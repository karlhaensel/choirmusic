\version "2.18.2"

% 1. I 
% 2. IV
% 3. II - SAT
% 4. III
% 4a. II - TBarB
% 5. IV
% 6. V

\include "global.ily"
\include "lyrics.ily"

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16) % beeinflusst nur Noten- & Textgröße, Notenlinienabstände in Stimmenvariablen anpassen!
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

notenlinien = {
  \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
}

textOben = \with { 
  alignAboveContext = "staff"
  \override VerticalAxisGroup.staff-affinity = #DOWN
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Strophe 1 (hier nach Satz I, TB)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "I.ily"
sEinsT = \new Staff \with {
    instrumentName = "Tenor"
    \chormidi
    \notenlinien
  }
  {\clef "treble_8" \transpose g g, \keepWithTag #'norm \nIO}
  \addlyrics { \removeWithTag #'kurzI \removeWithTag #'langII \removeWithTag #'halle \tEins }
    
sEinsB = \new Staff \with {
    instrumentName = "Bass" 
    \chormidi
    \notenlinien
  }
  {\clef bass \transpose g g, \removeWithTag #'punk \removeWithTag #'melII \removeWithTag #'lomb \removeWithTag #'schluss \mel}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tEins }
 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Strophe 2 (hier nach Satz II, SAT)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "II.ily"
sZweiS = \new Staff \with {
    instrumentName = "Sopran"
    \chormidi
    \notenlinien
  }
  {\keepWithTag #'norm \nIIO}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tZwei }

sZweiA = \new Staff \with {
    instrumentName = "Alt"
    \chormidi
    \notenlinien
  }
  {\removeWithTag #'punk \removeWithTag #'melII \removeWithTag #'lomb \removeWithTag #'schluss \mel}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tZwei }

sZweiT = \new Staff \with {
    instrumentName = "Tenor"
    \chormidi
    \notenlinien
  }
  {\clef "treble_8" \keepWithTag #'norm \nIIU}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tZwei }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Strophe 3 (hier nach Satz I, SA)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "I.ily"
sDreiS = \new Staff \with {
    instrumentName = "Sopran"
    \chormidi
    \notenlinien
  }
  {\keepWithTag #'norm \nIO}
  \addlyrics { \removeWithTag #'kurzI \removeWithTag #'langII \removeWithTag #'halle \tDrei }
    
sDreiA = \new Staff \with {
    instrumentName = "Alt" 
    \chormidi
    \notenlinien
  }
  {\removeWithTag #'punk \removeWithTag #'melII \removeWithTag #'lomb \removeWithTag #'schluss \mel}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tDrei }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Strophe 4 (hier nach Satz III, TTBB)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "III.ily"
sVierT = 
  % wenn Text über Notenzeile, Tenor I als Oberstimme "vTenorI" o.ä. immer neu hinzufügen!
  \new Lyrics = "lDreiTI" \textOben
  \new Staff 
    \with {
      instrumentName = "Tenor"
      \chormidi
      \notenlinien
    } 
    <<
      { 
        \clef "treble_8"
        \new Voice = "vTenorVier" {
          <<
            \new Voice = "vTDreiA" {\voiceOne \removeWithTag #'punk \removeWithTag #'halleluja \nIIIOI}
            {\voiceTwo \removeWithTag #'punk \removeWithTag #'halleluja \nIIIOII}
          >>
          <<
            \new Voice = "vTDreiB" {\voiceOne \keepWithTag #'halleluja \nIIIOI}
            {\voiceTwo \keepWithTag #'halleluja \nIIIOII}
          >>
        }
      }
      \new Lyrics \lyricsto "vTenorVier" 
        {
          \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tVier
        }
        
      \context Lyrics = "lDreiTI" \lyricsto "vTDreiB" {Hal -- le, -- Hal -- le -- lu -- ja. }
    >>

sVierB = 
  % wenn Text über Notenzeile, Bass I als Oberstimme "vBassI" o.ä. immer neu hinzufügen!
  % \new Lyrics = "lBassI" \textOben
  \new Staff 
    \with {
      instrumentName = "Bass"
      \chormidi
      \notenlinien
    } 
    <<
      { 
        \clef bass
        \new Voice = "vBass" {
          <<
            \new Voice = "vBassI" {\voiceOne \transpose g g, \removeWithTag #'punk \removeWithTag #'melII \removeWithTag #'lomb \removeWithTag #'schluss \mel }
            {\voiceTwo \removeWithTag #'punk \nIIIU}
          >>
        }
      }
      \new Lyrics \lyricsto "vBass" 
        {
          \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tVier
        }
      % \context Lyrics = "lBassI" \lyrcisto "vBassI" {Bass I Text} falls Text über Notenzenzeile
    >>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Strophe 4a (hier nach Satz II, TBarB)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "II.ily"
sVierAT = \new Staff \with {
    instrumentName = "Tenor"
    \chormidi
    \notenlinien
  }
  {\clef "treble_8" \transpose g g, \keepWithTag #'punk \nIIO}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tVierA }

sVierABar = \new Staff \with {
    instrumentName = "Bariton"
    \chormidi
    \notenlinien
  }
  {\clef bass \transpose g g, \removeWithTag #'norm  \removeWithTag #'melII \removeWithTag #'lomb \removeWithTag #'schluss \mel}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tVierA }

sVierAB = \new Staff \with {
    instrumentName = "Bass"
    \chormidi
    \notenlinien
  }
  {\clef bass \transpose g g, \keepWithTag #'punk \nIIU}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tVierA }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Strophe 5 (hier nach Satz IV, KTTBB)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "IV.ily"
sFuenfM = \new Staff \with {
    instrumentName = "Melodie" 
    \chormidi
    \notenlinien
  }
  {\removeWithTag #'punk \removeWithTag #'melII \removeWithTag #'stand \removeWithTag #'schluss \mel}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tFuenf }

sFuenfT = 
  % wenn Text über Notenzeile, Tenor I als Oberstimme "vTenorI" o.ä. immer neu hinzufügen!
  \new Lyrics = "lFuenfTIB" \textOben
  \new Staff 
    \with {
      instrumentName = "Tenor"
      \chormidi
      \notenlinien
    } 
    <<
      { 
        \clef "treble_8"
        \new Voice = "vTenorFuenf" {
          <<
            \new Voice = "vTFuenfA" {\voiceOne \removeWithTag #'punk \removeWithTag #'halleluja \nIVUI}
            {\voiceTwo \removeWithTag #'punk \removeWithTag #'halleluja \nIVUII}
          >>
          <<
            \new Voice = "vTFuenfB" {\voiceOne \keepWithTag #'halleluja \nIVUI}
            {\voiceTwo \keepWithTag #'halleluja \nIVUII}
          >>
        }
      }
      \new Lyrics \lyricsto "vTenorFuenf" 
        {
          \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'hal \tFuenf
        }
        
      \context Lyrics = "lFuenfTIB" \lyricsto "vTFuenfB" {Hal -- le, -- Hal -- le -- lu -- ja. }
    >>
 
sFuenfB = 
  % wenn Text über Notenzeile, Tenor I als Oberstimme "vTenorI" o.ä. immer neu hinzufügen!
  \new Lyrics = "lFuenfBIB" \textOben
  \new Staff 
    \with {
      instrumentName = "Bass"
      \chormidi
      \notenlinien
    } 
    <<
      { 
        \clef bass
        \new Voice = "vBassFuenf" {
          <<
            \new Voice = "vBFuenfA" {\voiceOne \removeWithTag #'punk \removeWithTag #'halleluja \nIVUIII}
            {\voiceTwo \removeWithTag #'punk \removeWithTag #'halleluja \nIVUIV}
          >>
          <<
            \new Voice = "vBFuenfB" {\voiceOne \keepWithTag #'halleluja \nIVUIII}
            {\voiceTwo \keepWithTag #'halleluja \nIVUIV}
          >>
        }
      }
      \new Lyrics \lyricsto "vBassFuenf" 
        {
          \removeWithTag #'kurzI \removeWithTag #'kurzII \removeWithTag #'hal \tFuenf
        }
        
      \context Lyrics = "lFuenfBIB" \lyricsto "vBFuenfB" {Hal -- le, -- Hal -- le -- lu -- ja. }
    >>


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Strophe 6 (hier nach Satz V, SATTBB)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "V.ily"
sSechsS = \new Staff \with {
    instrumentName = "Sopran" 
    \chormidi
    \notenlinien
  }
  {\removeWithTag #'norm \removeWithTag #'melI \nVO}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'hal \removeWithTag #'halle \tSechs Hal -- le -- lu -- ja. }

sSechsA = \new Staff \with {
    instrumentName = "Alt" 
    \chormidi
    \notenlinien
  }
  {\removeWithTag #'norm \removeWithTag #'melI \removeWithTag #'lomb \removeWithTag #'weiter \mel}
  \addlyrics { \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tSechs }

sSechsT = 
  \new Lyrics = "lSechsTIB" \textOben
  \new Lyrics = "lSechsTID" \textOben
  \new Staff 
    \with {
      instrumentName = "Tenor"
      \chormidi
      \notenlinien
    } 
    <<
      { 
        \clef "treble_8"
        \new Voice = "vTenorSechs" {
          <<
            \new Voice = "vTSechsIA" {\voiceOne \removeWithTag #'norm \removeWithTag #'melI \removeWithTag #'melII \removeWithTag #'partIII \removeWithTag #'partIV \nVUI}
            {\voiceTwo \removeWithTag #'norm \removeWithTag #'melI \removeWithTag #'melII \removeWithTag #'partIII \removeWithTag #'partIV  \nVUII}
          >>
          <<
            \new Voice = "vTSechsIB" {\voiceOne \removeWithTag #'partI \removeWithTag #'melI \removeWithTag #'partIII \removeWithTag #'partIV \nVUI}
            {\voiceTwo \removeWithTag #'partI \removeWithTag #'melI \removeWithTag #'partIII \removeWithTag #'partIV \nVUII}
          >>
          <<
            \new Voice = "vTSechsIC" {\voiceOne \removeWithTag #'partI \removeWithTag #'melI \removeWithTag #'melII \removeWithTag #'partIV \nVUI}
            {\voiceTwo \removeWithTag #'partI \removeWithTag #'melI \removeWithTag #'melII \removeWithTag #'partIV \nVUII}
          >>
          <<
            \new Voice = "vTSechsID" {\voiceOne \removeWithTag #'partI \removeWithTag #'melI \removeWithTag #'melII \removeWithTag #'partIII \nVUI}
            {\voiceTwo \removeWithTag #'partI \removeWithTag #'melI \removeWithTag #'melII \removeWithTag #'partIII \nVUII}
          >>
        }
      }
      \new Lyrics \lyricsto "vTenorSechs" 
        {
          \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'halle \tSechs
        }
      \context Lyrics = "lSechsTIB" \lyricsto "vTSechsIB" {Drei -- fal -- tig -- keit __ }
      \context Lyrics = "lSechsTID" \lyricsto "vTSechsID" {Hal -- le, -- Hal -- le -- lu -- ja. }
    >>
 
sSechsB = 
  \new Staff 
    \with {
      instrumentName = "Bass"
      \chormidi
      \notenlinien
    } 
    <<
      { 
        \clef bass
        \new Voice = "vBassSechs" {
          <<
            \new Voice {\voiceOne \removeWithTag #'norm \removeWithTag #'melI \nVUIII}
            {\voiceTwo \removeWithTag #'norm \removeWithTag #'melI \nVUIV}
          >>
        }
      }
      \new Lyrics \lyricsto "vBassSechs" 
        {
          \removeWithTag #'langI \removeWithTag #'langII \removeWithTag #'hal \removeWithTag #'halle \tSechs Hal -- le -- lu -- ja.
        }
    >>

\book {

  \header {
    title = "Ein Kind geborn zu Bethlehem"
    % subtitle = "GGF. UNTERTITEL"
    composer = "Michael Praetorius (1571-1621)"
    % poet = "TEXT/VORLAGE/SONSTIGES"
    % Voreingestellte LilyPond-Tagline entfernen
    tagline = ##f
  }
  
  \score {
    \header {
      piece = "Strophe 1"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sEinsT
      \sEinsB
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }

  \score {
    \header {
      piece = "Strophe 2"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sZweiS
      \sZweiA
      \sZweiT
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }

  \score {
    \header {
      piece = "Strophe 3"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sDreiS
      \sDreiA
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }
  
  \score {
    \header {
      piece = "Strophe 4"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sVierT
      \sVierB
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }  
  
  \score {
    \header {
      piece = "Strophe 4a"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sVierAT
      \sVierABar
      \sVierAB
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }
   
  % \pageBreak
  
  \score {
    \header {
      piece = "Strophe 5"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sFuenfM
      \sFuenfT
      \sFuenfB
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }
  
  \score {
    \header {
      piece = "Strophe 6"
    }

    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sSechsS
      \sSechsA
      \sSechsT
      \sSechsB
    >>
    \layout {}
    \midi {
      \tempo 4 = 140
    }
  }

}