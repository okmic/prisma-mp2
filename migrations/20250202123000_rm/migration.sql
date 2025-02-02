/*
  Warnings:

  - You are about to drop the column `siteId` on the `Content` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `Content_siteId_idx` ON `Content`;

-- AlterTable
ALTER TABLE `Content` DROP COLUMN `siteId`,
    MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';
