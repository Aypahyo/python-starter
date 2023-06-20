from behave import given, when, then # type: ignore
from starter_core import grumfundler

@given(u'we have grumfundle \'foo\'')
def we_have_grumfundle(context):
    context.grumfundle = grumfundler.Grumfundler('foo')

@when(u'we created a string \'foo-str\' made from grumfundle \'foo\'')
def we_created_string(context):
    context.foo_str = str(context.grumfundle)

@then(u'that string should contain \'{string}\'')
def string_should_contain(context, string):
    assert string in context.foo_str