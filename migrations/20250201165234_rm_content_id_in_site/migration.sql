/*
  Warnings:

  - You are about to drop the column `contentId` on the `Site` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AlterTable
ALTER TABLE `Site` DROP COLUMN `contentId`;
