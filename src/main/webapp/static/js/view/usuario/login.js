$('#frm').submit(function(){
	let _json = JSON.stringify(makeIndexedArray($('#frm').serializeArray()));
    $.ajax({
        type: $('#frm').attr('method'),
        url: "https://tcc-server-faq-rbc.herokuapp.com/login",
        data: _json,
        dataType: "json",
        contentType : "application/json",
        success: function(data){
            sessionStorage.setItem('token', this.token);
            window.location = '/';
        },
        error: function(){
            Swal.fire("Erro", "Usuario ou senha inválidos", "error");
        }
    });
    return false;
});

function makeIndexedArray(array) {        
    let unindexed_array = this.data;
    let indexed_array = {};

    $.map(unindexed_array, function(n, i) {
        indexed_array[n['name']] = n['value'];
    });
}