

function getQuery(nama, alamat){
	var uri = "Search.html?"
	uri += "nama="+nama+"&alamat="+alamat;
	
	document.getElementById("redirect").href=uri;
}
