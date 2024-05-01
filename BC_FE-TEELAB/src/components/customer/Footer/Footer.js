import React from "react";
import { MDBFooter, MDBContainer, MDBRow, MDBCol } from "mdb-react-ui-kit";
import logo from "../../../assets/customer/images/logo-teelab.png";

const Footer = () => {
  return (
    <>
      <MDBFooter
        style={{ backgroundColor: "#f8f9fa" }}
        className="text-center text-lg-start text-muted"
      >
        <section className="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
          <div>
            <span style={{ textAlign: "center" }}></span>
          </div>
        </section>
        <section className="">
          <MDBContainer className="text-center text-md-start mt-5">
            <MDBRow className="mt-3">
              <MDBCol md="3" lg="4" xl="3" className="mx-auto mb-4">
                <img src={logo} alt="" style={{ width: "200px" }} />
              </MDBCol>

              <MDBCol md="2" lg="2" xl="2" className="mx-auto mb-4">
                <h6
                  style={{ color: "#352e28" }}
                  className="text-uppercase fw-bold mb-4"
                >
                  ABOUT US
                </h6>
                <p style={{ color: "#352e28" }}>Trang chủ</p>
                <p style={{ color: "#352e28" }}>Tất cả sản phẩm</p>
                <p style={{ color: "#352e28" }}>Bảng size</p>
                <p style={{ color: "#352e28" }}>Kiểm tra đơn hàng</p>
                <p style={{ color: "#352e28" }}>Hệ thống cửa hàng</p>
              </MDBCol>

              <MDBCol md="3" lg="2" xl="2" className="mx-auto mb-4">
                <h6
                  style={{ color: "#352e28" }}
                  className="text-uppercase fw-bold mb-4"
                >
                  Chính Sách
                </h6>
                <p style={{ color: "#352e28" }}>Chính sách mua hàng</p>
                <p style={{ color: "#352e28" }}>Chính sách bảo mật</p>
                <p style={{ color: "#352e28" }}>Phương thức thanh toán</p>
                <p style={{ color: "#352e28" }}>Chính sách đổi trả</p>
              </MDBCol>

              <MDBCol md="4" lg="3" xl="3" className="mx-auto mb-md-0 mb-4">
                <h6
                  style={{ color: "#352e28" }}
                  className="text-uppercase fw-bold mb-4"
                >
                  LIÊN HỆ
                </h6>
                <p style={{ color: "#352e28" }}>
                  Địa chỉ: Số 235, Đường Quang Trung, Tổ 7, Phường Tân Thịnh,
                  Thành phố Thái Nguyên, Tỉnh Thái Nguyên, Việt Nam
                </p>
                <p style={{ color: "#352e28" }}>Email: teelabvn@gmail.com</p>
                <p style={{ color: "#352e28" }}>Điện thoại: 0865539083</p>
              </MDBCol>
            </MDBRow>
          </MDBContainer>
        </section>
      </MDBFooter>
    </>
  );
};
export default Footer;
