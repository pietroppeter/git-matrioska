import nimib, nimislides

template slideTitle =
  slide:
    nbText: "# `git-matrioska`"
    nbText: "a normcore git workflow"
    nbText: "for maintaining production (ML) repos"
    nbText: " "
    nbText: "[pietroppeter](https://github.com/pietroppeter)"

template slideMatrioska =
  slide:
    # from https://www.petitpoilu.com/albums/amour-glace
    nbImage("petit-poilu-matrioska.png")

template slidePreamble =
  slide:
    nbText: "## preamble"
    unorderedList:
      listItem: nbText: "I work in Supply Chain B2B company"
      listItem: nbText: "maintaining a production ML repo for past 7 years"
      listItem: nbText: "**problem**: keeping a clean production repo..."
      listItem: nbText: "...while documenting (in a repo!) our maintenance"
      # git matrioska is my solution

template slideIsThisNormcore =
  slide:
    nbImage("isthisnormcore.jpg")
  # interested in why you think this might be a bad idea

template slideWhatIsGitWorkflow =
  slide:
    nbImage("what-is-a-git-workflow.png")

template slideNotSubmodule =
  slide:
    nbText: "> a repo inside a repo, the solution is..."
    fragment:
      fragment(strike):
        nbText: "`git submodule`"

template slideIdea =
  slide:
    nbText: "## the idea"
    orderedList:
      listItem: nbText: "start with a production (ML) repo (e.g. `mliska`)"
      listItem: nbText: "_feel_ the problem (clean prod & track changes)"
      listItem: nbText: "create `mloska`"
      listItem: nbText: "checkout `mliska` inside `mloska`"
      listItem: nbText: "add `mliska` to `.gitignore`"

template slideFolderStructure =
  slide:
    # https://ascii-tree-generator.com
    nbText: """## Example folder structure
```
mloska/
├─ .git/
├─ dev/
│  ├─ 1_first_feature.ipynb
│  ├─ 2_first_bug.py
│  ├─ 3_not_a_bug_yay.md
├─ mliska/
│  ├─ .git/
│  ├─ app.py
├─ .gitignore
```
"""

when isMainModule:
  nbInit(theme = revealTheme)
  setSlidesTheme(White)
  slideTitle
  slideMatrioska
  slidePreamble
  slideIsThisNormcore
  slideWhatIsGitWorkflow
  slideNotSubmodule
  slideIdea
  slideFolderStructure
  nbSave