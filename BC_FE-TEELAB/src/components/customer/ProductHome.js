import React, { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { fetchProductHome } from "../../redux/silce/customer/productSilce";
import { UrlImage } from "../../url";
import { Link, useNavigate } from "react-router-dom";
import { FaStar } from "react-icons/fa";

const URL_IMAGE = UrlImage();
const ProductHome = () => {
  const navigate = useNavigate();
  const listProduct = useSelector(
    (state) => state.customer.product.listProduct
  );
  const dispatch = useDispatch();
  useEffect(() => {
    dispatch(fetchProductHome());
  }, []);

  return (
    <div
      style={{ marginTop: "40px", marginBottom: "40px" }}
      className="container"
    >
      <h3 style={{ marginBottom: "20px", textAlign: "center" }}>
        Enjoy Your Youth!
      </h3>
      <p style={{ textAlign: "justify", width: "600px", margin: "auto" }}>
        Không chỉ là thời trang, TEELAB còn là “phòng thí nghiệm” của tuổi trẻ -
        nơi nghiên cứu và cho ra đời nguồn năng lượng mang tên “Youth”. Chúng
        mình luôn muốn tạo nên những trải nghiệm vui vẻ, năng động và trẻ trung.
      </p>
      <div style={{ marginTop: "50px" }} className="row">
        {listProduct && listProduct.length > 0 ? (
          listProduct.map((item, index) => {
            return (
              <div
                key={`product-${index}`}
                style={{ marginBottom: "50px" }}
                className="col-3"
              >
                <div>
                  <Link to={`/detail/${item.id}`}>
                    <img width={"100%"} src={URL_IMAGE + item.image} alt="" />
                  </Link>
                </div>
                <div>
                  <p
                    style={{
                      overflow: "hidden",
                      maxHeight: "2.8em",
                      lineHeight: "1.4em",
                      cursor: "pointer",
                    }}
                    onClick={() => navigate(`/detail/${item.id}`)}
                  >
                    {item.name}
                  </p>
                </div>
                <div>
                  <p style={{ fontWeight: "bold", textAlign: "center" }}>
                    {item.price.toLocaleString("vi-VN")} đ
                  </p>
                </div>
              </div>
            );
          })
        ) : (
          <div style={{ textAlign: "center", marginTop: "30px" }}>
            <h4>LOADING...</h4>
          </div>
        )}
      </div>
    </div>
  );
};

export default ProductHome;
