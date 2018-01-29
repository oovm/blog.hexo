'use strict';
​
var Canvas = require("canvas");
var cloud = require("d3-cloud");
var d3 = require("d3");
​
var layout = cloud()//利用d3-cloud计算每个标签的位置
    .size([600, 400])
    .canvas(function() { return new Canvas(1, 1); })
    .padding(7)
    .rotate(function() { return ~~(Math.random() * 2) * 90; })
    .font("Impact")
    .fontSize(function(d) { return d.size; });
var fill = d3.scale.category20();//利用d3的接口给每个标签颜色
​
function tagcloudHelper(tags){
  /****与tagcloud.js一样，获得tags 开始***/
  if ((!tags || !tags.hasOwnProperty('length'))){
    tags = this.site.tags;
  }
​
  if (!tags || !tags.length) return '';
   
  var result = [];
​
  tags = tags.sort('name', 1);
​
  // Ignore tags with zero posts
  tags = tags.filter(function(tag){
    return tag.length;
  });
 /****与tagcloud.js一样，获得tags 结束***/
   
  //计算标签出现次数最大值，比如，博客中一共有两个标签，一个是hello,一个是world,hello出现2次，world 出现1次，那么maxsize就是2
  var maxsize = 1;
​
  tags.sort('length').forEach(function(tag){
    var length = tag.length;
    if(length > maxsize)
        maxsize = length;
  });
​
 //构建传入layout的words
  var arr = [],words;
  tags.forEach(function(tag){
     arr.push({"name": tag.name,"num" : tag.length});
  });
  words = arr.map(function(d) {
      var text = d.name.replace(/[^\x00-\xff]/g,"ab");//对中文的投机处理，用ab代替中文字符
      return {name:d.name, text: text, size : Math.log(d.num)/(Math.log(maxsize)-Math.log(1)) * 15 + 30};//size的计算取对数，是为了让标签之间的大小相对平均一些。因为博客侧重前端内容，所以某一些标签会比较多，标签最大最小次数的差距会比较大。
     
  });
  layout.words(words);
  layout.start();
​
  result.push('<svg width="600" height="400"><g transform="translate(300,200)">');
  words.forEach(function(word,i){
​
    result.push(
      '<text text-anchor="middle" fill="'+fill(i)+'" transform="translate('+word.x+','+word.y+')rotate('+
        word.rotate+')" style="font-size:'+word.size+'px;font-family:Impact">'+
        word.name+
      '</text>'
    );
  });
  result.push('</g></svg>');
   
  return result.join('');
   
}
module.exports = tagcloudHelper;