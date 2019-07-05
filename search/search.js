var lunr = require('lunr');
require('lunr-languages/lunr.stemmer.support')(lunr);
require("lunr-languages/tinyseg")(lunr);
require('lunr-languages/lunr.jp')(lunr); 





var idx = lunr(function () {
  this.use(lunr.jp)
  this.ref('id')
  this.field('text')

  this.add({
    id: 1,
    text: "楽天市場"
  })
  this.add({
    id: 2,
    text: "楽天トラベル"
  })
  this.add({
    id: 3,
    text: "楽天ペイ"
  })
  this.add({
    id: 4,
    text: "楽天チケット"
  })
  this.add({
    id: 5,
    text: "楽天レシピ"
  })
  this.add({
    id: 6,
    text: "楽天ブックス"
  })
  this.add({
    id: 7,
    text: "楽天ウェブ検索"
  })
  this.add({
    id: 8,
    text: "楽天GORA"
  })



})
console.log(idx.search('楽天'));
console.log(idx.search('市場'));
console.log(idx.search('レシピ'));
console.log(idx.search('チケット'));
console.log(idx.search('ちけっと'));
console.log("GORA");
console.log(idx.search('楽天GORA'));
/*
var idx = lunr(function() {
  this.use('lunr.jp');
  this.addField('title');
  this.addField('body');
  this.setRef('id');
})

*/
