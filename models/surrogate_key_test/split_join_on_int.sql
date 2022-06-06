select source1.*, source2.source_id as source2_id from {{ ref('int_split_source1') }} source1
join {{ ref('int_split_source2') }} source2
on source1.surrogate_key_int = source2.surrogate_key_int