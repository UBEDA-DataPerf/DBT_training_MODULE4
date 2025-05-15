select
    account_manager,
    state
from {{ source('googleexcel','account_manager_region_mapping') }}
