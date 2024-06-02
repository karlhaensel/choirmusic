\version "2.22.1"

Oglobal = {
  \global
  \key f \major
  \time 3/2
}


dOTutti = {
  \Oglobal
  R1. \bar "||" \tempo "Lent" \tag #'s \tag #'m {s1.^\markup{\dynamic p \italic doux}} \tag #'a {s1.\mp} | s1\> s4 s\! \breathe | \tag #'s \tag #'a {s2\< s4 s\! s4 s8 s16 s\!} \tag #'m {s1.} |
  s1. | s2 s\< s | s4\mp s\> s2 s4 s\! \breathe | s1.\< | s4\mf s\> s2. s4\! |
  \mark #21 s2\f s\< s4 s\! | s1 \breathe s2 | s4 s\> s2 s4 s\! | s1. |
  s2\mf s s | s1 \breathe \tag #'s {s2\< | s2 \tempo "Rit." s2. s4\! | s1\> s8 s\! s4} \tag #'m \tag #'a {s2 | s1\> s2\! | s2\pp s1} \bar "||"
  
  \mark \default \tag #'s \tag #'m {s1.\pp} \tag #'a {s1.\p} | s1\> s4 s\! \breathe | \tag #'s \tag #'a {s2\< s4 s\! s4 s8 s16 s\!} \tag #'m {s1.} | s1. | s2 s\< s |
  s1\> s4 s\! \breathe | s1.\< | s1\> s4 s\! | s2\f s1 | s1 \breathe s2 |
  s4 s\> s2 s4 s\! | s1. | \mark \default s2\mf s s | s1 \breathe 
  \tag #'s {s2\< | s2 \tempo "Rit." s2. s4\! | s1\> s8 s\! s4} \tag #'m {s2 | s2 s\> s4 s\! | s2\pp s1} \tag #'a {s2 | s4 s\> s2 s4 s\! | s2\pp s1} \bar "||" \tempo "a Tempo (sans lenteur)" \tag #'s {s2\p s1 | s2 s1\dim | s1.\! } \tag #'m {s2 s1\pp |} \tag #'a {s1.\pp |} \tag #'m \tag #'a {s4 s\< s2 s4 s\! | s s\> s4 s\! s2 } \bar "|."
  
}

tOTutti = \lyricmode {
  O Sa -- lu -- ta -- ris Hos -- ti --
  a, __ Quae cae -- \tag #'s { li __ } \tag #'m \tag #'a { li } pan -- dis os -- ti -- um: __
  Be -- \tag #'s \tag #'a { la } \tag #'m { la __ } pre -- munt __ hos -- ti -- li -- a, __
  Da ro -- bur, fer __ au -- xi -- li -- um. __
  
  U -- ni tri -- no -- que Do -- mi -- no __ Sit sem -- pi --
  ter -- na glo -- ri -- a; __ \tag #'s \tag #'a { Qui } \tag #'m { Qui __ }  vi -- tam __ si -- ne
  ter -- mi -- no __ No -- bis do -- net __ in
  pa -- tri -- a __ A -- \tag #'s { men. __ } \tag #'m \tag #'a { men. }
}


OSalSopran = {
  c'2-- c2.-- c4-- | f1\( c2\) | c( d) f, |
  c'1~ c4 r | c2 c4( a) a( d) | d2( c) a | bes( c) f | g( c,~ c4) r |
  f2-- f-- \tag #'I {f-- | f--( es) es4( f)} \tag #'II {f2--~( | f es) es4 f} | f( es c bes) bes( des) | c1~ c4 r |
  c2-^ d-^ e-^ | f--( d) c | c( g2.) f4 | \tag #'I {f1--~} \tag #'II {f1~}  f4 r\longfermata |
}

nOSopran = \relative c' {
  \Oglobal
  R1. | \keepWithTag #'I \OSalSopran
  %
  %
  %
  
  \keepWithTag #'II \OSalSopran
  %
  %
  d'2( f f,) | f1.-~ | f2 r r\fermata |
  
}

OSalMezzo = {
  f,2-- f2.-- f4-- | c'1\( f,2\) | f1 f2 |
  f1~ f4 r | e2 f g | a( g) f | f( g) d' | e( c~ c4) r |
  \tag #'I {f--( es) des( c)} \tag #'II {f--( es des c)} bes( c) | des2--( c) \tag #'I {c2} \tag #'II {c4 c} | bes2( as) f4( ges) | g1~ g4 r |
  c2-- c-- c-- | bes2.--( a4) g2 | f( e) d\longfermata | c'2~ c4 r \tag #'I {r2\longfermata} \tag #'II {r2} |
}

nOMezzo = \relative c'' {
  \Oglobal
  R1. | \keepWithTag #'I \OSalMezzo
  %
  %
  %
  
  \keepWithTag #'II \OSalMezzo
  %
  %
  r2 a1( | g2 a1) | a\fermata r2 |
}

OSalAltI = { a2-- g2.-- g4 | bes1\( g2\) | g4--\(( a2 f4) d( c) | a1~a4\) }

OSalAltII = {
  a,2 d e | f( e) d | d( e) bes' | \tag #'I {c(} \tag #'II {c--(} c,~ c4) r |
  \tag #'I {f2 f ges4( as) | bes2--( as) as} \tag #'II {f2-- f--\(( ges4 as) | bes2( as)\) as4 as} | ges2( f) des4( es) | e1~ e4 r |
  c'2-^ bes-^ a!-^ | g--( f) e | d2.( c4) bes2\longfermata |
}

nOAlt = \relative c'' {
  \Oglobal
  << {\voiceOne R1. | \OSalAltI } \new CueVoice {\voiceTwo \dynamicDown f'1.\p_\markup{"Orgue ou Voix ad lib."}~ | f~ | f~ | f | s1 s4 } >> \oneVoice r4 |
  \dynamicUp \keepWithTag #'I \OSalAltII
  %
  %
  
  << {\voiceOne a'2~ a4 r r2\longfermata | \OSalAltI } \new CueVoice {\voiceTwo f'1.~ | f~ | f~ | f | s1 s4} >> \oneVoice r4 | \keepWithTag #'II \OSalAltII
  %
  %
  a'2~ a4 r r2 | d,1.( | c1 f2) | f1\fermata r2 |
  
  
}



sOSopran = 
  \new Staff  = "zOSopran"
    \with {
      instrumentName = "Soprani"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dOTutti
      { 
        \new Voice = "vOSopran" {\nOSopran}
      }

      \new Lyrics \lyricsto "vOSopran" {\keepWithTag #'s \tOTutti}
    >>
    
sOMezzo = 
  \new Staff  = "zOMezzo"
    \with {
      instrumentName = \markup{\right-column{"Mezzo-" "Soprani"}}
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dOTutti
      { 
        \new Voice = "vOMezzo" {\nOMezzo}
      }
      \new Lyrics \lyricsto "vOMezzo" {\keepWithTag #'m \tOTutti}
    >>

sOAlt = 
  \new Staff  = "zOAlt"
    \with {
      instrumentName = "Contralti"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dOTutti
      { 
        \new Voice = "vOAlt" {\nOAlt}
      }
      \new Lyrics \lyricsto "vOAlt" {\keepWithTag #'a \tOTutti}
    >>