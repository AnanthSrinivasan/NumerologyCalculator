function display_output(json_reponse) {
	var out = document.getElementById('response');
	document.getElementById('inputcrs').value = "";
	document.getElementById('inputName').value = "";
	document.getElementById('inputPassword').value =  "";
	outstring = '';
	
	if (json_reponse["validtime"] == 'false' || json_reponse["duplicate"] == 'true') {
		outstring = '<input type="text" style="font-weight: bold" class="form-control text-center" value=" ' + json_reponse["message"] + ' ">'; 
	}
	else
	{
		if (json_reponse["result"] == ':success') {
			outstring = '<input type="text" style="font-weight: bold" class="form-control text-center" value=" ' + json_reponse["message"] + ' ">';
		} else {
			outstring = '<input type="text" style="font-weight: bold" class="form-control text-center" value=" ' + json_reponse["message"] + ' ">'; 
		}
	}
	
	out.innerHTML = outstring;
	out.style.display = "block";
}

$(document).ready(function() {
	$form = $('#formsignin');
	$form.submit(function() {
		$.post($(this).attr('action'), $(this).serialize(), function(response) {
			display_output(response);
		}, 'json');
		return true;
	});
});
