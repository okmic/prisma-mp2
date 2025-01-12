/*
  Warnings:

  - A unique constraint covering the columns `[parentId]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Content` MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- AlterTable
ALTER TABLE `User` ADD COLUMN `parentId` INTEGER NULL;

-- CreateIndex
CREATE UNIQUE INDEX `User_parentId_key` ON `User`(`parentId`);

-- AddForeignKey
ALTER TABLE `User` ADD CONSTRAINT `User_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `User`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
