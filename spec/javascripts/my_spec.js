//= require jquery

describe('true', function() {
	it('should be true', function() {
		true.should.eq(true);
	})
})

describe("createMap()", function() {
  it("creates a new map", function() {
    var map = null;
    createMap();
    map != null;
  });
});