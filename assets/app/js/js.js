const search = document.getElementById('search');
const id = document.getElementById('id');
const id_usuario_para = document.getElementById('id_usuario_para');

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

//Login
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');
const demo = document.getElementById('demo');
const demoTwo = document.getElementById('demoTwo');


signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});

demo.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

demoTwo.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});

function reFresh(){
    $('#success').addClass('hidden');
    $('#noExiste').addClass('hidden');
    $('#yaExiste').addClass('hidden');
  }
  
  var repeticion = window.setInterval("reFresh()", 3000);

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






