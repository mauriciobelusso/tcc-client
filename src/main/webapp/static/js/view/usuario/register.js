$('#frm').submit(function(){
	let _json = JSON.stringify(makeIndexedArray($('#frm').serializeArray()));
    $.ajax({
        type: $('#frm').attr('method'),
        url: "https://tcc-server-faq-rbc.herokuapp.com/usuario/",
        data: _json,
        dataType: "json",
        contentType : "application/json",
        success: function(data){
            window.location = '/';
            Swal.fire("Sucesso", "Usuário cadastrado com sucesso!", "success");
        },
        error: function(){
            Swal.fire("Erro", "Usuário não cadastrado", "error");
        }
    });
});

function makeIndexedArray(data) {        
    let unindexed_array = data;
    let indexed_array = {};

    $.map(unindexed_array, function(n, i) {
        indexed_array[n['name']] = n['value'];
    });
    
    return indexed_array;
}