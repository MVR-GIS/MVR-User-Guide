# 1. Setup: Ensure dev tools are ignored by R build processes
# This ensures R doesn't treat the 'dev/' folder as part of a "package"
usethis::use_build_ignore("_dev")

# 2. Initialize DESCRIPTION (only runs if the file is missing)
# check_name = FALSE allows you to use a name that isn't a valid R package name
if (!file.exists("DESCRIPTION")) {
  usethis::use_description(
    fields = list(Package = "MVR-USER-GUIDE"), 
    check_name = FALSE
  )
}

# 3. Scan and Update Dependencies
# attachment::att_to_desc_from_is() scans the project for library() calls
# in .qmd and .R files and updates the 'Imports' field in DESCRIPTION.
qmd_pkgs <- attachment::att_from_qmds(path = getwd())

attachment::create_dependencies_file(
  to = "dependencies.R",
  open_file = FALSE
)

# 4. Instructions for Team Members
# To install all dependencies listed in the DESCRIPTION file:
# remotes::install_deps()


## Specify Chat Instructions
reproducibleai::use_instructions(c("chat-manual", "goals", "r-package", "user-manual"))

## Start new chat prompt text:
# This session will be based on the `MVR-GIS/MVR-User-Guide`
# repo `main` branch. Read `dev/instructions/CHAT_INSTRUCTIONS.md` 
# and follow the instruction modules listed under "Selected 
# instruction modules (read in order)".

## Update AI Chat Artifacts
reproducibleai::extract_copilot_chat(file.path(
  Sys.getenv("USERPROFILE"), "Downloads", "copilot_export.zip")
)
