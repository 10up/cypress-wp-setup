describe("Admin can login and open dashboard", () => {
  it("Open dashboard", () => {
    cy.visitAdminPage("index.php");
  });
});
