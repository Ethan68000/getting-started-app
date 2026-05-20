import { test, expect } from '@playwright/test';

test('todo app starts and page has title', async ({ page }) => {
  await page.goto('http://localhost:3000');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Todo/);
});