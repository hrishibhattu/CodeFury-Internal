





$(document).ready(function() {

	$('[data-tooltip="tooltip"]').tooltip();

	$('#order_management_table').DataTable();

	var order_management_data = [
		{
			'orderId': 1234,
			'customerName': 'Ram Kumar',
			'orderDate': '2019-02-01',
			'orderValue': '&#8377; 50000',
			'customerCity': 'Gorakhpur',
			'status': 'Approved'
		},
		{
			'orderId': 1244,
			'customerName': 'Dheeraj Singh',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 1434,
			'customerName': 'Rahul Verma',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 12344,
			'customerName': 'Pooja Kumari',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},{
			'orderId': 1234,
			'customerName': 'Ram Kumar',
			'orderDate': '2019-02-01',
			'orderValue': '&#8377; 50000',
			'customerCity': 'Gorakhpur',
			'status': 'Approved'
		},
		{
			'orderId': 1244,
			'customerName': 'Dheeraj Singh',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 1434,
			'customerName': 'Rahul Verma',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 12344,
			'customerName': 'Pooja Kumari',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},{
			'orderId': 1234,
			'customerName': 'Ram Kumar',
			'orderDate': '2019-02-01',
			'orderValue': '&#8377; 50000',
			'customerCity': 'Gorakhpur',
			'status': 'Approved'
		},
		{
			'orderId': 1244,
			'customerName': 'Dheeraj Singh',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 1434,
			'customerName': 'Rahul Verma',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 12344,
			'customerName': 'Pooja Kumari',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},{
			'orderId': 1234,
			'customerName': 'Ram Kumar',
			'orderDate': '2019-02-01',
			'orderValue': '&#8377; 50000',
			'customerCity': 'Gorakhpur',
			'status': 'Approved'
		},
		{
			'orderId': 1244,
			'customerName': 'Dheeraj Singh',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 1434,
			'customerName': 'Rahul Verma',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		},
		{
			'orderId': 12344,
			'customerName': 'Pooja Kumari',
			'orderDate': '2019-04-01',
			'orderValue': '&#8377; 50020',
			'customerCity': 'Kanpur',
			'status': 'Pending'
		}
	];

    var order_management = $('#order_management_table').DataTable();
    
    

    $.each(order_management_data, function(index, row) {

	    order_management.row.add( [
	        row.orderId,
	        row.customerName,
	        row.orderDate,
	        row.orderValue,
	        row.customerCity,
	        row.status,
	        function ( data, type, full, meta ) {
	          return '<button id = "' + row.orderId + 'approve" type = "button" data-tooltip="tooltip" data-placement="bottom" title = "Show Invoice"><i class="fa fa-file"></button>';
		    }
	        
	    ] ).draw( false );

	});


    var product_list_data = [
		{
			'productId': 1234,
			'productName': 'iphone13',
			'price': '&#8377; 80000',
			'category': 'Level 1'
			
		},
		{
			'productId': 1434,
			'productName': 'iphone12',
			'price': '&#8377; 60000',
			'category': 'Level 2'
		}

		,
		{
			'productId': 1264,
			'productName': 'iphone11',
			'price': '&#8377; 45000',
			'category': 'Level 3'
		}
	];

    var product_list = $('#new_quote_product_table').DataTable();
    
    

    $.each(product_list_data, function(index, row) {

	    product_list.row.add( [
	        row.productId,
	        row.productName,
	        row.price,
	        row.category,
	        function ( data, type, full, meta ) {
		      return '<input type="checkbox" id= " ' + row.productId + ' check" name="vehicle1" value="Bike">';
		    }
	        
	    ] ).draw( false );

	});


	

	
	$('#import_products_submit').click(function(){

		var message = "<div>Status: Partial</div><div>Number of products imported: 10</div><div>Number of products imported: 10</div>"
		$('#import_products_info').append(message);
		
	});

	

	$('#employee_login_import_product').click(function(){
		
		$('#import_products_info').html("");
		
	});

} );



