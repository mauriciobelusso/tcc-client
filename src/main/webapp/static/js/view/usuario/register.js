$('#frm').submit(function(){
	if(!validarSenha()){
	   Swal.fire("Senhas diferentes!", "Favor digitar senhas iguais", "error");
	   return false;
	}
	let _json = JSON.stringify(makeIndexedArray($('#frm').serializeArray()));
    let token = sessionStorage.getItem('token');
    $.ajax({
        type: $('#frm').attr('method'),
        url: "https://tcc-server-faq-rbc.herokuapp.com/usuario/",
        headers: {
            "X-Auth-Token": token,
        },
        data: _json,
        dataType: "json",
        contentType : "application/json",
        complete: function (data) {
            if (data.status === 201 || data.status === 200) {
            	Swal.fire("Salvo", "Cadastro realizado com sucesso!", "success");
                setTimeout(function () {
                    top.location.replace('/usuario/register');
                }, 1500);
                return true;
            } else if (data.status === 401 || data.status === 403) {
            	Swal.fire("Acesso negado!", "Você não tem permissões para executar essa ação", "error");
            } else if (~data.responseText.indexOf("[uk_username]")) {
            	Swal.fire("Usuário já cadastrado", "Usuário já está cadastrado no sistema.", "error");
            } else {
                console.log(dados);
                console.log(data.responseText);
                Swal.fire("Erro", "Falha ao salvar registro", "error");
            }
        	return false;
        }
    });
    return false;
});

function makeIndexedArray(data) {        
    let unindexed_array = data;
    let indexed_array = {};

    $.map(unindexed_array, function(n, i) {
        indexed_array[n['name']] = n['value'];
    });
    
    return indexed_array;
}


function validarSenha(){
	password = document.getElementById('password').value;
	password_confirm = document.getElementById('password_confirm').value;
   if (password != password_confirm) {
	   return false;
   }else{
	   return true;
   }
}