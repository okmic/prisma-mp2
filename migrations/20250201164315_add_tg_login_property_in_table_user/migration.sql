/*
  Warnings:

  - Added the required column `tgLogin` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AlterTable
ALTER TABLE `User` ADD COLUMN `tgLogin` VARCHAR(191) NOT NULL;
