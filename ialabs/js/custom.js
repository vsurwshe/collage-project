$(document).ready(function() {

	$('.color-code-1').addClass('show');

	$('#product_name').on('change', function() {
		var val = $('#product_name').val();
		var target = '.color-code-' + val;
		$(target).addClass('show').siblings().removeClass('show').find('input[type="checkbox"]').prop('checked', false);
		$(target).siblings().find('input').val('');
	});

	$('#invoice_form').on('submit', function(e) {

		$.ajax({
			url : 'partials/handleFormInputs.php',
			type : 'POST',
			data : $('#invoice_form').serialize(),
			success : function($data) {
				$('.transparent').removeClass('show');

				$("#product-list").html($data);

			}
		});

		$('.transparent').addClass('show');
		e.preventDefault();
	});

	$('#empty_cart').on('click', function(e) {
		$.ajax({
			url : 'partials/handleFormInputs.php',
			type : 'POST',
			data : {
				'ajax_empty' : 1
			},
			success : function($data) {
				$('.transparent').removeClass('show');
				$("#product-list").html($data);

			}
		});

		e.preventDefault();
	});

	$(document).on('click', '#generateInvoice', function(e) {
		var invoiceBill = $('<div>', {
			'class' : 'invoice-bill'
		});

		$('.transparent').html(invoiceBill).addClass('show');
		$.get('partials/bill.php', function($data) {

			$(invoiceBill).html($data);
			$(invoiceBill).append(close);

			var close = $('<span>', {
				'class' : 'close',
				'text' : 'X'
			}).appendTo(invoiceBill).on('click', function() {

				$(this).parents('.transparent').html('').removeClass('show');
			});

		});

		e.preventDefault();

	})
}); 