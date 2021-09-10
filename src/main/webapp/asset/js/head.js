$(document).ready(function() {
    
    $('#div2').validate({
        rules: {
         email1: {
             required: true,
             email: true
          },
          pwd2: {
             required: true,
             rangelength:[8,16]
          },
          tel: {
            required:true,
            matches: new RegExp('^09\\d{8}$'),
            },
            classpet: {
              required: true,
           },
           ahe: {
            required:true,
            },
            comment:{
              required:true,
            },
        }, //end rules
        messages: {
         email1: {
              required: "請輸入信箱",
              email: "格式錯誤"
            },
            pwd2: {
             required: '請輸入密碼',
             rangelength: '密碼長度要求為8-16'
           },
           tel: {
            required: '請輸入電話',
            tel:"格式錯誤"
          },
          classpet: {
            required: "請輸入類別",
           },
           ahe: {
            required: '請輸入標題',
          },
          comment:{
            required: '請輸入內文',
          }
       },
       }); // end validate

       $('#file').change(function() {
        var file = $('#file')[0].files[0];
        var reader = new FileReader;
        reader.onload = function(e) {
          $('#demo').attr('src', e.target.result);
        };
        reader.readAsDataURL(file);
      });

      $("#date").datepicker({
        changeMonth : true ,
        changeYear : true,
        yearRange : '-120:+0',
        maxDate : 0,
        dateFormat : 'yy-mm-dd'
      }); //datepicker

    $("#pic").change(function(){
        $("#preview").html("");
        readURL(this);
      });

      function readURL(input){
        if (input.files && input.files.length >= 0) {
          for(var i = 0; i < input.files.length; i ++){
            var reader = new FileReader();
            reader.onload = function (e) {
              var img = $("<img width='300' height='200'>").attr('src', e.target.result);
              $("#preview").append(img);
            }
            reader.readAsDataURL(input.files[i]);
          }
        }else{
          var noPictures = $("<p>目前沒有圖片</p>");
          $("#preview").append(noPictures);
        }
      }

       
  }); // end ready

  function ojump() { 
    var msg = "您真的確定要登出嗎？\n\n請確認！"; 
    if (confirm(msg)==true){ 
    return true; 
    }else{ 
    return false; 
    } 
  } //登出

  