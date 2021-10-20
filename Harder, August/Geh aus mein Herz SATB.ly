\version "2.22.1"

\header {
  title = "Geh aus, mein Herz, und suche Freud"
  % subtitle = "GGF. UNTERTITEL"
  composer = "Melodie & Satz: August Harder (1775-1813)"
  poet = "Text: Paul Gerhardt (1607-1676)"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

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

\include "Geh aus mein Herz_music.ily"
\include "Geh aus mein Herz_lyrics.ily"

%%%%%% VIERZEILIGE NOTATION %%%%%%%%

% sSopran = \new Staff \with {
%   instrumentName = "Sopran"
%   midiInstrument = "choir aahs"
%   \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
% } { \nSopran }
% \addlyrics { \tEins }
% 
% sAlt = \new Staff \with {
%   instrumentName = "Alt"
%   midiInstrument = "choir aahs"
%   \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
% } { \nAlt }
% \addlyrics { \tEins }
% 
% sTenor = \new Staff \with {
%   instrumentName = "Tenor"
%   midiInstrument = "choir aahs"
%   \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
% } { \clef "treble_8" \nTenor }
% \addlyrics { \tEins }
% 
% sBass = \new Staff \with {
%   instrumentName = "Bass"
%   midiInstrument = "choir aahs"
%   \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
% } { \clef bass \nBass }
% \addlyrics { \tEins }
% 
% \score {
%   \new ChoirStaff <<
%     \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
%     \sSopran
%     \sAlt
%     \sTenor
%     \sBass
%   >>
%   \layout { }
%   \midi {
%     \tempo 4=100
%   }

%%%%%% ZWEIZEILIGE NOTATION %%%%%%%%

sOben = \new Staff \with {
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { <<
      \new Voice = "vSopran" {\voiceOne \nSopran}
      \new Voice = "vAlt" {\voiceTwo \nAlt}
      \new Lyrics \lyricsto "vSopran" {\tEins}
    >> }


sUnten = \new Staff \with {
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -1.5) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef bass <<
      \new Voice = "vTenor" {\voiceOne \nTenor}
      \new Voice = "vBAss" {\voiceTwo \nBass}
      \new Lyrics \lyricsto "vTenor" {\tEins}
    >> }

\score {
  \new ChoirStaff \with {instrumentName = "Chor"}<<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sOben
    \sUnten
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }


}
