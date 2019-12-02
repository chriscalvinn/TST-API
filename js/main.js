/*
function getOrigin(){
	var sel = document.getElementById("dropdown")
	
	var opt;
	for ( var i = 0, len = sel.options.length; i < len; i++ ) {
		opt = sel.options[i];
		if ( opt.selected === true ) {
			break;
		}
	}
	console.log(opt);
	
	window.onload = function() {
		localStorage.setItem("origin",opt);
	}
}
*/
function getData(){
	
	//var judul = document.getElementById("judulbuku").value
	
	//console.log(judul);
	console.log(window.localstorage.getItem("origin"));
	
	//window.onload = function() {
		//window.localStorage.setItem("judul",judul);
	//}
}
