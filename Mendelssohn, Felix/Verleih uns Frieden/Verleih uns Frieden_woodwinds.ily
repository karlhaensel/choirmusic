\version "2.24.00"

\include "Verleih uns Frieden_strings.ily"  % für Fagotti gemeinsam mit Kontrabass

dWoodwindsI = { % Anfang ohne Fagott
  \global_transpose
  % S. 3-6
  s2.*15 \mark \default | s2.*26 \mark \default |
  % S. 7
  s2.\pp | s8 s\< s2 | s2.\! | s2.*5 |
  % S. 8
  s2.\cresc | s2.*2 | s4 s2\cresc | s2. | s2 s8 s\p | s4\< s\> s\! | s\< s\> s\! | s2. | s2 s4\cresc |
  % S. 9
  s2 s4\sf | s2. | \tag #'flI \tag #'klarI {s4. s\p} \tag #'flII \tag #'klarII {s8 s\p s2} | s2. | s4.\< s\> | s2.\! | s2. | s8 s\cresc s2 | s2. | \tag #'flI  \tag #'flII {s8 s\f s2} \tag #'klarI \tag #'klarII {s2.\f} \mark \default |
  % S. 10
  s2.\mf | s2.*2 |
}

dWoodwindsII = { % jetzt mit Fagott
  \global_transpose
  % S. 3-10
  s2.*15 \mark \default | s2.*26 \mark \default |s2.*28 \mark \default | s2.*3 |
  % S. 10
  s2.\< | s\! | \tag #'flI \tag #'flII \tag #'fag {s2 s4\dim | s2.*2 | s4 s2\cresc | s2.*3} \tag #'klarI \tag #'klarII {s2.*2 | s8 s\< s2 | s2.\! | s2.*2 | s8 s\cresc s2} |
  % S. 11
  \tag #'flI {s4\f\< s2\> | s16 s\! s8 s4 s\dim |} \tag #'flII {s2.\! | s2. |} \tag #'flI \tag #'flII {s2.\< | s2.\> | s2.\p | s2. |} \tag #'klarI \tag #'klarII {s4\f s2 | s2 s4\dim | s4\< s\> s8 s\! | s4\< s\> s8 s\! | s2.*2} \tag #'flI \tag #'klarI {s2\< s8 s\!|} \tag #'flII \tag #'klarII {s4.\< s4.\!|} \tag #'flI \tag #'flII \tag #'klarI \tag #'klarII { s2. | s2 s4\sf | s2 s4\dim | s2.*2 | s2.\p |} \tag #'fag {s4\f\< s2\> | s16 s\! s8 s4 s\p | s2.\< | s2\> s8 s\! | s2 s4\p | s2.\cresc | s2 s4\p | s2.\cresc | s2. | s4\f\> s s8 s\! |}
  % S. 12
  \tag #'flI {s2.\dim} \tag #'flII {s2.} \tag #'flI \tag #'flII {s2.*2 | s2.\pp | s2.*4} \tag #'klarI {s2.*5 | s2.\pp | s2.*2} \tag #'klarII {s2.*8} \tag #'fag {s2.\dim | s2 s4\p | s2. | s2.\dim | s | s\dim | s\pp | s2.*4} \bar "|."
}

FlKlarI = \relative c'' { 
  % S. 7
  bes4\( es4. d8\) | es\( f g as bes g\) | es\( g4 f8 c d\) | es4\( bes8 c des4\) | c\( e8 f\) g4~ | g8\( f es! bes\) c4~ | c8\( d es c~ c b\) | c\( g es g c d |
  % S. 8
  es\) g4\( f es8\) | d\( bes f bes d es | f\) as4\( g f8\) | es\( bes g bes es des\) | c4 r r | r r r8 f | e\( f g e c d\) | e\( f g e c as\) | g4 r r | r r c8\( d |
  % S. 9
  es! f g as bes g\) | es2 r4 | r r8 d\( c d | es4.\) d8\( c d | es\) c\( des2~\) | des8 bes\( c2~\) | c8 r r4 r | r8 c\( bes es~ es d\) |
}

