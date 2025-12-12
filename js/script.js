
function loadMarkdown(filePath, targetElementId) {
    $.get(filePath, function(markdownText) {
        var htmlContent = marked.parse(markdownText);
        $('#' + targetElementId).html(htmlContent);
    }).fail(function() {
        $('#' + targetElementId).html('<p>コンテンツの読み込みに失敗しました。</p>');
    });
}