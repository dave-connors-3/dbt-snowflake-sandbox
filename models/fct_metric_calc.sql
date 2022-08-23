select
    *
from 
    {{
        metrics.calculate(
            metric('average_observed_value'),
            dimensions=['observation_type', 'new_dimension'],
            grain='month'
        )
    }}