FlKlarII = \relative c'' {
  % S. 7
  g8\( as bes4 as4\) | g8\( as bes c des4\) | c\( bes as\) | g8\( f g as bes g\) | es\( c' bes as g c~\) | c\( d es4\)  r8 d\(  | es f g es d4\) | c8\( es, c es g b\) |
  % S. 8
  c4.\( f8\) bes,4 | bes8\( f d f bes c\) | d\( c bes2~\) | bes8\( g es g as bes\) | c4 r r | r r r8 bes | g\( as bes4 as\) | g8\( as bes4 as8 f\) | e4 r r | r r as8\( ces |
  % S. 9
  bes as bes c! des4\) | des\( c\) r | r8 g\( as2\) | r8 g\( as2~\) | as4.\( g8 f g\) | as2.~ | as8 r r4 r | r8 c\( bes as g bes\) | 
}

nFlI = \relative c'' {
  \global
  % S. 3-6 
  R2.*15 | R2.*22 |
  % S. 7-9
  \cueDuringWithClef "cello1" #UP "bass" {\tag #'part {\set instrumentCueName = "Vc. I (zum 2. Mal)"} R2.*4} | \FlKlarI
  % S. 9
  r8 c'\( bes es~\) es4~ | es8\( c bes4. d,8\) |
  % S. 10
  es4\( g f\) | es2 es4 | es\( bes'\) as | g2 g4 | c2\( bes4\) | as\( g\) es8\( f\) | g2. | es4 r r | es\( as\) as8\( g\) | f2 r4 | f4\( bes\) bes8\( as\) | g2 r4 |
  % S. 11
  bes4\( es des\) | c\( bes\) as8\( bes\) | c2.~ | c~ | c4 r r | r r c,8\( d | es f g as bes g\) | c,4 r c8\( d | es f g as bes g\) | c,4 r c8\( d |
  % S. 12
  es d es f g f\) | es\( d es f g es\) | c'2.~\( | c4 bes as\) | g\( f2\) | es4 r r| es,2.~ | es2 r4 | R2.*2 | R2.\fermata
}

nFlII = \relative c'' {
  \global
  % S. 3-6 
  R2.*15 | R2.*22 |
  % S. 7-9
  \cueDuringWithClef "cello1" #UP "bass" {\tag #'part {\set instrumentCueName = "Vc. I (zum 2. Mal)"} R2.*4} | \FlKlarII
  % S. 9
  r8 as'\( g f g c\) | es es,~ es\( f g bes, \) |
  % S. 10
  bes4 es~\( es8 d\) | es2 es4 | es2 f4 | g2 es4 | es2\( d4\) | f\( es\) c8\( d\) | es4\( d2\) | c4 r r | es\( f\) es | d2 r4 | d\( es\) f| es2 r4 |
  % S. 11
  R2.*2 | c2.~ | c~ | c4 r r | r r c8\( ces | bes as bes c! des4\) | c r c8\( ces | bes as bes c! des4\) | c4 r c8\( b |
  % S. 12
  c b c d es d\) | c\( b c d es c\) | es2.~ | es4 r r | R2.*2 | es,2.~ | es2 r4 | R2.*2 | R2.\fermata
}

nKlarI = \transpose c bes \relative c' {
  \global_transpose
  \key f \major
  % S. 3-6 
  R2.*15 | R2.*22 |
  % S. 7-9
  \cueDuringWithClef "cello1" #UP "bass" {\tag #'part {\set instrumentCueName = "Vc. I (zum 2. Mal)"} R2.*4} | \transpose bes c \FlKlarI |
  % S. 9
  r4 f2~-> | f4 r8 bes8\( a g\) |
  % S. 10
  f\( c\) a'4\( g\) | f2 es4 | d\( c\) c | c2 a4 | d2\( c4\) | bes\( a\) r4 | R2. | r8 a\( f a d e | f4\) r r | r8 g,\( e g c d | e4\) r r | r8 c\( a c f g |
  % S. 11
  a4\) r r | r r d,8\( e\) | fis\( g a fis d e\) | fis\( g a fis d bes | a4\) r r | r r d8\( e | f g a bes c a\) | d,4 r d8\( e | f g a bes c a\) | d,4 r d8\( e |
  % S. 12
  f8 e f g a g\) | f\( e f g a f\) | d\( bes f bes d f | bes4\) r r | R2.*4 | g,,2.~ | g4 r r | R2.\fermata 
}

nKlarII = \transpose c bes \relative c' {
  \global_transpose
  \key f \major
  % S. 3-6 
  R2.*15 | R2.*22 |
  % S. 7-9
  \cueDuringWithClef "cello1" #UP "bass" {\tag #'part {\set instrumentCueName = "Vc. I (zum 2. Mal)"} R2.*4} | \transpose bes c \FlKlarII |
  % S. 9
  r4 f,2~-> | f4 r8 e'\( f e\) |
  % S. 10
  f\( a,\) f'4~\( f8 e\) | f2 c4 | bes\( c\) bes | a2 f4 | f2\( e4\) | g\( f\) r | R2. | r8 f\( d f a cis\) | d4 r r | r8 e,\( c e g b | c4\) r r | r8 a\( f a c e |
  % S. 11
  f4\) r r | r r bes, | a8\( bes c4 bes\) | a8\( bes c4 bes8 g | fis4\) r r | r r d'8\( des | c bes c d es4\) | d r d8\( des | c bes c d es4\) | d r d8\( cis |
  % S. 12
  d cis d e f e\) | d\( cis d e f d\) | f,\( d bes d f bes | d4\) r r | R2.*6 | R2.\fermata
}

nFagI = \relative c, {
  \global
  % S. 3-9
  \keepWithTag #'fagI \Bass
  % S. 10
  es4\! r r | c''2\mf bes4 | c\( bes\) bes | bes2 bes4 | c2\( f,4\) | as\( g\) es' | es\( d2\) | es4 r r | g,\( as bes8 c\) | d2 r4 | bes2 bes4 | bes2 r4 |
  % S. 11
  bes4\( es des\) | c\( bes\) as8\( f\) | c'2.~ | c~ | c4 r g\( | as bes as\) | g2 es4 | f2. | g2 g,4 | as\( g f\) |
  % S. 12
  g'2.~ | g4 r g | c2. | es~ | es4 r as,\( | g f2\) | es2.~ | es4 r r | R2. |\partCombineSoloI bes'2.~\pp\espressivo | bes\fermata
}

nFagII = \relative c, {
  \global
  % S. 3-9
  \keepWithTag #'fagII \Bass
  % S. 10
  es4\! r bes'\mf | es2 es4 | as\( bes\) as | g2 g4 | as2\( d,4\) | f\( es\) c' | c2\( b4\) | c r r | es,\( f g8 as\) | bes2 r4 | bes8\( as g4\) f | g2 r4 |
  % S. 11
  g4\( c bes\) | as\( g\) as8\( f\) | c'2.~ | c~ | c4 r e,\( | f g as\) | g2 es,4 | f2. | g2 g4 | as\( g f\) |
  % S. 12
  es'2.~ | es4 r es | es2. | es'4\( d c\) | bes2 as4\( | g f2\) | es2.~ | es4 r r | \partCombineSoloI R2.*2 | R2.\fermata
}