/*
  Warnings:

  - Added the required column `contentId` to the `Site` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Content` DROP FOREIGN KEY `Content_siteId_fkey`;

-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AlterTable
ALTER TABLE `Site` ADD COLUMN `contentId` INTEGER NOT NULL;
