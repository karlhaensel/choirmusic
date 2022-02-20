\version "2.22.1"

Kglobal = {
  \global
  \key es \major
  \time 3/4
}

dKTutti = {
  \Kglobal
  \tempo "Un peu animé" 4=88 s2. | s | s2 \tempo "Rall." s4 | s2. \bar "||"
  \tempo "Lent" 4=60 s | s | s4 \tempo "Moins lent" s2 | s2.*2 |
  s2 s8 \tempo "Rit." s | s2. | \tempo "Un peu animé" 4=88 s2.*3 |
  s2.*2 | \tempo "Rall." s2. | \tempo "Lent" \mark \default s2.*2 |
  
  s2. | \tempo "Moins lent" s2.*3 | s2 \tempo "Rit." s4 | s2. |
  \tempo "Lent" s2.*2 | \tempo "Moins lent" s2.*2 | \tempo "Lent" \mark \default s2.*2 | s2 \tempo "Moins lent" s4 |
  s2. | s4 \tempo "Rit." s2 | \tempo "Lent" s2.*2 | \tempo "Un peu animé" s2.*2 |
  s2. | s4 \tempo "Rit." s2 | s \tempo "Plus lent" s4 | s2. | s4 \tempo "Rit." s2 | \tempo "Lent" \mark \default s2.*2 |
  
  s4 \tempo "Moins lent" s2 | s2.*4 | \tempo "Un peu animé" s2. |
  s2.*4 | \tempo "Rit." s2. | \tempo "a Tempo Lento" \mark \default s4 s2 | s2. |
  \tempo "Animando" s2. | s2. | s8 s\cresc s2 | s2. | \tempo "Rit." s2. |
  \tempo "Plus modéré" s4\f s2 | s4 s\f s | s2. | s4 s\pp s | s2.*3 \bar "|."
}

nKSopran = \relative c' {
  \Kglobal
  bes2( c4 | es f as | bes2.~ | bes8) r r4 r |
  bes\(( c4.) c8 | es4( f2~ | f4\)) f8([ es g f] | c[ es c bes as bes] | es4. c8 f4~ |
  f) es8\(([ d c bes]) | as4. g8 g4~ | g2.~ | g2.\) | R2. |
  R2.*3 | bes4\(( c4.) c8 es4( f2~ |
  
  f4)\) f\(( g~ | g8[ f c es c bes] | f[ as bes c es c] | f2\)) es8\(([ d] | es[ d c bes]) as4~ | as8 g g2~ |
  g2.~ | g\) | R2.*2 | r4 es'2--~\(( | es4 e) e~ | e4.\) r8 d\(([ e] |
  c[ d a g c b]) | c--([ b a g f]) e | e2.~ | e\) | R2.*2 |
  R2.*5 | bes'4\(( c4.) c8 | es4( f2~ |
  
  f4)\) f8([ es g f] | c[ bes as bes es c] | f2) es8\(([ d] | es[ d c d bes as]) | bes2-- g4 | g2.~ |
  g\) | R2.*4 | bes4.--\(( c8[ es c] | es) es-- es4( f~ |
  f es d | g)\) \breathe es( c | as' g8[ f g f] | es[ d c bes es d] | c2-^~ c8) r |
  es4.---^ c8-- c4--~ | c c---^ des---^~ | des8 des---^ c2---^~ | c8 r f4\( f~ | f c2 | c2.~ | c8\) r r4 r |
}

dKSopran = {
  \Kglobal
  s4^\markup{\dynamic pp \italic laintain} s2 | s2. | s2. | s2. |
  s4^\markup{\dynamic f \italic {très large}} s2 | s2. | s2 s8 s^\markup{\italic souple} | s2. | s |
  s2. | s2 s8 s\> | s2 s8 s\! | s2.*2 |
  s2.*3 | s4\f s2 | s2. |
  
  s4. s8\< s4 | s8\! s4. s4 | s s\> s | s\! s2 | s2.*2 |
  s2.*4 | s4 s\mf s\> | s s\! s | s2 s4\pp |
  s2.*6 |
  s2.*5 | s4^\markup{\dynamic p \italic dolce} s2 | s2. |
  
  s2.*2 | s2 s4^\markup{\dynamic pp Sans lenteur} | s2. | s4^\markup{(Sans ralentir)} s2 | s2. |
  s2.*5 | s8\f^\markup{"cependant moins large qu'au début"} s\< s2 | s4\! s2 |
  s2.*5 |
  s2.*7 |
}

