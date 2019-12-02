

function search(){
	
	judul = document.getElementById("judul").value
	if(judul!=''){
		console.log(judul);
		var uri = 'http://127.0.0.1:5001/book?judul='+judul
	} else {
		var uri = 'http://127.0.0.1:5001/book'
	}
	console.log(uri);
	$(document).ready(function(){
		$.ajax({
			url: uri,
			type:'GET',
			dataType: 'json',
			success: function(response) {
				content="";
				$.each(response, function(key, value){
					value.forEach(function(element){
						content +=
							"<tr>" +
							"<td><font color = "+'"white"'+">"+element.Judul+"</font></th>\n" +
							"<td><font color = "+'"white"'+">"+element.Penulis+"</font></th>\n" +
							"<td><font color = "+'"white"'+">"+element.Penerbit+"</font></th>\n" +
							"<td><font color = "+'"white"'+">"+element.Tahun_Terbit+"</font></th>\n" +
							"<td><font color = "+'"white"'+">"+element.Harga+"</font></th>\n" +
							"<td><font color = "+'"white"'+">"+element.Berat+"</font></th>\n" +
							"<td><a href=Total.html id=\"order\"> Detail</a>" +
							"</tr>";
						});
				});
				console.log(content);
				document.getElementById('tabbodybuku').innerHTML = content;
			},
			error: function(response) {
				console.log(response);
			}
		});
	});
}
