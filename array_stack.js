function Stack(){
  var data = [];

  this.push = function(element) {
    data.push(element);
  }

  this.pop = function(element) {
    return data.pop();
  }

  this.peek = function() {
    return data[data.length - 1];
  }

  this.isEmpty = function() {
    return data.length == 0;
  }

  this.print = function() {
    console.log(data.toString());
  }
}
