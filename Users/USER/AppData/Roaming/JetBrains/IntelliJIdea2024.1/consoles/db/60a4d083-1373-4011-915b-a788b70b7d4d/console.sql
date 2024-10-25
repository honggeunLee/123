select * from tbl_product;

# 아래코드 여러번 실행해서 데이터 여러건 넣기
insert into tbl_product (pname, price, status)
values ('Product', 4500, 0);

update tbl_product set pname = concat(pname, pno)
where pno > 0;

select * from tbl_review;

insert into tbl_review (reviewer, score, product_pno)
values ('r1', 4, 15);

insert into tbl_review (reviewer, score, product_pno)
values ('r2', 3, 13);

insert into tbl_review (reviewer, score, product_pno)
values ('r3', 5, 8);

select
    p1_0.pno,
    p1_0.pname,
    p1_0.price,
    count(r1_0.rno),
    coalesce(avg(r1_0.score), 0.0)
from
    tbl_product p1_0
        left join
    tbl_review r1_0
    on r1_0.product_pno = p1_0.pno
group by
    p1_0.pno
order by