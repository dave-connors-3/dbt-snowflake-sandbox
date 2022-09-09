select 
    cast(1 as number(10,0)) as number_10_0, 
    2 as number_no_cast,
    cast(3 as float) as float,
    'hello' as plain_text,
    cast('goodbye' as varchar(101)) as varchar_100, 
    cast('maybe' as varchar(25)) as varchar_25
     
