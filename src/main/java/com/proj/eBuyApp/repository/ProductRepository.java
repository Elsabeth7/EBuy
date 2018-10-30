package com.proj.eBuyApp.repository;

import com.proj.eBuyApp.domain.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<Product,Long> {
   /* @Query("update Product set productNumber=:productNumber, name=:name, description=:description," +
            " price=:price, phoneNumber=:phoneNumber, image=:image, imagePath=:imagePath, user=:user where  id=:id")
    Product updateProduct(@Param("id") long id);*/

}
