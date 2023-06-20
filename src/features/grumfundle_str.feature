Feature: showing off behave

  Scenario: run a simple test
     Given we have grumfundle 'foo'
      When we created a string 'foo-str' made from grumfundle 'foo' 
      Then that string should contain 'foo'
      And that string should contain 'Grumfundle'
