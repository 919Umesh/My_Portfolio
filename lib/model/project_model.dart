class Project {
  final String name;
  final String description;
  final String image;
  final String link;

  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'OMS ERP',
    'OMS ERP (Order Management System Enterprise Resource Planning) refers to a type of ERP (Enterprise Resource Planning) software specifically designed to manage and streamline order-related processes within an organization',
    'assets/images/OMSERP_photo.png',
    'https://play.google.com/store/apps/details?id=com.globaltech.erpsolution&hl=en_AU',
  ),
  Project(
    'OMS B2B',
    'OMS B2B (Order Management System for Business-to-Business) refers to an order management solution specifically tailored for B2B companies. Unlike B2C (Business-to-Consumer) systems, which focus on individual consumers, B2B OMS solutions are designed to handle the complexities and scale of transactions between businesses',
    'assets/images/b2b.png',
    'https://play.google.com/store/apps/details?id=com.globaltech.b2b&hl=en_AU',
  ),
  Project(
      'OMS Salesforce',
      'OMS (Order Management System) in Salesforce refers to the integration of order management capabilities within the Salesforce ecosystem. Salesforce offers a comprehensive suite of tools for managing customer relationships, sales, and order processes, which can be extended to include order management functionalities',
      'assets/images/salesforcephoto.png',
      'https://play.google.com/store/apps/details?id=com.solution.omssalesforce&hl=en_AU'),
  Project(
      'OMS Parking',
      'OMS Parking Mobile Application used to calculate all entry and exit of vehicle in the parking places.',
      'assets/images/parking.png',
      'https://play.google.com/store/apps/details?id=com.solution.omsparking&hl=en_AU'),
  Project(
      'OMS Mechanic',
      'OMS Mechanic generally refers to a specific type of Order Management System (OMS) tailored for the automotive repair and maintenance industry',
      'assets/images/mechanic.png',
      'https://play.google.com/store/apps/details?id=com.globaltech.mechanic&hl=en_AU'),
];
