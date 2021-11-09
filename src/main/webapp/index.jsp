<%@ page import="model.customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: HI
  Date: 11/9/2021
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        table tr td {
            border: 1px solid black;
            border-collapse: collapse;
            background-color: #fbf9f9;
            width: 300px;
            height: 100px;
            margin-left: auto;
        }

        img {
            width: 150px;
            height: 80px;
        }
    </style>
</head>
<body>
<%
    List<customer> customerList = new ArrayList<>();
    customerList.add(new customer("Trường", "1998", "Quảng Ninh", "data:image/jpeg;base64,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"));
    customerList.add(new customer("Thành", "2000", "Quảng Ninh", "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFhUVFxcVGBUXFxgVFRUXFxcWFxUVFRcYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGi0dHR0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLSstKy0tLS0tLTctLf/AABEIAKcBLwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwEEBQAGB//EADYQAAIBAgUCBAMHBAIDAAAAAAABAgMRBBIhMUFRYQVxkfCBodETIjKxweHxBhRCUiNyFRaS/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAHhEBAQEBAAIDAQEAAAAAAAAAAAERAgMSITFBE1H/2gAMAwEAAhEDEQA/APlZwKYVh61xMUE/asCiUIC07/p/JMX758wbhpDhVMQ0uPgTOV+LaW00+OpMYlEmK4fuwcLrodD379Q4xGVckMVPkJRGxgNKI0/fqOp01dXv1fxt8goQ99CxSpdu/n59hkrxpe+fyDVLtp0bLkaPUsRwmm3pfXoAxmyocr3+jJhh7futfetjZp+HPTSy6fyPj4U+g/gfLAdF2/XTfTdkqh+Xu/vk9AvDXfb3fbsDV8Ptte2nFvO+/uwtg9WC8N19WBKl1/M2/wC08vL5eYqeF4/UPaFlYjo24/YCpSt/HD5/U1a9BrgpTpPyDRilOAv7Pb3qaH2et/f7nf2t9QNmNe9xbiXa1GxXlFdACtl5sQ4/kNmgGBltIhhNAte/kIwHNfwSRYQCzrE5Sff7AcgbkKJNjkIybHJkBELSiUwQwCUSlocGolFgojYIBIdTQwKnEdCB1OBap0xpDSplj7JcdFt+WvQOlT7fUu4fDvd3C3BIVSw3Pv3qXcLhnJaL8vfA9aWVu/b1FU/E0nlir6aJLnuiL5J+K/mfHAK92tteEufr6mjh8MrXa13XBlU/F6krqUdndbRdlx57DcJiYzjrCLTvZta2W7fx8iL3daTxxsUa1O+W6v329U7X7G3g8MprOnCyW99vXQ8DicfFaZVxqttL79VbTXoX8F4zNxy5srs7Kzffvv17C6ne/C5zw9VWyJ/dy2tpLddvem4dHARm29XbTb7t77p2PF4LxirTq5pSm4t7PTR7O3w7nrKP9YQpxiowvw4/eeXXVq+90zOzyS59qziz4XMX/T7SzrVLR7e9zBxfhdldNNbZdn8TQ/8AZZVLpU8qs2rSUU3+K7Tla9l8WxeE8X+0g1VjaSsrqy+fD0C+0/CnE/15V4CpeSlt2u/g311M+ph2p7adfW3kesni6OV/Zq7TytbtNu1/1MvHYNX1T4uunTfa+hfPkR142NUpW62L2FxqhGcckHmVrtXcebx6MOpSjl0evkl8L8mdl3XT9DonUrnvNVcW0yhOJo1olGoitThF9f2uhVR3d/jpZfJbDZoTIlUhbBaCZEkAwBzJbBuGhDRzQRwjwuxAbIYGQFYiwSRktCQaRyQUUGhMUMSIjEdCI5Q6CLNOk7J++4FOBco0zRKaNIvYei+nvqHhqJpYOnFuz0+fwYrZDnNoMJQe9u1uv1NpYJwg5tbK7utrdWIq42nRd205X0V72ypb2vuVcf8A1FUnmgoxUGklHi3UxvVrXMV6M3OLdSTjGTX4Um7XemtuwccHTozk1LS2jeW6vdNqz+nJnRxk27LKuz2JqVHZ33e2Xn6IR7F7BYOnOLleV9db28tWn0/gZh406d2km9Nb677tX0MhYuUbO/mtxkZZ3eTt1a5KlpbGpgvCIVHmb3esVa3m22r/AMlip4LGM4qEtdfh050KuEquP4XZdLLbua1LxG3m93oHr3+U/fmKXiit/wAcY3kkkkne/d2Wm/Nihg5SnOUakXBad2untdC9iHDVpqOt29bv5/Ip3zSUr2cdc3Ls9L67mV4sXPJKv47CwSTi5p25av10V+679jOq/aRbyuUnLdxSu9r6bmjg6jkv+WU9NErtXT/2V9xeImlbS6W1r797K/X1Fxe+fv5Pu89fXwnC4mnLWFJ57at1Gm2rLjqtOC1g6yq5ouUFJytn11XGW+mvTS1zzGKxTbeWy6paW6bC6ePdrS/EtFK7ulwrGvWdT6Zy42PF6jhJpL8Cte+rvs0tuvqUp09mk3mW9m18PfBQpY+edSc7678abPQ9lgpRnR+1lKLVrWuk1JcS77GctlVZLHkKm9rFWtA3fGIwV8rWj669zDrz0N+emPXKlNCpD5vQTJ2L1nYTJAtBtgSGC2QGQBYhMkloiwG5ohoImSAENExiMcSchhrbAJBxQSiMjANLERiPpwIUB1Ja2sPRh1KBfw0EIo0m9jZ8PwcZv463H7Yc50qcakfwRu9k+75XVBYjGqMckbOTSzStezvv7/jUxMnHSK18+PLb+DMrLXNlXV6JK76cEXb81c+PpWwmFu8079udfiX3Onayjr14Xk+ShOtmbtp0IlPQqTUW4s5o/wCvyEVkr5ktfPYFSXYm5p6xntIypva767321LUIoClT5LCiPmFdRGVmtBniFXK/uXfV2sk2Eor3/IqcC8T7X6VVVfn3f0Gf3YpwsLqomqh1TGt8lati3a1xM2ImZ1TpPv8AMVUavqMUbhRgicBLrNfh42fNizRx7yZG3HfZXT51+Iaop6Xsc8GuFcV5VLTcPWjKK+1qq+2Wzuteeo2eHja/+Otnr6NGdjcJlatfVB0cdJJRdrbbW8m+pOZ8xW79oxEOzKlSFzbjaUVeSv8APTr2sVJUN+LfPjQ15us+pjKcLC2i5UpiJRLRivY4a4g5QMNjrE2JSFTCSkFlJsLRicpzgauC8NnUvki3bpq/RCsVhHB2krPuc+ur1UYwDUQ4xGwpj0vUuKZZp0wqVIvUaC5FpznVjw7DN/it+nG5s0fEadBXSU5N3b4SvruthHhEXKSUeLa229uxbx9OMZNyinK983k3r76i22ar1wnEYmOXPaz/ABWStvrquN9u3rkYvEOW/wCmnkPxWJcm7fHjuUi4zsLykhTS0td6a3JUTSVnYFIdGBMKZZpUipU3kNOmPjSLFKiPhRK1Fim4FarE1KtMqVYBpYzJor1GXqsCtOAvZcijMVJFucBUoE7DwixKDcSGhaMcmOpzsIDQHi5/drRNc/AirRjJ7Jfn8CtKNyzSb0utfe5n1FxWwl6M1J6p3+n6mlXw6azRVr8be/2M+pSblfg0sDiU1Z9N377ilxXqy8RSKc4G3iaRnVaRtKzsZ0oAOJalEXKIaWEqJFh8NAWhaWF5QrBWJSAY3cHinTs4uUWuYuzfT32K2NqynJyk7t8sbkAlA5dd9iooDIRGKAz7Np2fA9Rg4K729NjWwGBc2tN9PiyphqZr0cbkypL97i1cjTpeHRoPNe8ktmlG10tUt3v8zHxta7fP5LTjoPxeJbV3pf4votfJIyq0h3qfUHrSakhZLQUUHsi8hjAdCmTCJapQLnTO8Bp0i7QohUKJoYegVOkWYXRoD1Q0L1LDhVaVkV7MrGNXplGtA1cREz6iFe1Tln1YFWpA0qkStOBPsr1Z06YuUC7UgInAPY/VUcQcpYcAMgaqck5QlEZlH0MO5bbdeB6eK8YjoQNKGGgla131dxkaMOiJvZzmVSpYdP6Dqvh894ri+nH1LP2SWxoUnmh2Xv8AcmWX6X9PNro36i6lI1sZh9b2TT5RWdG5pLYm8xi1KQmVM16uHK06I9R6s50yMhcdID7MNTeVbIdkLGQL7LS4tHq2qmGK86Ze8QxcIysnquN/VGTWxiMOeO66evLxP0conRepm4zFSUW1q+Elv+ZneHeMSkvvZW1vletuHboV/Ltn/fx7j19Ga5D+3tovfSxi0cYpK6kvUl45Lkx9em/vzjWqVrinUM7/AMgiVjkx+l/wvfn/AFfVhkYlGOKQ2OKQZT9uWjTiXaEDJpYtF2jjUK6J6tqhA08NTMOhjY9TSw+Pj1J/rYL4tbVOBXxTEf8AkY23KlfHp8j/ALaj+GFYlmdVmlq2l5h4rF3vl368L6nhsRjZ1Xdya1+P7LstPzNed6Zd2cPT1/EoLa8vkvr8ikvFNXmjZdVuvPqMwGDUpKPVpGl/UfgCoQpzU7/aZ+NsrS683FepOpz+0t6zVByUldO6EyiVcNTcZw1spX+Se+nVF6rHL+LTby12t1v23KipdVnAhUm9i3SoNvVWj1ejfkrfQfNqOi9+Zclqb1Iq0cJzL0LT0XCEyrCJ1S/Wsr2tOp0IUyrGv2OlXQXiidxez9GdSxDi7p2fyfmUI4hDlUTM747Gs8krYj4hGoss7RfD/wAX8f8AHyfqxiw+6sYDXp52a8i3gcfKn938UOjeq/6vgo50fiMJ2KFXDM9Jh8RRqq8ZpNbxlZSXw580BUw8P9o//SJveKk15adBiZUD0tXDR6x9UV54S+iJ/od41gOkQqbNirhbcCpYcL5IJ42CA6a3sr9Rh1j0cjzPlm18G7uSk7vS0tYpbO30Ew8Ps07Ri094vL8tU/kazgcoC9YXyzaUIuVnFRd3ton59CvUTjPLLRN2Ut1bhu237M21RXRe+4Dwid1J3T4ttx7tYm8rlZVOzlGKkry06We2rCott2jd+SbNKl4dTX+N+ma8kl0SeyL0I2JnF/VbFLD4Sf8AloW3hI8NjkEhzxwXqkQwq6s54NOcZ3d47fPf1LKQSK9In2oartFtbpN6tpaLkPAYnPCMlyurdnyjpRumuqZR/pqDVHtKTcdbu2i106p+pN4536XPJ1n22ftH39X9To1NefV/U6I2MRXx8/4P6dX9TGotfu+V2ZcvCopPLe/Gprxiug2CXREXifg9rftWweGk1dvLtpz+xpYn70cstV31FqYM6hH8vnVzvGdLAxUovVqLf3et01a/TUnNbZK26W6j/wBb3t8B9SRWkac+OIvddLES6iZ1GTIBms5iL3QSkxUmMkLkPE6U2C2HICQ8GhudnIbAbHIWicgMxDBFg1MmAzmC2PBriUCEhYNMjNrlhxqS6v1FJhpk+sV7VxKIJKDiUQShGJBIBBXGRiJTFpkpgNNTDTFJhpgRiJuAmEgCZJtNdU16keHYd04KLle2i0toMixkWIz4sYmV1INSFhrCkEpldSJUwwas5wJSFZiHIWFqZMTJkyYtsokNi2S2C2UQWBIJsBgAMXINsXICAwWwpAMCQyCSGBhZBJwEGxKOJGHEog5EqNOJZAluOJSJsBBQVyDigJMJMANIRCTDTFk3GDUwkxSYSYgapDFIRcJSAz1IJSEKQWYKDswSkV8xKkGFqwpHZhKkdmEBykLbBcgJMZCcgHIG4NxkJsFsG5FwDmwJMlgNgASBYTAbAnEMhs4DRci5LBTEE3OuCTYBibkpkHCNZZCOOBaUTY44ROaBRJxUKpQSZxwjSjmyDhwqm4UZHHDIWYlSOOEdSpEpnHAEqROc44CdnOzHHDJGYGUiTg/QW5AtnHATrguRxwGFyFuRxwiC5EXOOAwoi5xwgm5BxwBBKOOCmkhnHEh//9k="));
    customerList.add(new customer("Quang", "1998", "Quảng Ninh", "data:image/jpeg;base64,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"));
    request.setAttribute("ds", customerList);
%>
<div class="header" style="margin-left: 450px">
    <h2>Danh sách khách hàng</h2>
</div>
<div>
    <table>
        <tr>
            <th>name</th>
            <th>date</th>
            <th>address</th>
            <th>img</th>
        </tr>
        <c:forEach items="${ds}" var="customer">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.date}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.img}"></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
