\\defword{(.*?)}


[\1]{class=defword}

\\marginnote{(.*?)}

`r tufte::margin_note(

{<<.*?>>}


\\marginnote{(.*?)}

\[(.*?)\]\{class=defword\}`r defword\(

  ,`r defword("\1",

