import yaml
from jinja2 import Environment, FileSystemLoader

with open('config.yaml', 'r') as file:
    config = yaml.safe_load(file)

env = Environment(loader=FileSystemLoader('templates'))
template = env.get_template('main.tf.jinja')
variables_template = env.get_template('variables.tf.jinja')
outputs_template = env.get_template('outputs.tf.jinja')

# Rendering
rendered_main_tf = template.render(config)
rendered_variables_tf = variables_template.render(config)
rendered_outputs_tf = outputs_template.render(config)

# Writing to file
with open('terraform/main.tf', 'w') as f:
    f.write(rendered_main_tf)

with open('terraform/variables.tf', 'w') as f:
    f.write(rendered_variables_tf)

with open('terraform/outputs.tf', 'w') as f:
    f.write(rendered_outputs_tf)
