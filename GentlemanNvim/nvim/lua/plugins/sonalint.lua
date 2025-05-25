return {
  "Lachira/sonarlint.nvim",
  url = "https://gitlab.com/Lachira/sonarlint.nvim.git",
  branch = "master",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("sonarlint").setup({
      ignored_projects = {
        "/home/marthin/Developer/Corelusa",
      },
      server = {
        cmd = {
          "sonarlint-language-server",
          "-stdio",
          "-analyzers",
          vim.fn.expand("~/.local/share/nvim/mason/share/sonarlint-analyzers/sonarjs.jar"),
        },
        settings = {
          sonarlint = {
            rules = {
              ["typescript:S4204"] = { level = "on" }, -- The "any" type should not be used
              ["typescript:S6019"] = { level = "on" }, -- Regular expressions should not match empty strings
              ["typescript:S113"] = { level = "on" }, -- Files should end with a newline
              ["typescript:S4084"] = { level = "on" }, -- Media elements should have captions
              ["typescript:S117"] = { level = "on" }, -- Naming convention for variables, properties, and parameters
              ["typescript:S101"] = { level = "on" }, -- Class names should follow naming conventions
              ["typescript:S104"] = { level = "on" }, -- Files should not have too many lines
              ["typescript:S103"] = { level = "on" }, -- Lines should not be too long
              ["typescript:S100"] = { level = "on" }, -- Function and method names should follow naming conventions
              ["typescript:S109"] = { level = "on" }, -- Magic numbers should not be used
              ["typescript:S106"] = { level = "on" }, -- Avoid logging directly to the console
              ["typescript:S6035"] = { level = "on" }, -- Single-character alternations in regex should use character classes
              ["typescript:S105"] = { level = "off" }, -- Tab characters should not be used
              ["typescript:S108"] = { level = "on" }, -- Nested blocks should not be empty
              ["typescript:S107"] = { level = "on" }, -- Functions should not have too many parameters
              ["typescript:S6397"] = { level = "on" }, -- Regex character classes should not contain only one character
              ["typescript:S1821"] = { level = "on" }, -- Avoid nested switch statements
              ["typescript:S1940"] = { level = "on" }, -- Boolean checks should not be inverted
              ["typescript:S135"] = { level = "on" }, -- Loops should not have multiple break/continue statements
              ["typescript:S134"] = { level = "on" }, -- Control flow statements should not be deeply nested
              ["typescript:S131"] = { level = "on" }, -- Switch statements should have default cases
              ["typescript:S139"] = { level = "on" }, -- Avoid comments at the end of code lines
              ["typescript:S138"] = { level = "on" }, -- Functions should not have too many lines
              ["typescript:S126"] = { level = "on" }, -- "if ... else if" should end with "else"
              ["typescript:S125"] = { level = "on" }, -- Avoid commented-out code
              ["typescript:S122"] = { level = "on" }, -- Statements should be on separate lines
              ["typescript:S121"] = { level = "on" }, -- Use curly braces in control structures
              ["typescript:S128"] = { level = "on" }, -- Switch cases should end with a break
              ["typescript:S2933"] = { level = "on" }, -- Constructor-only fields should be readonly
              ["typescript:S2819"] = { level = "on" }, -- Verify origins in cross-origin communication
              ["typescript:S1848"] = { level = "on" }, -- Avoid creating unused objects
              ["typescript:S2817"] = { level = "on" }, -- Do not use Web SQL databases
              ["typescript:S1607"] = { level = "on" }, -- Do not skip tests without a reason
              ["typescript:S1854"] = { level = "on" }, -- Remove unused assignments
              ["typescript:S6079"] = { level = "on" }, -- Do not execute code after "done()" in tests
              ["typescript:S3923"] = { level = "on" }, -- Avoid identical branches in conditionals
              ["typescript:S3801"] = { level = "off" }, -- Use return statements consistently
              ["typescript:S1862"] = { level = "on" }, -- Avoid duplicate conditions in if/switch
              ["typescript:S6080"] = { level = "on" }, -- Mocha timeouts should be explicit
              ["typescript:S1871"] = { level = "on" }, -- Avoid duplicate conditional branches
              ["typescript:S7059"] = { level = "on" }, -- Avoid async operations in constructors
              ["typescript:S3812"] = { level = "on" }, -- Use parentheses when negating "in" and "instanceof"
              ["typescript:S2966"] = { level = "on" }, -- Do not use non-null assertions
              ["typescript:S1515"] = { level = "on" }, -- Functions should not be inside loops
              ["typescript:S1516"] = { level = "on" }, -- Avoid multiline string literals
              ["typescript:S1751"] = { level = "on" }, -- Loops with one iteration should be refactored
              ["typescript:S1994"] = { level = "on" }, -- "for" loop increments should modify counters
              ["typescript:S1874"] = { level = "on" }, -- Do not use deprecated APIs
              ["typescript:S6092"] = { level = "on" }, -- Chai assertions should have only one success reason
              ["typescript:S7060"] = { level = "on" }, -- Modules should not import themselves
              ["typescript:S2970"] = { level = "on" }, -- Assertions should be complete
              ["typescript:S1525"] = { level = "on" }, -- Do not use debugger statements
              ["typescript:S1526"] = { level = "on" }, -- Declare "var" before use
              ["typescript:S2737"] = { level = "on" }, -- Catch clauses should do more than rethrow
              ["typescript:S1763"] = { level = "on" }, -- Ensure all code is reachable
              ["typescript:S1764"] = { level = "on" }, -- Avoid identical expressions on both sides of an operator
              ["typescript:S1528"] = { level = "on" }, -- Do not use array constructors
              ["typescript:S1529"] = { level = "on" }, -- Do not use bitwise operators in boolean contexts
              ["typescript:S1530"] = { level = "on" }, -- Function declarations should not be inside blocks
              ["typescript:S1535"] = { level = "on" }, -- "for...in" loops should filter properties
              ["typescript:S1656"] = { level = "on" }, -- Variables should not be self-assigned
              ["typescript:S1537"] = { level = "off" }, -- Avoid trailing commas
              ["typescript:S1774"] = { level = "off" }, -- Do not use the ternary operator unnecessarily
              ["typescript:S2990"] = { level = "on" }, -- Avoid using global "this"
              ["typescript:S2870"] = { level = "on" }, -- Do not use "delete" on arrays
              ["typescript:S1788"] = { level = "on" }, -- Default parameters should be last
              ["typescript:S2999"] = { level = "on" }, -- "new" should be used with functions/classes
              ["typescript:S3723"] = { level = "off" }, -- Use trailing commas
              ["typescript:S2755"] = { level = "on" }, -- Prevent XML parser XXE attacks
              ["typescript:S1438"] = { level = "on" }, -- Statements should end with semicolons
            },
          },
        },
      },
      filetypes = {
        "javascript",
        "typescript",
      },
    })
  end,
}
