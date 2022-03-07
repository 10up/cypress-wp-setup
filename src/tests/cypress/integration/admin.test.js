describe("Admin can login and open dashboard", () => {
  it("Open dashboard", () => {
    cy.login();
    cy.visit(`/wp-admin`);
    cy.get("h1").should("contain", "Dashboard");
  });
});
