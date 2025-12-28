\version "2.22.1"

Sglobal = {
  \global
  \key as \major
  \time 3/4
}


dATutti = {
  \Sglobal
  \tempo "Modéré" \tag #'s {s4\pp^\markup{\italic librement} \tempo \markup{\normal-text "(Poco rit.)"} s s} \tag #'m \tag #'a {s2.} | \time 2/4 \tag #'s {\tempo \markup{\normal-text "(Poco accel.)"} s2} \tag #'m \tag #'a {s2} | \time 3/4 s2. | \tag #'s {s4\p s\> s8 s\!} \tag #'m \tag #'a {s2.} |
  s2 \tempo "a Tempo" s4 | \tag #'s { s2 s8 s\< | s2 s8 s\! | s4 s2\> | s8 s\! s4 s8\mf\<  s | s s\! s2 } \tag #'m \tag #'a {s2.*5} |
  \tag #'s {s4^\markup{\italic dolce} s\> s | s\! s s\dim } \tag #'m \tag #'a {s2.*2 } | s2.\! \bar "||" \mark #19 \tag #'s {s2.} \tag #'m {s8^\markup{\right-align{lointain \dynamic pp}} s^\markup{\italic librement} \tempo \markup{\normal-text "(Poco rit.)"} s4 s} \tag #'a {s8^\markup{\right-align{"en dehors" \dynamic mf}} s^\markup{\italic librement} \tempo \markup{\normal-text "(Poco rit.)"} s4 s} | \time 2/4 \tag #'s {s2} \tag #'m \tag #'a {\tempo \markup{\normal-text "(Poco accel.)"} s4 s} | \time 3/4 s2. |
  \tag #'s {s2.*5 |} \tag #'m {s4^\markup{\right-align{\italic più \dynamic p}}\> s2\! |} \tag #'a {s4^\markup{\right-align{\dynamic p}}\> s2\! |} \tag #'m \tag #'a {s2 \tempo "a Tempo" s8 s\mf | s2. | s2\< s8 s\! | s2. |}
  
  \tag #'s {s2.*5} \tag #'m \tag #'a {s2 s16\mf s\< s s\! | s2. | s4^\markup{\dynamic p \italic dolce} s\> s8 s\! | s2.*2} \bar "||"
  \mark \default s8\pp^\markup{\italic librement} \tempo \markup{\normal-text "(Poco rit.)"} s s4 s\< | \time 2/4 \tempo \markup{\normal-text "(Poco accel.)"} s\! s | \time 3/4 s2. | s4\pp s2 | s2 \tempo "a Tempo" s8 s\mf |
  s2. | s2\< s8 s\! | s4 s2\> | s4\! s s\mf | s2. |
  s8 \tempo "Rall." s\< s4 s8 s\! \breathe | \tempo "a Tempo" s4^\markup{\dynamic pp \italic subito}\> s2 | s2.\! | s4\pp \tempo "Rit." s s\> | s8 s\! s2 \bar "|."
}

tATutti = \lyricmode {
  Ag -- nus __ De -- i, __ qui tol -- lis pec -- ca -- ta mun -- di, __ Mi -- se -- re -- re no -- bis. __
  
  Ag -- nus __ De -- i, __ qui tol -- lis pec -- ca -- ta mun -- di, __ do -- na __ no -- bis pa -- cem, pa -- cem.
}


nASopran = \relative c'' {
  \Sglobal
  es2~\(( es8[ f | es des es des]) | des4( es2) | des4-- c2~ |
  c\) r8 as8 | bes4 bes as8\(([ bes]) | des4( c) bes | bes-- c2~ | c4\) r es8\( es | f4-- f2--\) |
  es4( des4. c8) | c2.~ | c | R2. | R2 | R2. |
  R2.*5 |
  
  R2.*5 |
  es2~\(( es8[ f | es des es des]) | des4( es2) | des4-- c2~ | c\) r8 as |
  c4 as as8\(([ c]) | f4( es) c | c-- es2~ | es4\) r es--~\(( | es8[ f es des]) des([ es]) |
  es4( des) c\) | c2. | b2 r4 | c2( g4) | g2. |
}

nAMezzo = \relative c'' {
  \Sglobal
  R2. | R2 | R2.*2 |
  R2.*6 |
  R2.*3 | g2~\(( g8[ as | g f g f]) | f4( g2) |
  f4-- es2~ | es\) r8 es\( | as4-- es\) es8\(([ as]) | c4( g) as | es'-- c2~ |
  
  c4\) r des8\( des | es4-- es2--\) | des4( c4. bes8) | bes2.~ | bes2 r4 |
  g2~\(( g8[ as | g f g f]) | f4( g2) | f4-- es2~ | es\) r8 f |
  as4 f f8\(([ as]) | des4( c) as | as-- g2~ | g4\) r es--~\(( | es8[ f es des]) des8([ es]) |
  es4( des) c\) | g'2. | as2 r4 | as( g es) | e2. |
}

nAAlt = \relative c' {
  \Sglobal
  R2. | R2 | R2.*2 |
  R2.*6 |
  R2.*3 | es2~\(( es8[ f | es des es des]) | des4( es2) |
  des4-- c2~ | c\) r8 c\( | f4-- c\) c8\(([ f]) | as4( es) f | c'-- as2~ |
  
  as4\) r des,8\( des | es4-- es2--\) | des4( c4. bes8) | bes2.~ | bes2 r4 |
  bes2~\(( bes8[ c | bes as bes as]) | as4( bes2) | as4-- as2~ | as\) r8 c |
  es4 c c8\(([ es]) | as4( g) f | f-- c2~ | c4\) r es--~\(( | es8[ f es des]) des([ es]) |
  es4( des) c\) | e2. | e2 r4 | es2( c4) | c2. |
}



sASopran = 
  \new Staff  = "zASopran"
    \with {
      instrumentName = "Soprani"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dATutti
      { 
        \new Voice = "vASopran" {\nASopran}
      }

      \new Lyrics \lyricsto "vASopran" {\keepWithTag #'s \tATutti}
    >>
    
sAMezzo = 
  \new Staff  = "zAMezzo"
    \with {
      instrumentName = \markup{\right-column{"Mezzo-" "Soprani"}}
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dATutti
      { 
        \new Voice = "vAMezzo" {\nAMezzo}
      }
      \new Lyrics \lyricsto "vAMezzo" {\keepWithTag #'m \tATutti}
    >>

sAAlt = 
  \new Staff  = "zAAlt"
    \with {
      instrumentName = "Contralti"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dATutti
      { 
        \new Voice = "vAAlt" {\nAAlt}
      }
      \new Lyrics \lyricsto "vAAlt" {\keepWithTag #'a \tATutti}
    >>