tKSopran = \lyricmode {
  A __
  Ky -- ri -- e __ (e) __
  e -- le -- i -- son. __
  Ky -- ri -- e __
  
  (e) __ e -- le -- i -- son __
  Chris -- te __ e --
  le -- i -- son __
  Ky -- ri -- e __
  
  (e) __ e -- le -- i -- son. __
  Ky -- ri -- e __
  (e) __
  Ky -- ri -- e __ e -- le -- i -- son __ e -- le -- i -- son. __
}

nKMezzo = \relative c' {
  \Kglobal
  R2. | R2. | bes4( c2 | es4 f as |
  bes2.~ | bes4) r r | R2.*3 |
  R2.*2 | r4 bes4. bes8 | bes4( d2~ | d) r4 |
  d4\(( f c | d bes c | g) as4. bes8 | bes2.~ | bes4\) r r |
  
  R2.*6 |
  ces2.--\(( | bes4) bes2~ | bes4\) es\(( c | es) c g | g2.~-^ | g\) | R2. |
  R2.*2 | r4 g2\(( | as4) as2~ | as8\) r des4( as | ces as ces |
  es ces des | as ces2~ | ces8) r r4 as--~\(( | as ces-- des--) | es,--( f) as | bes2.~ | bes4\) r r |
  
  R2.*5 | r4 bes4.-^ b8-^ |
  b4-^( d2~ | d) r4 | d--\(( f c | d bes c | g) as4. bes8 | bes2~ bes8\) r | R2. |
  f8--([ as bes as bes]) bes-- | bes4--( c) \breathe es,4\(( | es'8[ d bes as c bes] | as4) g bes | a2-^~ a8\) r |
  as4.---^ a8-- a4--~ | a a---^ as---^~ | as8 as---^ a2---^~ | a8 r as4\( as~ | as a2 | a2.~ | a8\) r r4 r | 
}

dKMezzo = {
  \Kglobal
  s2.*2 | s4\p s2 | s8 s\< s2 |
  s8\! s\> s4 s8 s\! | s2.*4 |
  s2.*2 | s4 s\p s | s2.*2 |
  s4\pp s2 | s2. | s8 s\< s4 s8 s16 s\! | s8 s\> s4 s8 s16 s\! | s2. |
  
  s2.*6 |
  s4\pp s4\< s\> | s2.\! | s4 s^\markup{\dynamic mp \italic {très soutenu}} s8 s\< | s2 s4\! | s\mf s2 | s4 s2\> | s2.\! |
  s2.*2 | s4 s8^\markup{\dynamic p \italic dolce} s\< s4 | s4\> s2\! | s4 s^\markup{\dynamic p \italic {très expressif}} s8 s\< | s2. |
  s2 s4\> | s2 s4\! | s2 s4\mf | s2. | s4 s2\> | s4\p s2 | s2. |
  
  s2.*5 | s4 s\f s |
  s2.*2 | s2 s8 s\dim | s2. | s4\> s2 | s4\! s2 | s2. |
  s8\f s\< s4 s8 s\! | s2.*4 |
  s2.*7 |
}

tKMezzo = \lyricmode {
  A __
  %
  Ky -- ri -- e __
  e -- le -- i -- son __
  
  %
  Chris -- te __ e -- le -- i -- son __
  Chris -- te __ (e) __
  e -- le -- i -- son __
  
  Ky -- ri --
  e __ e -- le -- i -- son __
  Ky -- ri -- e __ (e) __ Ky -- ri -- e __
  Ky -- ri -- e __ e -- le -- i -- son __ e -- le -- i -- son. __
}

nKAlt = \relative c' {
  \Kglobal
  bes2.~ | bes~ | bes~ | bes~ |
  bes~ | bes4 r r | R2.*3 |
  R2.*2 | r4 d4. d8 | d4( bes'2~ | bes) r4 |
  d4\(( c bes | g as g | f) es4. bes8 | bes2.~ | bes4\) r r |
  
  R2.*6 |
  fes'2.--\(( | es4) es2~ | es4\) bes'\(( g! | f!) g c, | c2.-^~ | c\) | R2. |
  R2.*2 | r4 c2\(( | des4) des2~ | des8\) r fes4( ges | des es fes |
  f g!-- as | ges f e~ | e8) r r4 r | as--\(( ges-- f!--) | es--( des) ces | bes2.~ | bes4\) r r |
  
  R2.*5 | r4 d4.-^ d8-^ |
  d4-^( b'2~ | b) r4 | b--\(( a as | g as g | f) es4. bes8 | bes2~ bes8\) r | R2. |
  R2. | d8--([ es g es g]) g | c,4( d) es( | f g2) \breathe | f2-^~ f8 r |
  c4.---^ f8-- f4--~ | f f---^ f---^~ | f8 f---^ f2---^~ | f8 r des4\( des~ | des f2 | f2.~ | f8\) r r4 r |
}

dKAlt = {
  \Kglobal
  s4\p s2 | s2.*3 |
  s2.*5 |
  s2.*2 | s4 s\p s | s2.*2 |
  s4\pp s2 | s2. | s8 s\< s4 s8 s16 s\! | s8 s\> s4 s8 s16 s\! | s2. |
  
  s2.*6 |
  s4\pp s4\< s\> | s2.\! | s4 s\mp s8 s\< | s2 s4\! | s\mf s2 | s4 s2\> | s2.\! |
  s2.*2 | s4 s8^\markup{\dynamic p \italic dolce} s\< s4 | s4\> s2\! | s4 s^\markup{\dynamic p \italic {très expressif}} s8 s\< | s2. |
  s2 s4\> | s2 s4\! | s2. | s4\mf s2 | s4 s2\> | s4\p s2 | s2. |
  
  s2.*5 | s4 s\f s |
  s2.*2 | s2 s8 s\dim | s2. | s4\> s2 | s4\! s2 | s2. |
  s2. | s8\f s\< s4. s8\! | s2.*3 |
  s2.*7 |
}

tKAlt = \lyricmode {
  A __
  %
  Ky -- ri -- e __
  e -- le -- i -- son __
  
  %
  Chris -- te __ e -- le -- i -- son __
  Chris -- te __ (e) __
  e -- le -- i -- son __
  
  Ky -- ri -- 
  e __ e -- le -- i -- son __
  Ky -- ri -- e __ (e) __ (e) __
  Ky -- ri -- e e -- le -- i -- son __ e -- le -- i -- son. __
}


sKSopran = 
  \new Staff  = "zKSopran"
    \with {
      instrumentName = "Soprani"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKSopran
      { 
        \new Voice = "vKSopran" {\nKSopran}
      }

      \new Lyrics \lyricsto "vKSopran" {\tKSopran}
    >>
    
sKMezzo = 
  \new Staff  = "zKMezzo"
    \with {
      instrumentName = \markup{\right-column{"Mezzo-" "Soprani"}}
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKMezzo
      { 
        \new Voice = "vKMezzo" {\nKMezzo}
      }
      \new Lyrics \lyricsto "vKMezzo" {\tKMezzo}
    >>

sKAlt = 
  \new Staff  = "zKAlt"
    \with {
      instrumentName = "Contralti"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKAlt
      { 
        \new Voice = "vKAlt" {\nKAlt}
      }
      \new Lyrics \lyricsto "vKAlt" {\tKAlt}
    >>