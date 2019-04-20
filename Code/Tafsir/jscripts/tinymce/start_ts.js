	function startT()
	{
	    if (!tinyMCE.dom.Event.domLoaded) {
            tinyMCE.dom.Event.domLoaded = true;
            tinyMCE.baseURL ="./jscripts/tinymce/";
        }
	tinymce.init({
  selector: 'textarea',
  elements : "elm1",
  height: 500,
  theme: 'modern',
  plugins: [
         "save advlist autolink link image lists charmap print preview hr anchor pagebreak",
         "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking",
         "table contextmenu directionality emoticons paste textcolor responsivefilemanager code"
   ],
   toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
   toolbar2: "| save | responsivefilemanager | link unlink anchor | image media | forecolor backcolor | fontsizeselect fontselect | print preview code ",
   theme_advanced_fonts :"Arabic Style=b_arabic_styleregular, sans-serif;"+
                    "Andalus=andalusregular, sans-serif;"+
                    "KACST_1=kacstoneregular, sans-serif;"+
                    "Mothanna=mothannaregular, sans-serif;"+
                    "Nastaliq=irannastaliqregular, sans-serif;"+
                    "Samman=sammanregular;",
   fontsize_formats: '8pt 10pt 12pt 14pt 18pt 24pt 36pt',
   image_advtab: true ,

   //file_browser_callback : "filemanager",
   external_filemanager_path:"/filemanager/",
   filemanager_title:"UT Filemanager" ,
   external_plugins: { "filemanager" : "/filemanager/plugin.min.js"}
      /*external_filemanager_path:"./jscripts/tinymce/plugins/responsivefilemanager/",
   filemanager_title:"Responsive Filemanager" ,
   external_plugins: { "responsivefilemanager" : "./jscripts/tinymce/plugins/responsivefilemanager/plugin.min.js"}
   */
  // external_plugins: { "responsivefilemanager" : "./jscripts/tinymce/plugins/responsivefilemanager/plugin.min.js"}
 });
}
		