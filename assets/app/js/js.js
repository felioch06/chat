const search = document.getElementById('search');

$('#search').keyup(function(){
    var dato = $('#search').val();

    if(dato == ""){
        $('#searchResponse').addClass('hidden')
    }
    else{ 
    $.ajax({
        type:'post',
        url:'?class=Usuarios&view=searchAjax',
        data:{
            busqueda:dato
        },
        success(response){
            $('#searchResponse').removeClass('hidden')
            $('#searchResponse').html(response)

        }
    })
    }
});