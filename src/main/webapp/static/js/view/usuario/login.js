$('#frm').submit(function(){
	let _json = JSON.stringify(makeIndexedArray($('#frm').serializeArray()));
    $.ajax({
        type: $('#frm').attr('method'),
        url: "https://tcc-server-faq-rbc.herokuapp.com/auth",
        data: _json,
        dataType: "json",
        contentType : "application/json",
        success: function(data){
            sessionStorage.setItem('token', data.token);
            window.location = '/';
        },
        error: function(){
            Swal.fire("Erro", "Usuario ou senha inválidos", "error");
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