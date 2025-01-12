/*
  Warnings:

  - Added the required column `userId` to the `Content` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Content` ADD COLUMN `userId` INTEGER NOT NULL,
    MODIFY `mainBlockTitle` VARCHAR(191) NOT NULL DEFAULT 'Mico Page 👋';

-- CreateIndex
CREATE INDEX `Content_userId_idx` ON `Content`(`userId`);

-- CreateIndex
CREATE INDEX `User_adminTgChatId_idx` ON `User`(`adminTgChatId`);

-- AddForeignKey
ALTER TABLE `Content` ADD CONSTRAINT `Content_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
