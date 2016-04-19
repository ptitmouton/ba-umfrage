var zoneArray = false;


function logPosition(givenElement) {
	$(givenElement).on('drag', function() {
		console.log($(this).html() + ' is top: ' + ($(this).offset().top - $('#windshieldOverview').offset().top) + ' left: ' + ($(this).offset().left - $('#windshieldOverview').offset().left) );
	});
}

function makeDraggable(givenElement) {
	$(givenElement).draggable();
	logPosition(givenElement);
}

$(document).ready(function() {
	$('#draggables li').draggable(); // {containment: 'parent'}
	$('button#createDraggable').click(function() {
		var newElement = $('<li>' + $('input#createDraggableInput').val() + '</li>').appendTo('ul#draggables');
		newElement.draggable();
		makeDraggable(newElement);
	});
	$('#draggables li').each(function(i, e) {
		$(e).on('drag', function() {
			console.log($(e).html() + ' is top: ' + ($(e).offset().top - $('#windshieldOverview').offset().top) + ' left: ' + ($(e).offset().left - $('#windshieldOverview').offset().left) );
		});
	});
});