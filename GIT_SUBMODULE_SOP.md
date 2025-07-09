# Git Submodule Workflow Guidance

## Working with Submodules

This project uses git submodules (e.g., `melissani-cave.com`). Please follow these rules to avoid data loss and ensure correct version tracking:

Use `pwd` to check the current directory before using `cd`.

### 1. Editing Files in a Submodule
- **Do NOT add or commit files inside a submodule from the parent repository.**
- Instead, `cd` into the submodule directory and use git commands there:
  ```bash
  cd melissani-cave.com
  # Edit your files
  git add <file>
  git commit -m "Describe your change"
  git push
  ```

### 2. Updating the Submodule Pointer in the Parent Repo
- After committing changes in the submodule, update the parent repository to point to the new submodule commit:
  ```bash
  cd .. # from inside the submodule
  git add melissani-cave.com
  git commit -m "Update submodule pointer to latest commit"
  git push
  ```

### 3. Why This Matters
- The parent repo only tracks which commit of the submodule is checked out, not individual files inside it.
- Attempting to add or commit submodule files from the parent repo will result in errors like:
  `fatal: Pathspec 'melissani-cave.com/file.html' is in submodule 'melissani-cave.com'`
- Always commit inside the submodule first, then update the parent repo.

### 4. Avoiding Detached HEAD
- After submodule updates, you may see a "detached HEAD" in the submodule. To work on the latest branch:
  ```bash
  cd melissani-cave.com
  git checkout master
  git pull
  ```
- If you make changes while in detached HEAD, you must create a branch or checkout master before pushing.

### 5. Summary
- Edit and commit in the submodule.
- Update the submodule pointer in the parent repo.
- Never add/commit submodule files from the parent repo.
- If you see a detached HEAD, checkout the correct branch before working.

---

## Troubleshooting Common Submodule Issues

### 1. Accidentally Committed in the Parent Repo
- If you tried to add or commit a submodule file from the parent repo and saw an error like:
  `fatal: Pathspec 'melissani-cave.com/file.html' is in submodule 'melissani-cave.com'`
- Solution: Go into the submodule directory, commit your changes there, then update the submodule pointer in the parent repo as described above.

### 2. Detached HEAD in Submodule
- If you see `(HEAD detached at <commit>)` in the submodule:
  - Run:
    ```bash
    git checkout master
    git pull
    ```
  - If you made changes while in detached HEAD, create a branch or checkout master before pushing.

### 3. Submodule Commit Not Found Remotely
- If others cannot update the submodule after you push the parent repo:
  - Make sure you have pushed your submodule changes to its remote repository before updating the pointer in the parent repo.

### 4. Submodule Directory Missing or Empty
- If the submodule directory is missing or empty after cloning:
  - Run:
    ```bash
    git submodule update --init --recursive
    ```

## Best Practices for Git Submodules
- Always commit and push changes inside the submodule before updating the parent repo pointer.
- Never add or commit submodule files from the parent repo.
- Regularly pull the latest changes in both the parent and submodule repos.
- If you see a detached HEAD, checkout the correct branch before making changes.
- Communicate submodule updates to your team to avoid conflicts.
- Use `git submodule update --init --recursive` after cloning or pulling to ensure submodules are up to date.

## Dreamweaver Template (.dwt) Files

Dreamweaver template files (`.dwt`) are used to define the shared structure for many HTML pages, such as headers, footers, and navigation. They are different from ordinary content HTML files:

- In a `.dwt` template, you should only edit the parts outside the `<!-- TemplateBeginEditable -->` and `<!-- TemplateEndEditable -->` tags. These are the site-wide elements (headers, footers, navigation, etc.).
- The "editable regions" in a `.dwt` file are just placeholders for page-specific content. They are not meaningful in the template itself and should not be edited for content.
- To update site-wide elements, make changes in the `.dwt` file and propagate them to all pages.
- Do not attempt to edit page content directly in the template; edit the individual HTML files instead.

**Summary:**
- In `.dwt` files: Only the non-editable regions (outside editable tags) are in scope for SOP checks.
- In ordinary HTML files: Only the content inside the editable regions is in scope for SOP checks.

For more, see the official [Git Submodules documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules).
