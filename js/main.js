  var list = [];
  names.pop();
  $(function(){
    $.each(names, function(i,name){
       var url = 'http://github.com/' + name + '/dotfiles';
        var li =  $('<li>').append($('<a>').attr('href', url).attr('target','_blank').text(name)); 
       list.push(  li  );
    });
      
    $.each(list, function(i, li){
      $('#main ul').append(li);
      });
  });
