select
    customer_id,
    first_name,
    last_name,
    email,
    phone,
    address,
    city,
    state,
    zip_code,
    country,
    created_date,
    updated_date
from {{ source("raw", "CUSTOMER") }}
where country is not null
