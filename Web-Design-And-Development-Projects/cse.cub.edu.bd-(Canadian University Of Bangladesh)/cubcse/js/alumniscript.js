$(document).ready(function () {
	var meetTheTeamCarousel = new MultiColumnCarousel();
	meetTheTeamCarousel.init();
});

var MultiColumnCarousel = function () {
	var that = this;
	this.multiColumnCarousel = $('.multi-column-carousel');
	this.viewport = this.multiColumnCarousel.find('.viewport');
	this.multiColumnButton = this.multiColumnCarousel.find('.multi-column-button');
	this.previousButton = this.multiColumnCarousel.find('.previous');
	this.nextButton = this.multiColumnCarousel.find('.next');
	this.paginationContainer = this.multiColumnCarousel.find('.pagination-container');
	this.pageContainer = this.multiColumnCarousel.find('.page-container');
	this.page = this.multiColumnCarousel.find('.page');

	this.viewportWidth = that.viewport.outerWidth();
	this.pageLength = this.page.length;
	this.currentPage = 0;
	this.animationDuration = 300;

	this.breakpoints = {
		large: {
			size: 1024,
			columns: 5
		},
		medium: {
			size: 960,
			columns: 3
		},
		small: {
			size: 667,
			columns: 1
		}	
	};

	this.init = function () {
		this.setDimensions();
		this.hideAndDisplayButtons();
		this.generatePagination();

		this.multiColumnButton.on('click', this.handleMultiColumnButtonClick);

		$(window).resize(function () {
			that.viewportWidth = that.viewport.outerWidth();

			that.setDimensions();
			that.setToCurrentPage();
			that.generatePagination();
		});
	}

	this.setDimensions = function () {
		var columnsPerPage = this.getColumnsPerPage(),
			pageCount = this.pageLength / columnsPerPage,
			pageCountRounded = Math.ceil(pageCount),
			targetContainerWidth = that.viewportWidth * pageCountRounded,
			targetColumnWidth = this.viewportWidth / columnsPerPage;

		this.pageContainer.width(targetContainerWidth);
		this.page.width(targetColumnWidth);

		var currentTallestHeight = 0;
		this.page.height('auto');

		for (var i = 0; i < this.pageLength; i++) {
			var currentPageHeight = this.page.eq(i).outerHeight();
			if (currentPageHeight > currentTallestHeight) currentTallestHeight = currentPageHeight;
		}

		this.page.height(currentTallestHeight);
	}

	this.getColumnsPerPage = function () {
		var largeBreakpoint = this.breakpoints.large,
			mediumBreakpoint = this.breakpoints.medium,
			smallBreakpoint = this.breakpoints.small;

		if (this.viewportWidth > mediumBreakpoint.size) return largeBreakpoint.columns;
		if (this.viewportWidth <= mediumBreakpoint.size && this.viewportWidth > smallBreakpoint.size) return mediumBreakpoint.columns;
		if (this.viewportWidth <= smallBreakpoint.size) return smallBreakpoint.columns;
	}

	this.hideAndDisplayButtons = function () {
		var columnsPerPage = this.getColumnsPerPage();

		if(this.currentPage == 0) this.previousButton.addClass('hidden');
		if(this.currentPage + columnsPerPage >= this.pageLength) this.nextButton.addClass('hidden');

		if(this.currentPage > 0) this.previousButton.removeClass('hidden');
		if(this.currentPage + columnsPerPage < this.pageLength) this.nextButton.removeClass('hidden');
	}

	this.generatePagination = function () {
		var columnsPerPage = this.getColumnsPerPage(),
			pageCount = this.pageLength / columnsPerPage,
			pageCountRounded = Math.ceil(pageCount);

		this.paginationContainer.empty();

		if (pageCountRounded <= 1) return;

		for (var i = 0; i < pageCountRounded; i++) {
			var $indicator = $('<div>').addClass('indicator');
			$indicator.on('click', this.handleIndicatorClick);
			this.paginationContainer.append($indicator);
		}

		this.updatePagination();
	}

	this.handleIndicatorClick = function (e) {

		var $this = $(e.currentTarget),
			currentIndex = $this.index(),
			columnsPerPage = that.getColumnsPerPage(),
			$indicator = that.paginationContainer.find('.indicator');

		that.currentPage = currentIndex * columnsPerPage;

		$indicator.removeClass('active');
		$this.addClass('active');
		that.page.removeClass('active');
		that.page.eq(that.currentPage).addClass('active');

		that.pageContainer.animate({
			'left': -( that.multiColumnCarousel.find('.page.active').position().left )
		}, that.animationDuration);

		that.hideAndDisplayButtons();
	}

	this.updatePagination = function () {
		var columnsPerPage = this.getColumnsPerPage(),
			pageCount = this.pageLength / columnsPerPage,
			pageCountRounded = Math.ceil(pageCount);

		var $indicator = this.paginationContainer.find('.indicator'),
			currentSlide = (this.currentPage / (columnsPerPage / pageCountRounded)) / pageCountRounded;

		$indicator.removeClass('active');
		$indicator.eq(currentSlide).addClass('active');
	}

	this.handleMultiColumnButtonClick = function (e) {
		var $this = $(e.currentTarget),
			columnsPerPage = that.getColumnsPerPage();

		that.currentPage = that.multiColumnCarousel.find('.page.active').index();
		that.page.removeClass('active');

		if ($this.hasClass('next')) that.currentPage = that.currentPage + columnsPerPage;
		else that.currentPage = that.currentPage - columnsPerPage;

		that.page.eq(that.currentPage).addClass('active');
		that.pageContainer.animate({
			'left': -( that.multiColumnCarousel.find('.page.active').position().left )
		}, that.animationDuration);

		that.hideAndDisplayButtons();
		that.updatePagination();
	}

	this.setToCurrentPage = function () {
		var columnsPerPage = this.getColumnsPerPage();

		if (this.currentPage % columnsPerPage != 0) {
			this.currentPage--;

			that.page.removeClass('active');
			that.page.eq(that.currentPage).addClass('active');

			return this.setToCurrentPage();
		}

		that.pageContainer.css('left', -( that.multiColumnCarousel.find('.page.active').position().left ));
		that.hideAndDisplayButtons();
	}
}