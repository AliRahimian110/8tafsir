function CheckExtension(filename,allowedExt) 
{
	//var allowedExt=['jpg','gif'];
	var parts = filename.value.split('.');
	var ext= parts[parts.length - 1].toLowerCase();
	if(allowedExt.indexOf(ext)== -1){
		alert('نوع فایل ارسالی باید '+allowedExt+' باشد ');
		filename.value='';
		return 0;
	}
	else 
		return 1;
}
	
