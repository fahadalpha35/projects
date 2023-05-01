(function($) {
    'use strict';
    
    var $document = $(document);
    var $body  = $('body');
    var $roots = $('html').add($body);
    var cache  = {};

    $.modal = function(settings) {

        function Modal() {
            var modal = this;
            var modalCreated = false;
            modal.isActive = false;

            var config = $.extend({
                
            }, settings);

            var init = function() {
                if (config.showOnInit) modal.open();
            };

            var createModal = function() {
                var closingX = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 96 96" width="12" height="12"><polygon fill="currentColor" points="96,14 82,0 48,34 14,0 0,14 34,48 0,82 14,96 48,62 82,96 96,82 62,48 "/></svg>';
                
                var modalClass = 'modal ' + config.class;
                if (config.youtubeId) {
                    modalClass = modalClass + ' modal-youtube';
                }

                modal.$wrapper = $('<div>', {
                    class: 'modal-wrapper'
                });

                modal.$layer = $('<div>', {
                    class: 'modal-layer'
                });

                modal.$modal = $('<div>', {
                    class: modalClass
                });

                if (config.closeBtn) {
                    modal.$closeBtn = $('<button>', {
                        class: 'modal-close-btn' 
                    }).html(closingX);

                    modal.$modal.append(modal.$closeBtn);
                }

                modal.$content = $('<div>', {
                    class: 'modal-content'
                }).html(config.content);

                modal.$modal.append(modal.$content);
                modal.$wrapper.append(modal.$layer);
                modal.$wrapper.append(modal.$modal);

                modal.$wrapper.hide();

                if (config.contentUrl) loadExternal();
                if (config.youtubeId) loadYoutubeVideo();
                modalCreated = true;
            };

            modal.updateContent = function(content) {
                modal.$content.html(content);
            };

            modal.open = function() {
                if (!modalCreated) createModal();

                if (typeof config.beforeModalOpen === 'function') config.beforeModalOpen(modal);
                appendToBody();
                enableRootsActive();
                modal.$wrapper.fadeIn(config.fadeInDuration ,function() {
                    modal.isActive = true;
                    if (typeof config.afterModalOpen === 'function') config.afterModalOpen(modal);
                });
            };

            modal.close = function() {
                if (typeof config.beforeModalClose === 'function') config.beforeModalClose(modal);
                modal.$wrapper.fadeOut(config.fadeOutDuration, function() {
                    removeFromBody();
                    disableRootsActive();
                    modal.isActive = false;
                    if (typeof config.afterModalClose === 'function') config.afterModalClose(modal);
                });
            };

            var bindClose = function() {
                if (config.closeBtn) modal.$closeBtn.click(modal.close);
                if (config.layerClose) modal.$layer.click(modal.close);
                if (config.closingSelectors) modal.$modal.on('click', config.closingSelectors.toString(), modal.close);
            };

            var offset = 0;

            var enableRootsActive = function() {
                offset = $document.scrollTop();
                $roots.css('top', (-offset) + 'px')
                      .addClass('modal-active');
            };

            var disableRootsActive = function() {
                $roots.css('top', '')
                      .removeClass('modal-active')
                      .scrollTop(offset);
            };

            var appendToBody = function() {
                $body.append(modal.$wrapper);
                bindClose();
            };

            var removeFromBody = function() {
                modal.$wrapper.remove();
            };

            var loadYoutubeVideo = function() {
                var $iframe = $('<iframe>', {
                    css: {
                        width: '100%',
                        height: '100%',
                        display: 'block'
                    },
                    src: 'https://www.youtube.com/embed/' + config.youtubeId,
                    frameborder: 0,
                    allowfullscreen: 'allowfullscreen'
                });

                modal.updateContent($iframe);
            };

            var loadExternal = function() {
                if (config.useCache && cache[config.contentUrl]) {
                    var cachedContent = cache[config.contentUrl];
                    modal.updateContent(cachedContent);
                } else {
                    $.get(config.contentUrl, function(response) {
                        var ajaxContent = response;
                        modal.updateContent(ajaxContent);
                        cache[config.contentUrl] = ajaxContent;
                    }).fail(function() {
                        console.log('Ajax failed - wrong URL?');
                    });
                }
            };

            init();

            return modal;
        }

        return new Modal();
    };

})(jQuery);

var demoModal = $.modal({
	 content: $('#demo-modal-content'),
    class: 'demo-modal',
	 closingSelectors: ['.modal-close']
});

$('#fadePopup').click(function() {
    demoModal.open();
})