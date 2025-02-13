package ndt.laptop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ndt.laptop.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
