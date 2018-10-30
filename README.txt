
Substituted a SPRING Data Repository [interface] for the webstore08 in-memory repository implementation
See: ProductRepository.java [Spring Data] vs. ProductRepositoryLite.java [webstore08]

USES BOM in pom.xml; has external properties == application.properties

USES p:[property] "shortcut" in DispatcherServlet-context.xml

LOADS products by running populateMySQL.sql script in src/main/sql
NOTE: gets cleared on EVERY reload of Application based on 
"create" property setting in applicationContext.xml
______________________________________________________________
______________________________________________________________
______________________________________________________________

ORM EXAMPLES

Unidirectional One to Many Customer - Product  With Join Column
CASCADES from Customer to Products
access with products/cascade  UNDER ProductController
URL to invoke : /products/cascade

In the handler code, a Customer is created..
A NEW product is created named "Fire Hose"
It is added to Customer
An existing product iPhone 5s is fetched and added to Customer

Customer is saved with cascade save to products:
       Product "Fire Hose" is Created
       iPhone 5s is UPDATED
 
 The List of products displayed on the screen includes ONLY the Product associated
 with the Customer [ see handler code: ProductController/processCascadeTest]
 ______________________________________________
 
Can see the effects of JPQL with fetch by descending order
Access with /products/fetch

 See results in CONSOLE

  ______________________________________________
 
 ALSO has example of Criteria API...
 see ProductSpecification.java & ProductServiceImpl  
 Access with /products/criteria
 