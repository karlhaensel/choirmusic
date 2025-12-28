\version "2.22.1"

tBassGehA = \lyricmode {
  Geh aus, __ mein Herz,
}

tBassGehB = \lyricmode {
  Geh aus, __ mein Herz, __ geh aus, __ mein Herz,
}

tBassSkipA = \lyricmode {
  \repeat unfold 4 {\skip 1}
}

tBassSkipB = \lyricmode {
  \repeat unfold 8 {\skip 1}
}

%%%% wenn Strophe 1 nicht gesungen wird, müssen tBassGehA und tBassGehB statt tBassSkipA und tBassSkipB in die erste gesungene Strophe eingefügt werden!

tEins = \lyricmode {
  \tag #'s \tag #'a \tag #'t {\set stanza = "1." Geh aus, mein Herz und su -- } \tag #'s \tag #'t { che Freud } \tag #'a { che __ Freud } \tag #'b { \tBassGehA }
  \tag #'b {\set stanza = "1."} in die -- ser lie -- ben Som -- mer -- zeit an Dei -- nes Got -- tes Ga -- ben.
  \tag #'s \tag #'a \tag #'t { Schau an der schö -- nen Gär -- ten Zier, __ und sie -- he, wie sie } \tag #'s \tag #'t { dir und mir } \tag #'a { dir __ und __ mir __ } \tag #'b { \tBassGehB }
  \tag #'b {\set stanza = "1."} sich aus -- ge -- schmü -- \tag #'s \tag #'t \tag #'b { cket __ ha -- ben, sich } \tag #'a { cket ha -- ben, sich __ } aus -- ge -- schmü -- cket __ ha -- ben.
}

tZwei = \lyricmode {
  \tag #'s \tag #'a \tag #'t {\set stanza = "2." Die Bäu -- me ste -- hen vol -- } \tag #'s \tag #'t { ler Laub, } \tag #'a { ler __ Laub, } \tag #'b { \tBassSkipA }
  \tag #'b {\set stanza = "2."} das Erd -- reich de -- cket sei -- nen Staub mit ei -- nem grü -- nen  Klei -- de.
  \tag #'s \tag #'a \tag #'t { Nar -- zis -- sus und die Tu -- li -- pan, __ die zie -- hen sich viel schö -- } \tag #'s \tag #'t { ner an } \tag #'a { ner __ an __ } \tag #'b { \tBassSkipB }
  \tag #'b {\set stanza = "2."} als Sa -- lo -- mo -- \tag #'s \tag #'t \tag #'b { nis __ Sei -- de, als } \tag #'a { nis Sei -- de, als __ } Sa -- lo -- mo -- nis __ Sei -- de.
}

tDrei = \lyricmode {
  \tag #'s \tag #'a \tag #'t {\set stanza = "3." Die Ler -- che schwingt sich in } \tag #'s \tag #'t { die Luft, } \tag #'a { die __ Luft, } \tag #'b { \tBassSkipA }
  \tag #'b {\set stanza = "3."} das Täub -- chen fliegt aus sei -- ner Kluft und macht sich in die Wäl -- der.
  \tag #'s \tag #'a \tag #'t { Die hoch -- be -- gab -- te Nach -- ti -- gall __ er -- götzt und füllt mit ih -- } \tag #'s \tag #'t { rem Schall } \tag #'a { rem __ Schall __ } \tag #'b { \tBassSkipB }
  \tag #'b {\set stanza = "3."} Berg, Hü -- \tag #'s \tag #'a \tag #'t { gel, __ } \tag #'b { gel, } \tag #'s \tag #'t \tag #'b { Tal __ und __ Fel -- der, Berg, } \tag #'a { Tal und Fel -- de, Berg, } Hü -- \tag #'s \tag #'a { gel, __ Tal __ } \tag #'t \tag #'b { gel, } \tag #'t { Tal } \tag #'b { Tal __ } und __ Fel -- der.
}

tAcht = \lyricmode {
  \tag #'s \tag #'a \tag #'t {\set stanza = "8." ich sel -- ber kann und mag } \tag #'s \tag #'t { nicht ruhn, } \tag #'a { nicht __ ruhn, } \tag #'b { \tBassSkipA }
  \tag #'b {\set stanza = "8."} des gro -- ßen Got -- tes gro -- ßes Tun er -- weckt mir al -- le Sin -- nen:
  \tag #'s \tag #'a \tag #'t { Ich sin -- ge mit, wenn al -- les singt, __ und las -- se, was dem Höchs -- } \tag #'s \tag #'t { ten klingt, } \tag #'a { ten __ klingt, __ } \tag #'b { \tBassSkipB }
  \tag #'b {\set stanza = "8."} aus mei -- \tag #'s \tag #'a \tag #'t { nem __ } \tag #'b { nem } \tag #'s \tag #'t \tag #'b { Her -- zen __ rin -- nen, aus } \tag #'a { Her -- zen rin -- nen, aus __ } mei -- \tag #'s \tag #'a { nem __ } \tag #'t \tag #'b { nem } Her -- zen __ rin -- nen.
}

