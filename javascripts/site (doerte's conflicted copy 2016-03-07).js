
function logPosition(givenElement) {
	$(givenElement).on('dragstop', function() {
		console.log($(this).html() + ' is top: ' + ($(this).offset().top - $('#windshieldOverview').offset().top) + ' left: ' + ($(this).offset().left - $('#windshieldOverview').offset().left) );
	});
}

function makeDraggable(givenElement) {
	$(givenElement).draggable();
	logPosition(givenElement);
}

$(document).ready(function() {
	$('.draggable').draggable({containment: 'parent'});
	$('button#createDraggable').click(function() {
		var newElement = $('<span class="draggable">' + $('input#createDraggableInput').val() + '</span>').insertAfter('span.draggable:first-child');
		newElement.draggable();
		makeDraggable(newElement);
	});
	$('.draggable').each(function(i, e) {
		$(e).on('dragstop', function() {
			console.log($(e).html() + ' is top: ' + ($(e).offset().top - $('#windshieldOverview').offset().top) + ' left: ' + ($(e).offset().left - $('#windshieldOverview').offset().left) );
		});
	});
});

// ba_chrissi - 3O7ma7^g