describe("Application JS tests", function() {
    var hidden = $('<div id="hidden-panel"></div>');
    beforeEach(function() {
        $('body').append(hidden);
        hidden.hide();
    });

    it("should display the show panel", function() {
       showPane();
       expect(hidden).toBeVisible();
    });
});