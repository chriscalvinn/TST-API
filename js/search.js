

const search = async() => {
	const data = await JSON.stringify({
		judul:document.getElementById("judul").value,
	})
	var url = 'http://1127.0.0.1/book?Judul=' +judul
	const response = await fetch(url,{
		method:'GET',
		headers:{
			'Content-Type':'application/json'
		},
	})
	const json = await response.json();
	console.log(json);
	var content="";
	json.forEach(function(element){
		content +=
			"<tr>" +
			"<td><font color = "+'"white"'+">"+element.Judul+"</font></th>\n" +
			"<td><font color = "+'"white"'+">"+element.Penulis+"</font></th>\n" +
			"<td><font color = "+'"white"'+">"+element.Penerbit+"</font></th>\n" +
			"<td><font color = "+'"white"'+">"+element.Tahun_Terbit+"</font></th>\n" +
			"<td><font color = "+'"white"'+">"+element.Harga+"</font></th>\n" +
			"<td><font color = "+'"white"'+">"+element.Berat+"</font></th>\n" +
			"<td><button id=\"order\" Detail</button>" +
			"</tr>";
	});
	
	document.getElementById('tabbodybuku').innerHTML = content;
}
