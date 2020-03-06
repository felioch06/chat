const search = document.getElementById('search');
const id = document.getElementById('id');
const id_usuario_para = document.getElementById('id_usuario_para');



function readyStateChanged() {

            var data_para = id_usuario_para.value;
            var data = id.value;
            
                $.ajax({
                    type:'post',
                    url:'?class=Usuarios&view=searchMensaje',
                    data:{
                        id:data,
                        id_para: data_para 
                    },
                    success: function(response){
                        $('#mensajeResponse').html(response)
                    },
                    complete: function(){
                        controlador = setTimeout(function(){
                            readyStateChanged()
                        }, 3000);
                    }
                })
            }






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