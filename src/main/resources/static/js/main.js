$(document).ready(function(){
    $('#imageFile').change(function(event){
        var filePath = URL.createObjectURL(event.target.files[0]);
        $('#thumbnail').attr("src", filePath);
    });
});