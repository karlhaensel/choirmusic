\version "2.22.00"

esFuenf = { es1\startTrillSpan~ | es4\stopTrillSpan r4 r2 | }

esDrei = { es2\startTrillSpan~ es4\stopTrillSpan r4 | }

nPk = \relative c {
  \global
  % S.4
  es1\pp\startTrillSpan~ | es4\stopTrillSpan r4 r2 | R1 | \esFuenf
  % S.5
  R1*4 | \esFuenf |
  % S.6
  \esFuenf R1*4 |
  % S.7-8
  R1*12 |
  % S.9
  R1*3 | bes1\f\startTrillSpan~ | bes4\stopTrillSpan r4 r2 | bes1\startTrillSpan~ |
  % S.10
  bes4\stopTrillSpan r4 r2 | bes1\startTrillSpan~ | bes4\stopTrillSpan r4 r2 | es1\startTrillSpan\> | R1\stopTrillSpan\! | R1 |
  % S.11
  R1 | bes1\f\startTrillSpan | R1\stopTrillSpan | bes1\startTrillSpan | R1\stopTrillSpan | R1 |
  % S.12
  R1 | es2_\markup{\dynamic f \dynamic sf}\startTrillSpan~ es4\stopTrillSpan r | \esDrei \esDrei es1\startTrillSpan | es4\stopTrillSpan r es r |
  % S.13
  bes1\sf\startTrillSpan~ | \repeat unfold 3 {bes~ |} bes | es2\startTrillSpan bes\startTrillSpan |
  % S.14
  <<es1\startTrillSpan~ {s2 s\dim}>> | es1\! | R1\stopTrillSpan | R1*3 |
  % S.15
  R1*2 | es1_\markup{\dynamic p \italic cresc.}\startTrillSpan~ | es1~ | es | <<bes1\startTrillSpan {s4 s2.\dim}>> |
  % S.16
  bes4\!\stopTrillSpan r4 r2 | << es1\p\startTrillSpan~ {s2 s\cresc}>> | es1 | bes\f\startTrillSpan~ | <<bes {s4 s2.\dim}>> | R1\stopTrillSpan | R1 |
  % S.17
  es1\p\startTrillSpan | es4\stopTrillSpan r4 r2 | R1*4 | r2 bes\p\startTrillSpan | es\cresc\startTrillSpan bes\startTrillSpan~ |
  % S.18
  bes1 | R1\stopTrillSpan | <<bes1\startTrillSpan~ {s2\< s\>}>> | bes4\!\stopTrillSpan r4 r2 | R1*4 |
  % S.19
  bes1\f\startTrillSpan~ | bes4\stopTrillSpan r4 r2 | bes1\startTrillSpan~ | bes4\stopTrillSpan r4 r2 | R1 | bes1\p\startTrillSpan | R1\stopTrillSpan |
  % S.20
  bes1\startTrillSpan | R1\stopTrillSpan | R1 | <<es1\f\startTrillSpan {s4 s2.\>}>> | es4\!\stopTrillSpan r4 r2 | R1*3 | es1\p\startTrillSpan |
  % S.21
  es4\stopTrillSpan r4 r2 | es1\startTrillSpan~ | \repeat unfold 3 {es1~} | es4\stopTrillSpan r4 r2 | R1 | R1\fermata \bar "|."
}