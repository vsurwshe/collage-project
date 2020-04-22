function addRow() {
          
    var cName = document.getElementById("customer_name");
    var pname = document.getElementById("product_name");
	var dat = document.getElementById("date");
	var qut = document.getElementById("quantity");
	var tax = document.getElementById("Tax");
    var table = document.getElementById("myTableData");
    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
 
    row.insertCell(0).innerHTML= '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
    row.insertCell(1).innerHTML= cName.value;
    row.insertCell(2).innerHTML= pname.value;
	row.insertCell(3).innerHTML= dat.value;
    row.insertCell(4).innerHTML= qut.value;
	row.insertCell(5).innerHTML= tax.value;
    
 
 
}
 
function deleteRow(obj) {
      
    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");
    table.deleteRow(index);
    
}
 /* 
function addTable() {
      
      
    var myTableDiv = document.getElementById("myDynamicTable");
    var table = document.createElement('TABLE');
    table.border='1';
    
    var tableBody = document.createElement('TBODY');
    table.appendChild(tableBody);
      
    for (var i=0; i<3; i++){
       var tr = document.createElement('TR');
       tableBody.appendChild(tr);
       
       for (var j=0; j<4; j++){
           var td = document.createElement('TD');
           td.width='75';
           td.appendChild(document.createTextNode("Cell " + i + "," + j));
           tr.appendChild(td);
       }
    }
    myTableDiv.appendChild(table);
    
} */
 
function load() {
    
    console.log("Page load finished");
 
}