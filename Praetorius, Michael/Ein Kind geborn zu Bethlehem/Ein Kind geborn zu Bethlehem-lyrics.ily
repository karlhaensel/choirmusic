% Damit alle Strophentexte jeweils auf alle Strophen je nach Gegebenheiten und WÜnschen verteilt werden können
% sind die Texte mit Tags ausgestattet, sodass je nach Melismen (Strophe) und Satz (Halleluja) entschieden werden kann

hal = \lyricmode {
  \tag #'hal { Hal -- le, -- }
  \tag #'halle { Hal -- le -- lu -- ja. __ }
  Hal -- le -- lu -- ja.
}


tEins = \lyricmode {
  \set stanza = "1." 
  Ein Kind ge -- born zu Beth -- le -- \tag #'langI {hem, __ } \tag #'kurzI {hem, } Beth -- le -- hem, __
  des freu -- et sich Je -- ru -- sa -- \tag #'langII {lem. __ } \tag #'kurzII {lem. } \hal
}

tZwei = \lyricmode {
  \set stanza = "2."
  Hie leit es in dem Krip -- pe -- \tag #'langI {lein, __ } \tag #'kurzI {lein, } Krip -- pe -- lein, __
  ohn En -- de ist die Herr -- schaft \tag #'langII {sein. __ } \tag #'kurzII {sein. } \hal
}

tDrei = \lyricmode {
  \set stanza = "3."
  Das Öchs -- lein und das E -- se -- \tag #'langI {lein, __ } \tag #'kurzI {lein, } E -- se -- lein, __
  er -- kann -- ten Gott, den Her -- ren, \tag #'langII {sein. __ } \tag #'kurzII {sein. } \hal
}

tVier = \lyricmode {
  \set stanza = "4."
  Die Kön'g aus Sa -- ba ka -- men \tag #'langI {dar, __ } \tag #'kurzI {dar, } ka -- men dar, __
  Gold, Weih -- rauch, Myr -- rhen brach -- tens \tag #'langII {dar. __ } \tag #'kurzII {dar. } \hal
}

tVierA = \lyricmode {
  \set stanza = "4a."
  Sie fie -- len nie -- der auf ih -- re \tag #'langI {Knie, __ } \tag #'kurzI {Knie, } ih -- re Knie, __ 
  sie spra -- chen: Gott und Mensch ist \tag #'langII {hie. __ } \tag #'kurzII {hie. } \hal
}

tFuenf = \lyricmode {
  \set stanza = "5."
  Für sol -- che gna -- den -- rei -- che \tag #'langI {Zeit, __ } \tag #'kurzI {Zeit, } -rei -- che Zeit __
  sei Gott ge -- lobt in E -- wig -- \tag #'langII {keit. __ } \tag #'kurzII {keit. } \hal
}

tSechs = \lyricmode {
  \set stanza = "6."
  Lob sei der heil -- gen Drei -- fal -- tig --  \tag #'langI {keit, __ } \tag #'kurzI {keit, } Drei -- fal -- tig -- keit __
  von nun an bis in E -- wig -- \tag #'langII {keit. __ } \tag #'kurzII {keit. } \hal
}