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


function divideByTwo(num) {
  var remainderStack = new Stack();
  var remainder;
  var binaryString = '';

  while(num > 0) {
    remainder = Math.floor(num % 2);
    remainderStack.push(remainder);
    num = Math.floor(num / 2);
  }

  while (!remainderStack.isEmpty()) {
    binaryString += remainderStack.pop().toString();
  }

  return binaryString;
}

// Example
// console.log(divideByTwo(10)); // 1010
